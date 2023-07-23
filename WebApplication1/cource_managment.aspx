<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="cource_managment.aspx.cs" Inherits="WebApplication1.cource_managment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            position: absolute;
            top: 50%;
            left: 50%;
            width: 326px;
            height: 222px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="border-style: solid; border-color: inherit; border-width: 5px; transform: translate(-50%, -50%); padding: 10px; align-items: center; background:cyan;" class="auto-style1">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btn_addCource" runat="server" OnClick="btn_addCource_Click" Text="Add Cource" Width="194px" Height="46px" />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btn_updtCource" runat="server" Text="Update Cource" OnClick="btn_updtCource_Click" Height="43px" Width="193px" />
            <br />
            <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btndelCource" runat="server" Text="Delete Cource" Width="195px" OnClick="btndelCource_Click" Height="44px" />
        </div>
    </form>
</body>
</html>
