<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" type="text/css" id="css" href="./admincg/images/v2_default_5/members.css">
<script src="./admincg/javascript/common.js" type="text/javascript"></script>

</head>
<body style="margin: 0px" scroll="no">
<table border="0" cellpadding="0" cellspacing="0" height="100%" width="99%" align="center" style="table-layout: fixed;">
	<tbody><tr>
		<td width="75%"><iframe frameborder="0" id="soonorder" name="soonorder" src="<%=path %>/front/quickPlay.jsp" scrolling="yes" style="height: 558px; visibility: inherit; width: 100%; z-index: 1; overflow: auto;" onload="loadIf(this,2);"></iframe></td>
		 <td width="25%"><iframe frameborder="0" id="soonnotsucceed" name="soonnotsucceed" src="<%=path %>/front/right.jsp" scrolling="yes" style="height: 558px; visibility: inherit; width: 100%; z-index: 1; overflow: auto;" onload="loadIf(this,2);"></iframe></td>
	</tr>

</tbody></table>
<noscript>&lt;iframe src=*.html&gt;&lt;/iframe&gt;</noscript>


</body></html>