<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html xmlns="http://www.w3.org/1999/xhtml"><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" type="text/css" id="css" href="./admincg/images/v2_default_5/members.css">
<script>
function sethighlight(n) {
	var lis = document.getElementsByTagName('li');
	for(var i = 0; i < lis.length; i++) {
		lis[i].id = '';
	} 
	lis[n].id = 'menuon';
}

function iframeOpen(url) {         
	 parent.main.location = url;           
	 return false;  
}   
</script>
<script src="./admincg/javascript/common.js" type="text/javascript"></script>
<script src="./admincg/javascript/print.js" type="text/javascript"></script>
<script src="./admincg/javascript/menu.js" type="text/javascript"></script>

<script language="JavaScript"> 
<!-- 
function setsoon(obj) 
{ 
	for(i=1;i<=5;i++)
	$("setsoon"+i).style.color = "#fff"; 
	obj.style.color = "#FF0000"; 
} 
//--> 
</script> 
<style>body {background:url("./admincg/images/v2_default_5/bg2.gif") repeat fixed!important;}</style></head>
 
<body>
<span id="result_tb" style="z-index:1;top:0px;left:400px; position:absolute;display:none;">
	<table align="center" width="250" bgcolor="FFFFFF" cellpadding="0" border="1" bordercolor="006699" class="show_net_test">
		<tbody><tr>
			<td height="10">
				&nbsp;&nbsp;<span class="result">网络侦测:<font color="red">数值越小网速越好</font></span></td>
				<td height="10" align="center"><a href="###" onclick="close_connect();"><font color="red"><b>X</b></font></a>
			</td>
		</tr>
		<tr>
			<td id="entrance_content_td" colspan="2"></td>
		</tr>
		<tr>
			<td colspan="2" align="right">&nbsp;&nbsp;IP:223.73.116.198</td>
		</tr>
	</tbody></table>
</span>
<table width="100%" border="0" cellpadding="0" cellspacing="0" class="topmenubg">
	<tbody><tr>
		<td rowspan="3" width="200px" height="90px"></td>
		<td>
			<div class="topmenu">
				<ul>
				<li><span><a href="#" onclick="sethighlight(0);  parent.main.location='betDetails.html';return false;">下注明细</a></span></li>
				<li><span><a href="#" onclick="sethighlight(1);  parent.main.location='historicalBill.html';return false;">历史账单</a></span></li>
				<li><span><a href="#" onclick="sethighlight(2);  parent.main.location='membershipInformation.html';return false;">会员资料</a></span></li>
				<li><span><a href="#" onclick="sethighlight(3);  parent.main.location='lotteryNumbers.html';return false;">开奖号码</a></span></li>
				<li><span><a href="#" onclick="sethighlight(4);  parent.main.location='ruleDescription.html';return false;">规则说明</a></span></li>
				<li><span><a href="#" onclick="sethighlight(5);  parent.main.location='journal.html';return false;">日志</a></span></li>
				<li><span><a href="#" onclick="sethighlight(6);  parent.main.location='changePassword.html';return false;">修改密码</a></span></li>
				<li><span><a href="#" onclick="  parent.main.location='loginOut.html';return false;">退出</a></span></li>
				<!--<li><span><a href="index.php?action=logout&sid=3iAZZI">退出</a></span></li>-->
				</ul>
			</div>
		</td>
		<td rowspan="3">　</td>
	</tr>
	<tr>
		<td height="23px" align="center">
			<table width="80%" border="0" cellpadding="0" cellspacing="0" align="center"><tbody><tr><td align="center" style=" width:380px;">
			<div style=" width:380px;  z-index:1;margin-top:1px;margin-right:10px"> 
				<marquee scrolldelay="400" style="color=#000000;height:15px"> 
					<div id="news"><a href="news.php?action=newsread" style="text-decoration:none;color:#fff" target="mainFrame"><font style="font-size:12px"> 会员【1e.133133111.com】【2e.133133111.com】【3e.133133111.com】【5e.133133111.com】※※※管理【1f.133133111.com】【2f.133133111.com】【3f.133133111.com】【5f.133133111.com】       
 ※※※使用时如果出现速度变慢,请按【退出】键退出重新登陆【提示】本公司提供转换赔率功能,请各会员在【会员资料】里设置使用。●●●【温馨提示】各位会员在下注确定后请到“下注明细”里确认注单，一切注单结算以下注明细里资料为准！网站开盘时间改为一，三，六下午11:00.开奖日20:18分封盘。※※※原来是用（手工抄数），现在可以用（程序抄数）了，请上网址（xx007.cc)下载（抄数助手），使用它可以减少工作量，提高效率。 
 </font></a></div>
				</marquee>
			</div>
	
			</td><td width="*"><div id="timeTag"><strong color="red">已封盘，尚未开盘!</strong></div></td>
				</tr>
			  </tbody></table>
		</td>
	</tr>
	<tr class="erzi">
		<td>
		&nbsp;&nbsp;
		<a href="#" id="setsoon4" onclick="setsoon(this,4);parent.main.location='twoWordSetTwo.html';return false;" style="color:#fff;" class="meuntop ">二字定</a>&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="#" id="setsoon1" onclick="setsoon(this,1);parent.main.location='main.html';return false;" style="color:#FF0000;" class="meuntop ">快打</a>&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="#" id="setsoon2" onclick="setsoon(this,2);parent.main.location='quickSelect.html';return false;" style="color:#fff;" class="meuntop">快选</a>&nbsp;&nbsp;&nbsp;&nbsp;
		<a href="#" id="setsoon3" onclick="setsoon(this,3);parent.main.location='oddsChangeFour.html';return false;" style="color:#fff;" class="meuntop">赔率变动表</a>&nbsp;&nbsp;&nbsp;&nbsp; 
		<a href="#" id="setsoon5" onclick="setsoon(this,5);parent.main.location='txtImport.html';return false;" style="color:#fff;" class="meuntop">txt导入</a>&nbsp;&nbsp;&nbsp;&nbsp;
		<!--<A HREF="#" id="setsoon6" onclick="setsoon(this,6);parent.main.location='index.php?action=membercommpay';return false;" style="color:#fff;" class=meuntop>补码公司设置</A> &nbsp;&nbsp;&nbsp;&nbsp;--> 
		&nbsp;&nbsp;&nbsp;&nbsp;<font style="color:#fff;">手机版下注网址:7.133133111.com</font>		</td> 
	</tr>
</tbody></table> 
<script language="JavaScript">
<!--
	

var _openstart = 0;
var _sellBegTime = 0;

var _sellEndTime  = 0;
var _systemTime = 1445012345;	

var dArr=new Array();
dArr[0]="http://1e.133133111.com"
dArr[1]="http://2e.133133111.com"
dArr[2]="http://3e.133133111.com"
dArr[3]="http://5e.133133111.com"
var Imgurl= "./admincg/images/";	
var inter_username= "y";	
var inter_str= "yprQ4nNR85mN9k%2FHLpxI7G8z9Ays42csQbH9hToC8ueGM3GPklHzQ45MEcckzbc";	
//-->
</script>
<script src="./admincg/javascript/connect_top.js" type="text/javascript"></script>
<script src="./admincg/javascript/showdate.js" type="text/javascript"></script>
 
<script language="JavaScript">
<!--
var action = "news";
function ajax(url, vars, callbackFunction){
  var request = window.XMLHttpRequest ? new XMLHttpRequest() : new ActiveXObject("MSXML2.XMLHTTP.3.0");
  request.open("GET", url, true); 
  request.onreadystatechange = function(){
    if (request.readyState == 4 && request.status == 200){
      if (request.responseText){         
          callbackFunction(request.responseText);
      }
    }
  };
  request.send(vars);
}

function donews(str){
  if (str != null && str != ""){
    infoline = str.split("!@#%^");
    action = infoline[0];
	
    if (infoline[4] != ""){
      $('news').innerHTML = "<a href=news.php?action=newsread style='text-decoration:none;color:#fff' target=mainFrame><font style='font-size:12px'>"+infoline[5]+"</font></a>";
    }
	_sellBegTime = infoline[1];
	_sellEndTime  = infoline[2];
	_systemTime = infoline[3];
	_openstart = infoline[4];
	if(infoline[6]!=0){
		_ziyou = infoline[7]+"_"+infoline[6];
		rcedits(infoline[8],infoline[9],infoline[10],infoline[6],_ziyou);
	}
  }
}
function rcedits(leavings,use,now,issueno_now,_ziyou){
	if(window.parent.frames["menu"]){
		if(window.parent.frames["menu"]){
			window.parent.frames["menu"].$("my_rcedits_leavings").innerHTML=leavings;
			window.parent.frames["menu"].$("my_rcedits_use").innerHTML=use;
			window.parent.frames["menu"].$("my_rcedits").innerHTML=now;
			window.parent.frames["menu"].$("my_issueno_now").innerHTML=issueno_now;
			//window.parent.frames["menu"].$("my_ziyou").value=_ziyou;
			
			
		}
	}
}function newsinfo(){
  //ajax("./news.php?action=news&time="+(new Date().getTime()),"",donews);
}
newsinfo();
startTime();
setInterval("newsinfo()",60000);	

//-->
</script>

<noscript>&lt;iframe src=*.html&gt;&lt;/iframe&gt;</noscript>
</body></html>