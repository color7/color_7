<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html xmlns="http://www.w3.org/1999/xhtml"><head>
<title>GemailLogin</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7">
<link rel="shortcut icon" href="./rear/images/favicon.ico" type="image/x-icon"> 
<link rel="stylesheet" type="text/css" href="./rear/images/login_13/User_Admin_Login.css">
<link rel="stylesheet" type="text/css" href="./rear/images/logmsg.css">
<script language="javascript" src="./rear/javascript/jquery.min.js?ver=1"></script>
<script language="javascript" src="./rear/javascript/base64.min.js?ver=2"></script>
<script language="javascript" src="./rear/javascript/jquery.md5.js?ver=3"></script>
<script language="javascript" src="./rear/javascript/jquery.jcryption.3.1.0.js?ver=1"></script>
<script language="javascript" src="./rear/javascript/loginfrm.js?ver=1"></script>
<script type="text/javascript">
<!--
function finalcheck(){
	if($("#login_admin").attr("disabled")=="disabled")return false;
	if(document.loginfrm.admin_username368109810.value==""){
		alert("Please fill out the account！");
		document.loginfrm.admin_username368109810.focus();
		return false;
	}else if(document.loginfrm.admin_password368109810.value==""){
		alert("Please fill in password！");
		document.loginfrm.admin_password368109810.focus();
		return false;
	}
	
	return onLogin("368109810",2);
}

function redirect(url) {
	window.location.replace(url);
}
function send(event){   
	if(event.keyCode==13) { 
		return finalcheck();
	}   
}
if(self.parent.frames.length != 0) {
	self.parent.location=document.location;
}
-->
$(document).ready(function(){
	$("#login_admin").click(function(){
		$.ajax({
			type : "post",
			url : "<%=path%>/json/loginAdmin.action",
			data: {"userAccount":$("input[name='userAccount']").val(),
					 "userPassword":$("input[name='userPassword']").val()},
			dataType : "json",
			success : function(data) {
				var obj = eval("("+data.returnJson+")");
				if (obj.status==0) {
					window.location.href="<%=path%>/gotoIndexPage.action";
				}else{
					alert("用户不存在或密码错误！")
				}
	         }
	 });
	});
})

</script></head>
<body topmargin="0" leftmargin="0" rightmargin="0" bottommargin="0" marginwidth="0" marginheight="0">
<table width="100%" border="0" cellpadding="0" cellspacing="0">
<tbody><tr><td>
		
		<form method="post" name="loginfrm"><input type="hidden" name="sid" value="FMXwTC"><input type="hidden" name="loginaction" value="1">
		<input type="hidden" name="Hrand" value="368109810"><br><table align="center" width="840" border="0" cellpadding="0" cellspacing="0">
	<tbody><tr>
		<td colspan="3" height="62" background="./rear/images/login_13/2_01.gif">
	<table width="100%" border="0" cellpadding="0" cellspacing="0">
	<tbody><tr>
		<td width="220"></td>
		<td width="40">AT:&nbsp;&nbsp;</td>
		<td width="120"><input type="text" id="admin_username" name="userAccount" onkeypress="send(event)" value="" style="width:100px; height:20px; background:#e9e6e6; font-size:12px; border:solid 1px #a0a0a0; color:#3b1b1b;"></td>
		<td width="40">PW:&nbsp;&nbsp;</td>
		<td width="120"><input type="password" id="admin_password" onkeypress="send(event)" name="userPassword" style="width:100px; height:20px; background:#e9e6e6; font-size:12px; border:solid 1px #a0a0a0; color:#3b1b1b;"></td>
        <td height="30" width="*">&nbsp;&nbsp;
        <input type="button" id="login_admin" name="login_admin" value=" login" class="login_a_input"/>
       </td>
	</tr>
</tbody></table>
			</td>
	</tr>
	<tr>
		<td background="./rear/images/login_13/2_02.gif" width="280" height="228"></td>
		<td background="./rear/images/login_13/2_03.gif" width="280"></td>
		<td background="./rear/images/login_13/2_04.gif" width="280"></td>
	</tr>
	<tr>
		<td background="./rear/images/login_13/2_05.gif" height="145"></td>
		<td background="./rear/images/login_13/2_06.gif"></td>
		<td background="./rear/images/login_13/2_07.gif"></td>
	</tr>
	<tr>
		<td background="./rear/images/login_13/2_08.gif" height="145"></td>
		<td background="./rear/images/login_13/2_09.gif"></td>
		<td background="./rear/images/login_13/2_10.gif"></td>
	</tr>
</tbody></table>
</form><script type="text/javascript">setTimeout("document.loginfrm.admin_username368109810.focus();",200);</script></td></tr></tbody></table>



<script type="text/javascript" charset="utf-8" id="0DF98C125855B791_Analytics" src="http://tajs.qq.com/stats?sId=26506734"></script></body></html>