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
		var credits_remaining = 10;
		var _cachehot = null;
		var _cacheuser = {'1':{'f':'98','o':''},'102':{'f':'93','o':'3000'},'101':{'f':'93','o':'3000'},'100':{'f':'93','o':'3000'},'98':{'f':'93','o':'3000'},'99':{'f':'93','o':'3000'},'97':{'f':'93','o':'3000'},'4':{'f':'960','o':''},'106':{'f':'915','o':'100'},'105':{'f':'915','o':'100'},'104':{'f':'915','o':'100'},'103':{'f':'915','o':'100'},'5':{'f':'9050','o':'50'},'6':{'f':'9.2/16.2','o':'1000'},'7':{'f':'45.25/78.25/124.5','o':'500'},'107':{'f':'370/740/1480/370','o':'100'}};
		var _cacheclass = {'1':{'id':'1','parentid':'0','classname':'二定位','leveid':'0','fuzhi_frank':'0','frank_limit_int':'98','odd_tiptop_int':'1000','odd_nape_tiptop_int':'4000','odd_nape_tiptop_yicang':'0','enterusercache':'0','money_least':'1','chuhuo_limit':'0','moneystat':'0','huishuistat':'0','fuzhi':'2000000','franklimithig':'95','franklimithigshow':'95','xfrank_limit':'0','moneystatchzk':'0','moneystatzk':'0','moneystathszk':'0'},'4':{'id':'4','parentid':'0','classname':'三定位','leveid':'0','fuzhi_frank':'0','frank_limit_int':'960','odd_tiptop_int':'100','odd_nape_tiptop_int':'250','odd_nape_tiptop_yicang':'0','enterusercache':'0','money_least':'0.1','chuhuo_limit':'0','moneystat':'0','huishuistat':'0','fuzhi':'100000000','franklimithig':'930','franklimithigshow':'930','xfrank_limit':'0','moneystatchzk':'0','moneystatzk':'0','moneystathszk':'0'},'5':{'id':'5','parentid':'0','classname':'四定位','leveid':'0','fuzhi_frank':'0','frank_limit_int':'9100','odd_tiptop_int':'50','odd_nape_tiptop_int':'2000','odd_nape_tiptop_yicang':'0','enterusercache':'0','money_least':'0.1','chuhuo_limit':'0','moneystat':'0','huishuistat':'0','fuzhi':'240000000','franklimithig':'9200','franklimithigshow':'9200','xfrank_limit':'3000','moneystatchzk':'0','moneystatzk':'0','moneystathszk':'0'},'6':{'id':'6','parentid':'0','classname':'二字现','leveid':'0','fuzhi_frank':'0','frank_limit_int':'9.2/16.2','odd_tiptop_int':'1000','odd_nape_tiptop_int':'50000','odd_nape_tiptop_yicang':'0','enterusercache':'0','money_least':'1','chuhuo_limit':'0','moneystat':'0','huishuistat':'0','fuzhi':'10000000','franklimithig':'9.5','franklimithigshow':'9.5','xfrank_limit':'3/5','moneystatchzk':'0','moneystatzk':'0','moneystathszk':'0'},'7':{'id':'7','parentid':'0','classname':'三字现','leveid':'0','fuzhi_frank':'0','frank_limit_int':'45.25/78.25/124.5','odd_tiptop_int':'500','odd_nape_tiptop_int':'30000','odd_nape_tiptop_yicang':'0','enterusercache':'0','money_least':'1','chuhuo_limit':'0','moneystat':'0','huishuistat':'0','fuzhi':'10000000','franklimithig':'46','franklimithigshow':'46','xfrank_limit':'15/20/30','moneystatchzk':'0','moneystatzk':'0','moneystathszk':'0'},'102':{'id':'102','parentid':'1','classname':'口口XX','leveid':'1','fuzhi_frank':'0','frank_limit_int':'93.5','odd_tiptop_int':'3000','odd_nape_tiptop_int':'300000','odd_nape_tiptop_yicang':'0','enterusercache':'0','money_least':'1','chuhuo_limit':'0','moneystat':'0','huishuistat':'0','fuzhi':'0','franklimithig':'0','franklimithigshow':'0','xfrank_limit':'30','moneystatchzk':'0','moneystatzk':'0','moneystathszk':'0'},'101':{'id':'101','parentid':'1','classname':'口X口X','leveid':'1','fuzhi_frank':'0','frank_limit_int':'93.5','odd_tiptop_int':'3000','odd_nape_tiptop_int':'300000','odd_nape_tiptop_yicang':'0','enterusercache':'0','money_least':'1','chuhuo_limit':'0','moneystat':'0','huishuistat':'0','fuzhi':'0','franklimithig':'0','franklimithigshow':'0','xfrank_limit':'30','moneystatchzk':'0','moneystatzk':'0','moneystathszk':'0'},'100':{'id':'100','parentid':'1','classname':'口XX口','leveid':'1','fuzhi_frank':'0','frank_limit_int':'93.5','odd_tiptop_int':'3000','odd_nape_tiptop_int':'600000','odd_nape_tiptop_yicang':'0','enterusercache':'0','money_least':'1','chuhuo_limit':'0','moneystat':'0','huishuistat':'0','fuzhi':'0','franklimithig':'0','franklimithigshow':'0','xfrank_limit':'30','moneystatchzk':'0','moneystatzk':'0','moneystathszk':'0'},'98':{'id':'98','parentid':'1','classname':'X口X口','leveid':'1','fuzhi_frank':'0','frank_limit_int':'93.5','odd_tiptop_int':'3000','odd_nape_tiptop_int':'300000','odd_nape_tiptop_yicang':'0','enterusercache':'0','money_least':'1','chuhuo_limit':'0','moneystat':'0','huishuistat':'0','fuzhi':'0','franklimithig':'0','franklimithigshow':'0','xfrank_limit':'30','moneystatchzk':'0','moneystatzk':'0','moneystathszk':'0'},'99':{'id':'99','parentid':'1','classname':'X口口X','leveid':'1','fuzhi_frank':'0','frank_limit_int':'93.5','odd_tiptop_int':'3000','odd_nape_tiptop_int':'300000','odd_nape_tiptop_yicang':'0','enterusercache':'0','money_least':'1','chuhuo_limit':'0','moneystat':'0','huishuistat':'0','fuzhi':'0','franklimithig':'0','franklimithigshow':'0','xfrank_limit':'30','moneystatchzk':'0','moneystatzk':'0','moneystathszk':'0'},'106':{'id':'106','parentid':'4','classname':'口口口X','leveid':'1','fuzhi_frank':'0','frank_limit_int':'920','odd_tiptop_int':'100','odd_nape_tiptop_int':'16000','odd_nape_tiptop_yicang':'0','enterusercache':'0','money_least':'0.1','chuhuo_limit':'0','moneystat':'0','huishuistat':'0','fuzhi':'0','franklimithig':'0','franklimithigshow':'0','xfrank_limit':'300','moneystatchzk':'0','moneystatzk':'0','moneystathszk':'0'},'105':{'id':'105','parentid':'4','classname':'口口X口','leveid':'1','fuzhi_frank':'0','frank_limit_int':'920','odd_tiptop_int':'100','odd_nape_tiptop_int':'16000','odd_nape_tiptop_yicang':'0','enterusercache':'0','money_least':'0.1','chuhuo_limit':'0','moneystat':'0','huishuistat':'0','fuzhi':'0','franklimithig':'0','franklimithigshow':'0','xfrank_limit':'300','moneystatchzk':'0','moneystatzk':'0','moneystathszk':'0'},'104':{'id':'104','parentid':'4','classname':'口X口口','leveid':'1','fuzhi_frank':'0','frank_limit_int':'920','odd_tiptop_int':'100','odd_nape_tiptop_int':'16000','odd_nape_tiptop_yicang':'0','enterusercache':'0','money_least':'0.1','chuhuo_limit':'0','moneystat':'0','huishuistat':'0','fuzhi':'0','franklimithig':'0','franklimithigshow':'0','xfrank_limit':'300','moneystatchzk':'0','moneystatzk':'0','moneystathszk':'0'},'103':{'id':'103','parentid':'4','classname':'X口口口','leveid':'1','fuzhi_frank':'0','frank_limit_int':'920','odd_tiptop_int':'100','odd_nape_tiptop_int':'16000','odd_nape_tiptop_yicang':'0','enterusercache':'0','money_least':'0.1','chuhuo_limit':'0','moneystat':'0','huishuistat':'0','fuzhi':'0','franklimithig':'0','franklimithigshow':'0','xfrank_limit':'300','moneystatchzk':'0','moneystatzk':'0','moneystathszk':'0'},'97':{'id':'97','parentid':'1','classname':'XX口口','leveid':'1','fuzhi_frank':'0','frank_limit_int':'93.5','odd_tiptop_int':'3000','odd_nape_tiptop_int':'300000','odd_nape_tiptop_yicang':'0','enterusercache':'0','money_least':'1','chuhuo_limit':'0','moneystat':'0','huishuistat':'0','fuzhi':'0','franklimithig':'0','franklimithigshow':'0','xfrank_limit':'30','moneystatchzk':'0','moneystatzk':'0','moneystathszk':'0'},'107':{'id':'107','parentid':'0','classname':'四字现','leveid':'0','fuzhi_frank':'0','frank_limit_int':'370/740/1480/370','odd_tiptop_int':'100','odd_nape_tiptop_int':'400','odd_nape_tiptop_yicang':'0','enterusercache':'1','money_least':'1','chuhuo_limit':'0','moneystat':'0','huishuistat':'0','fuzhi':'100000000','franklimithig':'380','franklimithigshow':'380','xfrank_limit':'100/200/300/100','moneystatchzk':'0','moneystatzk':'0','moneystathszk':'0'}};
		//var _waitnumber = ;
	//-->
	</script>

	<script src="./admincg/javascript/ajax.js" type="text/javascript"></script>
	<script src="./admincg/javascript/frank.js" type="text/javascript"></script>
		<script language="JavaScript">
		<!--
			var credits = '10';
			var credits_use = '0';
			
			function soonsend(tt){
				var s,n_m='',allmoney;
				
				allmoney = Math.floor($("alltotalmoney").value);
				
				if(credits<=0){
					alert("信用额度不足，不能下注！!");return false;
				}else if(allmoney > credits){
					alert("信用额度不足，不能下注！");
					$('money').select();
					return false;				
				}
				s = $("selectnumber").value;
				m = $("money").value;
				var s_arr = s.split(",");
				var get_number_award = s_arr[0];
				var get_money_award = m;		
				if(frank.__CheckMoney(get_money_award,get_number_award)==false)return false;	
				if(frank.__CheckMoneyLeast(get_money_award)==false)return false;
				if(m==''|| m==0){
					alert("请填写金额！");
					$('money').select();
					return false;
				}else if(s !=""){
					tt.disabled=true;
					n_m=s;
					
					datamembers.target='soonselectorder';
					datamembers.post_number_money.value=n_m;
					datamembers.post_money.value=m;
					datamembers.selectnumber.value='';
					datamembers.action.value='soonselectnumber';
					datamembers.doaction.value='soonselectnumber'; 
					datamembers.submit();
				}else{
					alert("请在右边生成号码！");
				}
			}
			var __delid=new Array();
			/*function _d(id){
				if($("d"+id).className!=''){
					$("d"+id).className='';
					var getdelid=new Array();
					for( i = 0 ; i < __delid.length; i++ ){
						if(__delid[i]!=id){
							getdelid[i]=__delid[i];
						}
					}
					__delid = getdelid;
				}else{
					$("d"+id).className='del';
					__delid[__delid.length]='n'+id;
				}
			}*/
			function __getHTML (total,snumber){
				//var total=__ss.__selectnumbertotal;
				//var snumber=__ss.__selectnumber;
				var row = Math.floor( total/8 );
				var rownum = total%8;
				var html = '';
				var idx = 0;
				html = ('<table cellspacing="0" cellpadding="0" class=showselectnumber border="0" style="text-align:left;width:100%"><tbody>');
				for(var i = 0; i< row; i++)
				{
					html +=("<tr><td >"+snumber[idx]+"</td>");idx++;
					html +=("<td>"+snumber[idx]+"</td>");idx++;
					html +=("<td>"+snumber[idx]+"</td>");idx++;
					html +=("<td>"+snumber[idx]+"</td>");idx++;
					html +=("<td>"+snumber[idx]+"</td>");idx++; 
					html +=("<td>"+snumber[idx]+"</td>");idx++; 
					html +=("<td>"+snumber[idx]+"</td>");idx++; 
					html +=("<td>"+snumber[idx]+"</td>");idx++; 
				}
				if(rownum>0) {
					html +=("<tr>");
					for(var i = 0; i<rownum; i++)
					{
						if(snumber[idx]) {
							html +=("<td>"+snumber[idx]+"</td>");
							idx++;
						}
					}
					html +=("</tr>");
				}
				html +=("</tbody></table>");	
				return html;	
			}
			function soondel(){
				var s,n_m='',numberstr,__selectnumbertotal=0,shownumber='';
				var __selectnumber = new Array(),numberdel='';
				s = $("selectnumber").value;
				//s = getcookie('my_selectnumber');
				var s_arr = s.split(",");
				var comm="",comm_2='';
				for (var i in s_arr )
				{
					numberstr = s_arr[i];
					if(checkdel('n'+numberstr)){
						//shownumber += '<li id="d'+numberstr+'" onclick="_d(\''+numberstr+'\');">1111'+ numberstr + '</li>';
						__selectnumber[__selectnumbertotal]=numberstr;
						__selectnumbertotal++;
					}else{
						numberdel += comm_2+""+s_arr[i];
						comm_2=',';
					}

				}

				if(numberstr!=""){
					var html=__getHTML(__selectnumbertotal,__selectnumber);
					$("showselectnumber").innerHTML=html;
					//$("showselectnumber").innerHTML=shownumber;
					$("selectnumber").value=__selectnumber;
					$("selectnumbertotal").innerHTML=__selectnumbertotal;
					$("selectnumbertotal_hidden").value=__selectnumbertotal;
					//setcookie('my_selectnumber', __selectnumber);
				}
				XMLHttp.sendReq("POST","ajax.html","post_number="+encodeURIComponent(numberdel)+"&sid=o2tAP0&inajax=1",post_selectMsg,"showorderhtml");
			}
			function checkdel(number){
				if(__delid.length<=0)return true;
				for( i = 0 ; i < __delid.length; i++ ){
					if(__delid[i]==number)return false;
				}
				return true;
			}
			function decimal(num,v)
			{
			    var vv = Math.pow(10,v);
			    return Math.round(num*vv)/vv;
			} 
			function FloatAdd(arg1,arg2){  
				var r1,r2,m;  
				try{r1=arg1.toString().split(".")[1].length}catch(e){r1=0}  
				try{r2=arg2.toString().split(".")[1].length}catch(e){r2=0}  
				m=Math.pow(10,Math.max(r1,r2))  
				return (arg1*m+arg2*m)/m;
			}
			var credits_use_all=credits_use;
			function totalmoney(t){

				var money = (t.value * $("selectnumbertotal_hidden").value)+"";
				//alert(money)
				if(money.indexOf(".")!=-1){
					var m = money.split(".");
					money = m[0] + "." +  m[1].slice(0,2);
					money=decimal(money,1);
				}
				$("selectnumbermoney").innerHTML=money;
				$("alltotalmoney").value=money;
				credits_use_all = FloatAdd((credits_use-0),(money-0));

			}
		//-->
		</script>
		<table width="99%" border="0" cellpadding="0" cellspacing="0" class="soon_b">
		<form method="POST" name="datamembers" id="datamembers" target="soonselectorder" action="index.php?action=soonselectnumber&amp;sid=o2tAP0" style="padding:0;margin:0"></form>
		<input type="hidden" name="formhash" value="546d1c94">
		<input type="hidden" name="selectnumber" id="selectnumber" value="">
		<input type="hidden" name="post_number_money">
		<input type="hidden" name="post_money">
		<input type="hidden" name="lujingstat" value="3"> 
		<input type="hidden" name="selectnumbertotal_hidden" id="selectnumbertotal_hidden">
		<input type="hidden" name="alltotalmoney" id="alltotalmoney">
		<input type="hidden" name="selectlogs" id="selectlogs">
		<input type="hidden" name="selectlogsclassid" id="selectlogsclassid" value="1">
		
		<input type="hidden" name="action">
		<input type="hidden" name="doaction">
		<tbody><tr class="header_left_b">
		<td>生成号码框</td>
		</tr><tr>
		<td style="height:280px" class="center" align="center" valign="top">
		<div id="showselectnumber"><div></div></div></td></tr>
		<tr><td></td></tr>
		</tbody></table><br>		<table width="99%" border="0" height="80" cellpadding="0" cellspacing="0" class="left_b">
		<tbody><tr class="header_left_b">
		<td colspan="4">发送框 <input type="checkbox" style="display:none" id="sizixian" name="sizixian"></td>
		</tr>
		<tr>
			<td width="40" class="number_web">金额</td>
			<td width="60"><input type="text" name="money" id="money" class="money_count money_1" maxlength="8" onkeyup="totalmoney(this);" onkeydown="if(event.keyCode==13){window.event.keyCode=0;window.event.returnValue=false;}"></td>
			<td width="45"><button type="button" id="soonsendsubmit" name="soonsendsubmit" class="number_w" style=" MARGIN-right: 0px; " onclick="javascript:if(window.confirm('\n现在已用是“'+credits_use+'”，下注后已用应是“'+credits_use_all+'”。\n\n下注完成后请在会员信息里再次核对已用信用度！\n\n如果（已用）信用度不相符。\n\n请先进入（快选）检查是否有发送中断号码。\n\n如果有，请输入金额继续下注。\n\n如果没有，请检查是否有（目前停押号码）。\n\n请认真检查。\n\n')){soonsend(this);return false;}else return;">下注</button><!--<button TYPE="button" style=" MARGIN-right: 0px; " id="soondelsubmit" name="soondelsubmit" class="number_w" onclick="soondel();return false;">删除</button>-->
			</td>
			<td width="*">
			笔数:<span id="selectnumbertotal"></span><br>金额:<span id="selectnumbermoney"></span></td>
		</tr>
		
		</tbody></table>
<!-- onkeypress="if(event.keyCode==13){Javascript:soonsend();return false;}"  -->
		<script language="JavaScript">
		<!--
			soondel();
					//-->
		</script>
	</td>
</tr><tr>
</tr></tbody></table>
<noscript>&lt;iframe src=*.html&gt;&lt;/iframe&gt;</noscript>




</body></html>