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
    public partial class Registration : System.Web.UI.Page
    {
        private string strConnectionString = ConfigurationManager.ConnectionStrings["myconnection"].ConnectionString;
        private SqlCommand _sqlCommand;
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
             
            
        }

        protected void save_Click(object sender, EventArgs e)
        {
            try
            {
                if (!Page.IsValid)
                {
                    return;
                }

                CreateConnection();
                _sqlCommand.CommandText = "UserCRUD";
                _sqlCommand.CommandType = CommandType.StoredProcedure;
                _sqlCommand.Connection.Open();
                _sqlCommand.Parameters.AddWithValue("@actionType", "A");   // @actiontype
                _sqlCommand.Parameters.AddWithValue("@firstName", Convert.ToString(TFirstName.Text.Trim())); // @firstName
                _sqlCommand.Parameters.AddWithValue("@lastName", Convert.ToString(TLastName.Text.Trim()));
                _sqlCommand.Parameters.AddWithValue("@contactNo", Convert.ToString(TContactNo.Text.Trim()));
                _sqlCommand.Parameters.AddWithValue("@email", Convert.ToString(TEmailId.Text.Trim()));
                _sqlCommand.Parameters.AddWithValue("@password", Convert.ToString(TPassword.Text.Trim()));
                
                //string checkboxitems = "";
                //string[] cblist = new string[TSkill.SelectedItems.Count];
                //int i = 0;
                //foreach (ButtonListItem lst in TSkill.SelectedItems)
                //{

                //    cblist[i] += lst.Text;
                //    i++;
                //}
                //checkboxitems = string.Join(",", cblist.ToArray());

                //_sqlCommand.Parameters.AddWithValue("@skills", checkboxitems);
                 _sqlCommand.Parameters.AddWithValue("@DOB", Convert.ToDateTime(DOBDatePicker1.SelectedDate));
                //_sqlCommand.Parameters.AddWithValue("@DOB", Convert.ToDateTime(DOBDatePicker.Text));   
                _sqlCommand.Parameters.AddWithValue("@gender", Convert.ToString(TGender.SelectedValue));
                _sqlCommand.Parameters.AddWithValue("@state", Convert.ToString(StateDropDownList.SelectedText));
               
                SqlParameter outputparameter = new SqlParameter();
                outputparameter.ParameterName = "@responseId";
                outputparameter.SqlDbType = System.Data.SqlDbType.Int;
                outputparameter.Direction = System.Data.ParameterDirection.Output;
                _sqlCommand.Parameters.Add(outputparameter);
                _sqlCommand.ExecuteNonQuery();
                string responseId = outputparameter.Value.ToString();
                if (responseId == "0")
                {

                    ShowAlertMessage("Email Already exists");
                    _sqlCommand.Connection.Close();
                    ClearControls();
                }
                else
                {
                    ShowAlertMessage("Login Successfully");
                    _sqlCommand.Connection.Close();
                    ClearControls();
                   // loginLink1.Visible = true;

                }
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
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
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
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
                TPassword.Text = "";
                //DOBDatePicker.Text = "";  -- uncomment it
                //foreach (ButtonListItem lst in TSkill.SelectedItems)
                //{
                //    lst.Selected = false;
                //}
                StateDropDownList.SelectedIndex = 0;
                TGender.SelectedValue = "Male";
                DOBDatePicker1.Clear();
            }
            catch (Exception e)
            {
                Console.WriteLine(e.Message);
            }
            
        }

        protected void reset_Click(object sender, EventArgs e)
        {
            ClearControls();
        }
    }
}