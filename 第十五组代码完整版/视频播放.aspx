<%@ Page Language="C#" AutoEventWireup="true" CodeFile="视频播放.aspx.cs" Inherits="视频播放" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>正在播放</title>
    <style type="text/css">
        .style1
        {
            font-family: 方正姚体;
            font-weight: bold;
            font-size: large;
            color: #00FF99;
        }
        .style12
        {
            width: 717px;
            height: 125px;
        }
        .style11
        {
            width: 717px;
            height: 25px;
        }
        .style10
        {
            width: 145%;
        }
        .style13
        {
            font-family: 华文新魏;
        }
        .style14
        {
            color: #0000FF;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">

    <p style="width: 895px" align="center">
        <br />
        <asp:Image ID="Image1" runat="server" Height="67px" 
            ImageUrl="~/新建文件夹/logo学  校.png" Width="256px" />
        <asp:Image ID="Image2" runat="server" Height="59px" 
            ImageUrl="~/新建文件夹/1497943853901842.png" Width="451px" />
        <span class="style13"><a href ="sykc.aspx">所有课程</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <span class="style14"><a href ="Default2.aspx">首页</a></span></span></p>
   
    <p class="style1" style="width: 895px" align="center">
        课程名称：<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    </p>
     
  <video id="media" width="720" height="400" controls  > 
    <source src= '<%#"sp/"+ Eval("t") %>' runat="server"  type='video/mp4'/>
     <source src= '<%#"sp/"+ Eval("t") %>' runat="server"  type='video/quicktime'/>
  </video>  
        <table class="style10" frame="vsides" 
            style="border-style: double; border-width: thin; height: 122px;">
            <tr>
                <td class="style12" style="border-style: double; border-width: thin">
                    <asp:Label ID="Label2" runat="server" Text=''></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style11">
                    <asp:TextBox ID="TextBox1" runat="server" Width="862px"></asp:TextBox>
                </td>
            </tr>
        </table>
        <p style="height: 28px; width: 838px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="提交" runat="server" onclick="Button1_Click" Text="提交" 
                Width="79px" />
    </p>
    </form>
     </body>
</html>
