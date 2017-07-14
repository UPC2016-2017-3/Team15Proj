<%@ Page Language="C#" AutoEventWireup="true" CodeFile="xx.aspx.cs" Inherits="xx" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            font-size: x-large;
            font-family: 华文隶书;
            color: #0000FF;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <span class="style1">欢迎来到</span><asp:Label ID="Label1" runat="server" 
            CssClass="style1" Text="Label"></asp:Label>
        <span class="style1">的学习<br />
        <br />
&nbsp;<asp:DataList ID="DataList1" runat="server">
            <ItemTemplate>
                 <asp:HyperLink ID="HyperLink1" runat ="server" Text =' <%# Eval("sptitle")%>' NavigateUrl ='<%#"视频播放.aspx?id=" +Eval("sptitle")%>' ></asp:HyperLink>
            </ItemTemplate>
        </asp:DataList>
        </span>
    
    </div>
    </form>
</body>
</html>
