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
    public partial class MemberData : System.Web.UI.Page
    {
        public string commandType { get; set; }
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
        { // if (!IsPostBack)
        //    {
        //        PopulateData();
        //    }
            PopulateData(); // uncommented it testing
        }

        private void PopulateData()
        {
            try
            {
                CreateConnection();
                _sqlCommand.CommandText = "GetData";
                _sqlCommand.CommandType = CommandType.StoredProcedure;
                _sqlCommand.Connection.Open();
                DataTable dt = new DataTable();
                dt.Load(_sqlCommand.ExecuteReader());
                   // dt.Columns.
                DataGrid.DataSource = dt;
               // DataGrid.Columns.Insert()
                DataGrid.DataBind();
                CloseConnection();
            }
            catch (Exception exp)
            {
                Console.WriteLine(exp.Message);
            }
            
            
        }

        protected void Logout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            DisposeConnection();
            Response.Redirect("Login.aspx");
        }

        protected void DataGrid_NeedDataSource(object sender, GridNeedDataSourceEventArgs e)
        {

        }

        protected void DataGridEdit_Click(object sender, EventArgs e)
        {

        }

        protected void DataGridSave_Click(object sender, EventArgs e)
        {

        }
        //protected void DataGrid_ItemCommand(object sender, GridCommandEventArgs e)
        //{
        //      if(e.CommandName == "Edit")
        //    {
        //       int a = e.Item.RowIndex;
        //        DataGrid.MasterTableView.ClearEditItems();
        //        commandType = "Edit";
        //        //GridView view = new GridView();

        //       // string fname = (view.Rows[e.Item.RowIndex].FindControl("TFirstName") as TextBox).Text;

        //      // int index = (sender as DataGrid).SelectedIndex.Items.ToList().IndexOf(selectedItem);

        //    }
        //    if (e.CommandName == "Update")
        //    {
        //        int a = e.Item.RowIndex;
        //       // int test = e.row
        //        CreateConnection();
        //    }

        //    if (e.CommandName == "Delete")
        //    {
        //        CreateConnection();
        //    }
        //    PopulateData();
        //}

        //protected void DataGrid_ItemDataBound(object sender, GridItemEventArgs e)
        //{
        //   if( e.Item is GridEditableItem && e.Item.IsInEditMode)
        //    {
        //        DataGrid.MasterTableView.ClearEditItems();
        //        if (commandType == "Edit")
        //        {
        //            var itemList = (GridEditableItem)e.Item;
        //             var control = itemList.FindControl("AddDataGridControls") as AddDataGridControls;
        //        }

        //    }
        //}
    }
}