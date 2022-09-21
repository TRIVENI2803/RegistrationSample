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
    public partial class RegistrationPage : System.Web.UI.Page
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
            CreateConnection();
            OpenConnection();
            PopulateData();
           // AddUserData();
        }
        //public void AddUserData()
        //{
        //    CreateConnection();

        //    _sqlCommand.CommandText = "Sp_User";
        //    _sqlCommand.CommandType = CommandType.StoredProcedure;
        //    _sqlCommand.Connection.Open();
        //    _sqlCommand.Parameters.AddWithValue("@ActionType", "A");
        //    _sqlCommand.Parameters.AddWithValue("@First_Name", Convert.ToString(TextBoxFirstName.Text.Trim()));
        //    _sqlCommand.Parameters.AddWithValue("@Last_Name", Convert.ToString(TextBoxLastName.Text.Trim()));
        //    _sqlCommand.Parameters.AddWithValue("@ContactNo", Convert.ToString(TextBoxContactNo.Text.Trim()));
        //    _sqlCommand.Parameters.AddWithValue("@Email", Convert.ToString(TextBoxEmailId.Text.Trim()));
        //    _sqlCommand.Parameters.AddWithValue("@Password", Convert.ToString(TextBoxPassword.Text.Trim()));
        //    _sqlCommand.Parameters.AddWithValue("@Skills", Convert.ToString(SkillsCheckBoxList.SelectedValue));
        //    _sqlCommand.Parameters.AddWithValue("@DOB", Convert.ToDateTime(DOBDatePicker.SelectedDate));
        //    //  _sqlCommand.Parameters.AddWithValue("@Gender", Convert.ToString(GenderRadioButtonList.SelectedValue));
        //    _sqlCommand.Parameters.AddWithValue("@State", Convert.ToString(StateDropDownList.SelectedValue));
        //    var IsConfirm = ConfirmYes.Value;
        //    int result = Convert.ToInt32(_sqlCommand.ExecuteNonQuery());
        //    if (result > 0)
        //    {

        //        ShowAlertMessage("Record Is Not Inserted ");
        //        _sqlCommand.Connection.Close();
        //        ClearControls();
        //    }
        //    ShowAlertMessage("Record Is Inserted Successfully");
        //    _sqlCommand.Connection.Close();
        //    ClearControls();
        //}
        //public void ClearControls()
        //{
        //    TextBoxFirstName.Text = "";
        //    TextBoxLastName.Text = "";
        //    TextBoxContactNo.Text = "";
        //    TextBoxEmailId.Text = "";
        //    TextBoxPassword.Text = "";
        //    SkillsCheckBoxList.SelectedIndex = 0;
        //    StateDropDownList.SelectedIndex = 0;
        //    //GenderRadioButtonList.clea
        //    DOBDatePicker.SelectedDate = DOBDatePicker.MaxDate;
        //}

        protected void RadButton1_Click(object sender, EventArgs e)
        {
            CreateConnection();
            _sqlCommand.CommandText = "Sp_User";
            _sqlCommand.CommandType = CommandType.StoredProcedure;
            _sqlCommand.Connection.Open();
            _sqlCommand.Parameters.AddWithValue("@ActionType", "A");   // @actiontype
            _sqlCommand.Parameters.AddWithValue("@First_Name", Convert.ToString(TFirstName.Text.Trim())); // @firstName
            _sqlCommand.Parameters.AddWithValue("@Last_Name", Convert.ToString(TLastName.Text.Trim()));
            _sqlCommand.Parameters.AddWithValue("@ContactNo", Convert.ToString(TContactNo.Text.Trim()));
            _sqlCommand.Parameters.AddWithValue("@Email", Convert.ToString(TEmailId.Text.Trim()));
            _sqlCommand.Parameters.AddWithValue("@Password", Convert.ToString(TPassword.Text.Trim()));
            string boxitems = "";
            string checkboxitems = "";
            foreach (ButtonListItem lst in TSkill.SelectedItems)
            {
                if (lst.Selected == true)
                {
                    boxitems += lst.Text;      // use append
                   // checkboxitems = String.insert(",", boxitems);
                }
            }
            //}
            ////for (int i = 0; i < 10; i++)
            ////{
            ////    ButtonListItem rbli = new ButtonListItem() { Text = "Item " + i, Value = i.ToString() };
            ////    if (rbli.ch == true)
            ////    {
            ////        checkboxitems += "," + rbli.Value;
            ////    }

            ////}

           // _sqlCommand.Parameters.AddWithValue("@Skills", Convert.ToString(TSkill.SelectedItems.tex));
            _sqlCommand.Parameters.AddWithValue("@Skills",checkboxitems);
            _sqlCommand.Parameters.AddWithValue("@DOB", Convert.ToDateTime(DOBDatePicker.SelectedDate));
              _sqlCommand.Parameters.AddWithValue("@Gender", Convert.ToString(TGender.SelectedValue));
           // _sqlCommand.Parameters.AddWithValue("@Gender", Convert.ToString(TGender.SelectedIndex.));

            _sqlCommand.Parameters.AddWithValue("@State", Convert.ToString(StateDropDownList.SelectedText));
            //var IsConfirm = ConfirmYes.Value;
            int result = Convert.ToInt32(_sqlCommand.ExecuteNonQuery());
            if (result > 0)
            {

                ShowAlertMessage("Record Is Not Inserted ");
                _sqlCommand.Connection.Close();
                //ClearControls();
            }
            ShowAlertMessage("Record Is Inserted Successfully");
            _sqlCommand.Connection.Close();
            //ClearControls();
        }
        private static void ShowAlertMessage(string error)
        {
            System.Web.UI.Page page = System.Web.HttpContext.Current.Handler as System.Web.UI.Page;
            if (page != null)
            {
                error = error.Replace("'", "\'");
                System.Web.UI.ScriptManager.RegisterStartupScript(page, page.GetType(), "err_msg", "alert('" + error + "');", true);
            }
        }

        protected void RadGrid1_NeedDataSource(object sender, Telerik.Web.UI.GridNeedDataSourceEventArgs e)
        {

        }
        private void PopulateData()
        {
            CreateConnection();
            _sqlCommand.CommandText = "GetData";
            _sqlCommand.CommandType = CommandType.StoredProcedure;
            _sqlCommand.Connection.Open();
            //_sqlCommand.Parameters.AddWithValue("@PageNo", PageNo);
            //_sqlCommand.Parameters.AddWithValue("@NoOfRecord", noOfRecord);
            //SqlParameter TotalRecordSP = new SqlParameter("@TotalRecord", System.Data.SqlDbType.Int);
            //TotalRecordSP.Direction = System.Data.ParameterDirection.Output;
            //_sqlCommand.Parameters.Add(TotalRecordSP);
           // _sqlCommand.ExecuteReader();
            DataTable dt = new DataTable();
           dt.Load(_sqlCommand.ExecuteReader());

            //int totalRecord = 0;
            //if (TotalRecordSP.Value != null)
            //{
            //    int.TryParse(TotalRecordSP.Value.ToString(), out totalRecord);
            //}
             RadGrid1.DataSource = dt;
           // RadGrid1.DataSource = SqlDataSource1;
           RadGrid1.DataBind();
            CloseConnection();
             //ViewState["TotalRecord"] = totalRecord;
             // ViewState["NoOfRecord"] = noOfRecord;
        }

        protected void RadGrid1_NeedDataSource1(object sender, GridNeedDataSourceEventArgs e)
        {

        }
    }
}