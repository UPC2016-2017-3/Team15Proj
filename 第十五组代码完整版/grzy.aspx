<%@ Page Language="C#" AutoEventWireup="true" CodeFile="grzy.aspx.cs" Inherits="grzy" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 418px;
            height: 47px;
        }
        #form1
        {
            height: 53px;
            width: 824px;
        }
        .style2
        {
            width: 277px;
            height: 48px;
        }
        .style10
        {
            width: 100%;
            border-collapse: collapse;
            border: 2px solid #0000FF;
        }
        .style11
        {
            height: 721px;
            width: 921px;
        }
        .style12
        {
            height: 177px;
            width: 921px;
        }
        .style13
        {
            height: 47px;
            width: 921px;
        }
        .style14
        {
            height: 177px;
            width: 546px;
            font-family: 隶书;
            font-size: large;
            text-align: left;
        }
        .style16
        {
            height: 721px;
            width: 546px;
        }
        .style17
        {
            color: #0066FF;
            font-family: 华文隶书;
            font-size: x-large;
        }
        .style18
        {
            width: 546px;
            height: 47px;
            text-align: left;
        }
        .style19
        {
            text-align: center;
        }
        .style20
        {
            font-family: 华文隶书;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="style19">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <img class="style2" src="新建文件夹/logo学%20%20校.png" /><img class="style1" 
        src="新建文件夹/1497943853901842.png" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </div>
    
    <table class="style10">
        <tr>
            <td class="style14">
                <asp:Image ID="Image1" runat="server" Height="162px"
                ImageUrl="Image" Width="211px" />
                <br />
                <br />
                <br />
                上传头像<asp:FileUpload ID="FileUpload1" runat="server" style="margin-left: 17px" 
                    Width="86px" />
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click1" 
                    style="color: #0000FF; font-family: 华文隶书" Text="上传" />
                <br />
                <br />
                <br />
                <br />
                </td>
            <td class="style12">
                <br />
                <br />
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;
                <h1>
                    <span class="style20"><a href="Default2.aspx">首页</a></span></h1>
            </td>
        </tr>
        <tr>
            <td class="style18">
                <span class="style17">
                <br />
                <br />
                亲爱的</span><asp:Label ID="Label1" runat="server" 
                    CssClass="style17" Text="Label"></asp:Label>
                <span class="style17">，你好！<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                </span>
            </td>
            <td class="style13">
            </td>
        </tr>
        <tr>
            <td class="style16">
            </td>
            <td class="style11">
            </td>
        </tr>
    </table>
    
    </form>
</body>
</html>
