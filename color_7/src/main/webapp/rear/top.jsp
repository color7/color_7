<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html xmlns="http://www.w3.org/1999/xhtml"><head>
<link rel="stylesheet" type="text/css" id="css" href="./images//admincg/admincg.css">
<script type="text/javascript" src="../resources/js/jquery-1.8.3.min.js"></script>
<script>


function sethighlight(n) {
	var lis = document.getElementsByTagName('li');
	for(var i = 0; i < lis.length; i++) {
		lis[i].id = '';
	}
	lis[n].id = 'menuon';
}


</script>
<script src="./javascript/common.js" type="text/javascript"></script>
<script src="./javascript/menu.js" type="text/javascript"></script>
<style>
#header_top {
	 background:black; filter:alpha(opacity:30);opacity:0.3; height:100%;position:absolute;width:100%;top:0; z-index:1
}
</style>
</head>
<body>
<div id="header_top" style="display:none"></div>
<table width="100%" border="0" cellpadding="0" cellspacing="0" class="topmenubg">
<tbody><tr>
<td rowspan="2" width="140px">
<table width="100%" border="0" cellpadding="0" cellspacing="0">
<tbody><tr>
<td height="20">
<span class="editiontext">
股东：bb7</span>

</td><td>
</td></tr><tr>
<td height="20"><span style="font-size: 18px;font-weight: bold;color: #FF0000;"></span>
</td></tr></tbody></table>

</td>
<td height="21" class="marquees">
<table width="100%" border="0" height="20" cellpadding="1" cellspacing="0">
<tbody><tr>
	<td width="600" class="service-right">
		<marquee scrolldelay="400" style="height:18px;"> 
			<div id="news"><a href="./rear/news.jsp style="text-decoration:none" target="mainFrame"><font style="font-size:12px"> 会员【1e.133133111.com】【2e.133133111.com】【3e.133133111.com】【5e.133133111.com】※※※管理【1f.133133111.com】【2f.133133111.com】【3f.133133111.com】【5f.133133111.com】       
 ※※※使用时如果出现速度变慢,请按【退出】键退出重新登陆【提示】本公司提供转换赔率功能,请各会员在【会员资料】里设置使用。●●●【温馨提示】各位会员在下注确定后请到“下注明细”里确认注单，一切注单结算以下注明细里资料为准！网站开盘时间改为一，三，六下午11:00.开奖日20:18分封盘。※※※原来是用（手工抄数），现在可以用（程序抄数）了，请上网址（xx007.cc)下载（抄数助手），使用它可以减少工作量，提高效率。 
 </font></a></div>
		</marquee>
	</td>
	<td width="*"><div style="margin-top:3px;" id="timeTag">离停盘时间：1天5小时20分56秒</div></td>
</tr>
</tbody></table>
<script src="./javascript/showdate.js" type="text/javascript"></script>
</td><td>
</td></tr>
<tr>
<td>
<div class="topmenu">
<ul>

	<li><span><a href="#" onclick="sethighlight(0);  parent.main.location='<%=path%>/rear/awardReadAdmin.jsp';return false;">总货明细</a></span></li>
	<li><span><a href="#" onclick="sethighlight(1);  parent.main.location='<%=path%>/rear/reportClassDay.jsp';return false;">分类帐</a></span></li>
	<li><span><a href="#" onclick="sethighlight(2);  parent.main.location='<%=path%>/rear/reportDay.jsp';return false;">报表</a></span></li>
	<li><span><a href="#" onclick="sethighlight(3);  parent.main.location='<%=path%>/rear/awardAdmin.jsp';return false;">开奖号码</a></span></li>
	<li><span><a href="#" onclick="sethighlight(4);  parent.main.location='<%=path%>/rear/levelAdmin.jsp';return false;">越级操作</a></span></li>
	<li><span><a href="#" onclick="sethighlight(5);  parent.main.location='<%=path%>/rear/levelManagement.jsp';return false;">下级管理</a></span></li>
	<li><span><a href="#" onclick="sethighlight(6);  parent.main.location='<%=path%>/rear/levelLogs.jsp';return false;">日志</a></span></li>
	<li><span><a href="#" onclick="sethighlight(7);  parent.main.location='<%=path%>/rear/rule.jsp';return false;">规则说明</a></span></li>	
	<li><span><a href="#" onclick="sethighlight(8);  parent.main.location='<%=path%>/rear/gotosetUp.action';return false;">设置</a></span></li>	
	
	
<li><span><a href="<%=path%>/rear/oginOutAdmin.html" target="_top">退出</a></span></li>
</ul>
</div>
</td>

</tr>
</tbody></table>
</body></html>