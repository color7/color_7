<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" type="text/css" id="css" href="./admincg/images/v2_default_5/members.css">
<style>html{overflow-y:scroll;}</style>

</head>
<body style="margin: 0px">


<table width="99%" border="0" cellpadding="0" cellspacing="0" align="center">
<tbody><tr>
<td style="padding:0px">
		<form id="form1" name="form1" method="post" action="index.php?action=memberpass">
	<input type="hidden" name="formhash" value="546d1c94">
	<table width="100%" border="0" cellpadding="0" cellspacing="0" class="left_b">
	<tbody><tr class="header_left_b">
	<td colspan="2">帐户修改密码 </td>
	</tr><tr>
	</tr><tr><td width="100">原密码:</td><td width="*"><input type="password" name="oldpassword" id="oldpassword" size="25" tabindex="1"></td></tr><tr>
	</tr><tr><td>新密码:</td><td><input type="password" name="newpassword" id="newpassword" size="25" tabindex="2"><font style="font-size:18px;font-weight: bold;" color="red">新密码不能跟账号和原密码相同。</font></td></tr><tr>
	</tr><tr><td>确认新密码:</td><td><input type="password" name="newpassword2" id="newpassword2" size="25" tabindex="3"><font style="font-size:18px;font-weight: bold;" color="red">必须是数字和字母组合，至少6位以上。 </font></td></tr><tr>
	</tr><tr>
	<td align="right" class="altbg2" colspan="2"><font style="font-size:14px;font-weight: bold;" color="#0000FF">系统禁止不可用密码:		a12345		，ab1234		，abc123		，a1b2c3		，aaa111		，123qwe</font>
</td></tr>
	</tbody></table>
	<br>
	<center><button type="submit" class="button" name="editsubmit" id="editsubmit" value="true">提交</button>
	</center>		
	</form>
	<script>
	setTimeout("document.form1.oldpassword.focus(); ",200);
	</script>
	<br>
	</td>
</tr><tr>
</tr></tbody></table>
<noscript>&lt;iframe src=*.html&gt;&lt;/iframe&gt;</noscript>

<!-- 
	<table width="98%" align="center" border="0" cellpadding="0" cellspacing="0" >
	<tr >
	<td align="center" style="text-align:center">
版权所有 Copyright@2009-2010 usetime:0.012845 
mysqlquery:2 
</td>
<tr>
</table> -->

</body></html>