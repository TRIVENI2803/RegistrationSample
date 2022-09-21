<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowMembersRecord.aspx.cs" Inherits="RegistrationSample.ShowMembersRecord" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<%@ Register Src="~/AddDataGridControls.ascx" TagPrefix="uc1" TagName="AddDataGridControls" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" />

    <script src="bootstrap.3.0.0/jquery.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.1.js"></script>
    <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
    <link href="bootstrap.3.0.0/content/Scripts/jquery-ui-1.13.2/jquery-ui.min.css" rel="stylesheet" />
    <script src="bootstrap.3.0.0/content/Scripts/jquery-ui-1.13.2/jquery-ui.min.js"></script>
    <script src="bootstrap.3.0.0/jquery.validate.min.js"></script>
     <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validation-unobtrusive/4.0.0/jquery.validate.unobtrusive.min.js"></script>

    
    

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
    
   <%-- <script src="JSRegistrationPage.js"></script>--%>

</head>
<body>
    <form id="form1" runat="server" autocomplete="off">
        <div>
            <telerik:RadScriptManager ID="RadScriptManager1" runat="server"></telerik:RadScriptManager>
            <telerik:RadStyleSheetManager ID="RadStyleSheetManager1" runat="server"></telerik:RadStyleSheetManager>
           
            <br />

            <asp:Button ID="Logout" runat="server" Text="Logout" Font-Size="Medium" BackColor="#ff0000" ForeColor="White" Skin="Bootstrap" Style="margin-left : 1200px;" OnClick="Logout_Click" />
        
                <br />
            <!-- Form Name -->
        <center><h2><telerik:RadLabel ID="LMemberData" Text="Member Data" Font-Underline="true" Font-Bold="true" Font-Size="X-Large" runat="server"></telerik:RadLabel></h2></center>
            
             
        <br />
            <telerik:RadGrid ID="DataGrid" runat="server"  AllowPaging="True" CellSpacing="-1" GridLines="Both" Skin="Bootstrap" RenderMode="Lightweight"  PagerStyle-AlwaysVisible="true" AllowSorting="true"   OnItemCommand="DataGrid_ItemCommand"  OnItemDataBound="DataGrid_ItemDataBound" AutoGenerateColumns="false" PagerStyle-PageSizeControlType="RadDropDownList" OnNeedDataSource="DataGrid_NeedDataSource">
            <MasterTableView AutoGenerateColumns="False" DataKeyNames="Id , Isactive" CommandItemDisplay="Top" CommandItemSettings-AddNewRecordText="Add Member" CommandItemSettings-ShowAddNewRecordButton="true" InsertItemPageIndexAction="ShowItemOnCurrentPage" CommandItemSettings-ShowRefreshButton="true" AllowCustomSorting="true">
          <Columns>
                 <telerik:GridBoundColumn DataField="Id"  DataType="System.Int64" Visible="false" FilterControlAltText="Filter Id column" HeaderText="Id" ReadOnly="True" ShowNoSortIcon="False" SortExpression="Id" UniqueName="Id">
        </telerik:GridBoundColumn>
                    <%--<telerik:GridBoundColumn DataField="Password" FilterControlAltText="Filter Password column" HeaderText="Password" ShowNoSortIcon="False" SortExpression="Password" UniqueName="Password">
        </telerik:GridBoundColumn>--%>
                   <telerik:GridBoundColumn DataField="RowNo" DataType="System.Int64" FilterControlAltText="Filter RowNo column" HeaderText="SrNo." ReadOnly="True" ShowNoSortIcon="False" SortExpression="RowNo" UniqueName="RowNo" ItemStyle-Width="0.5">
                        <ItemStyle Width="1px"></ItemStyle>
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="firstname" FilterControlAltText="Filter First_Name column" HeaderText="First name" ShowNoSortIcon="False" SortExpression="First_Name" UniqueName="firstname">    
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="middlename" FilterControlAltText="Filter First_Name column" HeaderText="Middle name" ShowNoSortIcon="False" SortExpression="First_Name" UniqueName="middlename" ItemStyle-Width="1">    
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="lastname" FilterControlAltText="Filter Last_Name column" HeaderText="Last name" ShowNoSortIcon="False" SortExpression="Last_Name" UniqueName="lastname">
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="contactno" FilterControlAltText="Filter ContactNo column" HeaderText="Contactno." ShowNoSortIcon="False" SortExpression="ContactNo" UniqueName="contactno">
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="email" FilterControlAltText="Filter Email column" HeaderText="Email" ShowNoSortIcon="False" SortExpression="Email" UniqueName="email">
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="DOB" DataType="System.DateTime" DataFormatString="{0:dd-MM-yyyy}" FilterControlAltText="Filter DOB column" HeaderText="DOB" ShowNoSortIcon="False" SortExpression="DOB" UniqueName="DOB">
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="skills" FilterControlAltText="Filter Skills column" HeaderText="Skills" ShowNoSortIcon="False" SortExpression="Skills" UniqueName="skills">
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="gender" FilterControlAltText="Filter Gender column" HeaderText="Gender" ShowNoSortIcon="False" SortExpression="Gender" UniqueName="gender">
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="state" FilterControlAltText="Filter State column" HeaderText="State" ShowNoSortIcon="False" SortExpression="State" UniqueName="state">
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="salaryamount" FilterControlAltText="Filter State column" HeaderText="Salary" ShowNoSortIcon="False" SortExpression="State" UniqueName="salaryamount">
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="Isactive" Visible="false" FilterControlAltText="Filter Isactive column" HeaderText="IsActive" ShowNoSortIcon="False" SortExpression="State" UniqueName="Isactive">
                    </telerik:GridBoundColumn>
                    <telerik:GridTemplateColumn DataField="Action" UniqueName="ActionColumn" ItemStyle-Width="5%" HeaderStyle-Width="5%" HeaderText="Action" ItemStyle-HorizontalAlign="Center"  HeaderStyle-Font-Bold="true">
                        <ItemTemplate>
                            <asp:LinkButton ID="DataGridEdit" runat="server" Text="Edit" CommandArgument="Edit" CommandName="Edit"> 
                            </asp:LinkButton>
                            <asp:LinkButton ID="DataGridDelete" runat="server" Text="Delete" CommandArgument="Delete" CommandName="Delete"> 
                            </asp:LinkButton>
                        </ItemTemplate>
                        </telerik:GridTemplateColumn>
                 </Columns>
                <EditFormSettings EditFormType="Template">
                    <FormTemplate>
                        <uc1:AddDataGridControls runat="server" ID="ucAddDataGridControlsForm" />
                    </FormTemplate>
                </EditFormSettings>
            </MasterTableView>
            </telerik:RadGrid>
            <br />
            <br />
        </div>
    </form>
   
</body>
</html>
