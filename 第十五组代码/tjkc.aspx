<%@ Page Language="C#" AutoEventWireup="true" CodeFile="tjkc.aspx.cs" Inherits="tjkc" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 260px;
        }
        .style2
        {
            width: 141px;
        }
        .style4
        {
            width: 141px;
            color: #0000FF;
            font-size: large;
            font-family: 华文隶书;
            text-align: right;
        }
        .style5
        {
            font-size: large;
            font-family: 黑体;
            color: #0000FF;
        }
        .style6
        {
            text-align: left;
            font-size: large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table class="style1">
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style6" style="font-family: 华文隶书; color: #0000FF">
                <a href ="Default.aspx">UP首页</a> </td>
        </tr>
        <tr>
            <td class="style4">
                课程名称：</td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="style5" Height="38px" 
                    Width="530px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4">
                章节：</td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="style5" Height="35px" 
                    Width="563px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style4">
                内容：</td>
            <td>
                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="style5" Height="36px" 
                    Width="374px" />
                <span class="style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>
                <asp:Button ID="Button1" runat="server" CssClass="style5" Height="30px" 
                    Text="确认" onclick="Button1_Click" />
            </td>
        </tr>
    </table>
    <div>
    
    </div>
    </form>
</body>
</html>
