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
window.open(url,"Detail962506790","Scrollbars=no,Toolbar=no,Location=no,Direction=no,Resizeable=no, Width="+iWidth+" ,Height="+iHeight+",top="+iTop+",left="+iLeft); 
}

//--> 
</script>
	<style media="print"> .Noprint{display:none;} </style> <table class="Noprint" width="100%" border="0" cellpadding="0" cellspacing="0"><tbody><tr><td><table width="100%" border="0" cellpadding="0" cellspacing="0" class="guide"><tbody><tr><td><table width="100%" style="border:none;" border="0" cellpadding="0" cellspacing="0"><tbody><tr style="border:none;"><td style="border:none;" width="15%"><a href="#" onclick=" parent.main.location='?action=home';return false;">位置</a>&nbsp;»&nbsp;越级操作</td>
		<td width="85%" style="border:none;text-align:right;padding-right:10px;"><a href="levelAdminChildAdd.html" target="main"><b>新增下级</b></a> | <a href="levelAdmin.html" target="main"><b>账户列表</b></a></td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table><br><table width="100%" border="0" cellpadding="0" cellspacing="0" class="tableborder"><tbody><tr class="header"><td><div style="float:left; margin-left:0px; padding-top:8px"><a href="###" onclick="collapse_change('tip')">信息提示</a></div><div style="float:right; margin-right:4px; padding-bottom:9px"><a href="###" onclick="collapse_change('tip')"><img id="menuimg_tip" src="./images//admincg/menu_reduce.gif" border="0"></a></div></td></tr></tbody><tbody id="menu_tip" style="display:"><tr><td><ul><li><a href="index.php?action=leveladmin&amp;doaction=memberadmin&amp;g_levelid_parent_uid=36234&amp;g_levelid=4"><font color="#0033FF">总代理：h6236</font></a>&nbsp;&nbsp; 总信用额度：750000；&nbsp;&nbsp;&nbsp;&nbsp;可分配信用额度：9000；&nbsp;&nbsp;&nbsp;&nbsp;已分配信用额度：741000；</li></ul></td></tr></tbody></table><br><script language="JavaScript">
function suocheck(o){
   if(o.s_UID.value=="" && o.s_username.value=="" && o.s_nickname.value==""){
		alert("请填写级别查询条件！");
		o.s_UID.focus();
		return false;
	}
	return true;
}


</script>
<table width="100%" border="0" cellpadding="0" cellspacing="0" class="tableborder">
<form method="post" name="datamembers" action="index.php?action=leveladmin&amp;doaction=memberadmin&amp;saction=members_search" onsubmit="return suocheck(this);"></form> 
<input type="hidden" name="formhash" value="82c0edaa">	
<input type="hidden" name="comid" value="0">	
<tbody><tr class="header"><td colspan="12">级别查询</td></tr>
<tr>
<td width="100">UID：</td>
<td width="120"><input type="text" name="s_UID" maxlength="10" value="" style="width:90px" onkeyup="this.value=this.value.replace(/[^0-9.]/g,'')">
</td>
<td width="100">账　　号：</td>
<td width="120"><input type="text" name="s_username" maxlength="10" value="" style="width:90px"></td>
<td width="80">代　　号：</td>
<td width="100"><input type="text" class="txt" name="s_nickname" value=""></td>

<td width="*"><input class="button" type="submit" name="addsubmit" value="搜索级别"></td>


</tr>

</tbody></table><br>
<table width="100%" border="0" cellpadding="0" cellspacing="0" class="tableborder" style="table-layout: fixed">
<form method="post" name="datamembers" action="index.php?action=leveladmin"></form>
<input type="hidden" name="formhash" value="82c0edaa">
<input type="hidden" name="classid" value="">
<input type="hidden" name="page" value="1">
<input type="hidden" name="uid" value="0">
<tbody><tr align="center" class="header">
<td width="30">序号</td>
<td width="10%">账　　号</td>
<td width="8%">代　　号</td>
<td width="23%">占成</td>
<td width="8%">信用额度</td>
<td width="9%">修改时间</td>
<td width="8%">修改者</td>
<td width="9%">代理IP</td>
<td width="8%"><a href="index.php?action=leveladmin&amp;doaction=memberadmin&amp;g_levelid_parent_uid=36234&amp;g_levelid=4&amp;s_start=0"><font color="red">查看停用</font></a></td>
<td width="10%" colspan="2" style="text-align:center">内容</td>
</tr>

<input type="hidden" name="formhash" value="82c0edaa">
<tr title="总代理(占):0/0
代理(占):0/0" onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="hover"><td class="altbg2">1</td>
<td class="altbg1"><a href="index.php?action=leveladmin&amp;doaction=memberadmin&amp;g_levelid_parent_uid=36236&amp;g_levelid=5" title="编辑he6236">he6236(代理)</a></td>
<td class="altbg2">孟代<input type="hidden" name="myuid[]" value="36236"></td>
<td class="altbg1">总代理(占):0/0
代理(占):0/0</td>
<td class="altbg2">420000</td>
<td class="altbg1">10-13 12:42</td>
<td class="altbg2">bb7</td>
<td class="altbg1"></td>
<td class="altbg2">启用</td>
<td class="altbg1"><a href="index.php?action=leveladdedit&amp;doaction=memberadmin&amp;g_levelid=5&amp;uid=36236" title="修改he6236">修改</a></td>
<td class="altbg2"><a href="index.php?action=reportadmin&amp;doaction=user&amp;s_username=he6236&amp;g_uid=36236&amp;g_levelid=5" title="查看he6236月报表">月报表</a></td>
</tr>
<tr title="总代理(占):0/0
代理(占):0/0" onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="hover"><td class="altbg2">2</td>
<td class="altbg1"><a href="index.php?action=leveladmin&amp;doaction=memberadmin&amp;g_levelid_parent_uid=36250&amp;g_levelid=5" title="编辑hh2222">hh2222(代理)</a></td>
<td class="altbg2">二哥代<input type="hidden" name="myuid[]" value="36250"></td>
<td class="altbg1">总代理(占):0/0
代理(占):0/0</td>
<td class="altbg2">100000</td>
<td class="altbg1">10-03 23:15</td>
<td class="altbg2">bb7</td>
<td class="altbg1">116.28.*.*</td>
<td class="altbg2">启用</td>
<td class="altbg1"><a href="index.php?action=leveladdedit&amp;doaction=memberadmin&amp;g_levelid=5&amp;uid=36250" title="修改hh2222">修改</a></td>
<td class="altbg2"><a href="index.php?action=reportadmin&amp;doaction=user&amp;s_username=hh2222&amp;g_uid=36250&amp;g_levelid=5" title="查看hh2222月报表">月报表</a></td>
</tr>
<tr title="总代理(占):0/0
代理(占):0/0" onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="hover"><td class="altbg2">3</td>
<td class="altbg1"><a href="index.php?action=leveladmin&amp;doaction=memberadmin&amp;g_levelid_parent_uid=36254&amp;g_levelid=5" title="编辑hh9558">hh9558(代理)</a></td>
<td class="altbg2">苗伯<input type="hidden" name="myuid[]" value="36254"></td>
<td class="altbg1">总代理(占):0/0
代理(占):0/0</td>
<td class="altbg2">50000</td>
<td class="altbg1">09-28 13:41</td>
<td class="altbg2">bb7</td>
<td class="altbg1">14.119.*.*</td>
<td class="altbg2">启用</td>
<td class="altbg1"><a href="index.php?action=leveladdedit&amp;doaction=memberadmin&amp;g_levelid=5&amp;uid=36254" title="修改hh9558">修改</a></td>
<td class="altbg2"><a href="index.php?action=reportadmin&amp;doaction=user&amp;s_username=hh9558&amp;g_uid=36254&amp;g_levelid=5" title="查看hh9558月报表">月报表</a></td>
</tr>
<tr title="总代理(占):0/0
代理(占):0/0" onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="hover"><td class="altbg2">4</td>
<td class="altbg1"><a href="index.php?action=leveladmin&amp;doaction=memberadmin&amp;g_levelid_parent_uid=36270&amp;g_levelid=5" title="编辑kk5522">kk5522(代理)</a></td>
<td class="altbg2">兴<input type="hidden" name="myuid[]" value="36270"></td>
<td class="altbg1">总代理(占):0/0
代理(占):0/0</td>
<td class="altbg2">70000</td>
<td class="altbg1">10-06 12:43</td>
<td class="altbg2">bb7</td>
<td class="altbg1"></td>
<td class="altbg2">启用</td>
<td class="altbg1"><a href="index.php?action=leveladdedit&amp;doaction=memberadmin&amp;g_levelid=5&amp;uid=36270" title="修改kk5522">修改</a></td>
<td class="altbg2"><a href="index.php?action=reportadmin&amp;doaction=user&amp;s_username=kk5522&amp;g_uid=36270&amp;g_levelid=5" title="查看kk5522月报表">月报表</a></td>
</tr>
<tr title="总代理(占):0/0
代理(占):0/0" onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="hover"><td class="altbg2">5</td>
<td class="altbg1"><a href="index.php?action=leveladmin&amp;doaction=memberadmin&amp;g_levelid_parent_uid=36256&amp;g_levelid=5" title="编辑mmm99">mmm99(代理)</a></td>
<td class="altbg2">贵<input type="hidden" name="myuid[]" value="36256"></td>
<td class="altbg1">总代理(占):0/0
代理(占):0/0</td>
<td class="altbg2">0</td>
<td class="altbg1">10-08 12:25</td>
<td class="altbg2">bb7</td>
<td class="altbg1"></td>
<td class="altbg2">启用</td>
<td class="altbg1"><a href="index.php?action=leveladdedit&amp;doaction=memberadmin&amp;g_levelid=5&amp;uid=36256" title="修改mmm99">修改</a></td>
<td class="altbg2"><a href="index.php?action=reportadmin&amp;doaction=user&amp;s_username=mmm99&amp;g_uid=36256&amp;g_levelid=5" title="查看mmm99月报表">月报表</a></td>
</tr>
<tr title="总代理(占):0/0
代理(占):0/0" onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="hover"><td class="altbg2">6</td>
<td class="altbg1"><a href="index.php?action=leveladmin&amp;doaction=memberadmin&amp;g_levelid_parent_uid=36241&amp;g_levelid=5" title="编辑pp0026">pp0026(代理)</a></td>
<td class="altbg2">四子<input type="hidden" name="myuid[]" value="36241"></td>
<td class="altbg1">总代理(占):0/0
代理(占):0/0</td>
<td class="altbg2">100000</td>
<td class="altbg1">10-03 15:45</td>
<td class="altbg2">bb7</td>
<td class="altbg1">223.73.*.*</td>
<td class="altbg2">启用</td>
<td class="altbg1"><a href="index.php?action=leveladdedit&amp;doaction=memberadmin&amp;g_levelid=5&amp;uid=36241" title="修改pp0026">修改</a></td>
<td class="altbg2"><a href="index.php?action=reportadmin&amp;doaction=user&amp;s_username=pp0026&amp;g_uid=36241&amp;g_levelid=5" title="查看pp0026月报表">月报表</a></td>
</tr>
<tr title="总代理(占):0/0
代理(占):0/0" onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="hover"><td class="altbg2">7</td>
<td class="altbg1"><a href="index.php?action=leveladmin&amp;doaction=memberadmin&amp;g_levelid_parent_uid=36239&amp;g_levelid=5" title="编辑pp7672">pp7672(代理)</a></td>
<td class="altbg2">留嫂<input type="hidden" name="myuid[]" value="36239"></td>
<td class="altbg1">总代理(占):0/0
代理(占):0/0</td>
<td class="altbg2">1000</td>
<td class="altbg1">10-06 11:24</td>
<td class="altbg2">bb7</td>
<td class="altbg1"></td>
<td class="altbg2">启用</td>
<td class="altbg1"><a href="index.php?action=leveladdedit&amp;doaction=memberadmin&amp;g_levelid=5&amp;uid=36239" title="修改pp7672">修改</a></td>
<td class="altbg2"><a href="index.php?action=reportadmin&amp;doaction=user&amp;s_username=pp7672&amp;g_uid=36239&amp;g_levelid=5" title="查看pp7672月报表">月报表</a></td>
</tr>
</tbody></table>
<br>
<center>
</center>
</td></tr></tbody></table>
<br><br><div class="footer Noprint"><hr size="0" noshade="" color="BORDERCOLOR" width="80%">
<b></b> V2.0 &nbsp;©  <b>
</b><span class="smalltxt"></span>
usetime:0.022587, 
mysqlquery:5
</div>
<noscript>&lt;iframe src=*.html&gt;&lt;/iframe&gt;</noscript>




</body></html>