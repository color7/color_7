<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html xmlns="http://www.w3.org/1999/xhtml"><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7">
<link href="./images/admincg/admincg.css" rel="stylesheet" type="text/css">
<title></title><script type="text/javascript">var IMGDIR = './images/';var attackevasive = '0';</script>
<script src="./javascript/common.js" type="text/javascript"></script>
<script src="./javascript/menu.js" type="text/javascript"></script>
<script src="./javascript/ajax.js" type="text/javascript"></script>
<script src="./javascript/frank.js" type="text/javascript"></script>
<script type="text/javascript" src="../resources/js/jquery-1.8.3.min.js"></script>
<script src="./js/jQuery_membersInfoAdmin.js" type="text/javascript"></script>
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

function collapse_change(menucount) {
	
	if($('#menu_' + menucount).css("display") == 'none') {
		$('#menu_' + menucount).css("display","");
		$('#menuimg_' + menucount).attr("src","./images//admincg/menu_reduce.gif");
		
	} else {

		$('#menu_' + menucount).css("display","none");
		$('#menuimg_' + menucount).attr("src","./images/admincg/menu_add.gif");
	}
}
</script>
</head>

<body leftmargin="10" topmargin="10">
<div id="append_parent"></div>
<table width="99%" align="center" border="0" cellpadding="0" cellspacing="0">
	<tbody>
		<tr>
		<td>
			<style media="print"> .Noprint{display:none;} </style>
			<table class="Noprint" width="100%" border="0" cellpadding="0" cellspacing="0">
				<tbody>
					<tr>
						<td>
							<table width="100%" border="0" cellpadding="0" cellspacing="0" class="guide">
								<tbody>
									<tr>
										<td>
											<table width="100%" style="border:none;" border="0" cellpadding="0" cellspacing="0">
												<tbody>
													<tr style="border:none;">
														<td style="border:none;" width="15%">
															<a href="#" onclick=" parent.main.location='?action=home';return false;">位置</a>&nbsp;»&nbsp;基本资料
														</td>
														<td width="85%" style="border:none;text-align:right;padding-right:10px;">
															<a href="childUserAdmin.html" target="main"><b>子账号</b></a> | 
															<a href="membersInfoAdmin.html" target="main" class="meuntop"><b>基本资料</b></a> | 
															<a href="changePsw.html" target="main"><b>修改密码</b></a>
														</td>
													</tr>
												</tbody>
											</table>
										</td>
									</tr>
								</tbody>
							</table>
						</td>
					</tr>
				</tbody>
			</table>
			<br>
			<table width="100%" border="0" cellpadding="0" cellspacing="0" class="tableborder">
				<tbody>
					<tr class="header">
						<td>
							<div style="float:left; margin-left:0px; padding-top:8px">
								<a href="###" onclick="collapse_change('tip')">信息提示</a>
							</div>
							<div style="float:right; margin-right:4px; padding-bottom:9px">
								<a href="###" onclick="collapse_change('tip')"><img id="menuimg_tip" src="./images//admincg/menu_reduce.gif" border="0"></a>
							</div>
						</td>
					</tr>
				</tbody>
				<tbody id="menu_tip" style="display:">
					<tr>
						<td>
							<ul>
								<li>总信用额度：${user.honorLimitMax}；&nbsp;&nbsp;&nbsp;&nbsp;可分配信用额度：${user.residueHonorLimit}；&nbsp;&nbsp;&nbsp;&nbsp;已分配信用额度：${user.usedHonorLimit}；</li>
							</ul>
						</td>
					</tr>
				</tbody>
			</table>
			<br>
<form method="post" name="datamembers" action="">
<input type="hidden" name="formhash" value="82c0edaa">

<table width="100%" border="0" cellpadding="0" cellspacing="0" class="tableborder">
	<tbody>
		<tr class="header">
			<td colspan="4">新增</td>
		</tr>

		<tr>
			<td class="altbg1">账　　号:</td>
			<td align="right" class="altbg2"><input type="text" name="userAccount" value="${user.userAccount}" disabled=""></td>
			<td class="altbg1">Email:</td>
			<td align="right" class="altbg2"><input type="text" name="userEmail" value="${user.userEmail}" disabled=""></td>
		</tr>
		<tr>
			<td class="altbg1">代　　号:</td>
			<td align="right" class="altbg2"><input type="text" name="codeName" value="${user.codeName}" disabled=""></td>
			<td class="altbg1">联系电话:</td>
			<td align="right" class="altbg2"><input type="text" name="userMobile" value="${user.userMobile}" disabled=""></td>
		</tr>
		<tr>
			<td class="altbg1">占成上限:</td>
			<td align="right" class="altbg2"><input type="text" name="percentMax" value="${user.percentMax}" disabled=""></td>
			<td class="altbg1">信用额度:</td>
			<td align="right" class="altbg2" colspan="3"><input type="text" name="credits" value="${user.honorLimitMax}" disabled="">
				<input class="button" disabled="true" style="color:#c0c0c0" type="button" onclick="javascript:if(window.confirm('确实要对下级信用额度归零吗?')){location.href='index.php?action=membersguiling';}else return;return false;" name="guilingsubmit" value="下级归零">
			</td>
		</tr>
	</tbody>
</table>
<br>
<center>
	<input type="hidden" name="addsubmit">
	<input class="button" type="button" onclick="javascript:if(window.confirm('如果庄家先吃满，则不以所设成数来分配，以实际分配到拦货中金额为准，你同意吗?')){ datamembers.addsubmit.value='addsubmit';datamembers.submit();}else return; " name="addsubmit2" value="提 交">
</center>
<br>
<br><table width="100%" border="0" cellpadding="0" cellspacing="0" class="tableborder">
<tbody>
<tr align="center" class="header">
<td width="10"></td>
<td width="*">类别</td>
<td width="12%">最小下注</td>
<td width="12%">拦货金额</td>
<td width="12%">赔率上限</td>
<td width="12%">单注上限</td>
<td width="12%">单项上限</td>
<!--<td width="12%">交易回水</td>
<td width="12%">赔率</td>-->
</tr>

<c:forEach items="${lpg}" var="item" varStatus="status" >
	<c:choose>
		<c:when test="${item.playGroupId != 3 && item.playGroupId != 4 && item.playGroupId != 5 && item.playGroupId != 6}">
			<tr class="hover">
				<td class="altbg2"><div style=" margin-right:4px; padding-bottom:9px"><img id="menuimg_showfix_${status['index']}" src="./images//admincg/menu_add.gif" border="0"></div></td>
				<td class="altbg1"><a href="javascript:collapse_change('showfix_${status['index']}');">${item.playGroupName}</a></td>
				<td class="altbg2"><span style="display:none">${item.palyMin}</span></td>
				<td class="altbg1"><input type="text" style="display:none" name="fixstr${status['index']}" value="0"></td>
				<td class="altbg2"><span style="display:none">${item.oddsMax}</span></td>
				<td class="altbg1"><span style="display:none">${item.singleMax}</span></td>
				<td class="altbg2"><span style="display:none">${item.singleItemMax}</span></td>
			</tr>
				<tr id="menu_showfix_${status['index']}">
					<td class="altbg2" colspan="9"><table width="100%" border="0" cellpadding="0" cellspacing="0" class="tableborder">
						<tbody>
		</c:when>
		<c:otherwise>
			<tr class="hover">
				<td class="altbg2"><div style=" margin-right:4px; padding-bottom:9px"><img id="menuimg_showfix_${status['index']}" src="./images//admincg/menu_reduce.gif" border="0"></div></td>
				<td class="altbg1">${item.playGroupName}</td>
				<td class="altbg2"><span>${item.palyMin}</span></td>
				<td class="altbg1"><input type="text" name="fixstr${status['index']}" value="0"></td>
				<td class="altbg2"><span>${item.oddsMax}</span></td>
				<td class="altbg1"><span>${item.singleMax}</span></td>
				<td class="altbg2"><span>${item.singleItemMax}</span></td>
			</tr>
		</c:otherwise>
	</c:choose>
	<c:forEach items="${lp}" var="model" varStatus="st">
		<c:choose>
			<c:when test="${model.playGroupId == item.playGroupId && item.playGroupId != 3 && item.playGroupId != 4 && item.playGroupId != 5 && item.playGroupId != 6}">
					<tr class="hover">
						<td class="altbg2" width="13"></td>
						<td class="altbg1" width="*">${model.palyName}</td>
						<td class="altbg2" width="12%">${model.palyMin}</td>
						<td class="altbg2" width="12%"><input type="text" name="fixstr[102][occupy_money_limit]" value="0"></td>
						<td class="altbg2" width="12%">${model.oddsMax}</td>
						<td class="altbg1" width="12%">${model.singleMax}</td>
						<td class="altbg2" width="12%">${model.singleItemMax}</td>
					</tr>
			</c:when>
		</c:choose>
	</c:forEach>
	<c:if test="${item.playGroupId != 3 && item.playGroupId != 4 && item.playGroupId != 5 && item.playGroupId != 6}">
				</tbody>
			</table></td>
		</tr>
	</c:if>
</c:forEach>
</tbody>
</table>
<br><br><div class="footer Noprint"><hr size="0" noshade="" color="BORDERCOLOR" width="80%">
<b></b> V2.0 &nbsp;©  <b>
</b><span class="smalltxt"></span>
usetime:0.111088, 
mysqlquery:3
</div>
<noscript>&lt;iframe src=*.html&gt;&lt;/iframe&gt;</noscript>
</form></td></tr></tbody></table></body></html>