<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html xmlns="http://www.w3.org/1999/xhtml"><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7">
<link href="./images/admincg/admincg.css" rel="stylesheet" type="text/css">
<title></title><script type="text/javascript">var IMGDIR = './images/';var attackevasive = '0';</script>
<script src="./javascript/common.js" type="text/javascript"></script>
<script src="./javascript/menu.js" type="text/javascript"></script>
<script src="./javascript/ajax.js" type="text/javascript"></script>
<script src="./javascript/frank.js" type="text/javascript"></script>
<script type="text/javascript">
function checkalloption(form, value) {
	for(var i = 0; i < form.elements.length; i++) {
		var e = form.elements[i];
		if(e.value == value && e.type == 'radio' && e.disabled != true) {
			e.checked = true;
		}
	}
}
function checkAll(type, form, value, checkall, changestyle) {
	var checkall = checkall ? checkall : 'chkall';
	for(var i = 0; i < form.elements.length; i++) {
		var e = form.elements[i];
		if(type == 'option' && e.type == 'radio' && e.value == value && e.disabled != true) {
			e.checked = true;
		} else if(type == 'value' && e.type == 'checkbox' && e.getAttribute('chkvalue') == value) {
			e.checked = form.elements[checkall].checked;
		} else if(type == 'prefix' && e.name && e.name != checkall && (!value || (value && e.name.match(value)))) {
			e.checked = form.elements[checkall].checked;
			if(changestyle && e.parentNode && e.parentNode.tagName.toLowerCase() == 'li') {
				e.parentNode.className = e.checked ? 'checked' : '';
			}
		}
	}
}

function checkallvalue(form, value, checkall) {
	var checkall = checkall ? checkall : 'chkall';
	for(var i = 0; i < form.elements.length; i++) {
		var e = form.elements[i];
		if(e.type == 'checkbox' && e.value == value) {
			e.checked = form.elements[checkall].checked;
		}
	}
}

function zoomtextarea(objname, zoom) {
	zoomsize = zoom ? 10 : -10;
	obj = $(objname);
	if(obj.rows + zoomsize > 0 && obj.cols + zoomsize * 3 > 0) {
		obj.rows += zoomsize;
		obj.cols += zoomsize * 3;
	}
}

function redirect(url) {
	window.location.replace(url);
}

var collapsed = getcookie('cg_szyx_cookie_collapse');
function collapse_change(menucount) {

	if($('menu_' + menucount).style.display == 'none') {
		$('menu_' + menucount).style.display = '';collapsed = collapsed.replace('[' + menucount + ']' , '');
		$('menuimg_' + menucount).src = './images//admincg/menu_reduce.gif';
		
	} else {

		$('menu_' + menucount).style.display = 'none';collapsed += '[' + menucount + ']';
		$('menuimg_' + menucount).src = './images//admincg/menu_add.gif';
	}
	setcookie('cg_szyx_cookie_collapse', collapsed, 2592000);
}
</script>
</head>

<body leftmargin="10" topmargin="10">
<div id="append_parent"></div>
<table width="99%" align="center" border="0" cellpadding="0" cellspacing="0"><tbody><tr><td>
<script language="JavaScript">
<!-- 
function openwinchuhuo(url) {
var iWidth=600; //窗口宽度 
var iHeight=600;//窗口高度 
var iTop=(window.screen.height-iHeight)/2; 
var iLeft=(window.screen.width-iWidth)/2; 
window.open(url,"Detail767188614","Scrollbars=no,Toolbar=no,Location=no,Direction=no,Resizeable=no, Width="+iWidth+" ,Height="+iHeight+",top="+iTop+",left="+iLeft); 
}

//--> 
</script>
	<style media="print"> .Noprint{display:none;} </style> <table class="Noprint" width="100%" border="0" cellpadding="0" cellspacing="0"><tbody><tr><td><table width="100%" border="0" cellpadding="0" cellspacing="0" class="guide"><tbody><tr><td><table width="100%" style="border:none;" border="0" cellpadding="0" cellspacing="0"><tbody><tr style="border:none;"><td style="border:none;" width="15%"><a href="#" onclick=" parent.main.location='?action=home';return false;">位置</a>&nbsp;»&nbsp;月报表</td>
		<td width="85%" style="border:none;text-align:right;padding-right:10px;"><a href="reportDay.html" target="main"><b>日报表</b></a> | <a href="reportMonth.html" target="main" class="meuntop"><b>月报表</b></a></td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table><br><script language="JavaScript">
<!--
function reportprint(){
	window.open('index.php?action=reportadmin&doaction=month&saction=reportprint&uid=&g_date=&issueno=15119&page=1&sid=HALRJI');
	return false;
}
//-->
</script>

<!--<script src="./javascript/calendar.js" type="text/javascript"></script>
<table width="100%" border="0" cellpadding="0" cellspacing="0" class="tableborder">
<form method="post" name="datamembers" action="index.php?action=reportadmin&doaction=month"> 
<input type="hidden" name="formhash" value="82c0edaa">	
<tr class="header"><td colspan="12">期号查询</td></tr>
<tr>
<td width=100>开始期号 </td>
<td width=120><INPUT TYPE="text" NAME="s_issueno_start"  maxlength=10 value="" style="width:90px"></td>
<td width=100>截止期号 </td>
<td width=120><INPUT TYPE="text" NAME="s_issueno_end"  maxlength=10 value="" style="width:90px"></td>
<td width="80" >开盘时间：</td>
<td width="100" ><input type="text" class="txt" name="starttime" value="" onclick="showcalendar(event, this)"></td>
<td width="80" >停盘时间：</td>
<td width="100" ><input type="text" class="txt" name="endtime" value="" onclick="showcalendar(event, this)"></td>

<td width=80><input class="button" type="submit" name="addsubmit" value="提 交"></td>
<td width=*><input class="button" type="button" name="printsubmit" onclick="reportprint();return false;" value="打印"></td>
</tr>
</form>
</table><BR>-->

<table border="0" cellpadding="0" cellspacing="0" class="tableborder" width="100%" style="table-layout: auto">
<tbody><tr class="header">
<td colspan="8">月报表&nbsp;|&nbsp;<a href="?action=reportuser&amp;s_levelid=4" class="reporttitle">总代理</a>&nbsp;|&nbsp;<a href="index.php?action=reportadmin&amp;s_ym=201510&amp;doaction=month&amp;zizhanghao=" class="reporttitle">2015年10月</a> | <a href="index.php?action=reportadmin&amp;doaction=month&amp;zizhanghao=" class="meuntop">全部</a><form method="post" name="companyform" action="index.php?action=reportadmin&amp;doaction=month">
<input type="hidden" name="formhash" value="82c0edaa">		
<input type="hidden" name="s_ym" value="0">		
 </form></td><td colspan="3">
 <select name="s_issueno_start" id="s_issueno_start" onchange="companyform.submit()">
<option value="15122">15122</option><option value="15121">15121</option><option value="15120">15120</option><option value="15119" selected="">15119</option></select>
&gt;&gt;
<select name="s_issueno_end" id="s_issueno_end" onchange="companyform.submit()">
<option value="15122" selected="">15122</option><option value="15121">15121</option><option value="15120">15120</option><option value="15119">15119</option></select>
 </td>
 
 <td style="width:80px"><a href="index.php?saction=reportprint&amp;action=reportadmin&amp;doaction=month" target="_blank">打印</a></td>
</tr>
<tr class="reportTop">
	<td rowspan="2">日期</td>
	<td colspan="3" class="reportmember">会员</td>
	<td width="20%" colspan="2" class="reportLevel">总代理</td>	<td colspan="4" class="reportNow">股东</td>	
			<td colspan="2" class="reportLevel">大股东</td>
	</tr>
<tr class="reportTop">
	<td class="reportmember">笔数</td>
	<td class="reportmember">总投</td>
	<!-- <td class="reportmember">中奖</td>
	<td class="reportmember">回水</td> -->
	<td class="reportmember">盈亏</td>
	<td class="reportLevel">总投</td>
	<!-- <td class="reportLevel">回水</td> -->
	<td class="reportLevel">盈亏</td>
	<td class="reportNow">占成<br>金额</td>
	<!-- <td class="reportNow">中奖</td>
	<td class="reportNow">回水</td> -->
	<td class="reportNow">占成<br>盈亏</td>
	<td class="reportNow_z">赚水</td>
	<td class="reportNow_z">总盈亏</td>
	<td class="reportLevel">总投</td>
	<!-- <td class="reportLevel">回水</td> -->
	<td class="reportLevel">盈亏</td>
	</tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="hover">
				<td><font color="#0000FF"><b>[1]</b></font> <a href="index.php?action=reportadmin&amp;doaction=day_month&amp;g_date=1445170680&amp;issueno=15122&amp;starttime=&amp;endtime=&amp;saction=&amp;comid=2&amp;s_ym=0&amp;zizhanghao=" class="meuntop"><b>10-18(15122)</b></a></td>
				<td class="reportmember">425</td>
				<td class="reportmember">29424</td><td class="reportmember "></td><td class="reportLevel">29424</td>
				<td class="reportLevel "></td><td class="reportNow">0</td>
				<td class="reportNow"></td>
				<td class="reportNow_z">37</td>
				<td class="reportNow_z "></td><td class="reportLevel">29424</td>
				<td class="reportLevel "></td></tr><tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="hover">
				<td><font color="#0000FF"><b>[2]</b></font> <a href="index.php?action=reportadmin&amp;doaction=day_month&amp;g_date=1444997880&amp;issueno=15121&amp;starttime=&amp;endtime=&amp;saction=&amp;comid=2&amp;s_ym=0&amp;zizhanghao=">10-16(15121)</a></td>
				<td class="reportmember">10132</td>
				<td class="reportmember">192522</td><td class="reportmember report_1">188327</td><td class="reportLevel">192522</td>
				<td class="reportLevel report_1">188774</td><td class="reportNow">0</td>
				<td class="reportNow"></td>
				<td class="reportNow_z">948</td>
				<td class="reportNow_z report_1">948</td><td class="reportLevel">192522</td>
				<td class="reportLevel ">-189721</td></tr><tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="hover">
				<td><font color="#0000FF"><b>[3]</b></font> <a href="index.php?action=reportadmin&amp;doaction=day_month&amp;g_date=1444738680&amp;issueno=15120&amp;starttime=&amp;endtime=&amp;saction=&amp;comid=2&amp;s_ym=0&amp;zizhanghao=">10-13(15120)</a></td>
				<td class="reportmember">23436</td>
				<td class="reportmember">317611</td><td class="reportmember ">-148330</td><td class="reportLevel">317611</td>
				<td class="reportLevel ">-147602</td><td class="reportNow">0</td>
				<td class="reportNow"></td>
				<td class="reportNow_z">1494</td>
				<td class="reportNow_z report_1">1494</td><td class="reportLevel">317611</td>
				<td class="reportLevel report_1">146109</td></tr><tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="hover">
				<td><font color="#0000FF"><b>[4]</b></font> <a href="index.php?action=reportadmin&amp;doaction=day_month&amp;g_date=1444565880&amp;issueno=15119&amp;starttime=&amp;endtime=&amp;saction=&amp;comid=2&amp;s_ym=0&amp;zizhanghao=">10-11(15119)</a></td>
				<td class="reportmember">19910</td>
				<td class="reportmember">224092</td><td class="reportmember ">-27525</td><td class="reportLevel">224092</td>
				<td class="reportLevel ">-27166</td><td class="reportNow">0</td>
				<td class="reportNow"></td>
				<td class="reportNow_z">1092</td>
				<td class="reportNow_z report_1">1092</td><td class="reportLevel">224092</td>
				<td class="reportLevel report_1">26075</td></tr><tr class="reportFooter">
	<td style="text-align:center">合计</td>

	<td>53903</td>
	<td>763649</td>
	<!-- <td>0</td>
	<td>0</td> -->
	<td class="report_1">12473</td>
		<td>763649</td>
	<!-- <td>0</td> -->
	<td class="report_1">14007</td>
			<td>0</td>
	<!-- <td>0</td>
	<td>0</td> -->
	<td>0</td>
	<td>3569</td>
	<td class="report_1">3532</td>
			<td>
	763649	</td>
	<!-- <td>0</td> -->
	<td>-17538</td>
	
		</tr>
</tbody></table>

<br>

</td></tr></tbody></table>
<br><br><div class="footer Noprint"><hr size="0" noshade="" color="BORDERCOLOR" width="80%">
<b></b> V2.0 &nbsp;©  <b>
</b><span class="smalltxt"></span>
usetime:0.632505, 
mysqlquery:13
</div>
<noscript>&lt;iframe src=*.html&gt;&lt;/iframe&gt;</noscript>




</body></html>