using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RegistrationSample
{
    public partial class Login : System.Web.UI.Page
    {
        private string strConnectionString = ConfigurationManager.ConnectionStrings["myconnection1"].ConnectionString;
        private SqlCommand _sqlCommand;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ClearControls();
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
            catch(Exception e)
            {
                Console.Write(e.Message);
            }
        }
        public void ClearControls()
        {
            TEmail.Text = "";
            TPassword.Text = "";

        }

        protected void BLogin_Click(object sender, EventArgs e)
        {
            try
            {
                if (!Page.IsValid)
                {
                    return;
                }
                string message = string.Empty;
                SqlConnection _sqlConnection = new SqlConnection(strConnectionString);
                _sqlCommand = new SqlCommand();
                _sqlCommand.Connection = _sqlConnection;
                _sqlCommand.CommandText = "loginUser";
                _sqlCommand.Connection.Open();
                _sqlCommand.CommandType = CommandType.StoredProcedure;
                _sqlCommand.Parameters.AddWithValue("@emailId", Convert.ToString(TEmail.Text.Trim())); // @firstName
                _sqlCommand.Parameters.AddWithValue("@password", Convert.ToString(TPassword.Text.Trim()));
                
                SqlParameter outputParameter = new SqlParameter();
                outputParameter.ParameterName = "@responseId";
                outputParameter.SqlDbType = System.Data.SqlDbType.Int;
                outputParameter.Direction = System.Data.ParameterDirection.Output;
                _sqlCommand.Parameters.Add(outputParameter);
                 _sqlCommand.ExecuteNonQuery();
                string responseId = outputParameter.Value.ToString();
                if (responseId == "0" || responseId == "" || responseId == null)
                {

                    ShowAlertMessage("Invalid Email address and Password ");
                    _sqlCommand.Connection.Close();
                    ClearControls();
                }
                else
                {   
                    Session["idPermit"] = responseId;
                    ShowAlertMessage("Login Successfully");
                    _sqlCommand.Connection.Close();
                    ClearControls();
                    Response.Redirect("ShowMembersRecord.aspx");

                }
                
            }

            catch (Exception ep)
            {
                Console.WriteLine(ep.Message);
            }

        }

        //protected void BLogin_Click(object sender, EventArgs e)
        //{

        //}
    }
}