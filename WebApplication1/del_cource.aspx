<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="del_cource.aspx.cs" Inherits="WebApplication1.del_cource" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 50%;
            left: 48%;
            width: 409px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="border-style: solid; border-color: inherit; border-width: 5px; transform: translate(-50%, -50%); padding: 10px;" class="auto-style1">

            check available cources:
            <asp:DropDownList ID="dropDown_1" runat="server">
            </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            Title:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txt_title" runat="server"></asp:TextBox>
            &nbsp;
            <asp:Button ID="btn_get" runat="server" OnClick="btn_get_Click" Text="Get Data" />
            <br />
            <br />
            <br />
            Description:
            <asp:TextBox ID="txt_desc" runat="server" Height="53px" Width="204px"></asp:TextBox>
            <br />
            <br />
            instructor:&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txt_instructor" runat="server"></asp:TextBox>
            <br />
            <br />
            Capacity:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txt_capacity" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="btn_del" runat="server" Height="42px" Text="Delete" Width="130px" OnClick="btn_del_Click" />

        &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblMessage" runat="server"></asp:Label>

            <br />
        </div>
    </form>
</body>
</html>
