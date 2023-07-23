<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_panel.aspx.cs" Inherits="WebApplication1.admin_panel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <center><h1>Course Managment System</h1>

            <div style="border: 5px solid; position: absolute; top: 50%; left: 50%; transform: translate(-50%, -50%); padding: 10px; align-items: center; background:cyan;">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <br />
&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
            <asp:Button ID="btn_courceManage" runat="server" Text="Manage Cource" Height="54px" Width="233px" OnClick="btn_courceManage_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btn_stdManage" runat="server" Height="57px" Text="Student Enrollment" Width="234px" OnClick="btn_stdManage_Click" />
            <br />
            <br />
        </div>

        </center>
        
    </form>
</body>
</html>
