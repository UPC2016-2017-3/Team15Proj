<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="Default3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="content-type" content="text/html; charset=utf-8">
    <title>jQuery控制图片淡入淡出效果</title>
    <script src="/ajaxjs/jquery1.3.2.js" type="text/javascript" charset="utf-8"></script>
    <style type="text/css">
        ul li{position:absolute;left:50px;top:20px;}
        .onoe{display:none;}
    </style>
</head>
<body>
    <ul> 
        <li><img src="kctp/timg.jpg" /></li>
        <li><img src="kctp/u31_state4.jpg" /></li>
        <li><img src="kctp/u50_mouseOver.png" /></li>
    </ul> 
    <script>
        $(function () {
            var n = 2;
            setInterval(function () {
                if (!$("ul li").eq(n).is(":hidden")) {
                    $("ul li").eq(n).fadeOut("slow")
                } else {
                    $("ul li").eq(n).fadeIn("slow")
                }
                n--;
                if (n == 0) {
                    n = 2;
                };
            }, 2000);
        });

    </script>
</body>
</html>
