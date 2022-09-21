using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Telerik.Web.UI;

namespace RegistrationSample
{
    public partial class AddDataGridControls : System.Web.UI.UserControl
    {
        private string strConnectionString = ConfigurationManager.ConnectionStrings["myconnection"].ConnectionString;
        private SqlCommand _sqlCommand;

        public string UserId
        {
            get { return ViewState["UserId"] != null ? ViewState["UserId"].ToString() : string.Empty; }
            set { ViewState["UserId"] = value; }
        }
        public void CreateConnection()
        {
            SqlConnection _sqlConnection = new SqlConnection(strConnectionString);
            _sqlCommand = new SqlCommand();
            _sqlCommand.Connection = _sqlConnection;

        }
        public void OpenConnection()
        {
            _sqlCommand.Connection.Open();
        }
        public void CloseConnection()
        {
            _sqlCommand.Connection.Close();
        }
        public void DisposeConnection()
        {
            _sqlCommand.Connection.Dispose();
        }



        protected void Page_Load(object sender, EventArgs e)
        {
            IsActiveCheckBox.Visible = false;
            LIsActive.Visible = false;
            if (!IsPostBack)
            {
                
                if (string.IsNullOrEmpty(UserId))
                {
                   
                   // AddUser();
                    //Insertion code
                }
                else {
                    //Edit code
                    //IsActiveCheckBox.Visible = true;
                    //LIsActive.Visible = true;
                    IntializeControls();
        
                }
            }
            

        }

        public void IntializeControls()
        {
            try
            {
                IsActiveCheckBox.Visible = true;
                LIsActive.Visible = true;
                CreateConnection();
                _sqlCommand.CommandText = "GetDataById";
                _sqlCommand.CommandType = CommandType.StoredProcedure;
                _sqlCommand.Parameters.AddWithValue("@id", Convert.ToInt16(UserId));
                _sqlCommand.Connection.Open();
                SqlDataReader dr;
                dr = _sqlCommand.ExecuteReader(CommandBehavior.CloseConnection);
                if (dr.Read())
                {
                    TFirstName.Text = dr["Firstname"].ToString();
                    TMiddleName.Text = dr["Middlename"].ToString();
                    TLastName.Text = dr["Lastname"].ToString();
                    TContactNo.Text = dr["Contactno"].ToString();
                    TEmailId.Text = dr["Email"].ToString();
                    //TPassword.Text = dr["Password"].ToString();
                    string SkillsFill = dr["Skills"].ToString();
                    DOBDatePicker.SelectedDate = Convert.ToDateTime(dr["DOB"]);
                    TGender.SelectedValue = dr["Gender"].ToString();
                    StateDropDownList.SelectedText = dr["State"].ToString();
                     TSalary.Text = dr["Salaryamount"].ToString();
                     string Isactive = dr["Isactive"].ToString();
                    if(Isactive != "True")
                    {
                        IsActiveCheckBox.Checked = true;
                    }
                    string[] values = SkillsFill.Split(',');
                    foreach (ButtonListItem lst in ddlSkills.Items)
                    {
                        foreach (var selectedvalues in values)
                        {
                            if (selectedvalues == lst.Text)
                            {
                                lst.Selected = true;
                            }
                        }

                    }

                }
            }
            catch(Exception ep)
            {
                Console.WriteLine(ep.Message);
            }
            
        }

        protected void Save_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(UserId))
            {
                AddUser();
            }
            else
            {
                UpdateUser();
            }
        }

        public void AddUser()
        {
            try
            {
                if (!Page.IsValid)
                {
                    return;
                }

                CreateConnection();
                _sqlCommand.CommandText = "MemberCRUD";
                _sqlCommand.CommandType = CommandType.StoredProcedure;
                _sqlCommand.Connection.Open();
                _sqlCommand.Parameters.AddWithValue("@actionType", "A");   // @actiontype
                _sqlCommand.Parameters.AddWithValue("@firstName", Convert.ToString(TFirstName.Text.Trim()));
                _sqlCommand.Parameters.AddWithValue("@middlename", Convert.ToString(TMiddleName.Text.Trim()));// @firstName
                _sqlCommand.Parameters.AddWithValue("@lastName", Convert.ToString(TLastName.Text.Trim()));
                _sqlCommand.Parameters.AddWithValue("@contactNo", Convert.ToString(TContactNo.Text.Trim()));
                _sqlCommand.Parameters.AddWithValue("@email", Convert.ToString(TEmailId.Text.Trim()));
                _sqlCommand.Parameters.AddWithValue("@salaryamount", Convert.ToString(TSalary.Text.Trim()));
                _sqlCommand.Parameters.AddWithValue("@createdBy", Convert.ToInt64(Session["idPermit"]));
                // _sqlCommand.Parameters.AddWithValue("@password", Convert.ToString(TPassword.Text.Trim()));

                string checkboxitems = "";
                string[] cblist = new string[ddlSkills.SelectedItems.Count];
                int i = 0;
                foreach (ButtonListItem lst in ddlSkills.SelectedItems)
                {

                    cblist[i] += lst.Text;
                    i++;
                }
                checkboxitems = string.Join(",", cblist.ToArray());

                _sqlCommand.Parameters.AddWithValue("@skills", checkboxitems);
                 _sqlCommand.Parameters.AddWithValue("@DOB", Convert.ToDateTime(DOBDatePicker.SelectedDate));
                // _sqlCommand.Parameters.AddWithValue("@DOB", Convert.ToDateTime(DOBDatePicker.Text));  
                _sqlCommand.Parameters.AddWithValue("@gender", Convert.ToString(TGender.SelectedValue));
                _sqlCommand.Parameters.AddWithValue("@state", Convert.ToString(StateDropDownList.SelectedText));

                SqlParameter outputParameter = new SqlParameter();
                outputParameter.ParameterName = "@responseId";
                outputParameter.SqlDbType = System.Data.SqlDbType.Int;
                outputParameter.Direction = System.Data.ParameterDirection.Output;
                _sqlCommand.Parameters.Add(outputParameter);
                _sqlCommand.ExecuteNonQuery();
                string responseId = outputParameter.Value.ToString();
                if (responseId == "0")
                {

                    ShowAlertMessage("Email Already exists");
                    _sqlCommand.Connection.Close();
                    Response.Redirect("ShowMembersRecord.aspx");
                    ClearControls();
                }
                else
                {
                    ShowAlertMessage("Saved Successfully");
                    _sqlCommand.Connection.Close();
                    Response.Redirect("ShowMembersRecord.aspx");
                    ClearControls();


                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
        }

        public void UpdateUser()
        {
            try
            {
                if (!Page.IsValid)
                {
                    return;
                }

                CreateConnection();
                _sqlCommand.CommandText = "MemberCRUD";
                _sqlCommand.CommandType = CommandType.StoredProcedure;
                _sqlCommand.Connection.Open();
                _sqlCommand.Parameters.AddWithValue("@id", Convert.ToInt16(UserId));
                _sqlCommand.Parameters.AddWithValue("@actionType", "U");   // @actiontype
                _sqlCommand.Parameters.AddWithValue("@firstName", Convert.ToString(TFirstName.Text.Trim()));
                _sqlCommand.Parameters.AddWithValue("@middlename", Convert.ToString(TMiddleName.Text.Trim()));// @firstName
                _sqlCommand.Parameters.AddWithValue("@lastName", Convert.ToString(TLastName.Text.Trim()));
                _sqlCommand.Parameters.AddWithValue("@contactNo", Convert.ToString(TContactNo.Text.Trim()));
                _sqlCommand.Parameters.AddWithValue("@email", Convert.ToString(TEmailId.Text.Trim()));
                _sqlCommand.Parameters.AddWithValue("@salaryamount", Convert.ToString(TSalary.Text.Trim()));
                _sqlCommand.Parameters.AddWithValue("@createdBy", Convert.ToInt64(Session["idPermit"]));
                //  _sqlCommand.Parameters.AddWithValue("@password", Convert.ToString(TPassword.Text.Trim()));

                string checkboxitems = "";
                string[] cblist = new string[ddlSkills.SelectedItems.Count];
                int i = 0;
                foreach (ButtonListItem lst in ddlSkills.SelectedItems)
                {

                    cblist[i] += lst.Text;
                    i++;
                }
                checkboxitems = string.Join(",", cblist.ToArray());

                _sqlCommand.Parameters.AddWithValue("@skills", checkboxitems);
                 _sqlCommand.Parameters.AddWithValue("@DOB", Convert.ToDateTime(DOBDatePicker.SelectedDate));
                // _sqlCommand.Parameters.AddWithValue("@DOB", Convert.ToDateTime(DOBDatePicker.Text));   
                _sqlCommand.Parameters.AddWithValue("@gender", Convert.ToString(TGender.SelectedValue));
                _sqlCommand.Parameters.AddWithValue("@state", Convert.ToString(StateDropDownList.SelectedText));
                if ( IsActiveCheckBox.Checked == true )
                { _sqlCommand.Parameters.AddWithValue("@Isactive", 0);
                }
                else
                {
                    _sqlCommand.Parameters.AddWithValue("@Isactive", 1);
                }
                SqlParameter outputParameter = new SqlParameter();
                outputParameter.ParameterName = "@responseId";
                outputParameter.SqlDbType = System.Data.SqlDbType.Int;
                outputParameter.Direction = System.Data.ParameterDirection.Output;
                _sqlCommand.Parameters.Add(outputParameter);
                _sqlCommand.ExecuteNonQuery();
                string responseId = outputParameter.Value.ToString();
                if (responseId == "0")
                {

                    ShowAlertMessage("Email Already exists");
                    _sqlCommand.Connection.Close();
                    Response.Redirect("ShowMembersRecord.aspx");
                    ClearControls();
                }
                else
                {
                    ShowAlertMessage("Saved Successfully");
                    _sqlCommand.Connection.Close();
                    Response.Redirect("ShowMembersRecord.aspx");
                    ClearControls();


                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
        }

        public void ClearControls()
        {
            try
            {
                TFirstName.Text = "";
                TLastName.Text = "";
                TContactNo.Text = "";
                TEmailId.Text = "";
                //TPassword.Text = "";
                DOBDatePicker.Clear();
                foreach (ButtonListItem lst in ddlSkills.SelectedItems)
                {
                    lst.Selected = false;
                }
                StateDropDownList.SelectedIndex = 0;
                TGender.SelectedValue = "Male";
                // DOBDatePicker.Clear();
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
            }

        }

        private static void ShowAlertMessage(string error)
        {
            try
            {
                System.Web.UI.Page page = System.Web.HttpContext.Current.Handler as System.Web.UI.Page;
                if (page != null)
                {
                    error = error.Replace("'", "\'");
                    System.Web.UI.ScriptManager.RegisterStartupScript(page, page.GetType(), "err_msg", "alert('" + error + "');", true);
                }
            }
            catch(Exception ep)
            {
                Console.WriteLine(ep.Message);
            }
        }

        protected void reset_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(UserId))
            {
                IntializeControls();
            }
            else
            {
                ClearControls();
            }
            
        }

        protected void BCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("ShowMembersRecord.aspx");
        }
    }
}