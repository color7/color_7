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
window.open(url,"Detail468957940","Scrollbars=no,Toolbar=no,Location=no,Direction=no,Resizeable=no, Width="+iWidth+" ,Height="+iHeight+",top="+iTop+",left="+iLeft); 
}

//--> 
</script>
	<style media="print"> .Noprint{display:none;} </style> <table class="Noprint" width="100%" border="0" cellpadding="0" cellspacing="0"><tbody><tr><td><table width="100%" border="0" cellpadding="0" cellspacing="0" class="guide"><tbody><tr><td><table width="100%" style="border:none;" border="0" cellpadding="0" cellspacing="0"><tbody><tr style="border:none;"><td style="border:none;" width="15%"><a href="#" onclick=" parent.main.location='?action=home';return false;">位置</a>&nbsp;»&nbsp;日分类帐</td>
		<td width="85%" style="border:none;text-align:right;padding-right:10px;"><a href="index.php?action=reportgxd&amp;s_issueno=0" target="main"><b>贡献度</b></a> | <a href="index.php?action=reportclass" target="main" class="meuntop"><b>日分类帐</b></a> | <a href="index.php?action=reportclass&amp;joaction=month" target="main"><b>月分类帐</b></a></td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table><br>
<table border="0" cellpadding="0" cellspacing="0" class="tableborder" width="100%">
<form method="post" name="companyform" action="index.php?action=reportclass&amp;joaction=&amp;zizhanghao="></form>
<input type="hidden" name="formhash" value="82c0edaa">		
<input type="hidden" name="s_ym" value="">	
<tbody><tr class="header"><td colspan="5">
分类帐&nbsp;&nbsp;期号15122

</td><td colspan="2">
<!--<select name="s_issueno" id="s_issueno" onchange=companyform.submit()>
<option value="15122" selected>15122</option><option value="15121" >15121</option><option value="15120" >15120</option><option value="15119" >15119</option></select>-->
</td>
</tr>


<tr class="reportTop">
	<td style="width:15%">总代理</td>
	<td style="width:15%">类别</td>
	<td style="width:14%">笔数</td>
	<td style="width:14%">下注金额</td>
	<td style="width:14%">回水</td>
	<td style="width:14%">中奖</td>
	<td style="width:14%">盈亏</td>
</tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="hover"><td class="altbg1"><a href="index.php?action=reportclass&amp;doaction=month&amp;s_issueno=15122&amp;comid=0&amp;g_uid=36234&amp;zizhanghao=&amp;g_levelid=5" title="">h6236(总)</a></td>
<td class="altbg2"><a href="javascript:collapse_change('showclass_136234');"><img id="menuimg_showclass_136234" src="./images/admincg/menu_add.gif" border="0">总货合计</a></td>
<td class="altbg1 report_class">552</td>
<td class="altbg2 report_class">12562</td>
<td class="altbg1 report_class">--</td>
<td class="altbg2 report_class">--</td>
<td class="altbg1 report_class ">--</td></tr>
<tr style="display:none;" id="menu_showclass_136234"><td colspan="7" style="margin:0px;padding:0px;width:100%;"><table border="0" cellpadding="0" cellspacing="0" class="tableborder" width="100%"><tbody><tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="15%" class="altbg1"><font color="red"></font></td>
<td width="15%" class="altbg2">二定位</td>
<td width="14%" class="altbg1 report_class ">314</td>
<td width="14%" class="altbg2 report_class">10586</td>
<td width="14%" class="altbg1 report_class">--</td>
<td width="14%" class="altbg2 report_class">--</td>
<td width="14%" class="altbg1 report_class ">--</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="15%" class="altbg1"><font color="red"></font></td>
<td width="15%" class="reportNow_z">口口XX</td>
<td width="14%" class="reportNow_z report_class ">77</td>
<td width="14%" class="reportNow_z report_class">2850</td>
<td width="14%" class="reportNow_z report_class">--</td>
<td width="14%" class="reportNow_z report_class">--</td>
<td width="14%" class="reportNow_z report_class ">--</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="15%" class="altbg1"><font color="red"></font></td>
<td width="15%" class="reportNow_z">口X口X</td>
<td width="14%" class="reportNow_z report_class ">48</td>
<td width="14%" class="reportNow_z report_class">4800</td>
<td width="14%" class="reportNow_z report_class">--</td>
<td width="14%" class="reportNow_z report_class">--</td>
<td width="14%" class="reportNow_z report_class ">--</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="15%" class="altbg1"><font color="red"></font></td>
<td width="15%" class="reportNow_z">口XX口</td>
<td width="14%" class="reportNow_z report_class ">73</td>
<td width="14%" class="reportNow_z report_class">1452</td>
<td width="14%" class="reportNow_z report_class">--</td>
<td width="14%" class="reportNow_z report_class">--</td>
<td width="14%" class="reportNow_z report_class ">--</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="15%" class="altbg1"><font color="red"></font></td>
<td width="15%" class="reportNow_z">X口X口</td>
<td width="14%" class="reportNow_z report_class "></td>
<td width="14%" class="reportNow_z report_class">0</td>
<td width="14%" class="reportNow_z report_class">--</td>
<td width="14%" class="reportNow_z report_class">--</td>
<td width="14%" class="reportNow_z report_class ">--</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="15%" class="altbg1"><font color="red"></font></td>
<td width="15%" class="reportNow_z">X口口X</td>
<td width="14%" class="reportNow_z report_class ">98</td>
<td width="14%" class="reportNow_z report_class">1304</td>
<td width="14%" class="reportNow_z report_class">--</td>
<td width="14%" class="reportNow_z report_class">--</td>
<td width="14%" class="reportNow_z report_class ">--</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="15%" class="altbg1"><font color="red"></font></td>
<td width="15%" class="reportNow_z">XX口口</td>
<td width="14%" class="reportNow_z report_class ">18</td>
<td width="14%" class="reportNow_z report_class">180</td>
<td width="14%" class="reportNow_z report_class">--</td>
<td width="14%" class="reportNow_z report_class">--</td>
<td width="14%" class="reportNow_z report_class ">--</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="15%" class="altbg1"><font color="red"></font></td>
<td width="15%" class="altbg2">三定位</td>
<td width="14%" class="altbg1 report_class ">231</td>
<td width="14%" class="altbg2 report_class">1826</td>
<td width="14%" class="altbg1 report_class">--</td>
<td width="14%" class="altbg2 report_class">--</td>
<td width="14%" class="altbg1 report_class ">--</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="15%" class="altbg1"><font color="red"></font></td>
<td width="15%" class="reportNow_z">口口口X</td>
<td width="14%" class="reportNow_z report_class ">216</td>
<td width="14%" class="reportNow_z report_class">1296</td>
<td width="14%" class="reportNow_z report_class">--</td>
<td width="14%" class="reportNow_z report_class">--</td>
<td width="14%" class="reportNow_z report_class ">--</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="15%" class="altbg1"><font color="red"></font></td>
<td width="15%" class="reportNow_z">口口X口</td>
<td width="14%" class="reportNow_z report_class ">8</td>
<td width="14%" class="reportNow_z report_class">150</td>
<td width="14%" class="reportNow_z report_class">--</td>
<td width="14%" class="reportNow_z report_class">--</td>
<td width="14%" class="reportNow_z report_class ">--</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="15%" class="altbg1"><font color="red"></font></td>
<td width="15%" class="reportNow_z">口X口口</td>
<td width="14%" class="reportNow_z report_class ">7</td>
<td width="14%" class="reportNow_z report_class">380</td>
<td width="14%" class="reportNow_z report_class">--</td>
<td width="14%" class="reportNow_z report_class">--</td>
<td width="14%" class="reportNow_z report_class ">--</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="15%" class="altbg1"><font color="red"></font></td>
<td width="15%" class="reportNow_z">X口口口</td>
<td width="14%" class="reportNow_z report_class "></td>
<td width="14%" class="reportNow_z report_class">0</td>
<td width="14%" class="reportNow_z report_class">--</td>
<td width="14%" class="reportNow_z report_class">--</td>
<td width="14%" class="reportNow_z report_class ">--</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="15%" class="altbg1"><font color="red"></font></td>
<td width="15%" class="altbg2">四定位</td>
<td width="14%" class="altbg1 report_class ">7</td>
<td width="14%" class="altbg2 report_class">150</td>
<td width="14%" class="altbg1 report_class">--</td>
<td width="14%" class="altbg2 report_class">--</td>
<td width="14%" class="altbg1 report_class ">--</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="15%" class="altbg1"><font color="red"></font></td>
<td width="15%" class="altbg2">二字现</td>
<td width="14%" class="altbg1 report_class "></td>
<td width="14%" class="altbg2 report_class">0</td>
<td width="14%" class="altbg1 report_class">--</td>
<td width="14%" class="altbg2 report_class">--</td>
<td width="14%" class="altbg1 report_class ">--</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="15%" class="altbg1"><font color="red"></font></td>
<td width="15%" class="altbg2">三字现</td>
<td width="14%" class="altbg1 report_class "></td>
<td width="14%" class="altbg2 report_class">0</td>
<td width="14%" class="altbg1 report_class">--</td>
<td width="14%" class="altbg2 report_class">--</td>
<td width="14%" class="altbg1 report_class ">--</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="15%" class="altbg1"><font color="red"></font></td>
<td width="15%" class="altbg2">四字现</td>
<td width="14%" class="altbg1 report_class "></td>
<td width="14%" class="altbg2 report_class">0</td>
<td width="14%" class="altbg1 report_class">--</td>
<td width="14%" class="altbg2 report_class">--</td>
<td width="14%" class="altbg1 report_class ">--</td></tr>
</tbody></table></td></tr><tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td class="altbg1"><a href="index.php?action=reportclass&amp;doaction=month&amp;s_issueno=15122&amp;comid=0&amp;g_uid=36281&amp;zizhanghao=&amp;g_levelid=5" title="">hhh001(朋总)</a></td>
<td class="altbg2"><a href="javascript:collapse_change('showclass_136281');"><img id="menuimg_showclass_136281" src="./images/admincg/menu_add.gif" border="0">总货合计</a></td>
<td class="altbg1 report_class">169</td>
<td class="altbg2 report_class">16240</td>
<td class="altbg1 report_class">--</td>
<td class="altbg2 report_class">--</td>
<td class="altbg1 report_class ">--</td></tr>
<tr style="display:none;" id="menu_showclass_136281"><td colspan="7" style="margin:0px;padding:0px;width:100%;"><table border="0" cellpadding="0" cellspacing="0" class="tableborder" width="100%"><tbody><tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="15%" class="altbg1"><font color="red"></font></td>
<td width="15%" class="altbg2">二定位</td>
<td width="14%" class="altbg1 report_class ">0</td>
<td width="14%" class="altbg2 report_class">0</td>
<td width="14%" class="altbg1 report_class">--</td>
<td width="14%" class="altbg2 report_class">--</td>
<td width="14%" class="altbg1 report_class ">--</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="15%" class="altbg1"><font color="red"></font></td>
<td width="15%" class="reportNow_z">口口XX</td>
<td width="14%" class="reportNow_z report_class "></td>
<td width="14%" class="reportNow_z report_class">0</td>
<td width="14%" class="reportNow_z report_class">--</td>
<td width="14%" class="reportNow_z report_class">--</td>
<td width="14%" class="reportNow_z report_class ">--</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="15%" class="altbg1"><font color="red"></font></td>
<td width="15%" class="reportNow_z">口X口X</td>
<td width="14%" class="reportNow_z report_class "></td>
<td width="14%" class="reportNow_z report_class">0</td>
<td width="14%" class="reportNow_z report_class">--</td>
<td width="14%" class="reportNow_z report_class">--</td>
<td width="14%" class="reportNow_z report_class ">--</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="15%" class="altbg1"><font color="red"></font></td>
<td width="15%" class="reportNow_z">口XX口</td>
<td width="14%" class="reportNow_z report_class "></td>
<td width="14%" class="reportNow_z report_class">0</td>
<td width="14%" class="reportNow_z report_class">--</td>
<td width="14%" class="reportNow_z report_class">--</td>
<td width="14%" class="reportNow_z report_class ">--</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="15%" class="altbg1"><font color="red"></font></td>
<td width="15%" class="reportNow_z">X口X口</td>
<td width="14%" class="reportNow_z report_class "></td>
<td width="14%" class="reportNow_z report_class">0</td>
<td width="14%" class="reportNow_z report_class">--</td>
<td width="14%" class="reportNow_z report_class">--</td>
<td width="14%" class="reportNow_z report_class ">--</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="15%" class="altbg1"><font color="red"></font></td>
<td width="15%" class="reportNow_z">X口口X</td>
<td width="14%" class="reportNow_z report_class "></td>
<td width="14%" class="reportNow_z report_class">0</td>
<td width="14%" class="reportNow_z report_class">--</td>
<td width="14%" class="reportNow_z report_class">--</td>
<td width="14%" class="reportNow_z report_class ">--</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="15%" class="altbg1"><font color="red"></font></td>
<td width="15%" class="reportNow_z">XX口口</td>
<td width="14%" class="reportNow_z report_class "></td>
<td width="14%" class="reportNow_z report_class">0</td>
<td width="14%" class="reportNow_z report_class">--</td>
<td width="14%" class="reportNow_z report_class">--</td>
<td width="14%" class="reportNow_z report_class ">--</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="15%" class="altbg1"><font color="red"></font></td>
<td width="15%" class="altbg2">三定位</td>
<td width="14%" class="altbg1 report_class ">166</td>
<td width="14%" class="altbg2 report_class">16150</td>
<td width="14%" class="altbg1 report_class">--</td>
<td width="14%" class="altbg2 report_class">--</td>
<td width="14%" class="altbg1 report_class ">--</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="15%" class="altbg1"><font color="red"></font></td>
<td width="15%" class="reportNow_z">口口口X</td>
<td width="14%" class="reportNow_z report_class ">2</td>
<td width="14%" class="reportNow_z report_class">20</td>
<td width="14%" class="reportNow_z report_class">--</td>
<td width="14%" class="reportNow_z report_class">--</td>
<td width="14%" class="reportNow_z report_class ">--</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="15%" class="altbg1"><font color="red"></font></td>
<td width="15%" class="reportNow_z">口口X口</td>
<td width="14%" class="reportNow_z report_class "></td>
<td width="14%" class="reportNow_z report_class">0</td>
<td width="14%" class="reportNow_z report_class">--</td>
<td width="14%" class="reportNow_z report_class">--</td>
<td width="14%" class="reportNow_z report_class ">--</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="15%" class="altbg1"><font color="red"></font></td>
<td width="15%" class="reportNow_z">口X口口</td>
<td width="14%" class="reportNow_z report_class ">2</td>
<td width="14%" class="reportNow_z report_class">20</td>
<td width="14%" class="reportNow_z report_class">--</td>
<td width="14%" class="reportNow_z report_class">--</td>
<td width="14%" class="reportNow_z report_class ">--</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="15%" class="altbg1"><font color="red"></font></td>
<td width="15%" class="reportNow_z">X口口口</td>
<td width="14%" class="reportNow_z report_class ">162</td>
<td width="14%" class="reportNow_z report_class">16110</td>
<td width="14%" class="reportNow_z report_class">--</td>
<td width="14%" class="reportNow_z report_class">--</td>
<td width="14%" class="reportNow_z report_class ">--</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="15%" class="altbg1"><font color="red"></font></td>
<td width="15%" class="altbg2">四定位</td>
<td width="14%" class="altbg1 report_class ">3</td>
<td width="14%" class="altbg2 report_class">90</td>
<td width="14%" class="altbg1 report_class">--</td>
<td width="14%" class="altbg2 report_class">--</td>
<td width="14%" class="altbg1 report_class ">--</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="15%" class="altbg1"><font color="red"></font></td>
<td width="15%" class="altbg2">二字现</td>
<td width="14%" class="altbg1 report_class "></td>
<td width="14%" class="altbg2 report_class">0</td>
<td width="14%" class="altbg1 report_class">--</td>
<td width="14%" class="altbg2 report_class">--</td>
<td width="14%" class="altbg1 report_class ">--</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="15%" class="altbg1"><font color="red"></font></td>
<td width="15%" class="altbg2">三字现</td>
<td width="14%" class="altbg1 report_class "></td>
<td width="14%" class="altbg2 report_class">0</td>
<td width="14%" class="altbg1 report_class">--</td>
<td width="14%" class="altbg2 report_class">--</td>
<td width="14%" class="altbg1 report_class ">--</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="15%" class="altbg1"><font color="red"></font></td>
<td width="15%" class="altbg2">四字现</td>
<td width="14%" class="altbg1 report_class "></td>
<td width="14%" class="altbg2 report_class">0</td>
<td width="14%" class="altbg1 report_class">--</td>
<td width="14%" class="altbg2 report_class">--</td>
<td width="14%" class="altbg1 report_class ">--</td></tr>
</tbody></table></td></tr><tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="hover"><td class="altbg1"><a href="index.php?action=reportclass&amp;doaction=month&amp;s_issueno=15122&amp;comid=0&amp;g_uid=37200&amp;zizhanghao=&amp;g_levelid=5" title="">pp9001(三皇哥)</a></td>
<td class="altbg2"><a href="javascript:collapse_change('showclass_137200');"><img id="menuimg_showclass_137200" src="./images/admincg/menu_add.gif" border="0">总货合计</a></td>
<td class="altbg1 report_class">1468</td>
<td class="altbg2 report_class">12501.9</td>
<td class="altbg1 report_class">--</td>
<td class="altbg2 report_class">--</td>
<td class="altbg1 report_class ">--</td></tr>
<tr style="display:none;" id="menu_showclass_137200"><td colspan="7" style="margin:0px;padding:0px;width:100%;"><table border="0" cellpadding="0" cellspacing="0" class="tableborder" width="100%"><tbody><tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="15%" class="altbg1"><font color="red"></font></td>
<td width="15%" class="altbg2">二定位</td>
<td width="14%" class="altbg1 report_class ">93</td>
<td width="14%" class="altbg2 report_class">10371</td>
<td width="14%" class="altbg1 report_class">--</td>
<td width="14%" class="altbg2 report_class">--</td>
<td width="14%" class="altbg1 report_class ">--</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="15%" class="altbg1"><font color="red"></font></td>
<td width="15%" class="reportNow_z">口口XX</td>
<td width="14%" class="reportNow_z report_class ">6</td>
<td width="14%" class="reportNow_z report_class">18</td>
<td width="14%" class="reportNow_z report_class">--</td>
<td width="14%" class="reportNow_z report_class">--</td>
<td width="14%" class="reportNow_z report_class ">--</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="15%" class="altbg1"><font color="red"></font></td>
<td width="15%" class="reportNow_z">口X口X</td>
<td width="14%" class="reportNow_z report_class "></td>
<td width="14%" class="reportNow_z report_class">0</td>
<td width="14%" class="reportNow_z report_class">--</td>
<td width="14%" class="reportNow_z report_class">--</td>
<td width="14%" class="reportNow_z report_class ">--</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="15%" class="altbg1"><font color="red"></font></td>
<td width="15%" class="reportNow_z">口XX口</td>
<td width="14%" class="reportNow_z report_class ">45</td>
<td width="14%" class="reportNow_z report_class">175</td>
<td width="14%" class="reportNow_z report_class">--</td>
<td width="14%" class="reportNow_z report_class">--</td>
<td width="14%" class="reportNow_z report_class ">--</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="15%" class="altbg1"><font color="red"></font></td>
<td width="15%" class="reportNow_z">X口X口</td>
<td width="14%" class="reportNow_z report_class "></td>
<td width="14%" class="reportNow_z report_class">0</td>
<td width="14%" class="reportNow_z report_class">--</td>
<td width="14%" class="reportNow_z report_class">--</td>
<td width="14%" class="reportNow_z report_class ">--</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="15%" class="altbg1"><font color="red"></font></td>
<td width="15%" class="reportNow_z">X口口X</td>
<td width="14%" class="reportNow_z report_class ">42</td>
<td width="14%" class="reportNow_z report_class">10178</td>
<td width="14%" class="reportNow_z report_class">--</td>
<td width="14%" class="reportNow_z report_class">--</td>
<td width="14%" class="reportNow_z report_class ">--</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="15%" class="altbg1"><font color="red"></font></td>
<td width="15%" class="reportNow_z">XX口口</td>
<td width="14%" class="reportNow_z report_class "></td>
<td width="14%" class="reportNow_z report_class">0</td>
<td width="14%" class="reportNow_z report_class">--</td>
<td width="14%" class="reportNow_z report_class">--</td>
<td width="14%" class="reportNow_z report_class ">--</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="15%" class="altbg1"><font color="red"></font></td>
<td width="15%" class="altbg2">三定位</td>
<td width="14%" class="altbg1 report_class ">171</td>
<td width="14%" class="altbg2 report_class">1688</td>
<td width="14%" class="altbg1 report_class">--</td>
<td width="14%" class="altbg2 report_class">--</td>
<td width="14%" class="altbg1 report_class ">--</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="15%" class="altbg1"><font color="red"></font></td>
<td width="15%" class="reportNow_z">口口口X</td>
<td width="14%" class="reportNow_z report_class ">0</td>
<td width="14%" class="reportNow_z report_class">0</td>
<td width="14%" class="reportNow_z report_class">--</td>
<td width="14%" class="reportNow_z report_class">--</td>
<td width="14%" class="reportNow_z report_class ">--</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="15%" class="altbg1"><font color="red"></font></td>
<td width="15%" class="reportNow_z">口口X口</td>
<td width="14%" class="reportNow_z report_class ">5</td>
<td width="14%" class="reportNow_z report_class">60</td>
<td width="14%" class="reportNow_z report_class">--</td>
<td width="14%" class="reportNow_z report_class">--</td>
<td width="14%" class="reportNow_z report_class ">--</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="15%" class="altbg1"><font color="red"></font></td>
<td width="15%" class="reportNow_z">口X口口</td>
<td width="14%" class="reportNow_z report_class ">4</td>
<td width="14%" class="reportNow_z report_class">8</td>
<td width="14%" class="reportNow_z report_class">--</td>
<td width="14%" class="reportNow_z report_class">--</td>
<td width="14%" class="reportNow_z report_class ">--</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="15%" class="altbg1"><font color="red"></font></td>
<td width="15%" class="reportNow_z">X口口口</td>
<td width="14%" class="reportNow_z report_class ">162</td>
<td width="14%" class="reportNow_z report_class">1620</td>
<td width="14%" class="reportNow_z report_class">--</td>
<td width="14%" class="reportNow_z report_class">--</td>
<td width="14%" class="reportNow_z report_class ">--</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="15%" class="altbg1"><font color="red"></font></td>
<td width="15%" class="altbg2">四定位</td>
<td width="14%" class="altbg1 report_class ">1204</td>
<td width="14%" class="altbg2 report_class">442.9</td>
<td width="14%" class="altbg1 report_class">--</td>
<td width="14%" class="altbg2 report_class">--</td>
<td width="14%" class="altbg1 report_class ">--</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="15%" class="altbg1"><font color="red"></font></td>
<td width="15%" class="altbg2">二字现</td>
<td width="14%" class="altbg1 report_class "></td>
<td width="14%" class="altbg2 report_class">0</td>
<td width="14%" class="altbg1 report_class">--</td>
<td width="14%" class="altbg2 report_class">--</td>
<td width="14%" class="altbg1 report_class ">--</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="15%" class="altbg1"><font color="red"></font></td>
<td width="15%" class="altbg2">三字现</td>
<td width="14%" class="altbg1 report_class "></td>
<td width="14%" class="altbg2 report_class">0</td>
<td width="14%" class="altbg1 report_class">--</td>
<td width="14%" class="altbg2 report_class">--</td>
<td width="14%" class="altbg1 report_class ">--</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td width="15%" class="altbg1"><font color="red"></font></td>
<td width="15%" class="altbg2">四字现</td>
<td width="14%" class="altbg1 report_class "></td>
<td width="14%" class="altbg2 report_class">0</td>
<td width="14%" class="altbg1 report_class">--</td>
<td width="14%" class="altbg2 report_class">--</td>
<td width="14%" class="altbg1 report_class ">--</td></tr>
</tbody></table></td></tr></tbody></table>
	<br>
</td></tr></tbody></table>
<br><br><div class="footer Noprint"><hr size="0" noshade="" color="BORDERCOLOR" width="80%">
<b></b> V2.0 &nbsp;©  <b>
</b><span class="smalltxt"></span>
usetime:0.638141, 
mysqlquery:8
</div>
<noscript>&lt;iframe src=*.html&gt;&lt;/iframe&gt;</noscript>




</body></html>