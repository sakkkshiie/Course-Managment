<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="WebApplication1.register1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 50%;
            left: 50%;
            width: 358px;
            height: 183px;
        }
    </style>
</head>
<body style="background-color:#33CCFF;">
    <form id="form1" runat="server">
        <center>
            <h1>Course Managment System</h1>

            <div style="border-style: solid; border-color: inherit; border-width: 5px; transform: translate(-50%, -50%); padding: 10px; align-items: center;&gt;
            &lt;h2&gt;Registration Page&lt;/h2&gt;
            &lt;label for="txtName" class="auto-style1">Name: </label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;<asp:TextBox ID="txtName" runat="server" />
                <br />
            <br />
            <label for="txtPassword">Password:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>&nbsp;<asp:TextBox ID="txtPassword" runat="server" TextMode="Password" />
                <br />
            <br />
            <label for="txtcPassword">Confirm Password:</label>&nbsp;
            <asp:TextBox ID="txtcPassword" runat="server" TextMode="Password" /><br />
            <br />
            <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" />
        &nbsp;
            <asp:Label ID="lblMessage" runat="server"></asp:Label>
        </div>
        </center>
        
    </form>
</body>
</html>
