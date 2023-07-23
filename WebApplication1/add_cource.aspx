<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="add_cource.aspx.cs" Inherits="WebApplication1.add_cource" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 52%;
            left: 52%;
            width: 495px;
            height: 319px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="border-style: solid; border-color: inherit; border-width: 5px; transform: translate(-50%, -50%); padding: 10px; align-items: center;" class="auto-style1">
            <asp:Label for="txt_title" runat="server" Text="Title"></asp:Label>
            :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txt_title" runat="server"></asp:TextBox>
            <br />
            <br />
            Description:
            <asp:TextBox ID="txt_descp" runat="server" Height="73px" Width="264px"></asp:TextBox>
            <br />
            <br />
            Instructor:&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txt_instructor" runat="server"></asp:TextBox>
            <br />
            <br />
            Capacity:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txt_capacity" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Button ID="btn_add" runat="server" Height="33px" OnClick="btn_add_Click" Text="Add" Width="87px" />
&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblMessage" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
