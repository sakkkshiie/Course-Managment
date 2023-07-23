<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="first_page.aspx.cs" Inherits="WebApplication1.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
  
</head>
<body style="background-color:#33CCFF;">
    <form id="form1" runat="server">
        <center><h1>Cource Enrollment System</h1></center>
        <center>
            <div style="border: 5px solid; position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%); padding: 10px; align-items: center;background-color:white">
            <asp:Panel ID="Panel1" runat="server" BackColor="#508eb7" Height="394px" Width="381px" >
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;
                
                <asp:Button ID="btn_register" runat="server" Text="Register" Height="42px" OnClick="Button1_Click" Width="93px" />
                <br />
                <br />
                &nbsp;&nbsp; &nbsp;
                <asp:Button ID="btn_login" runat="server" Height="43px" OnClick="btn_login_Click" Text="Login" Width="92px" />
            </asp:Panel>
        </div>
        </center>
    </form>
    <p>
&nbsp;&nbsp;
    </p>
</body>
</html>
