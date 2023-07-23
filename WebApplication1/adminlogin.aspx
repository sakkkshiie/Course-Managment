<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="WebApplication1.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="background-color:#33CCFF;">
    <form id="form1" runat="server">
    <center>
        <h1>Course Managment System</h1>
         <div style="border: 5px solid; position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%); padding: 10px; align-items: center;>
            <h2>Login</h2>
             
           <label for="txtUsername">Username:</label>
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
        </div>
    </center>
    
       
    </form>
</body>
</html>
