<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="mains.aspx.cs" Inherits="图书管理系统.mains" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .style1
        {
            font-family: 华文楷体;
            font-size: xx-large;
        }
        .style2
        {
            width: 100%;
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
       <div class="style1" style="text-align: left">
        <div>
        <img src="界面设计/wallhaven-96x2e1_1920x1080.png" alt="Pulpit rock" width="320" height="180">
            <span>Система управления ресурсами</span>
            </div>
           <div style="text-align:right">
        <asp:Label ID="Label2" runat="server" Text="пользователь："></asp:Label>         
       <asp:Label ID="username" runat="server" Text=""></asp:Label>      
        <asp:Label ID="Label4" runat="server" Text="личность:"></asp:Label>
       <asp:Label ID="shenfen" runat="server" Text=""></asp:Label> 
       <asp:Label ID="Label6" runat="server" Text="онлайн-количество пользователей:">0 _</asp:Label>
       <asp:Label ID="online" runat="server" Text=""></asp:Label>
       <asp:Label ID="Label5" runat="server" Text="Количество посетителей:"></asp:Label>
        <asp:Label ID="fagnwenliang" runat="server" Text=""></asp:Label>
           <asp:Label ID="Label1" runat="server" Text=""></asp:Label>       
           <a  target="_self" runat="server"  onserverclick ="Clear">Quit</a>
               </div>
        <table class="style2" border="1" cellspacing="0">
            <tr>
                <td height="555" width="222">
                    <asp:TreeView ID="TreeView1" runat="server" ShowLines="True" 
                        style="font-size: large" LineImagesFolder="~/TreeLineImages">
                        <Nodes>
                            <asp:TreeNode Text="Система управления ресурсами" Value="Система управления ресурсами"  NavigateUrl ="~/界面设计/huanying.jpg">
                                <asp:TreeNode Text="Основная операция" Value="Основная операция" >
                                    <asp:TreeNode Text="Управление ресурсами" Value="Управление ресурсами" NavigateUrl="~/bookmanage.aspx"></asp:TreeNode>
                                 
                                   
                                </asp:TreeNode>
                            </asp:TreeNode>
                        </Nodes>
                    </asp:TreeView>
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                    <br />
                </td>
                <td height="555">
                    <iframe id="I1" frameborder="0" name="I1" 
                    

                    </iframe>
                </td>
            </tr>
        </table>
&nbsp;</div>
    </form>
    <p>
    &nbsp;</p>
</body>
</html>
