<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationPage.aspx.cs" Inherits="RegistrationSample.RegistrationPage" %>

<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration Page</title>

    <script src="bootstrap.3.0.0/jquery.min.js"></script>
    <script src="bootstrap.3.0.0/jquery.validate.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validation-unobtrusive/4.0.0/jquery.validate.unobtrusive.min.js"></script>
    <style type="text/css">
        .auto-style1 {
            width: 167px;
        }
        .auto-style2 {
            width: 389px;
        }
    </style>
    ;
    <link href="bootstrap.min.css" rel="stylesheet" />
    <script src="bootstrap.3.0.0/content/Scripts/bootstrap.min.js"></script>
    
    <link href="Styles/sweetalert.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server" onsubmit="validation()" method="post" class="row g-3">
        
        <div>
        </div>
        <telerik:RadStyleSheetManager ID="RadStyleSheetManager1" Runat="server">
        </telerik:RadStyleSheetManager>
        <telerik:RadScriptManager ID="RadScriptManager1" Runat="server">
        </telerik:RadScriptManager>
      
<div class="form-group">
  <div class="col-md-6">
    
    <telerik:RadTextBox ID="TFirstName" runat="server" Enabled="true" CssClass="form-control" placeholder="Enter First Name "  Skin="Bootstrap" width="100%"></telerik:RadTextBox>
    <span id="SFirstName" class="text-danger font-weight-bold"></span>
	</div>
  </div>
  
  <div class="form-group">
  <div class="col-md-6">
    <telerik:RadLabel ID="LLastName"  Text="Last Name :"  runat ="server"></telerik:RadLabel>
    <telerik:RadTextBox ID="TLastName" runat="server" Enabled="true" CssClass="form-control input-sm" placeholder="Enter Last Name " Skin="Bootstrap"></telerik:RadTextBox>
    <span id="SLastName" class="text-danger font-weight-bold"></span>
  </div>
  </div>
  
  <div class="form-group>
  <div class="col-12">
    <telerik:RadLabel ID="LEmailId"  Text="Email Id :"  runat ="server"></telerik:RadLabel>
    <telerik:RadTextBox ID="TEmailId" runat="server" Enabled="true" CssClass="form-control input-sm" placeholder="Enter Email Id " Skin="Bootstrap"></telerik:RadTextBox>
    <span id="SEmailId" class="text-danger font-weight-bold"></span>
  </div>
  </div>
  
  <div class="form-group">
  <div class="col-md-6">
    <telerik:RadLabel ID="LPassword"  Text="Password :"  runat ="server"></telerik:RadLabel>
    <telerik:RadTextBox ID="TPassword" placeholder="Enter Password" runat="server" Enabled="true" CssClass="form-control input-sm" Skin="Bootstrap"></telerik:RadTextBox>
    <span id="SPassword" class="text-danger font-weight-bold"></span>
  </div>
  </div>
  
  <div class="form-group">
  <div class="col-md-6">
    <telerik:RadLabel ID="LContactNo"  Text="Contact No. :"  runat ="server"></telerik:RadLabel>
    <telerik:RadTextBox ID="TContactNo" runat="server" Enabled="true" CssClass="form-control input-sm" placeholder="Enter Contact No. " Skin="Bootstrap"></telerik:RadTextBox>
    <span id="SContactNo" class="text-danger font-weight-bold"></span>
  </div>
  </div>
  
  <div class="form-group">
  <div class="col-md-6">
    <telerik:RadLabel ID="LDOB"  Text="DOB :"  runat ="server"></telerik:RadLabel>
                                      <telerik:RadDatePicker ID="DOBDatePicker" Runat="server" Culture="en-US" MaxDate="2022-08-24" SelectedDate="2022-08-24" Skin="Bootstrap" >
<Calendar UseRowHeadersAsSelectors="False" UseColumnHeadersAsSelectors="False" EnableWeekends="True" FastNavigationNextText="&amp;lt;&amp;lt;" Skin="Bootstrap"></Calendar>

<DateInput DisplayDateFormat="M/d/yyyy" DateFormat="M/d/yyyy" SelectedDate="2022-08-24" DisplayText="8/24/2022" LabelWidth="40%" value="8-24-2022">
<EmptyMessageStyle Resize="None"></EmptyMessageStyle>

<ReadOnlyStyle Resize="None"></ReadOnlyStyle>

<FocusedStyle Resize="None"></FocusedStyle>

<DisabledStyle Resize="None"></DisabledStyle>

<InvalidStyle Resize="None"></InvalidStyle>

<HoveredStyle Resize="None"></HoveredStyle>

<EnabledStyle Resize="None"></EnabledStyle>
</DateInput>

<DatePopupButton ImageUrl="" HoverImageUrl=""></DatePopupButton>
                                          
                                           </telerik:RadDatePicker>
                                       <span id="SDOB" class="text-danger font-weight-bold"></span>
  </div>
  <div class="col-md-4">
    <telerik:RadLabel ID="LStateDropDownList"  Text="State :"  runat ="server"></telerik:RadLabel>
                                      <telerik:RadDropDownList ID="StateDropDownList" runat="server" SelectedText="Select State" Skin="Bootstrap">
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
                                       <span id="SStateDropDownList" class="text-danger font-weight-bold"></span>
  </div>
  </div>
   <div class="form-group">
  <div class="col-md-8">
    <telerik:RadLabel ID="LGender"  Text="Gender :"  runat ="server"></telerik:RadLabel>
                                      <telerik:RadRadioButtonList ID="TGender" runat="server" Direction="Horizontal" Skin="Bootstrap" AutoPostBack="false">
                                          <Items>
                                              <telerik:ButtonListItem Text="Male" value="Male"/>
                                              <telerik:ButtonListItem Text="Female" value="Female" />
                                              <telerik:ButtonListItem Text="Other" value="Other"/>
                                          </Items>
                                      </telerik:RadRadioButtonList>
                                       <span id="SGender" class="text-danger font-weight-bold"></span>
  </div>
  </div>
  
  <div class="form-group">
  <div class="col-12">
    <div class="form-check">
      <telerik:RadLabel ID="LSkill"  Text="Skills :"  runat ="server"></telerik:RadLabel>
                                      <telerik:RadCheckBoxList ID="TSkill" Runat="server" AutoPostBack="False" Direction="Horizontal" Layout="UnorderedList">
                        <Items>
                            <telerik:ButtonListItem Text="C++" />
                            <telerik:ButtonListItem Text="C#" />
                            <telerik:ButtonListItem Text="Python" />
                            <telerik:ButtonListItem Text="Java" />
                            <telerik:ButtonListItem Text="Angular" />
                            <telerik:ButtonListItem Text="Communication" />
                        </Items>
                    </telerik:RadCheckBoxList> 
                                       <span id="SSkills" class="text-danger font-weight-bold"></span>
    </div>
	</div>
  </div>
  

                   
        <table class="nav-justified">
            <tr>
                <td>&nbsp;</td>
                <td class="text-right"><telerik:RadLabel ID="LFirstName"  Text="First Name :"  runat ="server"></telerik:RadLabel></td>
                <td class="auto-style1"><telerik:RadTextBox ID="RadTextBox1" runat="server" Enabled="true" CssClass="form-control input-sm" placeholder="Enter Last Name " Skin="Bootstrap"></telerik:RadTextBox></td>
                <td>&nbsp;</td>
                <telerik:RadLabel ID="RadLabel1"  Text="Last Name :"  runat ="server"></telerik:RadLabel>
                <telerik:RadTextBox ID="RadTextBox2" runat="server" Enabled="true" CssClass="form-control input-sm" placeholder="Enter Last Name " Skin="Bootstrap"></telerik:RadTextBox>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style1">&nbsp;</td>
                <td>&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
  

                   
    <center>
 
        <telerik:RadGrid ID="RadGrid1" runat="server" AllowPaging="True" CellSpacing="-1"  GridLines="Both"  PageSize="5" Skin="Bootstrap" AutoPostBack="false" OnNeedDataSource="RadGrid1_NeedDataSource1" >
<GroupingSettings CollapseAllTooltip="Collapse all groups" ></GroupingSettings>

<MasterTableView AutoGenerateColumns="False" DataKeyNames="Id"  >
<RowIndicatorColumn ShowNoSortIcon="False" ></RowIndicatorColumn>

<ExpandCollapseColumn ShowNoSortIcon="False" ></ExpandCollapseColumn>

    <Columns>
        <telerik:GridBoundColumn DataField="RowNo" DataType="System.Int64" FilterControlAltText="Filter RowNo column" HeaderText="Sno." ReadOnly="True" ShowNoSortIcon="False" SortExpression="RowNo" UniqueName="RowNo" ItemStyle-Width ="1">
        </telerik:GridBoundColumn>
        <telerik:GridBoundColumn DataField="Id" DataType="System.Int64" FilterControlAltText="Filter Id column" HeaderText="Id" ReadOnly="True" ShowNoSortIcon="False" SortExpression="Id" UniqueName="Id">
        </telerik:GridBoundColumn>
        <telerik:GridBoundColumn DataField="First_Name" FilterControlAltText="Filter First_Name column" HeaderText="First name" ShowNoSortIcon="False" SortExpression="First_Name" UniqueName="First_Name">
        </telerik:GridBoundColumn>
        <telerik:GridBoundColumn DataField="Last_Name" FilterControlAltText="Filter Last_Name column" HeaderText="Last name" ShowNoSortIcon="False" SortExpression="Last_Name" UniqueName="Last_Name">
        </telerik:GridBoundColumn>
        <telerik:GridBoundColumn DataField="ContactNo" FilterControlAltText="Filter ContactNo column" HeaderText="Contactno." ShowNoSortIcon="False" SortExpression="ContactNo" UniqueName="ContactNo">
        </telerik:GridBoundColumn>
        <telerik:GridBoundColumn DataField="Email" FilterControlAltText="Filter Email column" HeaderText="Email" ShowNoSortIcon="False" SortExpression="Email" UniqueName="Email">
        </telerik:GridBoundColumn>
        <telerik:GridBoundColumn DataField="Password" FilterControlAltText="Filter Password column" HeaderText="Password" ShowNoSortIcon="False" SortExpression="Password" UniqueName="Password">
        </telerik:GridBoundColumn>
        <telerik:GridBoundColumn DataField="Skills" FilterControlAltText="Filter Skills column" HeaderText="Skills" ShowNoSortIcon="False" SortExpression="Skills" UniqueName="Skills">
        </telerik:GridBoundColumn>
        <telerik:GridBoundColumn DataField="DOB" DataType="System.DateTime" DataFormatString="{0:dd-MM-yyyy}" FilterControlAltText="Filter DOB column" HeaderText="DOB" ShowNoSortIcon="False" SortExpression="DOB" UniqueName="DOB">
        </telerik:GridBoundColumn>
        <telerik:GridBoundColumn DataField="Gender" FilterControlAltText="Filter Gender column" HeaderText="Gender" ShowNoSortIcon="False" SortExpression="Gender" UniqueName="Gender">
        </telerik:GridBoundColumn>
        <telerik:GridBoundColumn DataField="State" FilterControlAltText="Filter State column" HeaderText="State" ShowNoSortIcon="False" SortExpression="State" UniqueName="State">
        </telerik:GridBoundColumn>
    </Columns>

<EditFormSettings>
<EditColumn ShowNoSortIcon="False"></EditColumn>
</EditFormSettings>
</MasterTableView>
        </telerik:RadGrid></center>
   </form>
    <script src="Scripts/sweetalert.min.js"></script>

     <script src="JSRegistrationPage.js"></script>
     </body>

</html>
