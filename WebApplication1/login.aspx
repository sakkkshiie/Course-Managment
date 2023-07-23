<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 50%;
            left: 50%;
            width: 389px;
            height: 214px;
        }
    </style>
    </head>
<body style="background-color:#33CCFF;">
    <form id="form1" runat="server">
        <center><h1>Course Managment System</h1>
             <div style="border-style: solid; border-color: inherit; border-width: 5px; transform: translate(-50%, -50%); padding: 10px;&gt;
            &lt;h2&gt;Login Page&lt;/h2&gt;
            &lt;label for="txtUsername" class="auto-style1">Username:</label>
            <asp:TextBox ID="txtUsername" runat="server" />
            <br />
            <br />
            <label for="txtPassword">Password:</label>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" />
            <br />
            <br />
            <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblMessage" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Button ID="btn_admin" runat="server" OnClick="btn_admin_Click" Text="Admin" />
        </div>
        </center>
       
    </form>
</body>
</html>
