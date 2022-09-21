<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" EnableSessionState="True" Inherits="RegistrationSample.Login" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link href="bootstrap.min.css" rel="stylesheet" />
    <script src="bootstrap.3.0.0/content/Scripts/bootstrap.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.1.js"></script>
    <style>
        * {
    padding: 0;
    margin: 0;
    box-sizing: border-box;
}
           
body {
    font-family: 'Poppins', sans-serif;
    background-color: #f0f2f5;
    color: #1c1e21;
}

main {
    height: 100vh;
    width: 100vw;
    position: relative;
    margin: 0 auto;
}


.row {
    display: flex;
    justify-content: space-around;
    align-items: center;
    width: 100%;
    max-width: 1000px;
    position: absolute;
    left: 50%;
    top: 50%;
    transform: translate(-50%, -50%);
}

.colm-logo {
    flex: 0 0 50%;
    text-align: center;
}

.colm-form {
    flex: 0 0 40%;
    text-align: center;
}

.colm-logo img {
    max-width: 800px;
}

.colm-logo h2 {
    font: 16px;
    font-weight: 200;
    padding: 0 30px;
    line-height: 32px;
}

.colm-form .form-container {
    background-color: #ffffff;
    border: none;
    border-radius: 10px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1), 0 8px 16px rgba(0, 0, 0, 0.1);
    margin-bottom: 30px;
    padding: 20px;
    max-width: 400px;
}

.colm-form .form-container input, .colm-form .form-container .btn-login {
    width: 100%;
    margin: 5px 0;
    height: 45px;
    vertical-align: middle;
    font-size: 16px;
}

.textbox {
    border: 1px solid #dddfe2;
    color: #1d2129;
    padding: 0 8px;
    outline: none;
}

.colm-form .form-container input:focus {
    border-color: #1877f2;
    box-shadow: 0 0 0 2px #e7f3ff;
}

  .btn-Blogin {
    background-color: #1877f2;
    border: none;
    border-radius: 6px;
    font-size: 20px;
    padding: 0 16px;
    color: #ffffff;
    font-weight: 700;
}

.colm-form .form-container a {
    display: block;
    color: #1877f2;
    font-size: 14px;
    text-decoration: none;
    padding: 10px 0 20px;
    border-bottom: 1px solid #dadde1;
}

.colm-form .form-container a:hover {
    text-decoration: underline;
}

.colm-form .form-container .btn-new {
    background-color: #42b72a;
    border: none;
    border-radius: 6px;
    font-size: 17px;
    line-height: 48px;
    padding: 0 16px;
    color: #ffffff;
    font-weight: 700;
    margin-top: 20px; 
}

.colm-form p {
    font-size: 14px;
}

.colm-form p a {
    text-decoration: none;
    color: #1c1e21;
    font-weight: 600;
}

.colm-form p a:hover {
    text-decoration: underline;
}
    </style>
</head>
<body>
    <form id="form1" runat="server" autocomplete="off" >
        <div>
        </div>
        <telerik:RadScriptManager ID="RadScriptManager1" runat="server"></telerik:RadScriptManager>
        <main>
        <div class="row">
            <div class="colm-logo">
                <img src="Scripts/TudioLogo.png" alt="Logo"/>
                <%--<img src="https://static.xx.fbcdn.net/rsrc.php/y8/r/dF5SId3UHWd.svg" alt="Logo" />--%>
                <h2>We are agile. We are responsive. We solve problems. And we solve them really well.</h2>
            </div>
            <div class="colm-form">
                <div class="form-container">
                    <telerik:RadLabel ID="RadLabel1" runat="server" Font-Bold="true" Font-Size="XX-Large">Login</telerik:RadLabel>
                    
                    <br /><br />
                    <telerik:RadTextBox ID="TEmail" runat="server" Enabled="true" InputType="Text" CssClass="input-sm" Font-Bold="true" Font-Size="Medium"  placeholder="Email address" Width="90%" AutoPostBack="false" ></telerik:RadTextBox>
                    <br />
                    <span id="SEmailId" class="text-danger font-weight-bold"  style="font-weight:bold"></span>
                    <br />
                    <telerik:RadTextBox ID="TPassword" runat="server" Enabled="true" InputType="Text" CssClass="form-control input-sm" Font-Bold="true" Font-Size="Medium" TextMode="Password" placeholder="Password"  Width="90%" AutoPostBack="false"></telerik:RadTextBox>
                    <br />
                    <span id="SPassword" class="text-danger font-weight-bold" style="font-weight:bold"></span>
                    <br /> <%--style="display:inline-block;background-color:#3333FF;border-style:Solid;height:60px;width:80%;height:60px;"--%>
                   <%-- <telerik:RadButton ID="RadButton1" runat="server" Height="60px" Text="Login" Width="80%" BackColor="#3333FF" BorderStyle="Solid">
                    </telerik:RadButton>--%>
                   <%-- <button class="btn-Blogin">Login</button>--%>
                    <%--<a href="#">Forgotten password?</a>
                    <button class="btn-new">Create new Account</button>--%>
                    <%--<telerik:RadButton ID="RadButton2" runat="server" Text="Submit" Value="submit"  >
                                     </telerik:RadButton>--%>
                    <telerik:RadButton ID="BLogin" runat="server"  Text="Login" Font-Bold="true" Font-Size="Large" BackColor="#3333ff" ForeColor="White" Skin="Bootstrap" Width="80%" Height="30px" OnClientClick="function(); return true;" OnClick="BLogin_Click" ></telerik:RadButton>
                    <br /><br />
                    <asp:HyperLink ID="HyperLink1" runat="server" Font-Bold="true" Font-Size="Large" Text="Register" NavigateUrl="Registration.aspx">Register now</asp:HyperLink>
                </div>
             </div>
        </div>
    </main>

         </form>
    <script src="JSLogin.js"></script>
</body>
</html>
