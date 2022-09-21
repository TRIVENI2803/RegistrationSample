<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MemberData.aspx.cs" Inherits="RegistrationSample.MemberData" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<%@ Register Src="~/AddDataGridControls.ascx" TagPrefix="uc1" TagName="AddDataGridControls" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validation-unobtrusive/4.0.0/jquery.validate.unobtrusive.min.js"></script>
    <script src="bootstrap.3.0.0/jquery.min.js"></script>
    <script src="bootstrap.3.0.0/jquery.validate.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.1.js"></script>
    <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
    <link href="bootstrap.3.0.0/content/Scripts/jquery-ui-1.13.2/jquery-ui.min.css" rel="stylesheet" />
    <script src="bootstrap.3.0.0/content/Scripts/jquery-ui-1.13.2/jquery-ui.min.js"></script>
    <style type="text/css">
        .auto-style3 {
            margin-right: 5px;
        }

        fieldset {
            margin: 0;
            padding: 0;
            border: solid
        }
        .auto-style4 {
            width: 21%;
            margin-left: 80px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <telerik:RadAjaxManager ID="RadAjaxManager1" runat="server">
        </telerik:RadAjaxManager>
        <div class="text-right">
            <telerik:RadScriptManager ID="RadScriptManager1" runat="server"></telerik:RadScriptManager>
            <telerik:RadStyleSheetManager ID="RadStyleSheetManager1" runat="server"></telerik:RadStyleSheetManager>

            <asp:Button ID="Logout" runat="server" Text="Logout" Font-Size="Medium" BackColor="#ff0000" ForeColor="White" Skin="Bootstrap" OnClick="Logout_Click" />
        </div>
        <!-- Form Name -->
        <center><h2><telerik:RadLabel ID="LMemberData" Text="Member Data" Font-Bold="true" Font-Size="X-Large" runat="server"></telerik:RadLabel></h2></center>

        <br />
        <br />
        <fieldset>
            <legend class="auto-style4"><telerik:RadLabel ID="RadLabel1" runat="server" Text="Update Member Data"></telerik:RadLabel>   </legend>
            <!-- First name input-->
            <div class="container px-0 py-0">
                <div class="row">
                    <div class="col-lg-4 col-md-4 col-sm-4 col-12">
                        <telerik:RadLabel ID="LFirstName" Font-Bold="true" Font-Size="Medium" Text="First name" runat="server" style="margin-top: 20px;"></telerik:RadLabel>
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                            <telerik:RadTextBox ID="TFirstName" runat="server" Enabled="true" placeholder="Enter First name " AutoPostBack="true" Skin="Bootstrap" Width="100%"></telerik:RadTextBox>
                        </div>
                        <span id="SFirstName" class="text-danger font-weight-bold"></span>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-4 col-12">
                        <telerik:RadLabel ID="LLastName" Font-Bold="true" Font-Size="Medium" Text="Last name" runat="server" style="margin-top: 20px;"></telerik:RadLabel>
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                            <telerik:RadTextBox ID="TLastName" runat="server" Enabled="true" placeholder="Enter Last name " Skin="Bootstrap" AutoPostBack="true" Width="100%"></telerik:RadTextBox>
                        </div>
                        <span id="SLastName" class="text-danger font-weight-bold"></span>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-4 col-12">
                        <telerik:RadLabel ID="LEmailId" Font-Bold="true" Font-Size="Medium" Text="Email Id" runat="server" style="margin-top: 20px;"></telerik:RadLabel>
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                            <telerik:RadTextBox ID="TEmailId" runat="server" Enabled="true" placeholder="Enter Email Id " AutoPostBack="true" Skin="Bootstrap" Width="100%"></telerik:RadTextBox>
                        </div>
                        <span id="SEmailId" class="text-danger font-weight-bold"></span>

                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-4 col-12">
                        <telerik:RadLabel ID="LPassword" Font-Bold="true" Font-Size="Medium" Text="Password" runat="server" style="margin-top: 20px;"></telerik:RadLabel>

                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                            <telerik:RadTextBox ID="TPassword" placeholder="Enter Password" runat="server" Enabled="true" AutoPostBack="true" Skin="Bootstrap" Width="100%"></telerik:RadTextBox>
                        </div>
                        <span id="SPassword" class="text-danger font-weight-bold"></span>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-4 col-12">
                        <telerik:RadLabel ID="LStateDropDownList" Font-Bold="true" Font-Size="Medium" Text="State" runat="server" style="margin-top: 20px;"></telerik:RadLabel>
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
                            <telerik:RadDropDownList ID="StateDropDownList" runat="server" SelectedText="Select State" Skin="Bootstrap" Width="100%">
                                <Items>
                                    <telerik:DropDownListItem runat="server" Selected="True" Text="Select State" />
                                    <telerik:DropDownListItem runat="server" Text="Madhya Pradesh" />
                                    <telerik:DropDownListItem runat="server" Text="Gujarat" />
                                    <telerik:DropDownListItem runat="server" Text="Uttar Pradesh" />
                                    <telerik:DropDownListItem runat="server" Text="Chhattisgarh" />
                                    <telerik:DropDownListItem runat="server" Text="Andhra Pradesh" />
                                    <telerik:DropDownListItem runat="server" Text="Arunachal Pradesh" />
                                    <telerik:DropDownListItem runat="server" Text="Bihar" />
                                    <telerik:DropDownListItem runat="server" Text="Karnataka" />
                                    <telerik:DropDownListItem runat="server" Text="Maharashtra" />
                                </Items>
                            </telerik:RadDropDownList>
                        </div>
                        <span id="SStateDropDownList" class="text-danger font-weight-bold"></span>
                    </div>
                     <div class="col-lg-4 col-md-4 col-sm-4 col-12">
                        <telerik:RadLabel ID="LContactNo" Font-Bold="true" Font-Size="Medium" Text="Contact No." runat="server" style="margin-top: 20px;"></telerik:RadLabel>
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
                            <telerik:RadTextBox ID="TContactNo" runat="server" Enabled="true" placeholder="Enter Contact No. " Skin="Bootstrap" Width="100%" AutoPostBack="true"></telerik:RadTextBox>
                        </div>
                        <span id="SContactNo" class="text-danger font-weight-bold"></span>
                    </div>

                    <div class="col-lg-4 col-md-4 col-sm-4 col-12">
                        <telerik:RadLabel ID="LDOB" Font-Bold="true" Font-Size="Medium" Text="DOB" runat="server" style="margin-top: 20px;"></telerik:RadLabel>
                        <div class="input-group">
                            <telerik:RadTextBox ID="DOBDatePicker" runat="server" Font-Bold="true" ReadOnly="true" Skin="Bootstrap" Width="90%">
                            </telerik:RadTextBox>
                        </div>
                            <span id="SDOB" class="text-danger font-weight-bold"></span>

                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-4 col-12">
                        <telerik:RadLabel ID="LGender" Font-Bold="true" Font-Size="Medium" Text="Gender" runat="server" style="margin-top: 20px;"></telerik:RadLabel>
                        <div class="input-group">

                            <telerik:RadRadioButtonList ID="TGender" runat="server" Direction="Horizontal" Skin="Bootstrap" AutoPostBack="false" Width="100%">
                                <Items>
                                    <telerik:ButtonListItem Text="Male" Value="Male" Selected="true" />
                                    <telerik:ButtonListItem Text="Female" Value="Female" />
                                    <telerik:ButtonListItem Text="Other" Value="Other" />
                                </Items>
                            </telerik:RadRadioButtonList>

                        </div>
                        <span id="SGender" class="text-danger font-weight-bold"></span>
                    </div>
                   
                    <div class="col-lg-4 col-md-4 col-sm-4 col-12">
                        <telerik:RadLabel ID="LSkill" Font-Bold="true" Font-Size="Medium" Text="Skills" runat="server" style="margin-top: 20px;"></telerik:RadLabel>
                        <div class="input-group">
                            <telerik:RadCheckBoxList ID="TSkill" runat="server" ValidateRequestMode="Enabled" AutoPostBack="False" Direction="Horizontal" Layout="UnorderedList" Width="100%" required>
                                <Items>
                                    <telerik:ButtonListItem Text="C++" Selected="false" />
                                    <telerik:ButtonListItem Text="C#" Selected="false" />
                                    <telerik:ButtonListItem Text="Python" Selected="false" />
                                    <telerik:ButtonListItem Text="Java" Selected="false" />
                                    <telerik:ButtonListItem Text="Angular" Selected="false" />
                                    <telerik:ButtonListItem Text="Communication" Selected="false" />
                                </Items>
                            </telerik:RadCheckBoxList>
                        </div>
                        <asp:RequiredFieldValidator ID="SkillsChkboxValidator" runat="server" ControlToValidate="TSkill" ErrorMessage="Please choose at least one of the"></asp:RequiredFieldValidator>
                        <span id="SSkills" class="text-danger font-weight-bold"></span>
                    </div>



                    <%--<div class="form-group ">
  <div class="col-md-4 control-label">
  </div>  
  <div class="col-md-4 inputGroupContainer">
  <div class="input-group">

  </div>--%>
                </div>
            </div>

            <!-- Last name input-->

            <div class="form-group">
                <div class="col-md-4 control-label">
                </div>
                <div class="col-md-4 inputGroupContainer">
                </div>
            </div>

            <!-- Email address input-->
            <%--       <div class="form-group">
  <div class="col-md-4 control-label">
      <telerik:RadLabel ID="LEmailId" Font-Bold="true" Font-Size="Medium" Text="Email Id"  runat ="server"></telerik:RadLabel>
  </div>  
    <div class="col-md-4 inputGroupContainer">
   
  </div>
</div>--%>

            <!-- Password input-->

            <%--<div class="form-group">
  <div class="col-md-4 control-label" >
  </div> 
    <div class="col-md-4 inputGroupContainer">
    
  </div>
</div>--%>

            <!-- State dropdown input-->
            <%-- <div class="form-group"> 
  <div class="col-md-4 control-label">
  </div>
    <div class="col-md-4 selectContainer">
  
</div>
</div>--%>

            <!-- Gender input-->

            <%--<div class="form-group">
  <div class="col-md-4 control-label">
  </div>  
  <div class="col-md-4 inputGroupContainer">
  
  </div>
</div>

<!-- Contact No. input-->
       
<div class="form-group">
  <div class="col-md-4 control-label">
  </div>  
    <div class="col-md-4 inputGroupContainer">
   
  </div>
</div>--%>

            <!-- Text input-->

            <%--<div class="form-group">
  <div class="col-md-4 control-label" >
  </div> 
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">--%>
            <%--<Calendar UseRowHeadersAsSelectors="False" UseColumnHeadersAsSelectors="False" EnableWeekends="True"  FastNavigationNextText="&amp;lt;&amp;lt;" Skin="Bootstrap"></Calendar>

<DateInput DisplayDateFormat="M/d/yyyy" DateFormat="M/d/yyyy"  LabelWidth="40%" >
<EmptyMessageStyle Resize="None"></EmptyMessageStyle>

<ReadOnlyStyle Resize="None"></ReadOnlyStyle>

<FocusedStyle Resize="None"></FocusedStyle>

<DisabledStyle Resize="None"></DisabledStyle>

<InvalidStyle Resize="None"></InvalidStyle>

<HoveredStyle Resize="None"></HoveredStyle>

<EnabledStyle Resize="None"></EnabledStyle>
</DateInput>

<DatePopupButton ImageUrl="" HoverImageUrl=""></DatePopupButton>--%>
            <%--                                      
    </div>
  </div>
</div>--%>

            <!-- Skills address input-->
            <%--      <div class="form-group">
  <div class="col-md-4 control-label">
  </div>  
    <div class="col-md-4 inputGroupContainer">
  
  </div>
</div>--%>
            <%--<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label"></label>
  <div class="col-md-4"><br>
    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<telerik:RadButton ID="save" runat="server"  Font-Size="Medium" BackColor="#42b72a" ForeColor="White" Text="Submit" Skin="Bootstrap" AutoPostBack="true"  OnClick="save_Click" >
                                     </telerik:RadButton>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<telerik:RadButton ID="reset" runat="server" Font-Size="Medium" BackColor="#ff0000" Text="Reset" ForeColor="White" Skin="Bootstrap" OnClick="reset_Click" ></telerik:RadButton>
      &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<br /><br />&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<telerik:RadLinkButton ID="loginLink" runat="server" Text="Click here to login" Font-Size="Medium" ForeColor="White" BackColor="#3366ff" Skin="Bootstrap" NavigateUrl="Login.aspx"></telerik:RadLinkButton>
  </div>
</div>--%>
        </fieldset>

        <br />
        <br />
        <br />
        <telerik:RadGrid ID="DataGrid" runat="server" AllowPaging="True" GridLines="Both" RenderMode="Lightweight"  HorizontalAlign="Center" CellSpacing="-1" PageSize="5" Skin="Bootstrap" AutoPostBack="false" CssClass="auto-style3" OnNeedDataSource="DataGrid_NeedDataSource">
            

            <MasterTableView AutoGenerateColumns="False" DataKeyNames="Id" CommandItemDisplay="Top" CommandItemSettings-AddNewRecordText="AddNewItemInDataGrid" CommandItemSettings-ShowAddNewRecordButton="true" InsertItemPageIndexAction="ShowItemOnCurrentPage" CommandItemSettings-ShowRefreshButton="true" AllowCustomSorting="true">
                
                

                <Columns>
                    <telerik:GridBoundColumn DataField="Id" DataType="System.Int64" Visible="false" FilterControlAltText="Filter Id column" HeaderText="Id" ReadOnly="True" ShowNoSortIcon="False" SortExpression="Id" UniqueName="Id">
        </telerik:GridBoundColumn>
                    <%--<telerik:GridBoundColumn DataField="Password" FilterControlAltText="Filter Password column" HeaderText="Password" ShowNoSortIcon="False" SortExpression="Password" UniqueName="Password">
        </telerik:GridBoundColumn>--%>
                    <telerik:GridBoundColumn DataField="RowNo" DataType="System.Int64" FilterControlAltText="Filter RowNo column" HeaderText="SrNo." ReadOnly="True" ShowNoSortIcon="False" SortExpression="RowNo" UniqueName="RowNo" ItemStyle-Width="1">
                        <ItemStyle Width="1px"></ItemStyle>
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="First_Name" FilterControlAltText="Filter First_Name column" HeaderText="First name" ShowNoSortIcon="False" SortExpression="First_Name" UniqueName="First_Name">
                        
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="Last_Name" FilterControlAltText="Filter Last_Name column" HeaderText="Last name" ShowNoSortIcon="False" SortExpression="Last_Name" UniqueName="Last_Name">
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="ContactNo" FilterControlAltText="Filter ContactNo column" HeaderText="Contactno." ShowNoSortIcon="False" SortExpression="ContactNo" UniqueName="ContactNo">
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="Email" FilterControlAltText="Filter Email column" HeaderText="Email" ShowNoSortIcon="False" SortExpression="Email" UniqueName="Email">
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="DOB" DataType="System.DateTime" DataFormatString="{0:dd-MM-yyyy}" FilterControlAltText="Filter DOB column" HeaderText="DOB" ShowNoSortIcon="False" SortExpression="DOB" UniqueName="DOB">
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="Skills" FilterControlAltText="Filter Skills column" HeaderText="Skills" ShowNoSortIcon="False" SortExpression="Skills" UniqueName="Skills">
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="Gender" FilterControlAltText="Filter Gender column" HeaderText="Gender" ShowNoSortIcon="False" SortExpression="Gender" UniqueName="Gender">
                    </telerik:GridBoundColumn>
                    <telerik:GridBoundColumn DataField="State" FilterControlAltText="Filter State column" HeaderText="State" ShowNoSortIcon="False" SortExpression="State" UniqueName="State">
                    </telerik:GridBoundColumn>
                    <telerik:GridTemplateColumn UniqueName="ActionColumn" ItemStyle-Width="6%" HeaderStyle-Width="6%" HeaderText="Action" ItemStyle-HorizontalAlign="Center"  HeaderStyle-Font-Bold="true">
                        <ItemTemplate>
                           <asp:LinkButton ID="DataGridEdit" runat="server" Text="Edit" CommandArgument="Edit" CommandName="Edit" OnClick="DataGridEdit_Click"> 
                            </asp:LinkButton>
                            <asp:LinkButton ID="DataGridSave" runat="server" Text="Delete" CommandArgument="Edit" CommandName="Edit" OnClick="DataGridSave_Click"> 
                            </asp:LinkButton>
                        </ItemTemplate>
                    </telerik:GridTemplateColumn>

                  <%--  <telerik:GridEditCommandColumn ButtonType="ImageButton" HeaderText="Edit" UniqueName="EditCommandColumn" CommandName="Edit" >
 
                    <ItemStyle CssClass="MyImageButton" ></ItemStyle>
 
                </telerik:GridEditCommandColumn>--%>
                    <%--<telerik:GridButtonColumn HeaderText="Edit"  
 
                     ButtonType="ImageButton" CommandName="Edit" Text="Edit" 
 
                    UniqueName="EditColumn">
 
                    <ItemStyle HorizontalAlign="Center" Width="1px" CssClass="MyImageButton"></ItemStyle>
 
                </telerik:GridButtonColumn>
                      
                    <telerik:GridButtonColumn HeaderText="Remove" ConfirmText="Apagar utilizador?" ConfirmDialogType="RadWindow"
 
                    ConfirmTitle="Delete" ButtonType="ImageButton" CommandName="Delete" Text="Delete" 
 
                    UniqueName="DeleteColumn">
 
                    <ItemStyle HorizontalAlign="Center" Width="1px" CssClass="MyImageButton"></ItemStyle>
 
                </telerik:GridButtonColumn>--%>
 
         
                    
                    
                </Columns>

                <EditFormSettings>
                   <%-- <FormTemplate>
                       <uc1:AddDataGridControls runat="server" id="AddDataGridControls" /> 
                    </FormTemplate>--%>
                    <%--<EditColumn ShowNoSortIcon="False">
                    </EditColumn>
               <%-- </EditFormSettings>--%>
            </MasterTableView>
           <%-- <ItemStyle BorderStyle="Outset" />--%>
        </telerik:RadGrid>--%>



    </form>
    <script src="JSRegistrationPage.js"></script>
</body>
</html>
