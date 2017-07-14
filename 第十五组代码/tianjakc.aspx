<%@ Page Language="C#" AutoEventWireup="true" CodeFile="tianjakc.aspx.cs" Inherits="tianjakc" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            border-collapse: collapse;
            border: 2px solid #008080;
        }
        .style2
        {
            width: 112px;
            height: 57px;
            font-size: large;
            font-family: 华文楷体;
            color: #0000FF;
        }
        .style3
        {
            width: 112px;
            height: 125px;
        }
        .style4
        {
            height: 125px;
        }
        .style7
        {
            width: 112px;
            font-size: large;
            font-family: 华文楷体;
            color: #0000FF;
        }
        .style8
        {
        }
        .style9
        {
            width: 112px;
            height: 59px;
            font-size: large;
            font-family: 华文楷体;
            color: #0000FF;
        }
        .style10
        {
            height: 59px;
        }
        .style11
        {
            height: 57px;
        }
        .style12
        {
            height: 55px;
            font-family: 华文隶书;
            font-size: large;
            color: #0000FF;
        }
        .style13
        {
            font-size: large;
            font-family: 华文楷体;
            color: #0000FF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td class="style12" colspan="2">
                   <a href ="tjkc.aspx">添加章节</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href ="Default.aspx">首页</a></td>
            </tr>
            <tr>
                <td class="style2">
                    添加课程名称：</td>
                <td class="style11">
                    <asp:TextBox ID="TextBox1" runat="server" Height="37px" Width="486px" 
                        CssClass="style13"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style9">
                    课程图片：</td>
                <td class="style10">
                    <asp:FileUpload ID="FileUpload1" runat="server" Height="26px" 
                        CssClass="style13" />
                </td>
            </tr>
            <tr>
                <td class="style7">
                    添加内容</td>
                <td class="style8">
                    <asp:TextBox ID="TextBox2" runat="server" Height="143px" Width="544px" 
                        CssClass="style13"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style3">
                </td>
                <td class="style4">
                    <asp:Button ID="Button1" runat="server" Height="40px" onclick="Button1_Click" 
                        Text="添加" Width="142px" CssClass="style13" />
                    <span class="style13">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    </span>
                </td> 
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
