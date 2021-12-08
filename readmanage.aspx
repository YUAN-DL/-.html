<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="readmanage.aspx.cs" Inherits="图书管理系统.readmanage" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
    <style type="text/css">
         .GridViewStyle
        {   
            border-right: 2px solid #A7A6AA;
            border-bottom: 2px solid #A7A6AA;
            border-left: 2px solid white;
            border-top: 2px solid white;
            padding: 4px;
        }
        .GridViewStyle a
        {
            color: #FFFFFF;
        }

        .GridViewHeaderStyle th
        {
            border-left: 1px solid #EBE9ED;
            border-right: 1px solid #EBE9ED;
        }

        .GridViewHeaderStyle
        {
            background-color: #5D7B9D;
            font-weight: bold;
            color: White;
        }

        .GridViewFooterStyle
        {
            background-color: #5D7B9D;
            font-weight: bold;
            color: White;
        }

        .GridViewRowStyle
        {
            background-color: #F7F6F3;
            color: #333333;
        }

        .GridViewAlternatingRowStyle
        {
            background-color: #FFFFFF;
            color: #284775;
        }

        .GridViewRowStyle td, .GridViewAlternatingRowStyle td
        {
            border: 1px solid #EBE9ED;
        }

        .GridViewSelectedRowStyle
        {
            background-color: #E2DED6;
            font-weight: bold;
            color: #333333;
        }

        .GridViewPagerStyle
        {
            background-color: #284775;
            color: #FFFFFF;
        }

        .GridViewPagerStyle table /**//* to center the paging links*/
        {
            margin: 0 auto 0 auto;
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
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="ID пользователя："></asp:Label>
        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
&nbsp;
        <asp:Label ID="Label2" runat="server" Text="Имя пользователя："></asp:Label>
        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
&nbsp;
        <asp:Label ID="Label3" runat="server" Text="Пол："></asp:Label>
&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server">
            <asp:ListItem>мужчина</asp:ListItem>
            <asp:ListItem>женщина</asp:ListItem>
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label4" runat="server" Text="Описание："></asp:Label>
        <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
    </p>
    <p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
            ID="Button1" runat="server" onclick="Button1_Click" Text="Поиск" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button 
            ID="Button2" runat="server" onclick="Button2_Click" Text="Поменять" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button3" runat="server" 
            onclick="Button3_Click" Text="Ударить" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button4" runat="server" onclick="Button4_Click" Text="Добавить" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button5" runat="server" onclick="Button5_Click" Text="Вернуть" />
       
    </p>
          <div>
    
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:GridView ID="GridView1" runat="server" Width="795px" CssClass="GridViewStyle">
             <FooterStyle CssClass="GridViewFooterStyle" />
             <RowStyle CssClass="GridViewRowStyle" />   
             <SelectedRowStyle CssClass="GridViewSelectedRowStyle" />
             <PagerStyle CssClass="GridViewPagerStyle" />
             <AlternatingRowStyle CssClass="GridViewAlternatingRowStyle" />
             <HeaderStyle CssClass="GridViewHeaderStyle" />
        </asp:GridView>
    
    </div>
    </form>
</body>
</html>
