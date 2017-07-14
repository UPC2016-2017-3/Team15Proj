<%@ Page Language="C#" AutoEventWireup="true" CodeFile="jsdl.aspx.cs" Inherits="jsdl" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>无标题页</title>
<script language="javascript" type="text/javascript">
    // <!CDATA[


    // ]]>
</script>
    <style type="text/css">
        .style1
        {
        
            text-align: left;
                font-family: 叶根友毛笔行书2.0版;
            font-size: xx-large;
            height: 94px;
        }
        .style3
        {
            text-align: left;
            height: 33px;
            width: 55px;
        }
        .style6
        {
            text-align: left;
            height: 40px;
            width: 55px;
        }
        .style9
        {
            text-align: left;
            width: 55px;
        }
        .style10
        {
            text-align: center;
            font-family: 叶根友毛笔行书2.0版;
            font-size: xx-large;
            height: 60px;
        }
        .style11
        {
        }
        .style12
        {
            height: 40px;
            }
        .style13
        {
            height: 33px;
            width: 459px;
        }
        .style14
        {
            width: 58px;
        }
        .style15
        {
            height: 33px;
            width: 58px;
        }
    </style>
   
</head>
<body>
 
    <form id="form1" runat="server">
    <div style="margin: auto auto auto auto; height: 406px; width: 587px" >
    
        &nbsp;&nbsp;
    
        <br />
    
        <table style="border-style: solid; border-color: inherit; border-width: medium; width: 59%; height: 337px; margin-top: 0px; bottom: 50%; left: 50%;">
            <tr>
                <td class="style10" colspan="3">
                    up教师端欢迎您</td>
            </tr>
            <tr>
                <td class="style1" colspan="3">
                    <img alt="" src="image/1.jpg" style="width: 256px; height: 84px; margin-left: 0px" /><img 
                        alt="" src="image/2.gif" 
                        style="border-color: inherit; width: 257px; height: 84px" /></td>
            </tr>
            <tr>
                <td class="style9">
                    编码：</td>
                <td class="style11" style="text-align: left" colspan="2">
                    <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style6">
                    密码：</td>
                <td class="style12" style="text-align: left" colspan="2">
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style9">
        <asp:Button ID="Button1" runat="server" Text="注册" onclick="Button1_Click" 
                        style="text-align: right" />
                </td>
                <td class="style14" style="text-align: left">
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="登录" />
                </td>
                <td class="style11" style="text-align: left">
                    <asp:Button ID="Button3" runat="server" onclick="Button3_Click" Text="个人信息" />
                </td>
            </tr>
            <tr>
                <td class="style3">
        <asp:Label ID="Label1" runat="server"></asp:Label>
                </td>
                <td class="style15" style="text-align: left">
        <asp:Label ID="Label2" runat="server" style="text-align: left"></asp:Label>
                </td>
                <td class="style13" style="text-align: left">
                    &nbsp;</td>
            </tr>
        </table>
    
        <br />
    
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </div>
    </form>
</body>
</html>
