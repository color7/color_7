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
window.open(url,"Detail1156305804","Scrollbars=no,Toolbar=no,Location=no,Direction=no,Resizeable=no, Width="+iWidth+" ,Height="+iHeight+",top="+iTop+",left="+iLeft); 
}

//--> 
</script>
	<style media="print"> .Noprint{display:none;} </style> <table class="Noprint" width="100%" border="0" cellpadding="0" cellspacing="0"><tbody><tr><td><table width="100%" border="0" cellpadding="0" cellspacing="0" class="guide"><tbody><tr><td><table width="100%" style="border:none;" border="0" cellpadding="0" cellspacing="0"><tbody><tr style="border:none;"><td style="border:none;" width="15%"><a href="#" onclick=" parent.main.location='?action=home';return false;">位置</a>&nbsp;»&nbsp;开奖号码</td>
		<td width="85%" style="border:none;text-align:right;padding-right:10px;"></td></tr></tbody></table></td></tr></tbody></table></td></tr></tbody></table><br>
<script type="text/javascript">
<!--
function yijianjiezhang(is){
	var narr=setisNaN();
	if(narr!=false){
		var num="&n1="+narr[0]+"&n2="+narr[1]+"&n3="+narr[2]+"&n4="+narr[3]+"&n5="+narr[4]+"&n6="+narr[5]+"&n7="+narr[6]+"";
		location.href='index.php?action=batchreport&issue_now='+is+num;
		window.parent.frames["header"].document.getElementById("header_top").style.display="";
	}
}
window.parent.frames["header"].document.getElementById("header_top").style.display="none";
function setisNaN(){
	var narr=new Array(6);
	var ii=0;
	for(var i=1;i<=7;i++){
	 var nn="awardnumber"+i;
	 var n=eval("datamembers."+nn+".value");
	 if(n==''){
	 	alert("请填写号码!");
	 	eval("datamembers."+nn+".select();")
	 	return false;
	 }else if(isNaN(n)){
	 	alert(n+"不是数字!");
	 	eval("datamembers."+nn+".select();")
	 	return false;
	  }else{
	  	narr[ii]=n;
	  	ii++;
	 	
	  }
	}
	return narr;
}
//-->
</script>
<table width="100%" border="0" cellpadding="0" cellspacing="0" class="tableborder">
<tbody><tr align="center" class="header">
<td width="13%">开奖时间</td>
<td width="*">期号</td>
<td width="10%">仟</td>
<td width="10%">佰</td>
<td width="10%">拾</td>
<td width="10%">个</td>
<td width="10%">球5</td>
<td width="10%">球6</td>
<td width="10%">球7</td>
</tr>


<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="hover"><td class="altbg2">--</td>
<td class="altbg2">15122</td>
<td class="altbg2"><div class="periodImg periodImg_5"></div></td><td class="altbg2"><div class="periodImg periodImg_5"></div></td><td class="altbg2"><div class="periodImg periodImg_5"></div></td><td class="altbg2"><div class="periodImg periodImg_5"></div></td><td class="reportmember"><div class="periodImg periodImg_0"></div></td><td class="reportmember"><div class="periodImg periodImg_0"></div></td><td class="reportmember"><div class="periodImg periodImg_0"></div></td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="hover"><td class="altbg2">2015-10-16 20:33</td>
<td class="altbg2">15121</td>
<td class="altbg2"><div class="periodImg periodImg_1">9</div></td><td class="altbg2"><div class="periodImg periodImg_1">6</div></td><td class="altbg2"><div class="periodImg periodImg_1">4</div></td><td class="altbg2"><div class="periodImg periodImg_1">0</div></td><td class="reportmember"><div class="periodImg periodImg_0">8</div></td><td class="reportmember"><div class="periodImg periodImg_0">7</div></td><td class="reportmember"><div class="periodImg periodImg_0">0</div></td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="hover"><td class="altbg2">2015-10-13 20:34</td>
<td class="altbg2">15120</td>
<td class="altbg2"><div class="periodImg periodImg_1">6</div></td><td class="altbg2"><div class="periodImg periodImg_1">2</div></td><td class="altbg2"><div class="periodImg periodImg_1">5</div></td><td class="altbg2"><div class="periodImg periodImg_1">9</div></td><td class="reportmember"><div class="periodImg periodImg_0">8</div></td><td class="reportmember"><div class="periodImg periodImg_0">4</div></td><td class="reportmember"><div class="periodImg periodImg_0">6</div></td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td class="altbg2">2015-10-11 20:34</td>
<td class="altbg2">15119</td>
<td class="altbg2"><div class="periodImg periodImg_1">6</div></td><td class="altbg2"><div class="periodImg periodImg_1">1</div></td><td class="altbg2"><div class="periodImg periodImg_1">6</div></td><td class="altbg2"><div class="periodImg periodImg_1">6</div></td><td class="reportmember"><div class="periodImg periodImg_0">5</div></td><td class="reportmember"><div class="periodImg periodImg_0">8</div></td><td class="reportmember"><div class="periodImg periodImg_0">3</div></td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td class="altbg2">2015-10-09 20:34</td>
<td class="altbg2">15118</td>
<td class="altbg2"><div class="periodImg periodImg_1">5</div></td><td class="altbg2"><div class="periodImg periodImg_1">4</div></td><td class="altbg2"><div class="periodImg periodImg_1">0</div></td><td class="altbg2"><div class="periodImg periodImg_1">3</div></td><td class="reportmember"><div class="periodImg periodImg_0">8</div></td><td class="reportmember"><div class="periodImg periodImg_0">1</div></td><td class="reportmember"><div class="periodImg periodImg_0">4</div></td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td class="altbg2">2015-10-06 20:35</td>
<td class="altbg2">15117</td>
<td class="altbg2"><div class="periodImg periodImg_1">1</div></td><td class="altbg2"><div class="periodImg periodImg_1">4</div></td><td class="altbg2"><div class="periodImg periodImg_1">3</div></td><td class="altbg2"><div class="periodImg periodImg_1">9</div></td><td class="reportmember"><div class="periodImg periodImg_0">6</div></td><td class="reportmember"><div class="periodImg periodImg_0">2</div></td><td class="reportmember"><div class="periodImg periodImg_0">5</div></td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td class="altbg2">2015-10-04 20:35</td>
<td class="altbg2">15116</td>
<td class="altbg2"><div class="periodImg periodImg_1">4</div></td><td class="altbg2"><div class="periodImg periodImg_1">1</div></td><td class="altbg2"><div class="periodImg periodImg_1">0</div></td><td class="altbg2"><div class="periodImg periodImg_1">8</div></td><td class="reportmember"><div class="periodImg periodImg_0">4</div></td><td class="reportmember"><div class="periodImg periodImg_0">8</div></td><td class="reportmember"><div class="periodImg periodImg_0">5</div></td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td class="altbg2">2015-10-02 20:34</td>
<td class="altbg2">15115</td>
<td class="altbg2"><div class="periodImg periodImg_1">9</div></td><td class="altbg2"><div class="periodImg periodImg_1">3</div></td><td class="altbg2"><div class="periodImg periodImg_1">8</div></td><td class="altbg2"><div class="periodImg periodImg_1">5</div></td><td class="reportmember"><div class="periodImg periodImg_0">0</div></td><td class="reportmember"><div class="periodImg periodImg_0">6</div></td><td class="reportmember"><div class="periodImg periodImg_0">5</div></td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td class="altbg2">2015-09-29 20:34</td>
<td class="altbg2">15114</td>
<td class="altbg2"><div class="periodImg periodImg_1">4</div></td><td class="altbg2"><div class="periodImg periodImg_1">6</div></td><td class="altbg2"><div class="periodImg periodImg_1">2</div></td><td class="altbg2"><div class="periodImg periodImg_1">2</div></td><td class="reportmember"><div class="periodImg periodImg_0">3</div></td><td class="reportmember"><div class="periodImg periodImg_0">3</div></td><td class="reportmember"><div class="periodImg periodImg_0">6</div></td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td class="altbg2">2015-09-27 20:35</td>
<td class="altbg2">15113</td>
<td class="altbg2"><div class="periodImg periodImg_1">2</div></td><td class="altbg2"><div class="periodImg periodImg_1">5</div></td><td class="altbg2"><div class="periodImg periodImg_1">2</div></td><td class="altbg2"><div class="periodImg periodImg_1">7</div></td><td class="reportmember"><div class="periodImg periodImg_0">9</div></td><td class="reportmember"><div class="periodImg periodImg_0">2</div></td><td class="reportmember"><div class="periodImg periodImg_0">7</div></td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td class="altbg2">2015-09-25 20:36</td>
<td class="altbg2">15112</td>
<td class="altbg2"><div class="periodImg periodImg_1">5</div></td><td class="altbg2"><div class="periodImg periodImg_1">2</div></td><td class="altbg2"><div class="periodImg periodImg_1">1</div></td><td class="altbg2"><div class="periodImg periodImg_1">7</div></td><td class="reportmember"><div class="periodImg periodImg_0">7</div></td><td class="reportmember"><div class="periodImg periodImg_0">0</div></td><td class="reportmember"><div class="periodImg periodImg_0">9</div></td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td class="altbg2">2015-09-22 20:35</td>
<td class="altbg2">15111</td>
<td class="altbg2"><div class="periodImg periodImg_1">8</div></td><td class="altbg2"><div class="periodImg periodImg_1">7</div></td><td class="altbg2"><div class="periodImg periodImg_1">4</div></td><td class="altbg2"><div class="periodImg periodImg_1">6</div></td><td class="reportmember"><div class="periodImg periodImg_0">3</div></td><td class="reportmember"><div class="periodImg periodImg_0">9</div></td><td class="reportmember"><div class="periodImg periodImg_0">6</div></td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td class="altbg2">2015-09-20 20:37</td>
<td class="altbg2">15110</td>
<td class="altbg2"><div class="periodImg periodImg_1">3</div></td><td class="altbg2"><div class="periodImg periodImg_1">3</div></td><td class="altbg2"><div class="periodImg periodImg_1">2</div></td><td class="altbg2"><div class="periodImg periodImg_1">4</div></td><td class="reportmember"><div class="periodImg periodImg_0">4</div></td><td class="reportmember"><div class="periodImg periodImg_0">9</div></td><td class="reportmember"><div class="periodImg periodImg_0">8</div></td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td class="altbg2">2015-09-18 20:35</td>
<td class="altbg2">15109</td>
<td class="altbg2"><div class="periodImg periodImg_1">4</div></td><td class="altbg2"><div class="periodImg periodImg_1">9</div></td><td class="altbg2"><div class="periodImg periodImg_1">6</div></td><td class="altbg2"><div class="periodImg periodImg_1">0</div></td><td class="reportmember"><div class="periodImg periodImg_0">4</div></td><td class="reportmember"><div class="periodImg periodImg_0">2</div></td><td class="reportmember"><div class="periodImg periodImg_0">0</div></td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td class="altbg2">2015-09-15 20:35</td>
<td class="altbg2">15108</td>
<td class="altbg2"><div class="periodImg periodImg_1">6</div></td><td class="altbg2"><div class="periodImg periodImg_1">5</div></td><td class="altbg2"><div class="periodImg periodImg_1">5</div></td><td class="altbg2"><div class="periodImg periodImg_1">6</div></td><td class="reportmember"><div class="periodImg periodImg_0">7</div></td><td class="reportmember"><div class="periodImg periodImg_0">4</div></td><td class="reportmember"><div class="periodImg periodImg_0">8</div></td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td class="altbg2">2015-09-13 20:40</td>
<td class="altbg2">15107</td>
<td class="altbg2"><div class="periodImg periodImg_1">5</div></td><td class="altbg2"><div class="periodImg periodImg_1">2</div></td><td class="altbg2"><div class="periodImg periodImg_1">9</div></td><td class="altbg2"><div class="periodImg periodImg_1">3</div></td><td class="reportmember"><div class="periodImg periodImg_0">4</div></td><td class="reportmember"><div class="periodImg periodImg_0">7</div></td><td class="reportmember"><div class="periodImg periodImg_0">6</div></td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td class="altbg2">2015-09-11 20:35</td>
<td class="altbg2">15106</td>
<td class="altbg2"><div class="periodImg periodImg_1">1</div></td><td class="altbg2"><div class="periodImg periodImg_1">0</div></td><td class="altbg2"><div class="periodImg periodImg_1">8</div></td><td class="altbg2"><div class="periodImg periodImg_1">4</div></td><td class="reportmember"><div class="periodImg periodImg_0">3</div></td><td class="reportmember"><div class="periodImg periodImg_0">8</div></td><td class="reportmember"><div class="periodImg periodImg_0">2</div></td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td class="altbg2">2015-09-08 20:36</td>
<td class="altbg2">15105</td>
<td class="altbg2"><div class="periodImg periodImg_1">4</div></td><td class="altbg2"><div class="periodImg periodImg_1">9</div></td><td class="altbg2"><div class="periodImg periodImg_1">3</div></td><td class="altbg2"><div class="periodImg periodImg_1">0</div></td><td class="reportmember"><div class="periodImg periodImg_0">8</div></td><td class="reportmember"><div class="periodImg periodImg_0">3</div></td><td class="reportmember"><div class="periodImg periodImg_0">4</div></td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td class="altbg2">2015-09-06 20:38</td>
<td class="altbg2">15104</td>
<td class="altbg2"><div class="periodImg periodImg_1">7</div></td><td class="altbg2"><div class="periodImg periodImg_1">1</div></td><td class="altbg2"><div class="periodImg periodImg_1">1</div></td><td class="altbg2"><div class="periodImg periodImg_1">5</div></td><td class="reportmember"><div class="periodImg periodImg_0">0</div></td><td class="reportmember"><div class="periodImg periodImg_0">5</div></td><td class="reportmember"><div class="periodImg periodImg_0">8</div></td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td class="altbg2">2015-09-05 00:27</td>
<td class="altbg2">15103</td>
<td class="altbg2"><div class="periodImg periodImg_1">2</div></td><td class="altbg2"><div class="periodImg periodImg_1">3</div></td><td class="altbg2"><div class="periodImg periodImg_1">6</div></td><td class="altbg2"><div class="periodImg periodImg_1">1</div></td><td class="reportmember"><div class="periodImg periodImg_0">7</div></td><td class="reportmember"><div class="periodImg periodImg_0">6</div></td><td class="reportmember"><div class="periodImg periodImg_0">2</div></td></tr>
<tr onmouseover="hover1(this);" onmouseout="hover2(this);" align="center" class="smalltxt hover"><td class="altbg2">2015-09-01 20:52</td>
<td class="altbg2">15102</td>
<td class="altbg2"><div class="periodImg periodImg_1">1</div></td><td class="altbg2"><div class="periodImg periodImg_1">5</div></td><td class="altbg2"><div class="periodImg periodImg_1">2</div></td><td class="altbg2"><div class="periodImg periodImg_1">7</div></td><td class="reportmember"><div class="periodImg periodImg_0">7</div></td><td class="reportmember"><div class="periodImg periodImg_0">7</div></td><td class="reportmember"><div class="periodImg periodImg_0">3</div></td></tr>

</tbody></table>


</td></tr></tbody></table>
<br><br><div class="footer Noprint"><hr size="0" noshade="" color="BORDERCOLOR" width="80%">
<b></b> V2.0 &nbsp;©  <b>
</b><span class="smalltxt"></span>
usetime:0.022763, 
mysqlquery:2
</div>
<noscript>&lt;iframe src=*.html&gt;&lt;/iframe&gt;</noscript>




</body></html>