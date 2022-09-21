using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
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
using Telerik.Web.UI.PivotGrid.Core.Totals;

namespace RegistrationSample
{
    public partial class ShowMembersRecord : System.Web.UI.Page
    {
        private string strConnectionString = ConfigurationManager.ConnectionStrings["myconnection"].ConnectionString;
        private SqlCommand _sqlCommand;

        public string CommandType1
        {
            get { return ViewState["commandType1"] != null ? ViewState["commandType1"].ToString() : string.Empty; }
            set { ViewState["commandType1"] = value; }
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
        //public void DisposeConnection()
        //{
        //    _sqlCommand.Connection.Dispose();
        //}

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["idPermit"] == null)
            {
                Response.Redirect("Login.aspx");
            }

            if (!IsPostBack)
            {
               // PopulateData();
            }
            //PopulateData(); // testing
            //if (Page.FindControl("AddDataGridControls") == null)
            //{
            //    Control myControl = this.LoadControl("AddDataGridControls.ascx");
            //    myControl.ID = "AddDataGridControls";
            //    //this.DataGrid.Controls.Add(myControl);
            //}

        }
        
      
        protected void DataGrid_ItemCommand(object sender, Telerik.Web.UI.GridCommandEventArgs e)
        {
            try
            {
                if (e.CommandName == "InitInsert")
                {
                    CommandType1 = "InitInsert";
                    DataGrid.MasterTableView.ClearEditItems();
                    
                }
                if (e.CommandName == "Edit")
                {
                    CommandType1 = "Edit";
                    // e.Item.Edit = true;

                    // DataGrid.MasterTableView.IsItemInserted = false;
                    // INSERT MODE

                    // Application["Id"] = idEdit;
                    //Application.Remove("Id");
                }
                if (e.CommandName == "Delete")
                {
                    var dataItem = e.Item as GridDataItem;
                    var id = dataItem.GetDataKeyValue("Id").ToString();
                    CreateConnection();
                    _sqlCommand.CommandText = "MemberDelete";
                    _sqlCommand.CommandType = CommandType.StoredProcedure;
                    _sqlCommand.Connection.Open();
                    _sqlCommand.Parameters.AddWithValue("@id", id);
                    _sqlCommand.ExecuteNonQuery();
                    _sqlCommand.Connection.Close();
                    //PopulateData();
                    // Application["Id"] = ID12;
                }
            }
            catch (Exception ep)
            {
                Console.WriteLine(ep.Message);
            }

        }

        

        protected void DataGrid_ItemDataBound(object sender, Telerik.Web.UI.GridItemEventArgs e)
        {
            try {

                if (e.Item is GridDataItem)
                {
                    GridDataItem dataItem = (GridDataItem)e.Item;
                    GridDataItem rowItem = e.Item as GridDataItem;
                    var isActive = rowItem.GetDataKeyValue("Isactive").ToString();
                    if (isActive == "False")
                    {
                       dataItem.BackColor = System.Drawing.Color.Orange;
                        //dataItem.ForeColor = System.Drawing.Color.White;
                        // dataItem.Font.Bold = true;
                    }
                }

                if (e.Item is GridEditableItem && e.Item.IsInEditMode)
                //if (e.Item is GridEditableItem)
                {
                    DataGrid.MasterTableView.ClearEditItems();
                    if (CommandType1 == "Edit")
                    {
                        DataGrid.MasterTableView.IsItemInserted = false;
                        var item = (GridEditableItem)e.Item;

                        GridEditableItem editedItem = e.Item as GridEditableItem;
                        var idEdit = editedItem.GetDataKeyValue("Id").ToString();
                       
                        // RadGrid radGrid = (RadGrid)this.FindControl("DataGrid");
                        AddDataGridControls ucadd = (AddDataGridControls)item.FindControl("ucAddDataGridControlsForm");
                        ucadd.UserId = idEdit;
                        ucadd.IntializeControls();

                        // var id = item["Id"].Text;
                        // var control = item.FindControl("ucAddDataGridControlsForm");
                        // control.
                        // control.IntializeControls();  // start from here
                    }
                }
                
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
        }

        protected void DataGrid_NeedDataSource(object sender, GridNeedDataSourceEventArgs e)
        {
            try
            {
                CreateConnection();
                _sqlCommand.CommandText = "GetMemberData";
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
            ViewState.Clear();    
           // DisposeConnection();
            Response.Redirect("Login.aspx");
        }
    }
}