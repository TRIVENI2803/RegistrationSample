<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AddDataGridControls.ascx.cs" Inherits="RegistrationSample.AddDataGridControls" %>
<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>


<%--<form id="formMemberData" runat="server">--%>

<asp:Panel ID="MainPanel" runat="server" CssClass="well form-horizontal">
    <telerik:RadAjaxManager ID="RadAjaxManager1" runat="server"></telerik:RadAjaxManager>
    <%--<telerik:RadScriptManager ID="RadScriptManager1" runat="server"></telerik:RadScriptManager>
    <telerik:RadStyleSheetManager ID="RadStyleSheetManager1" runat="server"></telerik:RadStyleSheetManager>--%>
   <%-- <h1>Triveni's member Data</h1>--%>

 <div class="container px-0 py-0">
     <style>
         #requiredTest
         {
             display:block !important;
         }
     </style>
                <div class="row">
                    <div class="col-lg-4 col-md-4 col-sm-4 col-12">
                        <telerik:RadLabel ID="LFirstName" Font-Bold="true" Font-Size="Medium" Text="First name" runat="server" style="margin-top: 20px;"></telerik:RadLabel>
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                            <telerik:RadTextBox ID="TFirstName" runat="server" Enabled="true" placeholder="Enter First name " AutoPostBack="false" Skin="Bootstrap" Width="100%"></telerik:RadTextBox>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-4 col-12">
                        <telerik:RadLabel ID="LMiddleName" Font-Bold="true" Font-Size="Medium" Text="Middle name" runat="server" style="margin-top: 20px;"></telerik:RadLabel>
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                            <telerik:RadTextBox ID="TMiddleName" runat="server" Enabled="true" placeholder="Enter Middle name " AutoPostBack="false" Skin="Bootstrap" Width="100%"></telerik:RadTextBox>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-4 col-12">
                        <telerik:RadLabel ID="LLastName" Font-Bold="true" Font-Size="Medium" Text="Last name" runat="server" style="margin-top: 20px;"></telerik:RadLabel>
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                            <telerik:RadTextBox ID="TLastName" runat="server" Enabled="true" placeholder="Enter Last name " Skin="Bootstrap" AutoPostBack="false" Width="100%"></telerik:RadTextBox>
                        </div>
                        <span id="SLastName" class="text-danger font-weight-bold"></span>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-4 col-12">
                        <telerik:RadLabel ID="LEmailId" Font-Bold="true" Font-Size="Medium" Text="Email Id" runat="server" style="margin-top: 20px;"></telerik:RadLabel>
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                            <telerik:RadTextBox ID="TEmailId" runat="server" Enabled="true" placeholder="Enter Email Id " AutoPostBack="false" Skin="Bootstrap" Width="100%"></telerik:RadTextBox>
                        </div>
                        <span id="SEmailId" class="text-danger font-weight-bold"></span>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-4 col-12">
                        <telerik:RadLabel ID="LSalary" Font-Bold="true" Font-Size="Medium" Text="Salary" runat="server" style="margin-top: 20px;"></telerik:RadLabel>
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-credit-card"></i></span>
                            <telerik:RadNumericTextBox ID="TSalary"  placeholder="Enter Salary " AutoPostBack="false" Skin="Bootstrap" Width="100%" runat="server"></telerik:RadNumericTextBox>
                        </div>
                    </div>

                    

                    <%--<div class="col-lg-4 col-md-4 col-sm-4 col-12">
                        <telerik:RadLabel ID="LPassword" Font-Bold="true" Font-Size="Medium" Text="Password" runat="server" style="margin-top: 20px;"></telerik:RadLabel>

                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                            <telerik:RadTextBox ID="TPassword" placeholder="Enter Password" runat="server" Enabled="true" AutoPostBack="false" Skin="Bootstrap" Width="100%"></telerik:RadTextBox>
                        </div>
                        <span id="SPassword" class="text-danger font-weight-bold"></span>
                    </div>--%>
                    <div class="col-lg-4 col-md-4 col-sm-4 col-12">
                        <telerik:RadLabel ID="LStateDropDownList" Font-Bold="true" Font-Size="Medium" Text="State" runat="server" style="margin-top: 20px;"></telerik:RadLabel>
                        <div class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
                            <telerik:RadDropDownList ID="StateDropDownList" runat="server" SelectedText="Select State" Skin="Bootstrap" AutoPostBack="false" Width="100%">
                                <Items>
                                    <telerik:DropDownListItem runat="server" Selected="True" Text="Select State" Value="-1"/>
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
                            <telerik:RadTextBox ID="TContactNo" runat="server" Enabled="true" placeholder="Enter Contact No. " Skin="Bootstrap" Width="100%" AutoPostBack="false"></telerik:RadTextBox>
                        </div>
                        <span id="SContactNo" class="text-danger font-weight-bold"></span>
                    </div>

                    <div class="col-lg-4 col-md-4 col-sm-4 col-12">
                        <telerik:RadLabel ID="LDOB" Font-Bold="true" Font-Size="Medium" Text="DOB" runat="server" style="margin-top: 20px;"></telerik:RadLabel>
                        <div class="input-group">
                            <telerik:RadDatePicker ID="DOBDatePicker" runat="server" Width="100%" AutoPostBack="false"></telerik:RadDatePicker>
                           <%-- <telerik:RadTextBox ID="DOBDatePicker" runat="server" Font-Bold="true" ReadOnly="true" Skin="Bootstrap" Width="50%" AutoPostBack="false">
                            </telerik:RadTextBox>--%>
                        </div>
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
                            <telerik:RadCheckBoxList ID="ddlSkills" runat="server"  Direction="Horizontal" Layout="UnorderedList" AutoPostBack="false" Width="100%">
                                <Items>
                                   <%-- <telerik:ButtonListItem Text="Select" Selected="true" Value="0000" />--%>
                                    <telerik:ButtonListItem Text="C++" Selected="false" />
                                    <telerik:ButtonListItem Text="C#" Selected="false" />
                                    <telerik:ButtonListItem Text="Python" Selected="false" />
                                    <telerik:ButtonListItem Text="Java" Selected="false" />
                                    <telerik:ButtonListItem Text="Angular" Selected="false" />
                                    <telerik:ButtonListItem Text="Communication" Selected="false" />
                                </Items>
                            </telerik:RadCheckBoxList>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-4 col-sm-4 col-12">
                        <telerik:RadLabel ID="LIsActive" Font-Bold="true" Font-Size="Medium" Text="Isactive" runat="server" style="margin-top: 20px;"></telerik:RadLabel>
                        <div class="input-group">
                            <%--<span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>--%>
                           <%-- <telerik:RadRadioButton ID="IsActiveRadioButton" runat="server" Text="NO" Font-Bold="true" ></telerik:RadRadioButton>--%>
                            <telerik:RadCheckBox ID="IsActiveCheckBox" runat="server" Text="NO" Font-Bold="true" AutoPostBack="false"></telerik:RadCheckBox>
                        </div>
                    </div>

                    <div class="col-lg-4 col-md-4 col-sm-4 col-12">
                        <asp:RequiredFieldValidator ID="RequiredFieldTFirstName" runat="server" ErrorMessage="* Please Enter the First name" ValidationGroup="EmployeeAdd" ControlToValidate="TFirstName" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                        <br /><asp:RequiredFieldValidator ID="RequiredFieldTLastName" Display="Dynamic" runat="server" ErrorMessage="* Please Enter the Last name" ValidationGroup="EmployeeAdd" ControlToValidate="TLastName" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                        <br /><asp:RequiredFieldValidator ID="RequiredFieldTEmailId" Display="Dynamic" runat="server" ErrorMessage="* Please Enter the Email Id" ValidationGroup="EmployeeAdd" ControlToValidate="TEmailId" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                        <br /><asp:RequiredFieldValidator ID="RequiredFieldTContactNo" Display="Dynamic" runat="server" ErrorMessage="* Please Enter the Contact no." ValidationGroup="EmployeeAdd" ControlToValidate="TContactNo" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
<%--                        <br /><asp:RequiredFieldValidator ID="RequiredFieldTPassword" Display="Dynamic" runat="server" ErrorMessage="* Please Enter the Password" ValidationGroup="EmployeeAdd" ControlToValidate="TPassword" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>--%>
                        <br /><asp:RequiredFieldValidator ID="requiredTest" runat="server" InitialValue="0000"  ErrorMessage="* Please choose atleast one Skill" ValidationGroup="EmployeeAdd"  ControlToValidate="ddlSkills" ForeColor="Red" ></asp:RequiredFieldValidator>
                         <br /><asp:RequiredFieldValidator ID="RequiredFieldDOBDatePicker" Display="Dynamic" runat="server" ErrorMessage="* Please Select the Date" ValidationGroup="EmployeeAdd" ControlToValidate="DOBDatePicker" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                         <br /><asp:RequiredFieldValidator ID="RequiredFieldTGender" Display="Dynamic" runat="server" ErrorMessage="* Please Select the Gender" ValidationGroup="EmployeeAdd" ControlToValidate="TGender" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                        <br /><asp:RequiredFieldValidator ID="RequiredFieldStateDropDownList" Display="Dynamic" runat="server" ErrorMessage="* Please Select the State" ValidationGroup="EmployeeAdd" ControlToValidate="StateDropDownList" InitialValue="-1" ForeColor="Red" Font-Bold="true"></asp:RequiredFieldValidator>
                        </div>

                    <div class="col-lg-4 col-md-4 col-sm-4 col-12">
                        <asp:RegularExpressionValidator ID="RegularExpressionTFirstName" runat="server" ErrorMessage="* Please enter a valid characters for First name" ControlToValidate="TFirstName" ForeColor="Red" Font-Bold="true" ValidationExpression="\b([A-ZÀ-ÿ][-,a-z. ']+[ ]*)+"></asp:RegularExpressionValidator>
                        <br /><asp:RegularExpressionValidator ID="RegularExpressionTLastName" runat="server" ErrorMessage="* Please enter a valid characters for Last name" ControlToValidate="TLastName" ForeColor="Red" Font-Bold="true" ValidationExpression="\b([A-ZÀ-ÿ][-,a-z. ']+[ ]*)+"></asp:RegularExpressionValidator>
                        <br /><asp:RegularExpressionValidator ID="RegularExpressionTEmailId" runat="server" ErrorMessage="* Please enter the valid format for Email address" ControlToValidate="TEmailId" ForeColor="Red" Font-Bold="true" ValidationExpression="^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$"></asp:RegularExpressionValidator>
                        <br /><asp:RegularExpressionValidator ID="RegularExpressionTContactNo" runat="server" ErrorMessage="* Please valid 10 digits for Contact No" ControlToValidate="TContactNo" ForeColor="Red" Font-Bold="true" ValidationExpression="^[0-9]{10}$"></asp:RegularExpressionValidator>
<%--                        <br /><asp:RegularExpressionValidator ID="RegularExpressionTPassword" runat="server" ErrorMessage="* Please enter atleast 1 uppercase ,1 lowercase , 1 special character having length of 8 character" ControlToValidate="TPassword" ForeColor="Red" Font-Bold="true" ValidationExpression="^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z]).{8,}$"></asp:RegularExpressionValidator>--%>
                        <%--<asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ErrorMessage="RegularExpressionValidator" ControlToValidate="TFirstName" ForeColor="Red" Font-Bold="true"></asp:RegularExpressionValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ErrorMessage="RegularExpressionValidator" ControlToValidate="TFirstName" ForeColor="Red" Font-Bold="true"></asp:RegularExpressionValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ErrorMessage="RegularExpressionValidator" ControlToValidate="TFirstName" ForeColor="Red" Font-Bold="true"></asp:RegularExpressionValidator>
                    --%></div>



                </div>
            </div>
    <!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label"></label>
  <div class="col-md-4"><br>
    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<telerik:RadButton ID="Save" ValidationGroup="EmployeeAdd" runat="server"  Font-Size="Medium" BackColor="#42b72a" ForeColor="White" Text="Submit" Skin="Bootstrap" AutoPostBack="true" OnClick="Save_Click">
                                     </telerik:RadButton>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<telerik:RadButton ID="reset" runat="server" Font-Size="Medium" BackColor="#ff0000" Text="Reset" ForeColor="White" Skin="Bootstrap" OnClick="reset_Click"></telerik:RadButton>
      &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
      <telerik:RadButton ID="BCancel" runat="server" Text="Cancel" Skin="Bootstrap" BackColor="#6699ff" ForeColor="White" OnClick="BCancel_Click"></telerik:RadButton>
  </div>
</div>
    

<%--<div class="form-group">
                <div class="col-md-4 control-label">
                </div>
                <div class="col-md-4 inputGroupContainer">
                </div>
            </div>--%>
</asp:Panel>
 





<%--</form>--%>
