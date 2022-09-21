<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="RegistrationSample.Registration" %>

<%@ Register assembly="Telerik.Web.UI" namespace="Telerik.Web.UI" tagprefix="telerik" %>

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
</head>
<body>
    <form id="form1" runat="server" class="well form-horizontal" onsubmit="validation()" autocomplete="off" method="post">
        <div>
            <telerik:RadScriptManager ID="RadScriptManager1" Runat="server">
            </telerik:RadScriptManager>
            <telerik:RadStyleSheetManager ID="RadStyleSheetManager1" Runat="server">
            </telerik:RadStyleSheetManager>
            <div class="container">

 <fieldset>

<!-- Form Name -->
<legend><center><h2><b>User Registration Form</b></h2></center></legend><br>

<!-- First name input-->

<div class="form-group">
  <div class="col-md-4 control-label">
      <telerik:RadLabel ID="LFirstName" Font-Bold="true" Font-Size="Medium" Text="First name"  runat ="server"></telerik:RadLabel>
  </div>  
  <div class="col-md-4 inputGroupContainer">
  <div class="input-group">
  <span  class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <telerik:RadTextBox ID="TFirstName" runat="server" Enabled="true" placeholder="Enter First name " AutoPostBack="true"  Skin="Bootstrap" width="100%"></telerik:RadTextBox>
   </div>
      <span id="SFirstName" class="text-danger font-weight-bold"></span>
  </div>
</div>

<!-- Last name input-->

<div class="form-group">
    <div class="col-md-4 control-label">
  <telerik:RadLabel ID="LLastName" Font-Bold="true" Font-Size="Medium" Text="Last name"  runat ="server"></telerik:RadLabel> 
     </div>
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
  <telerik:RadTextBox ID="TLastName" runat="server" Enabled="true"  placeholder="Enter Last name " Skin="Bootstrap" AutoPostBack="true" width="100%"></telerik:RadTextBox>
    </div>
        <span id="SLastName" class="text-danger font-weight-bold"></span>
  </div>
</div>

    <!-- Email address input-->
       <div class="form-group">
  <div class="col-md-4 control-label">
      <telerik:RadLabel ID="LEmailId" Font-Bold="true" Font-Size="Medium" Text="Email Id"  runat ="server"></telerik:RadLabel>
  </div>  
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
  <telerik:RadTextBox ID="TEmailId" runat="server" Enabled="true"  placeholder="Enter Email Id " AutoPostBack="true" Skin="Bootstrap" width="100%"></telerik:RadTextBox>
    </div>
        <span id="SEmailId" class="text-danger font-weight-bold"></span>
  </div>
</div>

    <!-- Password input-->

<div class="form-group">
  <div class="col-md-4 control-label" >
      <telerik:RadLabel ID="LPassword" Font-Bold="true" Font-Size="Medium" Text="Password"  runat ="server"></telerik:RadLabel>
  </div> 
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
  <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
 <telerik:RadTextBox ID="TPassword" placeholder="Enter Password" runat="server" Enabled="true" AutoPostBack="true" Skin="Bootstrap" width="100%"></telerik:RadTextBox>
    </div>
        <span id="SPassword" class="text-danger font-weight-bold"></span>
  </div>
</div>

   
     <!-- Text input-->

<div class="form-group">
  <div class="col-md-4 control-label" >
<telerik:RadLabel ID="LDOB" Font-Bold="true" Font-Size="Medium"  Text="DOB"  runat ="server"></telerik:RadLabel>
  </div> 
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
      <telerik:RadDatePicker ID="DOBDatePicker1" runat="server"></telerik:RadDatePicker>
    </div>
  </div>
</div>
  
<!-- Gender input-->

<div class="form-group">
  <div class="col-md-4 control-label">
    <telerik:RadLabel ID="LGender" Font-Bold="true" Font-Size="Medium" Text="Gender"  runat ="server"></telerik:RadLabel>
  </div>  
  <div class="col-md-4 inputGroupContainer">
  <div class="input-group">
  
  <telerik:RadRadioButtonList ID="TGender" runat="server" Direction="Horizontal"  Skin="Bootstrap" AutoPostBack="false" Width="100%">
                                          <Items>
                                              <telerik:ButtonListItem Text="Male" value="Male" Selected="true"/>
                                              <telerik:ButtonListItem Text="Female" value="Female" />
                                              <telerik:ButtonListItem Text="Other" value="Other"/>
                                          </Items>
                                      </telerik:RadRadioButtonList>
     
    </div>
       <span id="SGender" class="text-danger font-weight-bold"></span>
  </div>
</div>

<!-- Contact No. input-->
       
<div class="form-group">
  <div class="col-md-4 control-label">
     <telerik:RadLabel ID="LContactNo" Font-Bold="true" Font-Size="Medium" Text="Contact No."  runat ="server"></telerik:RadLabel>
  </div>  
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
        <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
 <telerik:RadTextBox ID="TContactNo" runat="server" Enabled="true"  placeholder="Enter Contact No. " Skin="Bootstrap" Width="100%" AutoPostBack="true"></telerik:RadTextBox>
    </div>
        <span id="SContactNo" class="text-danger font-weight-bold"></span>
  </div>
</div>

  <!-- State dropdown input-->
  <div class="form-group"> 
  <div class="col-md-4 control-label">
      <telerik:RadLabel ID="LStateDropDownList" Font-Bold="true" Font-Size="Medium" Text="State"  runat ="server"></telerik:RadLabel>
  </div>
    <div class="col-md-4 selectContainer">
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
</div>


<!-- Skills address input-->
     <%--  <div class="form-group">
  <div class="col-md-4 control-label">
      <telerik:RadLabel ID="LSkill" Font-Bold="true" Font-Size="Medium" Text="Skills"  runat ="server"></telerik:RadLabel>
  </div>  
    <div class="col-md-4 inputGroupContainer">
    <div class="input-group">
  <telerik:RadCheckBoxList ID="TSkill"  Runat="server" ValidateRequestMode="Enabled" AutoPostBack="False" Direction="Horizontal" Layout="UnorderedList" Width="100%">
                        <Items>
                            <telerik:ButtonListItem Text="C++" Selected="false" />
                            <telerik:ButtonListItem Text="C#" Selected="false"/>
                            <telerik:ButtonListItem Text="Python" Selected="false" />
                            <telerik:ButtonListItem Text="Java" Selected="false"/>
                            <telerik:ButtonListItem Text="Angular" Selected="false" />
                            <telerik:ButtonListItem Text="Communication" Selected="false" />
                        </Items>
                    </telerik:RadCheckBoxList> 
    </div>
        <asp:RequiredFieldValidator ID="SkillsChkboxValidator" runat="server" ControlToValidate="TSkill" ForeColor="Red" Font-Bold="true" ErrorMessage="Please choose at least one of the"></asp:RequiredFieldValidator>
        <span id="SSkills" class="text-danger font-weight-bold"></span>
  </div>
</div>--%>

<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label"></label>
  <div class="col-md-4"><br>
    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<telerik:RadButton ID="save" runat="server"  Font-Size="Medium" BackColor="#42b72a" ForeColor="White" Text="Submit" Skin="Bootstrap" AutoPostBack="true"  ConfirmText="Do you really want to save the record ?" ConfirmDialogType="RadWindow" OnClick="save_Click" >
                                     </telerik:RadButton>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<telerik:RadButton ID="reset" runat="server" Font-Size="Medium" BackColor="#ff0000" Text="Reset" ForeColor="White" Skin="Bootstrap" OnClick="reset_Click" ></telerik:RadButton>
      &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<br /><br />&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<asp:HyperLink ID="loginLink1" runat="server" NavigateUrl="Login.aspx">Click here to login</asp:HyperLink>
      <%--<telerik:RadLinkButton ID="loginLink" runat="server" Text="Click here to login" Font-Size="Medium" ForeColor="White" BackColor="#3366ff" Skin="Bootstrap" NavigateUrl="Login.aspx"></telerik:RadLinkButton>--%>
  </div>
</div>

</fieldset>   

 </div>
    
    </form>
    <script src="Scripts/sweetalert.min.js"></script>

     <script src="JSRegistrationPage.js"></script>
</body>
</html>
