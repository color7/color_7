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
window.open(url,"Detail1399384806","Scrollbars=no,Toolbar=no,Location=no,Direction=no,Resizeable=no, Width="+iWidth+" ,Height="+iHeight+",top="+iTop+",left="+iLeft); 
}

//--> 
</script>
	<style media="print"> .Noprint{display:none;} </style> <table class="Noprint" width="100%" border="0" cellpadding="0" cellspacing="0"><tbody><tr><td><table width="100%" border="0" cellpadding="0" cellspacing="0" class="guide"><tbody><tr><td><table width="100%" style="border:none;" border="0" cellpadding="0" cellspacing="0"><tbody><tr style="border:none;"><td style="border:none;" width="15%"><a href="#" onclick=" parent.main.location='?action=home';return false;">位置</a>&nbsp;»&nbsp;越级操作日志</td>
		<td width="85%" style="border:none;text-align:right;padding-right:10px;"><a href="levelLogs.html" target="main" class="meuntop"><b>越级操作日志</b></a> | <a href="myOperaLogs.html" target="main"><b>自己操作日志</b></a> | <a href="blockingLogs.html" target="main"><b>拦货金额日志</b></a> | <a href="selectLogs.html" target="main"><b>会员快选日志</b></a></td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table><br><script type="text/javascript">
function show_play(menucount){
	if($('show_' + menucount).style.display == 'none') {
		$('show_' + menucount).style.display = '';
	} else {
		$('show_' + menucount).style.display = 'none';
	}
}
</script>

<table width="100%" border="0" cellpadding="0" cellspacing="0" class="tableborder">
<tbody><tr class="header"><td colspan="5">越级操作日志</td></tr>
<form method="post" action="index.php?action=logsuser2"></form>
<input type="hidden" name="formhash" value="82c0edaa">
<tr class="altbg2">
<td width="90">被操作账号 </td>
<td width="100"><input type="text" name="s_usernameto" id="s_usernameto" maxlength="16" value="" style="width:90px"></td>
<td width="*"><input class="button" type="submit" value="提 交"></td>
</tr>

</tbody></table>
<br>
<form method="post" action="index.php?action=settings&amp;action=basic">
<input type="hidden" name="formhash" value="82c0edaa">
<table width="100%" border="0" cellpadding="0" cellspacing="0" class="tableborder">
<tbody><tr class="header"><td width="8%">操作账号</td><td width="14%">被操作账号</td><td width="60%">操作内容</td><td width="10%">操作时间</td><td width="8%">操作IP</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">qq3535(会员)</td><td class="altbg2">信用额度:0改成<font color="red">10</font>，</td><td class="altbg1">10-14 22:09:54</td><td class="altbg2">223.104.*.*</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">aq123(代理)</td><td class="altbg2">信用额度:0改成<font color="red">10</font>，</td><td class="altbg1">10-14 22:09:37</td><td class="altbg2">223.104.*.*</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">he6236(代理)</td><td class="altbg2">信用额度:490000改成<font color="red">420000</font>，</td><td class="altbg1">10-13 12:42:05</td><td class="altbg2">113.110.*.*</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">hhh666(会员)</td><td class="altbg2">信用额度:2000改成<font color="red">5000</font>，</td><td class="altbg1">10-13 12:41:14</td><td class="altbg2">113.110.*.*</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">aa9396(会员)</td><td class="altbg2">信用额度:120000改成<font color="red">50000</font>，</td><td class="altbg1">10-13 12:40:29</td><td class="altbg2">113.110.*.*</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">hhhwww(会员)</td><td class="altbg2"><a href="javascript:show_play('219190');">更多</a></td><td class="altbg1">10-11 00:10:56</td><td class="altbg2">223.73.*.*</td></tr>
<tr style="display:none" id="show_219190"><td colspan="5"><table width="99%" align="center" border="0" cellpadding="0" cellspacing="0" style="border: 1px solid #268324;">
				<tbody><tr align="center">
				<td width="50%"><b>类别</b></td>
				<td width="50%"><b>赚水</b></td>
				</tr><tr><td>口口XX</td><td>0改成<font color="red">0.01</font>&nbsp;</td></tr><tr><td>口X口X</td><td>0改成<font color="red">0.01</font>&nbsp;</td></tr><tr><td>口XX口</td><td>0改成<font color="red">0.01</font>&nbsp;</td></tr><tr><td>X口X口</td><td>0改成<font color="red">0.01</font>&nbsp;</td></tr><tr><td>X口口X</td><td>0改成<font color="red">0.01</font>&nbsp;</td></tr><tr><td>XX口口</td><td>0改成<font color="red">0.01</font>&nbsp;</td></tr><tr><td>口口口X</td><td>0改成<font color="red">0.01</font>&nbsp;</td></tr><tr><td>口口X口</td><td>0改成<font color="red">0.01</font>&nbsp;</td></tr><tr><td>口X口口</td><td>0改成<font color="red">0.01</font>&nbsp;</td></tr><tr><td>X口口口</td><td>0改成<font color="red">0.01</font>&nbsp;</td></tr><tr><td>四定位</td><td>0改成<font color="red">0.01</font>&nbsp;</td></tr></tbody></table></td></tr><tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">hhhwww(会员)</td><td class="altbg2">信用额度:0改成<font color="red">50000</font>，</td><td class="altbg1">10-10 14:13:37</td><td class="altbg2">116.28.*.*</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">hhh623(会员)</td><td class="altbg2">信用额度:50000改成<font color="red">80000</font>，</td><td class="altbg1">10-10 14:07:04</td><td class="altbg2">116.28.*.*</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">kk623(代理)</td><td class="altbg2">信用额度:100000改成<font color="red">250000</font>，</td><td class="altbg1">10-10 14:06:39</td><td class="altbg2">116.28.*.*</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">he6236(代理)</td><td class="altbg2">信用额度:500000改成<font color="red">490000</font>，</td><td class="altbg1">10-10 14:04:33</td><td class="altbg2">116.28.*.*</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">kk5422(会员)</td><td class="altbg2">信用额度:0改成<font color="red">30000</font>，</td><td class="altbg1">10-08 12:26:53</td><td class="altbg2">14.210.*.*</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">he6236(代理)</td><td class="altbg2">信用额度:456000改成<font color="red">500000</font>，</td><td class="altbg1">10-08 12:26:20</td><td class="altbg2">14.210.*.*</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">mmm99(代理)</td><td class="altbg2">信用额度:50000改成<font color="red">0</font>，</td><td class="altbg1">10-08 12:25:45</td><td class="altbg2">14.210.*.*</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">kk623(代理)</td><td class="altbg2">信用额度:360000改成<font color="red">100000</font>，</td><td class="altbg1">10-08 12:24:10</td><td class="altbg2">14.210.*.*</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">kk3535(会员)</td><td class="altbg2">信用额度:21000改成<font color="red">5000</font>，</td><td class="altbg1">10-08 12:23:36</td><td class="altbg2">14.210.*.*</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">kk4448(会员)</td><td class="altbg2">信用额度:30000改成<font color="red">9000</font>，</td><td class="altbg1">10-08 12:23:03</td><td class="altbg2">14.210.*.*</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">kk5575(会员)</td><td class="altbg2">信用额度:18000改成<font color="red">5000</font>，</td><td class="altbg1">10-08 12:22:39</td><td class="altbg2">14.210.*.*</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">kk4448(会员)</td><td class="altbg2">信用额度:50000改成<font color="red">30000</font>，</td><td class="altbg1">10-08 12:22:18</td><td class="altbg2">14.210.*.*</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">hhh623(会员)</td><td class="altbg2">信用额度:230000改成<font color="red">50000</font>，</td><td class="altbg1">10-08 12:21:27</td><td class="altbg2">14.210.*.*</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">mm555(会员)</td><td class="altbg2">密码已被<font color="red">修改</font>，</td><td class="altbg1">10-06 19:23:07</td><td class="altbg2">14.119.*.*</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">mm555(会员)</td><td class="altbg2">密码已被<font color="red">修改</font>，<a href="javascript:show_play('212508');">更多</a></td><td class="altbg1">10-06 19:22:56</td><td class="altbg2">14.119.*.*</td></tr>
<tr style="display:none" id="show_212508"><td colspan="5"><table width="99%" align="center" border="0" cellpadding="0" cellspacing="0" style="border: 1px solid #268324;">
				<tbody><tr align="center">
				<td width="50%"><b>类别</b></td>
				<td width="50%"><b>赚水</b></td>
				</tr><tr><td>口口口X</td><td>0改成<font color="red">0.001</font>&nbsp;</td></tr><tr><td>口口X口</td><td>0改成<font color="red">0.001</font>&nbsp;</td></tr><tr><td>口X口口</td><td>0改成<font color="red">0.001</font>&nbsp;</td></tr><tr><td>X口口口</td><td>0改成<font color="red">0.001</font>&nbsp;</td></tr><tr><td>四定位</td><td>0改成<font color="red">0.001</font>&nbsp;</td></tr></tbody></table></td></tr><tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">hhh623(会员)</td><td class="altbg2">信用额度:224000改成<font color="red">230000</font>，</td><td class="altbg1">10-06 18:59:11</td><td class="altbg2">14.119.*.*</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">kk2461(会员)</td><td class="altbg2">信用额度:46000改成<font color="red">30000</font>，</td><td class="altbg1">10-06 18:52:12</td><td class="altbg2">14.119.*.*</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">aa9448(会员)</td><td class="altbg2">信用额度:0改成<font color="red">8000</font>，<a href="javascript:show_play('211956');">更多</a></td><td class="altbg1">10-06 16:18:56</td><td class="altbg2">14.119.*.*</td></tr>
<tr style="display:none" id="show_211956"><td colspan="5"><table width="99%" align="center" border="0" cellpadding="0" cellspacing="0" style="border: 1px solid #268324;">
				<tbody><tr align="center">
				<td width="50%"><b>类别</b></td>
				<td width="50%"><b>赚水</b></td>
				</tr><tr><td>口口XX</td><td>0改成<font color="red">0.01</font>&nbsp;</td></tr><tr><td>口X口X</td><td>0改成<font color="red">0.01</font>&nbsp;</td></tr><tr><td>口XX口</td><td>0改成<font color="red">0.01</font>&nbsp;</td></tr><tr><td>X口X口</td><td>0改成<font color="red">0.01</font>&nbsp;</td></tr><tr><td>X口口X</td><td>0改成<font color="red">0.01</font>&nbsp;</td></tr><tr><td>XX口口</td><td>0改成<font color="red">0.01</font>&nbsp;</td></tr><tr><td>口口口X</td><td>0改成<font color="red">0.005</font>&nbsp;</td></tr><tr><td>口口X口</td><td>0改成<font color="red">0.005</font>&nbsp;</td></tr><tr><td>口X口口</td><td>0改成<font color="red">0.005</font>&nbsp;</td></tr><tr><td>X口口口</td><td>0改成<font color="red">0.005</font>&nbsp;</td></tr><tr><td>四定位</td><td>0改成<font color="red">0.005</font>&nbsp;</td></tr></tbody></table></td></tr><tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">kk2461(会员)</td><td class="altbg2">信用额度:0改成<font color="red">46000</font>，</td><td class="altbg1">10-06 15:50:39</td><td class="altbg2">14.119.*.*</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">kk623(代理)</td><td class="altbg2">信用额度:314000改成<font color="red">360000</font>，</td><td class="altbg1">10-06 15:49:51</td><td class="altbg2">14.119.*.*</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">k5522(会员)</td><td class="altbg2">信用额度:50000改成<font color="red">70000</font>，</td><td class="altbg1">10-06 12:43:47</td><td class="altbg2">223.73.*.*</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">kk5522(代理)</td><td class="altbg2">信用额度:50000改成<font color="red">70000</font>，</td><td class="altbg1">10-06 12:43:29</td><td class="altbg2">223.73.*.*</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">he6236(代理)</td><td class="altbg2">信用额度:499000改成<font color="red">456000</font>，</td><td class="altbg1">10-06 12:43:03</td><td class="altbg2">223.73.*.*</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">hhh666(会员)</td><td class="altbg2">信用额度:4000改成<font color="red">2000</font>，</td><td class="altbg1">10-06 12:39:38</td><td class="altbg2">223.73.*.*</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">hhh333(会员)</td><td class="altbg2">信用额度:42000改成<font color="red">20000</font>，</td><td class="altbg1">10-06 12:39:15</td><td class="altbg2">223.73.*.*</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">aa9396(会员)</td><td class="altbg2"><a href="javascript:show_play('211396');">更多</a></td><td class="altbg1">10-06 12:14:38</td><td class="altbg2">223.73.*.*</td></tr>
<tr style="display:none" id="show_211396"><td colspan="5"><table width="99%" align="center" border="0" cellpadding="0" cellspacing="0" style="border: 1px solid #268324;">
				<tbody><tr align="center">
				<td width="50%"><b>类别</b></td>
				<td width="50%"><b>赚水</b></td>
				</tr><tr><td>口口XX</td><td>0.005改成<font color="red">0.008</font>&nbsp;</td></tr><tr><td>口X口X</td><td>0.005改成<font color="red">0.008</font>&nbsp;</td></tr><tr><td>口XX口</td><td>0.005改成<font color="red">0.008</font>&nbsp;</td></tr><tr><td>X口X口</td><td>0.005改成<font color="red">0.008</font>&nbsp;</td></tr><tr><td>X口口X</td><td>0.005改成<font color="red">0.008</font>&nbsp;</td></tr><tr><td>XX口口</td><td>0.005改成<font color="red">0.008</font>&nbsp;</td></tr></tbody></table></td></tr><tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">kk4448(会员)</td><td class="altbg2"><a href="javascript:show_play('211379');">更多</a></td><td class="altbg1">10-06 12:05:01</td><td class="altbg2">223.73.*.*</td></tr>
<tr style="display:none" id="show_211379"><td colspan="5"><table width="99%" align="center" border="0" cellpadding="0" cellspacing="0" style="border: 1px solid #268324;">
				<tbody><tr align="center">
				<td width="50%"><b>类别</b></td>
				<td width="50%"><b>赚水</b></td>
				</tr><tr><td>口口XX</td><td>0.005改成<font color="red">0.013</font>&nbsp;</td></tr><tr><td>口X口X</td><td>0.005改成<font color="red">0.013</font>&nbsp;</td></tr><tr><td>口XX口</td><td>0.005改成<font color="red">0.013</font>&nbsp;</td></tr><tr><td>X口X口</td><td>0.005改成<font color="red">0.013</font>&nbsp;</td></tr><tr><td>X口口X</td><td>0.005改成<font color="red">0.013</font>&nbsp;</td></tr><tr><td>XX口口</td><td>0.005改成<font color="red">0.013</font>&nbsp;</td></tr><tr><td>口口口X</td><td>0.006改成<font color="red">0.01</font>&nbsp;</td></tr><tr><td>口口X口</td><td>0.006改成<font color="red">0.01</font>&nbsp;</td></tr><tr><td>口X口口</td><td>0.006改成<font color="red">0.01</font>&nbsp;</td></tr><tr><td>X口口口</td><td>0.006改成<font color="red">0.01</font>&nbsp;</td></tr><tr><td>四定位</td><td>0.006改成<font color="red">0.01</font>&nbsp;</td></tr></tbody></table></td></tr><tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">kk5575(会员)</td><td class="altbg2"><a href="javascript:show_play('211378');">更多</a></td><td class="altbg1">10-06 12:04:34</td><td class="altbg2">223.73.*.*</td></tr>
<tr style="display:none" id="show_211378"><td colspan="5"><table width="99%" align="center" border="0" cellpadding="0" cellspacing="0" style="border: 1px solid #268324;">
				<tbody><tr align="center">
				<td width="50%"><b>类别</b></td>
				<td width="50%"><b>赚水</b></td>
				</tr><tr><td>口口XX</td><td>0.005改成<font color="red">0.013</font>&nbsp;</td></tr><tr><td>口X口X</td><td>0.005改成<font color="red">0.013</font>&nbsp;</td></tr><tr><td>口XX口</td><td>0.005改成<font color="red">0.013</font>&nbsp;</td></tr><tr><td>X口X口</td><td>0.005改成<font color="red">0.013</font>&nbsp;</td></tr><tr><td>X口口X</td><td>0.005改成<font color="red">0.013</font>&nbsp;</td></tr><tr><td>XX口口</td><td>0.005改成<font color="red">0.013</font>&nbsp;</td></tr></tbody></table></td></tr><tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">kk623(代理)</td><td class="altbg2">信用额度:316000改成<font color="red">314000</font>，</td><td class="altbg1">10-06 12:04:03</td><td class="altbg2">223.73.*.*</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">kk5575(会员)</td><td class="altbg2">信用额度:14000改成<font color="red">18000</font>，</td><td class="altbg1">10-06 12:03:26</td><td class="altbg2">223.73.*.*</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">hhh623(会员)</td><td class="altbg2">信用额度:230000改成<font color="red">224000</font>，</td><td class="altbg1">10-06 12:03:01</td><td class="altbg2">223.73.*.*</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">kk623(代理)</td><td class="altbg2">信用额度:400000改成<font color="red">316000</font>，</td><td class="altbg1">10-06 12:01:36</td><td class="altbg2">223.73.*.*</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">hh88(会员)</td><td class="altbg2">信用额度:60000改成<font color="red">180000</font>，</td><td class="altbg1">10-06 11:55:35</td><td class="altbg2">223.73.*.*</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">aa9396(会员)</td><td class="altbg2">信用额度:180000改成<font color="red">120000</font>，</td><td class="altbg1">10-06 11:54:45</td><td class="altbg2">223.73.*.*</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">kk3535(会员)</td><td class="altbg2"><a href="javascript:show_play('211327');">更多</a></td><td class="altbg1">10-06 11:53:17</td><td class="altbg2">223.73.*.*</td></tr>
<tr style="display:none" id="show_211327"><td colspan="5"><table width="99%" align="center" border="0" cellpadding="0" cellspacing="0" style="border: 1px solid #268324;">
				<tbody><tr align="center">
				<td width="50%"><b>类别</b></td>
				<td width="50%"><b>赚水</b></td>
				</tr><tr><td>口口XX</td><td>0.005改成<font color="red">0.013</font>&nbsp;</td></tr><tr><td>口X口X</td><td>0.005改成<font color="red">0.013</font>&nbsp;</td></tr><tr><td>口XX口</td><td>0.005改成<font color="red">0.013</font>&nbsp;</td></tr><tr><td>X口X口</td><td>0.005改成<font color="red">0.013</font>&nbsp;</td></tr><tr><td>X口口X</td><td>0.005改成<font color="red">0.013</font>&nbsp;</td></tr><tr><td>XX口口</td><td>0.005改成<font color="red">0.013</font>&nbsp;</td></tr></tbody></table></td></tr><tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">kk2461(会员)</td><td class="altbg2"><a href="javascript:show_play('211322');">更多</a></td><td class="altbg1">10-06 11:52:30</td><td class="altbg2">223.73.*.*</td></tr>
<tr style="display:none" id="show_211322"><td colspan="5"><table width="99%" align="center" border="0" cellpadding="0" cellspacing="0" style="border: 1px solid #268324;">
				<tbody><tr align="center">
				<td width="50%"><b>类别</b></td>
				<td width="50%"><b>赚水</b></td>
				</tr><tr><td>口口XX</td><td>0改成<font color="red">0.01</font>&nbsp;</td></tr><tr><td>口X口X</td><td>0改成<font color="red">0.01</font>&nbsp;</td></tr><tr><td>口XX口</td><td>0改成<font color="red">0.01</font>&nbsp;</td></tr><tr><td>X口X口</td><td>0改成<font color="red">0.01</font>&nbsp;</td></tr><tr><td>X口口X</td><td>0改成<font color="red">0.01</font>&nbsp;</td></tr><tr><td>XX口口</td><td>0改成<font color="red">0.01</font>&nbsp;</td></tr><tr><td>口口口X</td><td>0改成<font color="red">0.01</font>&nbsp;</td></tr><tr><td>口口X口</td><td>0改成<font color="red">0.01</font>&nbsp;</td></tr><tr><td>口X口口</td><td>0改成<font color="red">0.01</font>&nbsp;</td></tr><tr><td>X口口口</td><td>0改成<font color="red">0.01</font>&nbsp;</td></tr><tr><td>四定位</td><td>0改成<font color="red">0.01</font>&nbsp;</td></tr></tbody></table></td></tr><tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">aa9396(会员)</td><td class="altbg2"><a href="javascript:show_play('211319');">更多</a></td><td class="altbg1">10-06 11:51:49</td><td class="altbg2">223.73.*.*</td></tr>
<tr style="display:none" id="show_211319"><td colspan="5"><table width="99%" align="center" border="0" cellpadding="0" cellspacing="0" style="border: 1px solid #268324;">
				<tbody><tr align="center">
				<td width="50%"><b>类别</b></td>
				<td width="50%"><b>赚水</b></td>
				</tr><tr><td>口口XX</td><td>0改成<font color="red">0.005</font>&nbsp;</td></tr><tr><td>口X口X</td><td>0改成<font color="red">0.005</font>&nbsp;</td></tr><tr><td>口XX口</td><td>0改成<font color="red">0.005</font>&nbsp;</td></tr><tr><td>X口X口</td><td>0改成<font color="red">0.005</font>&nbsp;</td></tr><tr><td>X口口X</td><td>0改成<font color="red">0.005</font>&nbsp;</td></tr><tr><td>XX口口</td><td>0改成<font color="red">0.005</font>&nbsp;</td></tr></tbody></table></td></tr><tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">aa9396(会员)</td><td class="altbg2">信用额度:10000改成<font color="red">180000</font>，</td><td class="altbg1">10-06 11:32:24</td><td class="altbg2">223.73.*.*</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">he6236(代理)</td><td class="altbg2">信用额度:349000改成<font color="red">499000</font>，</td><td class="altbg1">10-06 11:32:01</td><td class="altbg2">223.73.*.*</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">kk623(代理)</td><td class="altbg2">信用额度:600000改成<font color="red">400000</font>，</td><td class="altbg1">10-06 11:30:36</td><td class="altbg2">223.73.*.*</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">kk5575(会员)</td><td class="altbg2"><a href="javascript:show_play('211242');">更多</a></td><td class="altbg1">10-06 11:29:14</td><td class="altbg2">223.73.*.*</td></tr>
<tr style="display:none" id="show_211242"><td colspan="5"><table width="99%" align="center" border="0" cellpadding="0" cellspacing="0" style="border: 1px solid #268324;">
				<tbody><tr align="center">
				<td width="50%"><b>类别</b></td>
				<td width="50%"><b>赚水</b></td>
				</tr><tr><td>口口XX</td><td>0.008改成<font color="red">0.005</font>&nbsp;</td></tr><tr><td>口X口X</td><td>0.008改成<font color="red">0.005</font>&nbsp;</td></tr><tr><td>口XX口</td><td>0.008改成<font color="red">0.005</font>&nbsp;</td></tr><tr><td>X口X口</td><td>0.008改成<font color="red">0.005</font>&nbsp;</td></tr><tr><td>X口口X</td><td>0.008改成<font color="red">0.005</font>&nbsp;</td></tr><tr><td>XX口口</td><td>0.008改成<font color="red">0.005</font>&nbsp;</td></tr></tbody></table></td></tr><tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">kk3535(会员)</td><td class="altbg2"><a href="javascript:show_play('211240');">更多</a></td><td class="altbg1">10-06 11:28:47</td><td class="altbg2">223.73.*.*</td></tr>
<tr style="display:none" id="show_211240"><td colspan="5"><table width="99%" align="center" border="0" cellpadding="0" cellspacing="0" style="border: 1px solid #268324;">
				<tbody><tr align="center">
				<td width="50%"><b>类别</b></td>
				<td width="50%"><b>赚水</b></td>
				</tr><tr><td>口口XX</td><td>0.008改成<font color="red">0.005</font>&nbsp;</td></tr><tr><td>口X口X</td><td>0.008改成<font color="red">0.005</font>&nbsp;</td></tr><tr><td>口XX口</td><td>0.008改成<font color="red">0.005</font>&nbsp;</td></tr><tr><td>X口X口</td><td>0.008改成<font color="red">0.005</font>&nbsp;</td></tr><tr><td>X口口X</td><td>0.008改成<font color="red">0.005</font>&nbsp;</td></tr><tr><td>XX口口</td><td>0.008改成<font color="red">0.005</font>&nbsp;</td></tr></tbody></table></td></tr><tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">kk623(代理)</td><td class="altbg2">信用额度:400000改成<font color="red">600000</font>，</td><td class="altbg1">10-06 11:26:36</td><td class="altbg2">223.73.*.*</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">he6236(代理)</td><td class="altbg2">信用额度:340000改成<font color="red">349000</font>，</td><td class="altbg1">10-06 11:25:32</td><td class="altbg2">223.73.*.*</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">he6236(代理)</td><td class="altbg2">信用额度:250000改成<font color="red">340000</font>，</td><td class="altbg1">10-06 11:24:46</td><td class="altbg2">223.73.*.*</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">pp7672(代理)</td><td class="altbg2">信用额度:200000改成<font color="red">1000</font>，</td><td class="altbg1">10-06 11:24:07</td><td class="altbg2">223.73.*.*</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">kk4448(会员)</td><td class="altbg2">信用额度:0改成<font color="red">50000</font>，<a href="javascript:show_play('211222');">更多</a></td><td class="altbg1">10-06 11:22:28</td><td class="altbg2">223.73.*.*</td></tr>
<tr style="display:none" id="show_211222"><td colspan="5"><table width="99%" align="center" border="0" cellpadding="0" cellspacing="0" style="border: 1px solid #268324;">
				<tbody><tr align="center">
				<td width="50%"><b>类别</b></td>
				<td width="50%"><b>赚水</b></td>
				</tr><tr><td>口口XX</td><td>0改成<font color="red">0.005</font>&nbsp;</td></tr><tr><td>口X口X</td><td>0改成<font color="red">0.005</font>&nbsp;</td></tr><tr><td>口XX口</td><td>0改成<font color="red">0.005</font>&nbsp;</td></tr><tr><td>X口X口</td><td>0改成<font color="red">0.005</font>&nbsp;</td></tr><tr><td>X口口X</td><td>0改成<font color="red">0.005</font>&nbsp;</td></tr><tr><td>XX口口</td><td>0改成<font color="red">0.005</font>&nbsp;</td></tr><tr><td>口口口X</td><td>0改成<font color="red">0.006</font>&nbsp;</td></tr><tr><td>口口X口</td><td>0改成<font color="red">0.006</font>&nbsp;</td></tr><tr><td>口X口口</td><td>0改成<font color="red">0.006</font>&nbsp;</td></tr><tr><td>X口口口</td><td>0改成<font color="red">0.006</font>&nbsp;</td></tr><tr><td>四定位</td><td>0改成<font color="red">0.006</font>&nbsp;</td></tr></tbody></table></td></tr><tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">kk5575(会员)</td><td class="altbg2">信用额度:0改成<font color="red">14000</font>，<a href="javascript:show_play('211214');">更多</a></td><td class="altbg1">10-06 11:20:54</td><td class="altbg2">223.73.*.*</td></tr>
<tr style="display:none" id="show_211214"><td colspan="5"><table width="99%" align="center" border="0" cellpadding="0" cellspacing="0" style="border: 1px solid #268324;">
				<tbody><tr align="center">
				<td width="50%"><b>类别</b></td>
				<td width="50%"><b>赚水</b></td>
				</tr><tr><td>口口XX</td><td>0改成<font color="red">0.008</font>&nbsp;</td></tr><tr><td>口X口X</td><td>0改成<font color="red">0.008</font>&nbsp;</td></tr><tr><td>口XX口</td><td>0改成<font color="red">0.008</font>&nbsp;</td></tr><tr><td>X口X口</td><td>0改成<font color="red">0.008</font>&nbsp;</td></tr><tr><td>X口口X</td><td>0改成<font color="red">0.008</font>&nbsp;</td></tr><tr><td>XX口口</td><td>0改成<font color="red">0.008</font>&nbsp;</td></tr><tr><td>口口口X</td><td>0改成<font color="red">0.01</font>&nbsp;</td></tr><tr><td>口口X口</td><td>0改成<font color="red">0.01</font>&nbsp;</td></tr><tr><td>口X口口</td><td>0改成<font color="red">0.01</font>&nbsp;</td></tr><tr><td>X口口口</td><td>0改成<font color="red">0.01</font>&nbsp;</td></tr><tr><td>四定位</td><td>0改成<font color="red">0.01</font>&nbsp;</td></tr></tbody></table></td></tr><tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">kk3535(会员)</td><td class="altbg2"><a href="javascript:show_play('211201');">更多</a></td><td class="altbg1">10-06 11:19:08</td><td class="altbg2">223.73.*.*</td></tr>
<tr style="display:none" id="show_211201"><td colspan="5"><table width="99%" align="center" border="0" cellpadding="0" cellspacing="0" style="border: 1px solid #268324;">
				<tbody><tr align="center">
				<td width="50%"><b>类别</b></td>
				<td width="50%"><b>赚水</b></td>
				</tr><tr><td>口口XX</td><td>0.01改成<font color="red">0.008</font>&nbsp;</td></tr><tr><td>口X口X</td><td>0.01改成<font color="red">0.008</font>&nbsp;</td></tr><tr><td>口XX口</td><td>0.01改成<font color="red">0.008</font>&nbsp;</td></tr><tr><td>X口X口</td><td>0.01改成<font color="red">0.008</font>&nbsp;</td></tr><tr><td>X口口X</td><td>0.01改成<font color="red">0.008</font>&nbsp;</td></tr><tr><td>XX口口</td><td>0.01改成<font color="red">0.008</font>&nbsp;</td></tr></tbody></table></td></tr><tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">kk3535(会员)</td><td class="altbg2">信用额度:0改成<font color="red">21000</font>，<a href="javascript:show_play('211193');">更多</a></td><td class="altbg1">10-06 11:17:59</td><td class="altbg2">223.73.*.*</td></tr>
<tr style="display:none" id="show_211193"><td colspan="5"><table width="99%" align="center" border="0" cellpadding="0" cellspacing="0" style="border: 1px solid #268324;">
				<tbody><tr align="center">
				<td width="50%"><b>类别</b></td>
				<td width="50%"><b>赚水</b></td>
				</tr><tr><td>口口XX</td><td>0改成<font color="red">0.01</font>&nbsp;</td></tr><tr><td>口X口X</td><td>0改成<font color="red">0.01</font>&nbsp;</td></tr><tr><td>口XX口</td><td>0改成<font color="red">0.01</font>&nbsp;</td></tr><tr><td>X口X口</td><td>0改成<font color="red">0.01</font>&nbsp;</td></tr><tr><td>X口口X</td><td>0改成<font color="red">0.01</font>&nbsp;</td></tr><tr><td>XX口口</td><td>0改成<font color="red">0.01</font>&nbsp;</td></tr><tr><td>口口口X</td><td>0改成<font color="red">0.01</font>&nbsp;</td></tr><tr><td>口口X口</td><td>0改成<font color="red">0.01</font>&nbsp;</td></tr><tr><td>口X口口</td><td>0改成<font color="red">0.01</font>&nbsp;</td></tr><tr><td>X口口口</td><td>0改成<font color="red">0.01</font>&nbsp;</td></tr><tr><td>四定位</td><td>0改成<font color="red">0.01</font>&nbsp;</td></tr></tbody></table></td></tr><tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">hhh623(会员)</td><td class="altbg2">信用额度:250000改成<font color="red">230000</font>，</td><td class="altbg1">10-06 11:14:01</td><td class="altbg2">223.73.*.*</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">hhh623(会员)</td><td class="altbg2">信用额度:199000改成<font color="red">250000</font>，</td><td class="altbg1">10-06 11:12:49</td><td class="altbg2">223.73.*.*</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">kk623(代理)</td><td class="altbg2">信用额度:200000改成<font color="red">400000</font>，</td><td class="altbg1">10-06 11:12:00</td><td class="altbg2">223.73.*.*</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">hhh623(会员)</td><td class="altbg2">信用额度:140000改成<font color="red">199000</font>，</td><td class="altbg1">10-06 11:09:42</td><td class="altbg2">223.73.*.*</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">qq9096(会员)</td><td class="altbg2">信用额度:300改成<font color="red">1000</font>，</td><td class="altbg1">10-06 11:07:32</td><td class="altbg2">223.73.*.*</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">hhh623(会员)</td><td class="altbg2">信用额度:49700改成<font color="red">140000</font>，</td><td class="altbg1">10-06 11:07:13</td><td class="altbg2">223.73.*.*</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">kk623(代理)</td><td class="altbg2">信用额度:50000改成<font color="red">200000</font>，</td><td class="altbg1">10-06 11:06:37</td><td class="altbg2">223.73.*.*</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">w3388(会员)</td><td class="altbg2">信用额度:0改成<font color="red">30000</font>，</td><td class="altbg1">10-06 10:18:15</td><td class="altbg2">223.73.*.*</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">u3388(代理)</td><td class="altbg2">信用额度:0改成<font color="red">30000</font>，</td><td class="altbg1">10-06 10:18:00</td><td class="altbg2">223.73.*.*</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">kkkwww(会员)</td><td class="altbg2">信用额度:0改成<font color="red">10000</font>，</td><td class="altbg1">10-04 18:41:39</td><td class="altbg2">14.30.*.*</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">pp7672(代理)</td><td class="altbg2">密码已被<font color="red">修改</font>，信用额度:50000改成<font color="red">200000</font>，</td><td class="altbg1">10-03 23:46:01</td><td class="altbg2">223.73.*.*</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">pp7672(代理)</td><td class="altbg2">信用额度:200000改成<font color="red">50000</font>，</td><td class="altbg1">10-03 23:45:18</td><td class="altbg2">223.73.*.*</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">hhh77(会员)</td><td class="altbg2">信用额度:30000改成<font color="red">50000</font>，</td><td class="altbg1">10-03 23:16:37</td><td class="altbg2">223.73.*.*</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">he6236(代理)</td><td class="altbg2">信用额度:220000改成<font color="red">250000</font>，</td><td class="altbg1">10-03 23:15:58</td><td class="altbg2">223.73.*.*</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">hh2222(代理)</td><td class="altbg2">信用额度:0改成<font color="red">100000</font>，</td><td class="altbg1">10-03 23:15:07</td><td class="altbg2">223.73.*.*</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">hhh333(会员)</td><td class="altbg2">密码已被<font color="red">修改</font>，<a href="javascript:show_play('208205');">更多</a></td><td class="altbg1">10-03 22:51:38</td><td class="altbg2">223.73.*.*</td></tr>
<tr style="display:none" id="show_208205"><td colspan="5"><table width="99%" align="center" border="0" cellpadding="0" cellspacing="0" style="border: 1px solid #268324;">
				<tbody><tr align="center">
				<td width="50%"><b>类别</b></td>
				<td width="50%"><b>赚水</b></td>
				</tr><tr><td>口口XX</td><td>0.002改成<font color="red">0</font>&nbsp;</td></tr><tr><td>口X口X</td><td>0.002改成<font color="red">0</font>&nbsp;</td></tr><tr><td>口XX口</td><td>0.002改成<font color="red">0</font>&nbsp;</td></tr><tr><td>X口X口</td><td>0.002改成<font color="red">0</font>&nbsp;</td></tr><tr><td>X口口X</td><td>0.002改成<font color="red">0</font>&nbsp;</td></tr><tr><td>XX口口</td><td>0.002改成<font color="red">0</font>&nbsp;</td></tr><tr><td>口口口X</td><td>0.001改成<font color="red">0</font>&nbsp;</td></tr><tr><td>口口X口</td><td>0.001改成<font color="red">0</font>&nbsp;</td></tr><tr><td>口X口口</td><td>0.001改成<font color="red">0</font>&nbsp;</td></tr><tr><td>X口口口</td><td>0.001改成<font color="red">0</font>&nbsp;</td></tr><tr><td>四定位</td><td>0.001改成<font color="red">0</font>&nbsp;</td></tr></tbody></table></td></tr><tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">hhh333(会员)</td><td class="altbg2">信用额度:0改成<font color="red">42000</font>，</td><td class="altbg1">10-03 22:50:20</td><td class="altbg2">223.73.*.*</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">pp7672(代理)</td><td class="altbg2">信用额度:0改成<font color="red">200000</font>，</td><td class="altbg1">10-03 16:32:40</td><td class="altbg2">183.18.*.*</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">hh2222(代理)</td><td class="altbg2">信用额度:100000改成<font color="red">0</font>，</td><td class="altbg1">10-03 16:23:45</td><td class="altbg2">183.18.*.*</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">pp7672(代理)</td><td class="altbg2">信用额度:100000改成<font color="red">0</font>，</td><td class="altbg1">10-03 16:23:19</td><td class="altbg2">183.18.*.*</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">pp0026(代理)</td><td class="altbg2">信用额度:60000改成<font color="red">100000</font>，</td><td class="altbg1">10-03 15:45:00</td><td class="altbg2">183.18.*.*</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">u3388(代理)</td><td class="altbg2">信用额度:30000改成<font color="red">0</font>，</td><td class="altbg1">10-03 15:44:18</td><td class="altbg2">183.18.*.*</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">w3388(会员)</td><td class="altbg2">信用额度:30000改成<font color="red">0</font>，</td><td class="altbg1">10-03 15:43:02</td><td class="altbg2">183.18.*.*</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">hhhhh6(会员)</td><td class="altbg2"><a href="javascript:show_play('205603');">更多</a></td><td class="altbg1">10-02 15:46:56</td><td class="altbg2">14.210.*.*</td></tr>
<tr style="display:none" id="show_205603"><td colspan="5"><table width="99%" align="center" border="0" cellpadding="0" cellspacing="0" style="border: 1px solid #268324;">
				<tbody><tr align="center">
				<td width="50%"><b>类别</b></td>
				<td width="50%"><b>赚水</b></td>
				</tr><tr><td>口口口X</td><td>0改成<font color="red">0.001</font>&nbsp;</td></tr><tr><td>口口X口</td><td>0改成<font color="red">0.001</font>&nbsp;</td></tr><tr><td>口X口口</td><td>0改成<font color="red">0.001</font>&nbsp;</td></tr><tr><td>X口口口</td><td>0改成<font color="red">0.001</font>&nbsp;</td></tr><tr><td>四定位</td><td>0改成<font color="red">0.001</font>&nbsp;</td></tr></tbody></table></td></tr><tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">hhhhh6(会员)</td><td class="altbg2">密码已被<font color="red">修改</font>，</td><td class="altbg1">10-02 15:46:20</td><td class="altbg2">14.210.*.*</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">hhh333(会员)</td><td class="altbg2">信用额度:40000改成<font color="red">0</font>，</td><td class="altbg1">10-02 14:34:44</td><td class="altbg2">14.210.*.*</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">pp0026(代理)</td><td class="altbg2"><a href="javascript:show_play('204222');">更多</a></td><td class="altbg1">10-01 02:18:46</td><td class="altbg2">223.73.*.*</td></tr>
<tr style="display:none" id="show_204222"><td colspan="5"><table width="99%" align="center" border="0" cellpadding="0" cellspacing="0" style="border: 1px solid #268324;">
				<tbody><tr align="center">
				<td width="50%"><b>类别</b></td>
				<td width="50%"><b>赚水</b></td>
				</tr><tr><td>口口XX</td><td>0.001改成<font color="red">0</font>&nbsp;</td></tr><tr><td>口X口X</td><td>0.001改成<font color="red">0</font>&nbsp;</td></tr><tr><td>口XX口</td><td>0.001改成<font color="red">0</font>&nbsp;</td></tr><tr><td>X口X口</td><td>0.001改成<font color="red">0</font>&nbsp;</td></tr><tr><td>X口口X</td><td>0.001改成<font color="red">0</font>&nbsp;</td></tr><tr><td>XX口口</td><td>0.001改成<font color="red">0</font>&nbsp;</td></tr></tbody></table></td></tr><tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">hh2222(代理)</td><td class="altbg2"><a href="javascript:show_play('204221');">更多</a></td><td class="altbg1">10-01 02:17:58</td><td class="altbg2">223.73.*.*</td></tr>
<tr style="display:none" id="show_204221"><td colspan="5"><table width="99%" align="center" border="0" cellpadding="0" cellspacing="0" style="border: 1px solid #268324;">
				<tbody><tr align="center">
				<td width="50%"><b>类别</b></td>
				<td width="50%"><b>赚水</b></td>
				</tr><tr><td>口口XX</td><td>0.001改成<font color="red">0</font>&nbsp;</td></tr><tr><td>口X口X</td><td>0.001改成<font color="red">0</font>&nbsp;</td></tr><tr><td>口XX口</td><td>0.001改成<font color="red">0</font>&nbsp;</td></tr><tr><td>X口X口</td><td>0.001改成<font color="red">0</font>&nbsp;</td></tr><tr><td>X口口X</td><td>0.001改成<font color="red">0</font>&nbsp;</td></tr><tr><td>XX口口</td><td>0.001改成<font color="red">0</font>&nbsp;</td></tr></tbody></table></td></tr><tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">mmm99(代理)</td><td class="altbg2">信用额度:40000改成<font color="red">50000</font>，</td><td class="altbg1">09-29 19:00:05</td><td class="altbg2">14.16.*.*</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">k5522(会员)</td><td class="altbg2">信用额度:30000改成<font color="red">50000</font>，</td><td class="altbg1">09-29 18:59:14</td><td class="altbg2">14.16.*.*</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">kk5522(代理)</td><td class="altbg2">信用额度:30000改成<font color="red">50000</font>，</td><td class="altbg1">09-29 18:58:28</td><td class="altbg2">14.16.*.*</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">aa9396(会员)</td><td class="altbg2">信用额度:0改成<font color="red">10000</font>，</td><td class="altbg1">09-29 17:57:54</td><td class="altbg2">183.44.*.*</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">qq9096(会员)</td><td class="altbg2">信用额度:0改成<font color="red">300</font>，</td><td class="altbg1">09-28 16:21:03</td><td class="altbg2">116.28.*.*</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">hhh623(会员)</td><td class="altbg2">信用额度:50000改成<font color="red">49700</font>，</td><td class="altbg1">09-28 16:20:06</td><td class="altbg2">116.28.*.*</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">hhh623(会员)</td><td class="altbg2">信用额度:0改成<font color="red">50000</font>，</td><td class="altbg1">09-28 16:13:13</td><td class="altbg2">116.28.*.*</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">kk623(代理)</td><td class="altbg2">信用额度:0改成<font color="red">50000</font>，</td><td class="altbg1">09-28 16:12:27</td><td class="altbg2">116.28.*.*</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">he6236(代理)</td><td class="altbg2">信用额度:300000改成<font color="red">220000</font>，</td><td class="altbg1">09-28 16:09:42</td><td class="altbg2">116.28.*.*</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">k5522(会员)</td><td class="altbg2">信用额度:0改成<font color="red">30000</font>，</td><td class="altbg1">09-28 15:17:44</td><td class="altbg2">116.28.*.*</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">kk5522(代理)</td><td class="altbg2">信用额度:0改成<font color="red">30000</font>，</td><td class="altbg1">09-28 15:16:25</td><td class="altbg2">116.28.*.*</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">he6236(代理)</td><td class="altbg2">信用额度:400000改成<font color="red">300000</font>，</td><td class="altbg1">09-28 13:58:55</td><td class="altbg2">116.28.*.*</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">qq66(会员)</td><td class="altbg2">信用额度:0改成<font color="red">4000</font>，<a href="javascript:show_play('200373');">更多</a></td><td class="altbg1">09-28 13:57:51</td><td class="altbg2">116.28.*.*</td></tr>
<tr style="display:none" id="show_200373"><td colspan="5"><table width="99%" align="center" border="0" cellpadding="0" cellspacing="0" style="border: 1px solid #268324;">
				<tbody><tr align="center">
				<td width="50%"><b>类别</b></td>
				<td width="50%"><b>赚水</b></td>
				</tr><tr><td>口口XX</td><td>0改成<font color="red">0.002</font>&nbsp;</td></tr><tr><td>口X口X</td><td>0改成<font color="red">0.002</font>&nbsp;</td></tr><tr><td>口XX口</td><td>0改成<font color="red">0.002</font>&nbsp;</td></tr><tr><td>X口X口</td><td>0改成<font color="red">0.002</font>&nbsp;</td></tr><tr><td>X口口X</td><td>0改成<font color="red">0.002</font>&nbsp;</td></tr><tr><td>XX口口</td><td>0改成<font color="red">0.002</font>&nbsp;</td></tr></tbody></table></td></tr><tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">bbb22(会员)</td><td class="altbg2">信用额度:0改成<font color="red">5000</font>，<a href="javascript:show_play('200371');">更多</a></td><td class="altbg1">09-28 13:55:10</td><td class="altbg2">116.28.*.*</td></tr>
<tr style="display:none" id="show_200371"><td colspan="5"><table width="99%" align="center" border="0" cellpadding="0" cellspacing="0" style="border: 1px solid #268324;">
				<tbody><tr align="center">
				<td width="50%"><b>类别</b></td>
				<td width="50%"><b>赚水</b></td>
				</tr><tr><td>口口XX</td><td>0改成<font color="red">0.002</font>&nbsp;</td></tr><tr><td>口X口X</td><td>0改成<font color="red">0.002</font>&nbsp;</td></tr><tr><td>口XX口</td><td>0改成<font color="red">0.002</font>&nbsp;</td></tr><tr><td>X口X口</td><td>0改成<font color="red">0.002</font>&nbsp;</td></tr><tr><td>X口口X</td><td>0改成<font color="red">0.002</font>&nbsp;</td></tr><tr><td>XX口口</td><td>0改成<font color="red">0.002</font>&nbsp;</td></tr></tbody></table></td></tr><tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">mmm668(会员)</td><td class="altbg2">信用额度:0改成<font color="red">10000</font>，<a href="javascript:show_play('200370');">更多</a></td><td class="altbg1">09-28 13:52:16</td><td class="altbg2">116.28.*.*</td></tr>
<tr style="display:none" id="show_200370"><td colspan="5"><table width="99%" align="center" border="0" cellpadding="0" cellspacing="0" style="border: 1px solid #268324;">
				<tbody><tr align="center">
				<td width="50%"><b>类别</b></td>
				<td width="50%"><b>赚水</b></td>
				</tr><tr><td>口口XX</td><td>0改成<font color="red">0.002</font>&nbsp;</td></tr><tr><td>口X口X</td><td>0改成<font color="red">0.002</font>&nbsp;</td></tr><tr><td>口XX口</td><td>0改成<font color="red">0.002</font>&nbsp;</td></tr><tr><td>X口X口</td><td>0改成<font color="red">0.002</font>&nbsp;</td></tr><tr><td>X口口X</td><td>0改成<font color="red">0.002</font>&nbsp;</td></tr><tr><td>XX口口</td><td>0改成<font color="red">0.002</font>&nbsp;</td></tr></tbody></table></td></tr><tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">mm555(会员)</td><td class="altbg2">信用额度:0改成<font color="red">10000</font>，<a href="javascript:show_play('200368');">更多</a></td><td class="altbg1">09-28 13:50:17</td><td class="altbg2">116.28.*.*</td></tr>
<tr style="display:none" id="show_200368"><td colspan="5"><table width="99%" align="center" border="0" cellpadding="0" cellspacing="0" style="border: 1px solid #268324;">
				<tbody><tr align="center">
				<td width="50%"><b>类别</b></td>
				<td width="50%"><b>赚水</b></td>
				</tr><tr><td>口口XX</td><td>0改成<font color="red">0.002</font>&nbsp;</td></tr><tr><td>口X口X</td><td>0改成<font color="red">0.002</font>&nbsp;</td></tr><tr><td>口XX口</td><td>0改成<font color="red">0.002</font>&nbsp;</td></tr><tr><td>X口X口</td><td>0改成<font color="red">0.002</font>&nbsp;</td></tr><tr><td>X口口X</td><td>0改成<font color="red">0.002</font>&nbsp;</td></tr><tr><td>XX口口</td><td>0改成<font color="red">0.002</font>&nbsp;</td></tr></tbody></table></td></tr><tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">mmm99(代理)</td><td class="altbg2">信用额度:0改成<font color="red">40000</font>，</td><td class="altbg1">09-28 13:43:19</td><td class="altbg2">116.28.*.*</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">hh9558(代理)</td><td class="altbg2">信用额度:0改成<font color="red">50000</font>，</td><td class="altbg1">09-28 13:39:55</td><td class="altbg2">116.28.*.*</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">hh99(会员)</td><td class="altbg2">信用额度:0改成<font color="red">3000</font>，<a href="javascript:show_play('200294');">更多</a></td><td class="altbg1">09-28 13:34:28</td><td class="altbg2">116.28.*.*</td></tr>
<tr style="display:none" id="show_200294"><td colspan="5"><table width="99%" align="center" border="0" cellpadding="0" cellspacing="0" style="border: 1px solid #268324;">
				<tbody><tr align="center">
				<td width="50%"><b>类别</b></td>
				<td width="50%"><b>赚水</b></td>
				</tr><tr><td>口口XX</td><td>0改成<font color="red">0.002</font>&nbsp;</td></tr><tr><td>口X口X</td><td>0改成<font color="red">0.002</font>&nbsp;</td></tr><tr><td>口XX口</td><td>0改成<font color="red">0.002</font>&nbsp;</td></tr><tr><td>X口X口</td><td>0改成<font color="red">0.002</font>&nbsp;</td></tr><tr><td>X口口X</td><td>0改成<font color="red">0.002</font>&nbsp;</td></tr><tr><td>XX口口</td><td>0改成<font color="red">0.002</font>&nbsp;</td></tr></tbody></table></td></tr><tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">hhh77(会员)</td><td class="altbg2">信用额度:0改成<font color="red">30000</font>，<a href="javascript:show_play('200287');">更多</a></td><td class="altbg1">09-28 13:32:00</td><td class="altbg2">116.28.*.*</td></tr>
<tr style="display:none" id="show_200287"><td colspan="5"><table width="99%" align="center" border="0" cellpadding="0" cellspacing="0" style="border: 1px solid #268324;">
				<tbody><tr align="center">
				<td width="50%"><b>类别</b></td>
				<td width="50%"><b>赚水</b></td>
				</tr><tr><td>口口XX</td><td>0改成<font color="red">0.002</font>&nbsp;</td></tr><tr><td>口X口X</td><td>0改成<font color="red">0.002</font>&nbsp;</td></tr><tr><td>口XX口</td><td>0改成<font color="red">0.002</font>&nbsp;</td></tr><tr><td>X口X口</td><td>0改成<font color="red">0.002</font>&nbsp;</td></tr><tr><td>X口口X</td><td>0改成<font color="red">0.002</font>&nbsp;</td></tr><tr><td>XX口口</td><td>0改成<font color="red">0.002</font>&nbsp;</td></tr></tbody></table></td></tr><tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">hh2222(代理)</td><td class="altbg2"><a href="javascript:show_play('200283');">更多</a></td><td class="altbg1">09-28 13:30:49</td><td class="altbg2">116.28.*.*</td></tr>
<tr style="display:none" id="show_200283"><td colspan="5"><table width="99%" align="center" border="0" cellpadding="0" cellspacing="0" style="border: 1px solid #268324;">
				<tbody><tr align="center">
				<td width="50%"><b>类别</b></td>
				<td width="50%"><b>赚水</b></td>
				</tr><tr><td>口口XX</td><td>0改成<font color="red">0.001</font>&nbsp;</td></tr><tr><td>口X口X</td><td>0改成<font color="red">0.001</font>&nbsp;</td></tr><tr><td>口XX口</td><td>0改成<font color="red">0.001</font>&nbsp;</td></tr><tr><td>X口X口</td><td>0改成<font color="red">0.001</font>&nbsp;</td></tr><tr><td>X口口X</td><td>0改成<font color="red">0.001</font>&nbsp;</td></tr><tr><td>XX口口</td><td>0改成<font color="red">0.001</font>&nbsp;</td></tr></tbody></table></td></tr><tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">pp0026(代理)</td><td class="altbg2"><a href="javascript:show_play('200281');">更多</a></td><td class="altbg1">09-28 13:30:39</td><td class="altbg2">116.28.*.*</td></tr>
<tr style="display:none" id="show_200281"><td colspan="5"><table width="99%" align="center" border="0" cellpadding="0" cellspacing="0" style="border: 1px solid #268324;">
				<tbody><tr align="center">
				<td width="50%"><b>类别</b></td>
				<td width="50%"><b>赚水</b></td>
				</tr><tr><td>口口XX</td><td>0改成<font color="red">0.001</font>&nbsp;</td></tr><tr><td>口X口X</td><td>0改成<font color="red">0.001</font>&nbsp;</td></tr><tr><td>口XX口</td><td>0改成<font color="red">0.001</font>&nbsp;</td></tr><tr><td>X口X口</td><td>0改成<font color="red">0.001</font>&nbsp;</td></tr><tr><td>X口口X</td><td>0改成<font color="red">0.001</font>&nbsp;</td></tr><tr><td>XX口口</td><td>0改成<font color="red">0.001</font>&nbsp;</td></tr></tbody></table></td></tr><tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">hhhhh6(会员)</td><td class="altbg2"><a href="javascript:show_play('200279');">更多</a></td><td class="altbg1">09-28 13:30:22</td><td class="altbg2">116.28.*.*</td></tr>
<tr style="display:none" id="show_200279"><td colspan="5"><table width="99%" align="center" border="0" cellpadding="0" cellspacing="0" style="border: 1px solid #268324;">
				<tbody><tr align="center">
				<td width="50%"><b>类别</b></td>
				<td width="50%"><b>赚水</b></td>
				</tr><tr><td>口口XX</td><td>0改成<font color="red">0.002</font>&nbsp;</td></tr><tr><td>口X口X</td><td>0改成<font color="red">0.002</font>&nbsp;</td></tr><tr><td>口XX口</td><td>0改成<font color="red">0.002</font>&nbsp;</td></tr><tr><td>X口X口</td><td>0改成<font color="red">0.002</font>&nbsp;</td></tr><tr><td>X口口X</td><td>0改成<font color="red">0.002</font>&nbsp;</td></tr><tr><td>XX口口</td><td>0改成<font color="red">0.002</font>&nbsp;</td></tr></tbody></table></td></tr><tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">hhhh38(会员)</td><td class="altbg2"><a href="javascript:show_play('200277');">更多</a></td><td class="altbg1">09-28 13:30:02</td><td class="altbg2">116.28.*.*</td></tr>
<tr style="display:none" id="show_200277"><td colspan="5"><table width="99%" align="center" border="0" cellpadding="0" cellspacing="0" style="border: 1px solid #268324;">
				<tbody><tr align="center">
				<td width="50%"><b>类别</b></td>
				<td width="50%"><b>赚水</b></td>
				</tr><tr><td>口口XX</td><td>0.001改成<font color="red">0.003</font>&nbsp;</td></tr><tr><td>口X口X</td><td>0.001改成<font color="red">0.003</font>&nbsp;</td></tr><tr><td>口XX口</td><td>0.001改成<font color="red">0.003</font>&nbsp;</td></tr><tr><td>X口X口</td><td>0.001改成<font color="red">0.003</font>&nbsp;</td></tr><tr><td>X口口X</td><td>0.001改成<font color="red">0.003</font>&nbsp;</td></tr><tr><td>XX口口</td><td>0.001改成<font color="red">0.003</font>&nbsp;</td></tr></tbody></table></td></tr><tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">hhh666(会员)</td><td class="altbg2"><a href="javascript:show_play('200275');">更多</a></td><td class="altbg1">09-28 13:29:43</td><td class="altbg2">116.28.*.*</td></tr>
<tr style="display:none" id="show_200275"><td colspan="5"><table width="99%" align="center" border="0" cellpadding="0" cellspacing="0" style="border: 1px solid #268324;">
				<tbody><tr align="center">
				<td width="50%"><b>类别</b></td>
				<td width="50%"><b>赚水</b></td>
				</tr><tr><td>口口XX</td><td>0.001改成<font color="red">0.003</font>&nbsp;</td></tr><tr><td>口X口X</td><td>0.001改成<font color="red">0.003</font>&nbsp;</td></tr><tr><td>口XX口</td><td>0.001改成<font color="red">0.003</font>&nbsp;</td></tr><tr><td>X口X口</td><td>0.001改成<font color="red">0.003</font>&nbsp;</td></tr><tr><td>X口口X</td><td>0.001改成<font color="red">0.003</font>&nbsp;</td></tr><tr><td>XX口口</td><td>0.001改成<font color="red">0.003</font>&nbsp;</td></tr></tbody></table></td></tr><tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">hhh555(会员)</td><td class="altbg2"><a href="javascript:show_play('200273');">更多</a></td><td class="altbg1">09-28 13:29:20</td><td class="altbg2">116.28.*.*</td></tr>
<tr style="display:none" id="show_200273"><td colspan="5"><table width="99%" align="center" border="0" cellpadding="0" cellspacing="0" style="border: 1px solid #268324;">
				<tbody><tr align="center">
				<td width="50%"><b>类别</b></td>
				<td width="50%"><b>赚水</b></td>
				</tr><tr><td>口口XX</td><td>0改成<font color="red">0.002</font>&nbsp;</td></tr><tr><td>口X口X</td><td>0改成<font color="red">0.002</font>&nbsp;</td></tr><tr><td>口XX口</td><td>0改成<font color="red">0.002</font>&nbsp;</td></tr><tr><td>X口X口</td><td>0改成<font color="red">0.002</font>&nbsp;</td></tr><tr><td>X口口X</td><td>0改成<font color="red">0.002</font>&nbsp;</td></tr><tr><td>XX口口</td><td>0改成<font color="red">0.002</font>&nbsp;</td></tr></tbody></table></td></tr><tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">hh88(会员)</td><td class="altbg2"><a href="javascript:show_play('200272');">更多</a></td><td class="altbg1">09-28 13:29:01</td><td class="altbg2">116.28.*.*</td></tr>
<tr style="display:none" id="show_200272"><td colspan="5"><table width="99%" align="center" border="0" cellpadding="0" cellspacing="0" style="border: 1px solid #268324;">
				<tbody><tr align="center">
				<td width="50%"><b>类别</b></td>
				<td width="50%"><b>赚水</b></td>
				</tr><tr><td>口口XX</td><td>0改成<font color="red">0.002</font>&nbsp;</td></tr><tr><td>口X口X</td><td>0改成<font color="red">0.002</font>&nbsp;</td></tr><tr><td>口XX口</td><td>0改成<font color="red">0.002</font>&nbsp;</td></tr><tr><td>X口X口</td><td>0改成<font color="red">0.002</font>&nbsp;</td></tr><tr><td>X口口X</td><td>0改成<font color="red">0.002</font>&nbsp;</td></tr><tr><td>XX口口</td><td>0改成<font color="red">0.002</font>&nbsp;</td></tr></tbody></table></td></tr><tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">hhh333(会员)</td><td class="altbg2"><a href="javascript:show_play('200269');">更多</a></td><td class="altbg1">09-28 13:28:21</td><td class="altbg2">116.28.*.*</td></tr>
<tr style="display:none" id="show_200269"><td colspan="5"><table width="99%" align="center" border="0" cellpadding="0" cellspacing="0" style="border: 1px solid #268324;">
				<tbody><tr align="center">
				<td width="50%"><b>类别</b></td>
				<td width="50%"><b>赚水</b></td>
				</tr><tr><td>口口XX</td><td>0.001改成<font color="red">0.002</font>&nbsp;</td></tr><tr><td>口X口X</td><td>0.001改成<font color="red">0.002</font>&nbsp;</td></tr><tr><td>口XX口</td><td>0.001改成<font color="red">0.002</font>&nbsp;</td></tr><tr><td>X口X口</td><td>0.001改成<font color="red">0.002</font>&nbsp;</td></tr><tr><td>X口口X</td><td>0.001改成<font color="red">0.002</font>&nbsp;</td></tr><tr><td>XX口口</td><td>0.001改成<font color="red">0.002</font>&nbsp;</td></tr></tbody></table></td></tr><tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">hh8668(会员)</td><td class="altbg2"><a href="javascript:show_play('200267');">更多</a></td><td class="altbg1">09-28 13:27:44</td><td class="altbg2">116.28.*.*</td></tr>
<tr style="display:none" id="show_200267"><td colspan="5"><table width="99%" align="center" border="0" cellpadding="0" cellspacing="0" style="border: 1px solid #268324;">
				<tbody><tr align="center">
				<td width="50%"><b>类别</b></td>
				<td width="50%"><b>赚水</b></td>
				</tr><tr><td>口口XX</td><td>0改成<font color="red">0.002</font>&nbsp;</td></tr><tr><td>口X口X</td><td>0改成<font color="red">0.002</font>&nbsp;</td></tr><tr><td>口XX口</td><td>0改成<font color="red">0.002</font>&nbsp;</td></tr><tr><td>X口X口</td><td>0改成<font color="red">0.002</font>&nbsp;</td></tr><tr><td>X口口X</td><td>0改成<font color="red">0.002</font>&nbsp;</td></tr><tr><td>XX口口</td><td>0改成<font color="red">0.002</font>&nbsp;</td></tr></tbody></table></td></tr><tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">hh2222(代理)</td><td class="altbg2">信用额度:0改成<font color="red">100000</font>，</td><td class="altbg1">09-28 13:27:05</td><td class="altbg2">116.28.*.*</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">hh88(会员)</td><td class="altbg2">信用额度:0改成<font color="red">60000</font>，</td><td class="altbg1">09-28 13:26:02</td><td class="altbg2">116.28.*.*</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">he6236(代理)</td><td class="altbg2">信用额度:100000改成<font color="red">400000</font>，</td><td class="altbg1">09-28 13:25:46</td><td class="altbg2">116.28.*.*</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">hhhhh6(会员)</td><td class="altbg2">信用额度:0改成<font color="red">10000</font>，</td><td class="altbg1">09-28 13:22:28</td><td class="altbg2">116.28.*.*</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">hh8668(会员)</td><td class="altbg2">信用额度:0改成<font color="red">10000</font>，</td><td class="altbg1">09-28 13:19:44</td><td class="altbg2">116.28.*.*</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">hhhh38(会员)</td><td class="altbg2">信用额度:0改成<font color="red">2000</font>，<a href="javascript:show_play('200187');">更多</a></td><td class="altbg1">09-28 13:14:46</td><td class="altbg2">116.28.*.*</td></tr>
<tr style="display:none" id="show_200187"><td colspan="5"><table width="99%" align="center" border="0" cellpadding="0" cellspacing="0" style="border: 1px solid #268324;">
				<tbody><tr align="center">
				<td width="50%"><b>类别</b></td>
				<td width="50%"><b>赚水</b></td>
				</tr><tr><td>口口XX</td><td>0改成<font color="red">0.001</font>&nbsp;</td></tr><tr><td>口X口X</td><td>0改成<font color="red">0.001</font>&nbsp;</td></tr><tr><td>口XX口</td><td>0改成<font color="red">0.001</font>&nbsp;</td></tr><tr><td>X口X口</td><td>0改成<font color="red">0.001</font>&nbsp;</td></tr><tr><td>X口口X</td><td>0改成<font color="red">0.001</font>&nbsp;</td></tr><tr><td>XX口口</td><td>0改成<font color="red">0.001</font>&nbsp;</td></tr><tr><td>口口口X</td><td>0改成<font color="red">0.001</font>&nbsp;</td></tr><tr><td>口口X口</td><td>0改成<font color="red">0.001</font>&nbsp;</td></tr><tr><td>口X口口</td><td>0改成<font color="red">0.001</font>&nbsp;</td></tr><tr><td>X口口口</td><td>0改成<font color="red">0.001</font>&nbsp;</td></tr><tr><td>四定位</td><td>0改成<font color="red">0.002</font>&nbsp;</td></tr></tbody></table></td></tr><tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">hhh666(会员)</td><td class="altbg2">信用额度:0改成<font color="red">4000</font>，<a href="javascript:show_play('200158');">更多</a></td><td class="altbg1">09-28 13:11:00</td><td class="altbg2">116.28.*.*</td></tr>
<tr style="display:none" id="show_200158"><td colspan="5"><table width="99%" align="center" border="0" cellpadding="0" cellspacing="0" style="border: 1px solid #268324;">
				<tbody><tr align="center">
				<td width="50%"><b>类别</b></td>
				<td width="50%"><b>赚水</b></td>
				</tr><tr><td>口口XX</td><td>0改成<font color="red">0.001</font>&nbsp;</td></tr><tr><td>口X口X</td><td>0改成<font color="red">0.001</font>&nbsp;</td></tr><tr><td>口XX口</td><td>0改成<font color="red">0.001</font>&nbsp;</td></tr><tr><td>X口X口</td><td>0改成<font color="red">0.001</font>&nbsp;</td></tr><tr><td>X口口X</td><td>0改成<font color="red">0.001</font>&nbsp;</td></tr><tr><td>XX口口</td><td>0改成<font color="red">0.001</font>&nbsp;</td></tr><tr><td>口口口X</td><td>0改成<font color="red">0.001</font>&nbsp;</td></tr><tr><td>口口X口</td><td>0改成<font color="red">0.001</font>&nbsp;</td></tr><tr><td>口X口口</td><td>0改成<font color="red">0.001</font>&nbsp;</td></tr><tr><td>X口口口</td><td>0改成<font color="red">0.001</font>&nbsp;</td></tr><tr><td>四定位</td><td>0改成<font color="red">0.001</font>&nbsp;</td></tr></tbody></table></td></tr><tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">hhh555(会员)</td><td class="altbg2">信用额度:0改成<font color="red">20000</font>，</td><td class="altbg1">09-28 13:09:28</td><td class="altbg2">116.28.*.*</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">hhh333(会员)</td><td class="altbg2">信用额度:0改成<font color="red">40000</font>，<a href="javascript:show_play('200134');">更多</a></td><td class="altbg1">09-28 13:08:03</td><td class="altbg2">116.28.*.*</td></tr>
<tr style="display:none" id="show_200134"><td colspan="5"><table width="99%" align="center" border="0" cellpadding="0" cellspacing="0" style="border: 1px solid #268324;">
				<tbody><tr align="center">
				<td width="50%"><b>类别</b></td>
				<td width="50%"><b>赚水</b></td>
				</tr><tr><td>口口XX</td><td>0改成<font color="red">0.001</font>&nbsp;</td></tr><tr><td>口X口X</td><td>0改成<font color="red">0.001</font>&nbsp;</td></tr><tr><td>口XX口</td><td>0改成<font color="red">0.001</font>&nbsp;</td></tr><tr><td>X口X口</td><td>0改成<font color="red">0.001</font>&nbsp;</td></tr><tr><td>X口口X</td><td>0改成<font color="red">0.001</font>&nbsp;</td></tr><tr><td>XX口口</td><td>0改成<font color="red">0.001</font>&nbsp;</td></tr><tr><td>口口口X</td><td>0改成<font color="red">0.001</font>&nbsp;</td></tr><tr><td>口口X口</td><td>0改成<font color="red">0.001</font>&nbsp;</td></tr><tr><td>口X口口</td><td>0改成<font color="red">0.001</font>&nbsp;</td></tr><tr><td>X口口口</td><td>0改成<font color="red">0.001</font>&nbsp;</td></tr><tr><td>四定位</td><td>0改成<font color="red">0.001</font>&nbsp;</td></tr></tbody></table></td></tr><tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">pp7672(代理)</td><td class="altbg2"><a href="javascript:show_play('200097');">更多</a></td><td class="altbg1">09-28 13:03:58</td><td class="altbg2">116.28.*.*</td></tr>
<tr style="display:none" id="show_200097"><td colspan="5"><table width="99%" align="center" border="0" cellpadding="0" cellspacing="0" style="border: 1px solid #268324;">
				<tbody><tr align="center">
				<td width="50%"><b>类别</b></td>
				<td width="50%"><b>赚水</b></td>
				</tr><tr><td>口口XX</td><td>0.007改成<font color="red">0</font>&nbsp;</td></tr><tr><td>口X口X</td><td>0.007改成<font color="red">0</font>&nbsp;</td></tr><tr><td>口XX口</td><td>0.007改成<font color="red">0</font>&nbsp;</td></tr><tr><td>X口X口</td><td>0.007改成<font color="red">0</font>&nbsp;</td></tr><tr><td>X口口X</td><td>0.007改成<font color="red">0</font>&nbsp;</td></tr><tr><td>XX口口</td><td>0.007改成<font color="red">0</font>&nbsp;</td></tr><tr><td>口口口X</td><td>0.006改成<font color="red">0</font>&nbsp;</td></tr><tr><td>口口X口</td><td>0.006改成<font color="red">0</font>&nbsp;</td></tr><tr><td>口X口口</td><td>0.006改成<font color="red">0</font>&nbsp;</td></tr><tr><td>X口口口</td><td>0.006改成<font color="red">0</font>&nbsp;</td></tr><tr><td>四定位</td><td>0.006改成<font color="red">0</font>&nbsp;</td></tr></tbody></table></td></tr><tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">pp9056(会员)</td><td class="altbg2">信用额度:50000改成<font color="red"> 0</font>，启/停用:启用改成<font color="red">停用</font>，</td><td class="altbg1">09-28 13:03:31</td><td class="altbg2">116.28.*.*</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">pp0026(代理)</td><td class="altbg2">信用额度:0改成<font color="red">60000</font>，</td><td class="altbg1">09-28 13:03:05</td><td class="altbg2">116.28.*.*</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">pp7672(代理)</td><td class="altbg2"><a href="javascript:show_play('200067');">更多</a></td><td class="altbg1">09-28 13:00:05</td><td class="altbg2">116.28.*.*</td></tr>
<tr style="display:none" id="show_200067"><td colspan="5"><table width="99%" align="center" border="0" cellpadding="0" cellspacing="0" style="border: 1px solid #268324;">
				<tbody><tr align="center">
				<td width="50%"><b>类别</b></td>
				<td width="50%"><b>赚水</b></td>
				</tr><tr><td>口口XX</td><td>0.006改成<font color="red">0.007</font>&nbsp;</td></tr><tr><td>口X口X</td><td>0.006改成<font color="red">0.007</font>&nbsp;</td></tr><tr><td>口XX口</td><td>0.006改成<font color="red">0.007</font>&nbsp;</td></tr><tr><td>X口X口</td><td>0.006改成<font color="red">0.007</font>&nbsp;</td></tr><tr><td>X口口X</td><td>0.006改成<font color="red">0.007</font>&nbsp;</td></tr><tr><td>XX口口</td><td>0.006改成<font color="red">0.007</font>&nbsp;</td></tr></tbody></table></td></tr><tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">pp7672(代理)</td><td class="altbg2">信用额度:150000改成<font color="red">100000</font>，<a href="javascript:show_play('200050');">更多</a></td><td class="altbg1">09-28 12:57:42</td><td class="altbg2">116.28.*.*</td></tr>
<tr style="display:none" id="show_200050"><td colspan="5"><table width="99%" align="center" border="0" cellpadding="0" cellspacing="0" style="border: 1px solid #268324;">
				<tbody><tr align="center">
				<td width="50%"><b>类别</b></td>
				<td width="50%"><b>赚水</b></td>
				</tr><tr><td>口口口X</td><td>0.005改成<font color="red">0.006</font>&nbsp;</td></tr><tr><td>口口X口</td><td>0.005改成<font color="red">0.006</font>&nbsp;</td></tr><tr><td>口X口口</td><td>0.005改成<font color="red">0.006</font>&nbsp;</td></tr><tr><td>X口口口</td><td>0.005改成<font color="red">0.006</font>&nbsp;</td></tr><tr><td>四定位</td><td>0.005改成<font color="red">0.006</font>&nbsp;</td></tr></tbody></table></td></tr><tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">pp7672(代理)</td><td class="altbg2"><a href="javascript:show_play('200012');">更多</a></td><td class="altbg1">09-28 12:52:50</td><td class="altbg2">116.28.*.*</td></tr>
<tr style="display:none" id="show_200012"><td colspan="5"><table width="99%" align="center" border="0" cellpadding="0" cellspacing="0" style="border: 1px solid #268324;">
				<tbody><tr align="center">
				<td width="50%"><b>类别</b></td>
				<td width="50%"><b>赚水</b></td>
				</tr><tr><td>口口XX</td><td>0.005改成<font color="red">0.006</font>&nbsp;</td></tr><tr><td>口X口X</td><td>0.005改成<font color="red">0.006</font>&nbsp;</td></tr><tr><td>口XX口</td><td>0.005改成<font color="red">0.006</font>&nbsp;</td></tr><tr><td>X口X口</td><td>0.005改成<font color="red">0.006</font>&nbsp;</td></tr><tr><td>X口口X</td><td>0.005改成<font color="red">0.006</font>&nbsp;</td></tr><tr><td>XX口口</td><td>0.005改成<font color="red">0.006</font>&nbsp;</td></tr></tbody></table></td></tr><tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">pp7672(代理)</td><td class="altbg2">信用额度:0改成<font color="red">150000</font>，<a href="javascript:show_play('199986');">更多</a></td><td class="altbg1">09-28 12:50:38</td><td class="altbg2">116.28.*.*</td></tr>
<tr style="display:none" id="show_199986"><td colspan="5"><table width="99%" align="center" border="0" cellpadding="0" cellspacing="0" style="border: 1px solid #268324;">
				<tbody><tr align="center">
				<td width="50%"><b>类别</b></td>
				<td width="50%"><b>赚水</b></td>
				</tr><tr><td>口口XX</td><td>0改成<font color="red">0.005</font>&nbsp;</td></tr><tr><td>口X口X</td><td>0改成<font color="red">0.005</font>&nbsp;</td></tr><tr><td>口XX口</td><td>0改成<font color="red">0.005</font>&nbsp;</td></tr><tr><td>X口X口</td><td>0改成<font color="red">0.005</font>&nbsp;</td></tr><tr><td>X口口X</td><td>0改成<font color="red">0.005</font>&nbsp;</td></tr><tr><td>XX口口</td><td>0改成<font color="red">0.005</font>&nbsp;</td></tr><tr><td>口口口X</td><td>0改成<font color="red">0.005</font>&nbsp;</td></tr><tr><td>口口X口</td><td>0改成<font color="red">0.005</font>&nbsp;</td></tr><tr><td>口X口口</td><td>0改成<font color="red">0.005</font>&nbsp;</td></tr><tr><td>X口口口</td><td>0改成<font color="red">0.005</font>&nbsp;</td></tr><tr><td>四定位</td><td>0改成<font color="red">0.005</font>&nbsp;</td></tr></tbody></table></td></tr><tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">pp9056(会员)</td><td class="altbg2">信用额度:0改成<font color="red">50000</font>，</td><td class="altbg1">09-28 12:47:16</td><td class="altbg2">116.28.*.*</td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" class="smalltxt hover"> <td class="altbg2">bb7(股东)</td><td class="altbg1">he6236(代理)</td><td class="altbg2">信用额度:0改成<font color="red">100000</font>，</td><td class="altbg1">09-28 12:46:25</td><td class="altbg2">116.28.*.*</td></tr>

</tbody></table>
</form>
</td></tr></tbody></table>
<br><br><div class="footer Noprint"><hr size="0" noshade="" color="BORDERCOLOR" width="80%">
<b></b> V2.0 &nbsp;©  <b>
</b><span class="smalltxt"></span>
usetime:0.075114, 
mysqlquery:4
</div>
<noscript>&lt;iframe src=*.html&gt;&lt;/iframe&gt;</noscript>




</body></html>