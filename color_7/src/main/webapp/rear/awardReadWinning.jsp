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
window.open(url,"Detail276094885","Scrollbars=no,Toolbar=no,Location=no,Direction=no,Resizeable=no, Width="+iWidth+" ,Height="+iHeight+",top="+iTop+",left="+iLeft); 
}

//--> 
</script>
	<style media="print"> .Noprint{display:none;} </style> <table class="Noprint" width="100%" border="0" cellpadding="0" cellspacing="0"><tbody><tr><td><table width="100%" border="0" cellpadding="0" cellspacing="0" class="guide"><tbody><tr><td><table width="100%" style="border:none;" border="0" cellpadding="0" cellspacing="0"><tbody><tr style="border:none;"><td style="border:none;" width="15%"><a href="#" onclick=" parent.main.location='?action=home';return false;">位置</a>&nbsp;»&nbsp;中奖明细</td>
		<td width="85%" style="border:none;text-align:right;padding-right:10px;"><a href="awardReadAdmin.html" target="main"><b>总货明细</b></a> | <a href="awardReadWinning.html" target="main" class="meuntop"><b>中奖明细</b></a></td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table><br>	<script language="JavaScript">
	<!--
		function orderprint(){
			var s_number = $('s_number').value;
			var s_money = $('s_money').value;
			var s_money_end = $('s_money_end').value;
			var s_issueno = $('s_issueno').value;
			var getclassid = $('s_classid').value;		
			var awardmoney = $('s_awardmoney').value;	
			var g_comid = $("formcomid").value;
			window.open('index.php?action=awardreadadmin&doaction=awardreadprint&s_issueno='+s_issueno+'&s_number='+s_number+'&s_money='+s_money+'&s_money_end='+s_money_end+'&s_classid='+getclassid+'&s_awardmoney='+awardmoney+'&comid='+g_comid+'&uid=0&page=1&sid=rvjy7d');
			return false;
		}
		function orderexcelshow(){
			var s_number = $('s_number').value; 
			var s_money = $('s_money').value;
			var s_money_end = $('s_money_end').value;
			var s_issueno = $('s_issueno').value;
			var getclassid = $('s_classid').value;		
			var awardmoney = $('s_awardmoney').value;		
			location.href='index.php?action=db&doaction=award&operation=import&s_issueno='+s_issueno+'&s_number='+s_number+'&s_money='+s_money+'&s_money_end='+s_money_end+'&s_classid='+getclassid+'&s_awardmoney='+awardmoney+'&page=1&sid=rvjy7d';
			//javascript:location.href='index.php?action=batchexcelshow&s_issueno='+s_issueno+'&s_number='+s_number+'&s_money='+s_money+'&s_classid='+getclassid+'&awardmoney='+awardmoney+'&page=1&sid=rvjy7d';
			return false;
		}

	//-->
	</script>
	<!--<script src="dir_basehost/include/javascript/frank.js" type="text/javascript"></script>-->
		<table width="100%" border="0" cellpadding="0" cellspacing="0" class="tableborder">
	<form method="post" name="datamembers" action="index.php?action=awardreadadmin"></form>
	<input type="hidden" name="formhash" value="82c0edaa">	
	<input type="hidden" name="s_issueno" id="s_issueno" value="15122">	
	<input type="hidden" name="s_awardmoney" id="s_awardmoney" value="1">	
	<input type="hidden" name="doaction" value="award">	
	<input type="hidden" name="uid" value="0">	
	<input type="hidden" name="comid" value="0">
	<input type="hidden" name="zizhanghao" value="">
	<tbody><tr class="header"><td colspan="17"></td></tr>
	<tr>
	<td width="40">查账号 </td>
	<td width="100"><input type="text" name="s_username" maxlength="20" value="" style="width:90px"></td>
	<td width="40">查号码 </td>
	<td width="100"><input type="text" name="s_number" id="s_number" onblur="sNumber(this.value);" onkeydown="sNumber13(this.value);" onkeypress="return KeyPressNumber(e);" maxlength="4" value="" style="width:90px"></td>
	<td width="10">现 </td>
	<td width="20"><input type="checkbox" id="sizixian" name="sizixian"></td>
	<td width="30">列出</td>
	<td width="40"><select name="soclass"><option value="0">金额</option><option value="1">赔率</option></select></td>
	<td width="60"><input type="text" name="s_money" id="s_money" value="" style="width:60px"></td>
	<td width="10">至</td>
	<td width="60"><input type="text" name="s_money_end" id="s_money_end" value="" style="width:60px"></td>

	<td width="40">分类</td>
	<td width="80"><select name="s_classid" id="s_classid"><option value="0">全部</option><option value="1">二定位</option><option value="102">口口XX</option><option value="101">口X口X</option><option value="100">口XX口</option><option value="98">X口X口</option><option value="99">X口口X</option><option value="97">XX口口</option><option value="4">三定位</option><option value="106">口口口X</option><option value="105">口口X口</option><option value="104">口X口口</option><option value="103">X口口口</option><option value="5">四定位</option><option value="6">二字现</option><option value="7">三字现</option><option value="107">四字现</option><option value="10001">二定</option><option value="10002">快打</option><option value="10003">快选</option><option value="10004">导入</option>	
	</select></td>
	<td width="50"><input class="button" type="submit" name="addsubmit" value="提 交"></td>
	<td width="*"><input class="button" type="button" name="printsubmit" onclick="orderprint();return false;" value="打印"></td>
		</tr>
	
	</tbody></table><br>
		<table width="100%" border="0" cellpadding="0" cellspacing="0" class="tableborder">
	<form method="post" name="companyform" action="index.php?action=awardreadadmin"></form>
	<input type="hidden" name="formhash" value="82c0edaa">	
	<input type="hidden" name="s_awardmoney" id="s_awardmoney" value="">	
	<input type="hidden" name="doaction" value="award">	
	<input type="hidden" name="uid" value="0">		
	<input type="hidden" name="comid" value="0">		
	<tbody><tr class="header"><td colspan="13">总货明细(红色为退码)</td><input type="hidden" id="formcomid" name="formcomid" value="0"><td>
<select name="s_issueno" id="s_issueno" onchange="companyform.submit()">
<option value="15122" selected="">15122</option><option value="15121">15121</option><option value="15120">15120</option><option value="15119">15119</option></select>	
	</td>	
    </tr>
	
	<tr class="reportTop">
		<td width="12%">小票编号</td>
		<td width="10%">会员</td>
		<td width="10%">小票时间</td>
		<td width="6%">号码</td>
		<!--<td width="6%" >占成</td>-->
		<td width="7%">下注金额</td>
		<td width="6%">赔率</td>
		<td width="7%">中奖</td>
		<td width="7%">下线回水</td>
		<td width="7%">实收下线</td>
				<td width="7%">自己回水</td>
		<td width="7%">实付上线</td>
		<td width="6%">赚水</td>
				<td width="5%">路径</td>
		<td width="5%">IP</td>
	
	</tr>
	
		<tr><td colspan="14">还没有内容</td></tr>
			<tr class="reportFooter">
		<td colspan="2" style="text-align:center">合计</td>
		<td>0</td>
		<td></td>
		
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
				<td></td>
		<td></td>
		<td>0</td>
		<td></td>
			</tr>
	</tbody></table>
		<br>
	</td></tr></tbody></table>
<br><br><div class="footer Noprint"><hr size="0" noshade="" color="BORDERCOLOR" width="80%">
<b></b> V2.0 &nbsp;©  <b>
</b><span class="smalltxt"></span>
usetime:0.304516, 
mysqlquery:4
</div>
<noscript>&lt;iframe src=*.html&gt;&lt;/iframe&gt;</noscript>




</body></html>