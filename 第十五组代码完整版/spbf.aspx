<%@ Page Language="C#" AutoEventWireup="true" CodeFile="spbf.aspx.cs" Inherits="spbf" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<script type="text/javascript" src="sp/1.mp4"sp/1.mp4</a>"></script>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div id="CuPlayer" > <strong>Holyson视频播放器</strong> </div>
<script type="text/jscript">
    var so = new SWFObject("CuPlayerMiniV22_Black_S.swf", "CuPlayer", "525", "320", "9", "#000000");
    so.addParam("allowfullscreen", "true");
    so.addParam("allowscriptaccess", "always");
    so.addParam("wmode", "opaque");
    so.addParam("quality", "high");
    so.addParam("salign", "lt");
    so.addVariable("CuPlayerFile", "~/content_video/1.mp4");
    so.addVariable("CuPlayerImage", "");
    so.addVariable("CuPlayerLogo", "");
    so.addVariable("CuPlayerShowImage", "true");
    so.addVariable("CuPlayerWidth", "525");
    so.addVariable("CuPlayerHeight", "320");
    so.addVariable("CuPlayerAutoPlay", "true");
    so.addVariable("CuPlayerAutoRepeat", "false");
    so.addVariable("CuPlayerShowControl", "true");
    so.addVariable("CuPlayerAutoHideControl", "false");
    so.addVariable("CuPlayerAutoHideTime", "6");
    so.addVariable("CuPlayerVolume", "80");
    so.write("CuPlayer");
</script>
    </div>
    </form>
</body>
</html>
