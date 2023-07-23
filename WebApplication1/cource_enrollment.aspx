<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cource_enrollment.aspx.cs" Inherits="WebApplication1.cource_enrollment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 50%;
            left: 50%;
            width: 491px;
            height: 212px;
        }
    </style>
</head>
<body style="background-color:#33CCFF;">
    <form id="form1" runat="server">
        <center>
            <h1>Course Managment System</h1>
            <div style="border-style: solid; border-color: inherit; border-width: 5px; transform: translate(-50%, -50%); padding: 10px;" class="auto-style1">

            check available cources:
            <asp:DropDownList ID="dropDown_1" runat="server">
            </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
            <br />
            Name:&nbsp;
            <asp:TextBox ID="txt_name" runat="server"></asp:TextBox>
            <br />
            <br />
            Title:&nbsp;&nbsp;
            <asp:TextBox ID="txt_title" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btn_enroll" runat="server" Height="42px" OnClick="btn_enroll_Click" Text="Enroll" Width="87px" />
&nbsp;&nbsp;
            <asp:Label ID="lblMessage" runat="server"></asp:Label>
        </div>
        </center>
        
    </form>
</body>
</html>
