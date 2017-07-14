<%@ Page Language="C#" AutoEventWireup="true" CodeFile="sykc.aspx.cs" Inherits="sykc" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>所有课程</title>
    <style type="text/css">
        .style1
        {
            color: #3399FF;
        }
        .style3
        {
            height: 142px;
        }
        .style4
        {
            font-family: 华文隶书;
            font-size: x-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1 class="style1">
            所有课程&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            <span class="style4"><a href ="Default.aspx">首页</a></span></h1>
    
    </div>
    <asp:DataList ID="DataList1" runat="server" RepeatColumns="5" 
        RepeatDirection="Horizontal">
        <ItemTemplate>
            <table class="style1" frame="box">
                <tr>
                    <td class="style3">
                        <asp:Image ID="Image1" runat="server" Height="131px" 
                            ImageUrl='<%# "./kctp\\"+Eval("kctpname") %>' Width="219px" />
                    </td>
                </tr>
                <tr>
                    <td>
                        
                        <asp:HyperLink ID="HyperLink1" runat ="server" Text =' <%# Eval("kctptitle")%>'  NavigateUrl ='<%#"xx.aspx?id=" +Eval("kctptitle")%>' > ></asp:HyperLink>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    </form>
</body>
</html>
