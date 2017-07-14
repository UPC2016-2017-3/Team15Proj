<%@ Page Language="C#" AutoEventWireup="true" CodeFile="denglu.aspx.cs" Inherits="denglu" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 282px;
            background-color: #008080;
        }
        .style2
        {
            height: 67px;
            text-align: center;
        }
        .style4
        {
            color: #FF3300;
            text-align: center;
            font-weight: normal;
        }
        .style7
        {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="style1">
            <tr>
                <td class="style2">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <h1 class="style4">
                        <strong>登录</strong></h1>
                </td>
            </tr>
            <tr>
                <td class="style7">
                    <strong style="text-align: center">用户名：</strong><asp:TextBox ID="yhm2" 
                        runat="server" Height="30px" Width="373px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style7">
                    <strong>密码：&nbsp; </strong>
                    <asp:TextBox ID="mm2" runat="server" Height="32px" Width="369px" 
                        TextMode="Password"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style7">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" Height="27px" onclick="Button1_Click" 
                        Text="登录" Width="50px" />
&nbsp;
                    <asp:Button ID="Button2" runat="server" Height="26px" Text="注册" Width="67px" 
                        onclick="Button2_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    <a href="jsdl.aspx" >教师端登录</a></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
