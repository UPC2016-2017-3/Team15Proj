<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default4.aspx.cs" Inherits="Default4" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        .style9
        {
            width: 55%;
            height: 555px;
            margin-left: 256px;
            background-image: url('image/OT20150512155340986.jpg');
        }
        .style10
        {
            height: 37px;
        }
        .style18
        {
            font-family: 华文隶书;
            font-size: x-large;
            color: #0000FF;
            text-align: center;
        }
        .style19
        {
            font-family: 华文隶书;
            color: #0000FF;
        }
        .style26
        {
            height: 109px;
        }
        .style28
        {
            font-family: 华文隶书;
            font-size: large;
            color: #0066FF;
        }
        .style29
        {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <
    
       
    </div>
    <table class="style9">
        <tr>
            <td class="style29" rowspan="3">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="style18">&nbsp; 
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
<a href="Default.aspx" >首页</a><br />
                <br />
                注册用户<br />
                </span><span class="style19"><br />
                用户名：</span><asp:TextBox ID="yhm1" runat="server" 
                    CssClass="style19" Height="27px" Width="212px"></asp:TextBox>
                <span class="style19">
                <br />
                <br />
                &nbsp;&nbsp;密码：&nbsp; </span>
                <asp:TextBox ID="mm1" runat="server" CssClass="style19" Height="24px" 
                    Width="212px"></asp:TextBox>
                <br />
                <br />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                <span class="style19">&nbsp;&nbsp; 性别：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </span>
                    <asp:RadioButton ID="RadioButton1" runat="server" GroupName="sex" 
                    Height="11px"  Text="男" Width="50px" CssClass="style19"/>
                    &nbsp;&nbsp;&nbsp; <asp:RadioButton ID="RadioButton2" runat="server" 
                    GroupName="sex" Height="11px"  Text="女" Width="50px" CssClass="style19" />
                    <br />
                <br />
                <asp:Button ID="Button1" runat="server" CssClass="style28" Text="注册" 
                    onclick="Button1_Click1" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" CssClass="style28" Text="登录" 
                    onclick="Button2_Click1" />
            </td>
        </tr>
        <tr>
            </td>
        </tr>
        <tr>
            <td class="style10">
            </td>
            <td class="style10">
            </td>
        </tr>
        <tr>
            <td class="style26">
                </td>
        </tr>
    </table>
    
    </form>
</body>
</html>

