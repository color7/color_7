<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" type="text/css" id="css" href="./admincg/images/v2_default_5//members.css">
<style>html{overflow-y:scroll;}</style>
<script src="./admincg/javascript/common.js" type="text/javascript"></script>
</head>
<body style="margin: 0px;">
<table width="99%" border="0" cellpadding="0" cellspacing="0" style="background: #fff;" align="center">
<tbody><tr>
<td style="padding:0px" valign="top">
		<script language="JavaScript">
	<!--
		var _soonset = {'s_weizhi':1,'s_hefen':1,'s_bdwhefen':1,'zhifenwei':1,'quandao':1,'paichu':1,'chenghao':1,'fushi':1,'shong1':1,'shong2':1,'shong3':1,'shong4':1,'xiongdi1':1,'xiongdi2':1,'xiongdi3':1,'duishu':1,'dan':1,'shuang':1,'shangjiang':1,'sidingwei':1};
	//-->
	</script>
	<script src="./admincg/javascript/ajax.js" type="text/javascript"></script>
	<script src="./admincg/javascript/select.js" type="text/javascript"></script>  
	<script language="JavaScript">
	<!--
		function loging(){

			var objfra = window.parent.parent.frames["main"].frames["soonselectorder"];
			var numbernum=objfra.$("selectnumber").value;
			if(numbernum!=''){
				if(window.confirm('\n上次生成数据还没有下注完成，确定要重新生成吗?\n\n')){__ss.__create();return false;}else{ return;}
			}else{
				__ss.__create();
				
			}
			//setTimeout("$('setsoonclass1').disabled=false;",2000);
			//window.parent.parent.frames["main"].frames["soonselectorder"].$("showselectnumber").innerHTML='<br>数据生成中...';
		}
		function __reset (){
			var objfra = window.parent.parent.frames["main"].frames["soonselectorder"];
			objfra.$("showselectnumber").innerHTML='';
			objfra.$("selectnumber").value='';
			objfra.$("selectnumbertotal").innerHTML=0;
			objfra.$("selectnumbertotal_hidden").value=0;
			XMLHttp.sendReq("GET","ajax.html","",post_selectMsg,"showorderhtml");
			//$('setsoonclass1').disabled=false;
		}
	//-->
	</script>

	<table width="100%" border="0" cellpadding="0" cellspacing="0" class="soonselect_b">
	<form method="POST" name="datamembers" id="datamembers" target="soonsend_ifr" action="index.php?action=soonselect&amp;sid=o2tAP0" style="padding:0;margin:0"></form>
	<input type="hidden" name="formhash" value="546d1c94">
	<input type="hidden" name="delaction" value="yes">
	

	<tbody><tr class="center"><td colspan="4">
		<table border="0" width="100%" cellpadding="0" cellspacing="0"><tbody><tr style="border:0px">
		<td width="16%"><button onclick="getclassid(1);__ss.__showmeun(1);return false;" type="button" id="soonclass1" name="soonclass1" class="select_button1 number_count number_w3" disabled="">二字定</button></td>
		<td width="16%"><button onclick="getclassid(2);__ss.__showmeun(2);return false;" type="button" id="soonclass2" name="soonclass1" class="select_button2 number_count number_w3">三字定</button></td>
				<td width="16%"><button onclick="getclassid(3);__ss.__showmeun(3);return false;" type="button" id="soonclass3" name="soonclass1" class="select_button2 number_count number_w3">四字定</button></td>
				<td width="16%"><button onclick="getclassid(4);__ss.__showmeun(4);return false;" type="button" id="soonclass4" name="soonclass1" class="select_button2 number_count number_w3">二字现</button></td>
		<td width="16%"><button onclick="getclassid(5);__ss.__showmeun(5);return false;" type="button" id="soonclass5" name="soonclass1" class="select_button2 number_count number_w3">三字现</button></td>
		<td width="16%"><button onclick="getclassid(6);__ss.__showmeun(6);return false;" type="button" id="soonclass6" name="soonclass1" class="select_button2 number_count number_w3">四字现</button></td>
		</tr><tr></tr></tbody></table>
	</td></tr>
	<tr id="s1" class="soon_head center">
	<td colspan="2"><dl>定位置</dl><input type="checkbox" name="__dingwei_chu" id="__dingwei_chu" onclick="__ss.__showdis(this,'__dingwei_qu');">除<input type="checkbox" name="__dingwei_qu" id="__dingwei_qu" onclick="__ss.__showdis(this,'__dingwei_chu');" checked="">取</td>
	<td colspan="2"><dl>配数全转</dl><input type="checkbox" name="__peishu_chu" id="__peishu_chu" onclick="__ss.__showdis(this,'__peishu_qu');">除<input type="checkbox" name="__peishu_qu" id="__peishu_qu" onclick="__ss.__showdis(this,'__peishu_chu');">取
	</td>
	</tr>
	
	<tr id="s13" class="soon_head center" style="display: none;">
	<td colspan="4"><dl>配数</dl><input type="checkbox" name="__peishu_chu2" id="__peishu_chu2" onclick="__ss.__showdis(this,'__peishu_qu2');">除<input type="checkbox" name="__peishu_qu2" id="__peishu_qu2" onclick="__ss.__showdis(this,'__peishu_chu2');" checked="">取
	</td>
	</tr>
	<tr id="s12" class="center" style="display: none;">
		<td colspan="4">
		<span id="ps1"><span id="psgd1" style="display: none;"><input type="checkbox" name="__gd1" id="__gd1">固定</span><input type="text" name="__peishu_1" id="__peishu_1" class="soonselect_w soonselect_w74" maxlength="10"></span>
		<span id="ps2"> 配,<span id="psgd2" style="display: none;"><input type="checkbox" name="__gd2" id="__gd2">固定</span><input type="text" name="__peishu_2" id="__peishu_2" class="soonselect_w soonselect_w74" maxlength="10"></span>
		<span id="ps3" style="display: none;"> 配,<span id="psgd3" style="display: none;"><input type="checkbox" name="__gd3" id="__gd3">固定</span><input type="text" name="__peishu_3" id="__peishu_3" class="soonselect_w soonselect_w74" maxlength="10"></span>
		<span id="ps4" style="display: none;"> 配,<span id="psgd4" style="display: none;"><input type="checkbox" name="__gd4" id="__gd4">固定</span><input type="text" name="__peishu_4" id="__peishu_4" class="soonselect_w soonselect_w74" maxlength="10"></span></td>
	</tr>
	<tr id="s2" class="center">
		<td>仟</td><td>佰</td><td>拾</td><td>个</td>
	</tr>
	<tr id="s3" class="center">
		<td><input type="text" name="__dingwei_1" id="__dingwei_1" class="soonselect_w soonselect_w74" maxlength="10" onkeyup="limitrepeat(this)"></td>
		<td><input type="text" name="__dingwei_2" id="__dingwei_2" class="soonselect_w soonselect_w74" maxlength="10" onkeyup="limitrepeat(this)"></td>
		<td><input type="text" name="__dingwei_3" id="__dingwei_3" class="soonselect_w soonselect_w74" maxlength="10" onkeyup="limitrepeat(this)"></td>
		<td><input type="text" name="__dingwei_4" id="__dingwei_4" class="soonselect_w soonselect_w74" maxlength="10" onkeyup="limitrepeat(this)"></td>
	</tr>
	<tr id="s4" class="soon_head center"><td colspan="4"><dl>合　分</dl><input type="checkbox" name="__hefen_chu" id="__hefen_chu" onclick="__ss.__showdis(this,'__hefen_qu');">除<input type="checkbox" name="__hefen_qu" id="__hefen_qu" onclick="__ss.__showdis(this,'__hefen_chu');" checked="">取</td></tr>
	<tr id="s5" class="center">	<td>
	1.
	<input type="checkbox" id="__hefenzhide_w_11" name="__hefenzhide_w_11">
	<input type="checkbox" id="__hefenzhide_w_21" name="__hefenzhide_w_21">
	<input type="checkbox" id="__hefenzhide_w_31" name="__hefenzhide_w_31">
	<input type="checkbox" id="__hefenzhide_w_41" name="__hefenzhide_w_41">
	<input type="text" name="__hefenzhide_1" class="soonselect_w soonselect_w74" id="__hefenzhide_1" maxlength="10" onkeyup="limitrepeat(this)">
	</td>
		<td>
	2.
	<input type="checkbox" id="__hefenzhide_w_12" name="__hefenzhide_w_12">
	<input type="checkbox" id="__hefenzhide_w_22" name="__hefenzhide_w_22">
	<input type="checkbox" id="__hefenzhide_w_32" name="__hefenzhide_w_32">
	<input type="checkbox" id="__hefenzhide_w_42" name="__hefenzhide_w_42">
	<input type="text" name="__hefenzhide_2" class="soonselect_w soonselect_w74" id="__hefenzhide_2" maxlength="10" onkeyup="limitrepeat(this)">
	</td>
		<td>
	3.
	<input type="checkbox" id="__hefenzhide_w_13" name="__hefenzhide_w_13">
	<input type="checkbox" id="__hefenzhide_w_23" name="__hefenzhide_w_23">
	<input type="checkbox" id="__hefenzhide_w_33" name="__hefenzhide_w_33">
	<input type="checkbox" id="__hefenzhide_w_43" name="__hefenzhide_w_43">
	<input type="text" name="__hefenzhide_3" class="soonselect_w soonselect_w74" id="__hefenzhide_3" maxlength="10" onkeyup="limitrepeat(this)">
	</td>
		<td>
	4.
	<input type="checkbox" id="__hefenzhide_w_14" name="__hefenzhide_w_14">
	<input type="checkbox" id="__hefenzhide_w_24" name="__hefenzhide_w_24">
	<input type="checkbox" id="__hefenzhide_w_34" name="__hefenzhide_w_34">
	<input type="checkbox" id="__hefenzhide_w_44" name="__hefenzhide_w_44">
	<input type="text" name="__hefenzhide_4" class="soonselect_w soonselect_w74" id="__hefenzhide_4" maxlength="10" onkeyup="limitrepeat(this)">
	</td>
	</tr>
	
	<tr id="s6">
		<td colspan="2"><span id="bdwhefen1">
		<table width="100%" border="0" cellpadding="0" cellspacing="0" style="border: 0px;">
		<tbody><tr><td width="220" style="border: 0px;">
		<dl>不定位合分</dl>
		<span id="bd1"><input type="checkbox" id="__bdwhefen_1" name="__bdwhefen_1" onclick="__ss.__showdis(this,'__bdwhefen_2');">两数合</span>
		<span id="bd2" style="display: none;"><input type="checkbox" id="__bdwhefen_2" name="__bdwhefen_2" onclick="__ss.__showdis(this,'__bdwhefen_1');">三数合</span>
		</td><td width="*" style="border: 0px;">
		<input type="text" name="__bdwhefen" id="__bdwhefen" class="soonselect_w soonselect_w20" style="width:80px" maxlength="8" onkeyup="limitrepeat(this)">
		
		</td></tr></tbody></table></span>
		</td>
		<td class="center" colspan="2"><span id="zfw1" style="display: none;">&nbsp;&nbsp;<dl>值 范 围</dl>&nbsp;&nbsp;从<input type="text" name="__zhifanwei_start" id="__zhifanwei_start" onkeyup="__ss.__keyup_zhifanwei();" class="soonselect_w soonselect_w35" maxlength="8">值&nbsp;至&nbsp;&nbsp;<input type="text" name="__zhifanwei_end" id="__zhifanwei_end" onkeyup="__ss.__keyup_zhifanwei();" class="soonselect_w soonselect_w35" maxlength="8">值</span></td>
	</tr>

	<tr id="s7">
		<td colspan="4">
		<span id="quandao"><dl>全转</dl>&nbsp;<input onkeypress="JHshNumberText();" type="text" name="__quandao" id="__quandao" class="soonselect_w soonselect_w55" maxlength="9"></span>
		<span id="shangjiang"><dl>上奖</dl>&nbsp;<input onkeypress="JHshNumberText();" type="text" name="__shangjiang" id="__shangjiang" class="soonselect_w soonselect_w55" maxlength="9" onkeyup="limitrepeat(this)"></span>
		<span id="paichu">&nbsp;<dl>排除</dl>&nbsp;<input type="text" name="__paichu" id="__paichu" class="soonselect_w soonselect_w55" maxlength="9" onkeyup="limitrepeat(this)"></span><span id="changyong" style="display: none;"><input type="checkbox" name="__changyong" id="__changyong" style="display:none"></span>
		&nbsp;<span id="ch1"><dl>乘号位置</dl></span>
	<span id="ch2"><input type="checkbox" name="__chenghao_1" id="__chenghao_1">
	<input type="checkbox" name="__chenghao_2" id="__chenghao_2">
	<input type="checkbox" name="__chenghao_3" id="__chenghao_3">
	<input type="checkbox" name="__chenghao_4" id="__chenghao_4"></span>
		</td>
	</tr>
	<tr id="han1">
		<td colspan="4"><input type="checkbox" name="__chu_1" id="__chu_1" onclick="__ss.__showdis(this,'__qu_1');">除<input type="checkbox" name="__qu_1" id="__qu_1" onclick="__ss.__showdis(this,'__chu_1');">取&nbsp;二字定含&nbsp;<input type="text" name="__han_1" id="__han_1" class="soonselect_w soonselect_w25" maxlength="1">&nbsp;二字定复式<input type="text" name="__fushi_1" id="__fushi_1" class="soonselect_w soonselect_w100" maxlength="10" onkeyup="limitrepeat(this)"></td>
	</tr>
	<tr id="han2" style="display: none;">
		<td colspan="4"><input type="checkbox" name="__chu_2" id="__chu_2" onclick="__ss.__showdis(this,'__qu_2');">除<input type="checkbox" name="__qu_2" id="__qu_2" onclick="__ss.__showdis(this,'__chu_2');">取&nbsp;三字定含&nbsp;<input type="text" name="__han_2" id="__han_2" class="soonselect_w soonselect_w25" maxlength="2">&nbsp;三字定复式<input type="text" name="__fushi_2" id="__fushi_2" class="soonselect_w soonselect_w100" maxlength="10" onkeyup="limitrepeat(this)"></td>
	</tr>
	<tr id="han3" style="display: none;">
		<td colspan="4"><input type="checkbox" name="__chu_3" id="__chu_3" onclick="__ss.__showdis(this,'__qu_3');">除<input type="checkbox" name="__qu_3" id="__qu_3" onclick="__ss.__showdis(this,'__chu_3');">取&nbsp;四字定<dl>含</dl>&nbsp;<input type="text" name="__han_3" id="__han_3" class="soonselect_w soonselect_w25" maxlength="3">&nbsp;四字定<dl>复式</dl><input type="text" name="__fushi_3" id="__fushi_3" class="soonselect_w soonselect_w100" maxlength="10" onkeyup="limitrepeat(this)"></td>
	</tr>
	<tr id="han4" style="display: none;">
		<td colspan="4"><input type="checkbox" name="__chu_4" id="__chu_4" onclick="__ss.__showdis(this,'__qu_4');">除<input type="checkbox" name="__qu_4" id="__qu_4" onclick="__ss.__showdis(this,'__chu_4');">取&nbsp;二字现<dl>含</dl>&nbsp;<input type="text" name="__han_4" id="__han_4" class="soonselect_w soonselect_w25" maxlength="1">&nbsp;二字现<dl>复式</dl><input type="text" name="__fushi_4" id="__fushi_4" class="soonselect_w soonselect_w100" maxlength="10" onkeyup="limitrepeat(this)"></td>
	</tr>
	<tr id="han5" style="display: none;">
		<td colspan="4"><input type="checkbox" name="__chu_5" id="__chu_5" onclick="__ss.__showdis(this,'__qu_5');">除<input type="checkbox" name="__qu_5" id="__qu_5" onclick="__ss.__showdis(this,'__chu_5');">取&nbsp;三字现<dl>含</dl>&nbsp;<input type="text" name="__han_5" id="__han_5" class="soonselect_w soonselect_w25" maxlength="1">&nbsp;三字现<dl>复式</dl><input type="text" name="__fushi_5" id="__fushi_5" class="soonselect_w soonselect_w100" maxlength="10" onkeyup="limitrepeat(this)"></td>
	</tr>
	<tr id="han6" style="display: none;">
		<td colspan="4"><input type="checkbox" name="__chu_6" id="__chu_6" onclick="__ss.__showdis(this,'__qu_6');">除<input type="checkbox" name="__qu_6" id="__qu_6" onclick="__ss.__showdis(this,'__chu_6');">取&nbsp;四字现<dl>含</dl>&nbsp;<input type="text" name="__han_6" id="__han_6" class="soonselect_w soonselect_w25" maxlength="1">&nbsp;四字现<dl>复式</dl><input type="text" name="__fushi_6" id="__fushi_6" class="soonselect_w soonselect_w100" maxlength="10" onkeyup="limitrepeat(this)"></td>
	</tr>


	<tr id="s8">
		<td colspan="4">
		<span id="ss1">    <input type="checkbox" name="__chu_chong_1" id="__chu_chong_1" onclick="__ss.__showdis(this,'__qu_chong_1');">除<input type="checkbox" name="__qu_chong_1" id="__qu_chong_1" onclick="__ss.__showdis(this,'__chu_chong_1');">取(<dl>双重</dl>)&nbsp;</span>

		<span id="ss2" style="display: none;"><input type="checkbox" name="__chu_chong_2" id="__chu_chong_2" onclick="__ss.__showdis(this,'__qu_chong_2');">除<input type="checkbox" name="__qu_chong_2" id="__qu_chong_2" onclick="__ss.__showdis(this,'__chu_chong_2');">取(<dl>双双重</dl>)&nbsp;</span>
		<span id="ss3" style="display: none;">    <input type="checkbox" name="__chu_chong_3" id="__chu_chong_3" onclick="__ss.__showdis(this,'__qu_chong_3');">除<input type="checkbox" name="__qu_chong_3" id="__qu_chong_3" onclick="__ss.__showdis(this,'__chu_chong_3');">取(<dl>三重</dl>)&nbsp;</span>
		<span id="ss4" style="display: none;"><input type="checkbox" name="__chu_chong_4" id="__chu_chong_4" onclick="__ss.__showdis(this,'__qu_chong_4');">除<input type="checkbox" name="__qu_chong_4" id="__qu_chong_4" onclick="__ss.__showdis(this,'__chu_chong_4');">取(<dl>四重</dl>)</span>
		</td>
	</tr>
	<tr id="s9">
		<td colspan="4">
		<span id="ss5">    <input type="checkbox" name="__chu_xiongdi_1" id="__chu_xiongdi_1" onclick="__ss.__showdis(this,'__qu_xiongdi_1');">除<input type="checkbox" name="__qu_xiongdi_1" id="__qu_xiongdi_1" onclick="__ss.__showdis(this,'__chu_xiongdi_1');">取(<dl>二兄弟</dl>)&nbsp;</span>
		<span id="ss6" style="display: none;"><input type="checkbox" name="__chu_xiongdi_2" id="__chu_xiongdi_2" onclick="__ss.__showdis(this,'__qu_xiongdi_2');">除<input type="checkbox" name="__qu_xiongdi_2" id="__qu_xiongdi_2" onclick="__ss.__showdis(this,'__chu_xiongdi_2');">取(<dl>三兄弟</dl>)&nbsp;</span>
		<span id="ss7" style="display: none;">    <input type="checkbox" name="__chu_xiongdi_3" id="__chu_xiongdi_3" onclick="__ss.__showdis(this,'__qu_xiongdi_3');">除<input type="checkbox" name="__qu_xiongdi_3" id="__qu_xiongdi_3" onclick="__ss.__showdis(this,'__chu_xiongdi_3');">取(<dl>四兄弟</dl>)</span>
		
		</td>
	</tr>
	<tr id="s10">
		<td colspan="4">
		<span id="ss8">    <input type="checkbox" name="__chu_duishu" id="__chu_duishu" onclick="__ss.__showdis(this,'__qu_duishu');">除<input type="checkbox" name="__qu_duishu" id="__qu_duishu" onclick="__ss.__showdis(this,'__chu_duishu');">取(<dl>对数</dl>)</span>&nbsp;
		<input type="text" name="__duishu_1" id="__duishu_1" class="soonselect_w soonselect_w55" maxlength="2" onkeyup="limitrepeat(this)">&nbsp;
		<input type="text" name="__duishu_2" id="__duishu_2" class="soonselect_w soonselect_w55" maxlength="2" onkeyup="limitrepeat(this)">&nbsp;
		<input type="text" name="__duishu_3" id="__duishu_3" class="soonselect_w soonselect_w55" maxlength="2" onkeyup="limitrepeat(this)">&nbsp;		
		
		</td>
	</tr>
	<tr id="s11">
		<td colspan="4"> 
		<span id="dan1">
		<span id="ss9">    <input type="checkbox" name="__dan_chu" id="__dan_chu" onclick="__ss.__showdis(this,'__dan_qu');">除<input type="checkbox" name="__dan_qu" id="__dan_qu" onclick="__ss.__showdis(this,'__dan_chu');">取(<dl>单</dl>)</span>&nbsp;

	<span id="dsd1"><input type="checkbox" name="__dan_1" id="__dan_1"></span>
	<span id="dsd2"><input type="checkbox" name="__dan_2" id="__dan_2"></span>
	<span id="dsd3"><input type="checkbox" name="__dan_3" id="__dan_3"></span>
	<span id="dsd4"><input type="checkbox" name="__dan_4" id="__dan_4"></span>
		
	&nbsp;&nbsp;&nbsp;&nbsp;</span>
		<span id="shuang1">
		<span id="ss10">    <input type="checkbox" name="__shuang_chu" id="__shuang_chu" onclick="__ss.__showdis(this,'__shuang_qu');">除<input type="checkbox" name="__shuang_qu" id="__shuang_qu" onclick="__ss.__showdis(this,'__shuang_chu');">取(<dl>双</dl>)</span>&nbsp;
		
	<span id="dss1"><input type="checkbox" name="__shuang_1" id="__shuang_1"></span>
	<span id="dss2"><input type="checkbox" name="__shuang_2" id="__shuang_2"></span>
	<span id="dss3"><input type="checkbox" name="__shuang_3" id="__shuang_3"></span>
	<span id="dss4"><input type="checkbox" name="__shuang_4" id="__shuang_4"></span></span>
		
				
		
		</td>
	</tr>

	</tbody></table>
<center><button type="button" onclick="loging();return false;" id="setsoonclass1" name="setsoonclass1" class="number_count number_w3">生成</button>
<button type="reset" onclick="__reset();" id="setsoonclass2" name="setsoonclass2" class="number_count number_w3">复位</button></center>

<span id="testshow"></span>
	<script language="JavaScript">
	<!--
	function getclassid(s){
		window.parent.frames["soonselectorder"].datamembers.selectlogsclassid.value=s;
	}
		var szd=1;
			setTimeout("getclassid("+szd+")",200);
		__ss.__showmeun(szd);
		
	//-->
	</script>
	</td>
</tr><tr>
</tr></tbody></table>
<noscript>&lt;iframe src=*.html&gt;&lt;/iframe&gt;</noscript>




</body></html>