<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="student_enrollment_admin.aspx.cs" Inherits="WebApplication1.student_enrollment_admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 50%;
            left: 50%;
            width: 385px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="border-style: solid; border-color: inherit; border-width: 5px; transform: translate(-50%, -50%); padding: 10px;" class="auto-style1">

            Enrolled Students:
            <asp:DropDownList ID="dropDown_1" runat="server">
            </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
            <br />
            Name:&nbsp;
            <asp:TextBox ID="txt_name" runat="server"></asp:TextBox>
            &nbsp;
            <asp:Button ID="btn_get" runat="server" OnClick="btn_get_Click" Text="Get Cource" />
            <br />
            <br />
            Title:&nbsp;&nbsp;
            <asp:TextBox ID="txt_title" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btn_enroll" runat="server" Height="42px" Text="Disenroll" Width="87px" OnClick="btn_enroll_Click" />
&nbsp;&nbsp;
            <asp:Label ID="lblMessage" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
