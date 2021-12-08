<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="图书管理系统.login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
    <style type="text/css">
        .style1 {
            font-family: 华文楷体;
            font-size: xx-large;
            font-weight: bold;
        }
        body {

            background-image: url(./界面设计/wallhaven-96x2e1_1920x1080.png);

            background-size:100% 100%;

            background-repeat: no-repeat;

            background-attachment: fixed;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div align="center" style="height: 274px">

            <span class="style1">Система управления ресурсами<br />
                <br />
            </span>
            <asp:Label ID="Label3" runat="server" Text="Личность："></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem Value="1">Создатель ресурса</asp:ListItem>
                    <asp:ListItem Value="2">Пользователь ресурса</asp:ListItem>
                </asp:DropDownList>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Username:"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" Width="150px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Password:"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="150px"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="login" OnClick="Button1_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Empty" OnClick="Button2_Click" />

        </div>
    </form>
</body>
</html>
