<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html xmlns="http://www.w3.org/1999/xhtml"><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7">
<link rel="stylesheet" type="text/css" id="css" href="./admincg/images/v2_default_5/members.css">
<title>Wellcome</title>
<script src="./admincg/javascript/common.js" type="text/javascript"></script>
<style>
.td1 {
	FONT-FAMILY: Verdana; FONT-SIZE: 10pt;  TEXT-DECORATION: none;
	BACKGROUND-COLOR: white
}
.td2 {
	FONT-FAMILY: Verdana; FONT-SIZE: 10pt;  TEXT-DECORATION: none;
	BACKGROUND-COLOR: #ffff00
}
.c1 {
	BACKGROUND-COLOR: #F3D8D6; TEXT-ALIGN: center;
	font-family: Verdana; font-size: 9pt; COLOR: #202040 
}
.indw{width:20px;margin:0;padding:0;}
</style>
<style>html{overflow-y:scroll;}</style>
</head>
<body style="margin: 0px">

<table width="100%" border="0" cellpadding="0" cellspacing="0" align="center">
<tbody><tr>
<td style="padding:0 10px">
	<script language="JavaScript">
<!--

/*function acturl(t,childid){
  self.location = "index.php?action=numberfrank&amp;c="+t+"&childid="+childid;
}*/

groupid = "";
realid = "";

qCarHead = "";
qCarTail = "";
qChoDiv = "";
qChoTwo = "";

function soonsend(tt){

	var gon_EZ = eval("form1.on_EZ")
	var comm='';
	realid='';
	for(var i=0;i<=gon_EZ.length-1;i++ ){
		//ii = parseInt(i<10 ?  "0"+""+i : i);
		if(gon_EZ[i].checked){
			 if(i<10)
			 realid += comm+""+eval("form1.id0"+i).value ;
			 else
			 realid += comm+""+eval("form1.id"+i).value ;
			 comm=",";
		}
	}

  if (realid == ""){
    alert("请选择号码!");
    return false;
  }else{

	var n_m = realid;
	var m = form1.amount.value;
	var credits_remaining = 10;
	var num = n_m.split(',');
	var nummoney = num.length * m;

	if(m==0){
		alert("请填写金额!");
		$("amount").select();
		return false;
	}else if(m > 3000){
		alert("请填写金额不能大于3000!");
		$("amount").select();
		return false;
	}else if (nummoney > credits_remaining||credits_remaining<=0){
		alert("信用额度不足!");
		$("amount").select();
		return false;		
	}
	
	//form1.target='soonnotsucceed';
	form1.post_number_money.value=n_m;
	form1.post_money.value=m;
	form1.action.value='soonselectnumber';
	form1.doaction.value='soonselectnumber';
	form1.submit();  
	tt.disabled=true;	
  	//return true;
  }
}

function write_td2(no){       
  document.write('<td>&nbsp;</td>');  
}

	function BHry(cType,theSn,theMode)
	{
		var cJsm ;
		var cVtn ;
		var onSn ;
		var ihav = 100-document.form1.countslt.value ;

		if (ihav>0 ) 
		{
				var num=0;
				if(realid=='') comm='';
			    for(i=0; i < ihav; i++)
			    {	
				    if (theMode==0)
				    { onSn = (theSn-1) + i*10 ; }
				    else{ onSn = (theSn-1)*10 + i ; }
				    cJsm = "document.all.on_" + cType + "[" + onSn +"]!=null" ;
				    cVtn = eval(cJsm) ;
				    //alert(cJsm+" is " + cVtn) ;
				    if (cVtn)
				    {
					    cJsm = "document.all.on_" + cType + "[" + onSn +"].checked==true" ;
					    cVtn = eval(cJsm) ;
					    if (cVtn){	
						    cJsm = "document.all.on_" + cType + "[" + onSn + "].value";
						    cJsm=eval(cJsm) ;			
					    	document.form1.countslt.value-- ;		
						    cJsm = "document.all.id_" + cJsm + ".className='td1';";				    
						    cJsm+= "document.all.on_" + cType + "[" + onSn +"].checked=false;" ;
						    eval(cJsm) ;					    				    	
					    }else{
				    	
					    
					    cJsm = "document.all.on_" + cType + "[" + onSn + "].value";
					    cJsm=eval(cJsm) ;
					    document.form1.countslt.value++ ;
					    cJsm = "document.all.id_" + cJsm + ".className='td2';";				    
					    cJsm+= "document.all.on_" + cType + "[" + onSn +"].checked=true;" ;
					    eval(cJsm) ;
					    }
						$('numbertotal').innerHTML=document.form1.countslt.value;
						$('numbertotalmoney').innerHTML=document.form1.countslt.value*$('amount').value;
					    //alert("document.all.on_" + cType + "[" + onSn +"]") ;
				    }
				    num=num+1;
				    if(num==10){
				    	return false;
				    }
			    }
   
			//document.form1.submit();
		}
		else
		{
			alert("已经选够码了!") ;
		}
	}
	function ChkSelect(newlength)
	{
		var aftlenght=0 ;
		aftlenght=document.form1.countslt.value*1 + newlength*1 ;
		if (aftlenght>100){
			alert('不能选择超过10个码,请重选!') ;
			return false ;
			}
		else{
			return true ;
			}
	}



    function Tg(d,ee)
    {
		e = eval("form1."+ee)
		if (e.value!='')
		{
			var n_oldslt=document.form1.countslt.value*1 ;
			if (d.className=='td2') 
			{
			  e.checked=false ;
			  d.className='td1';
			  document.form1.countslt.value=n_oldslt - 1 ;
			}
			else
			{
			if (ChkSelect(1)) {
			  e.checked=true ;
			  d.className='td2';
			  document.form1.countslt.value=n_oldslt + 1 ;
			  }
			 else
			  {
				if(e.checked==true )
				  {
					e.checked=false;
				  }
				 
				   
			  }
			}
			$('numbertotal').innerHTML=document.form1.countslt.value;
			$('numbertotalmoney').innerHTML=document.form1.countslt.value*$('amount').value;
		}
    }

    function Tre1(nSorD)
    {
		var cJsm , cVtn , cOdw , aOdw , nVdc ;
		
		if (nSorD==0||nSorD==1)
		{	cOdw = document.form1.currendw.value + ",ok" ;
			aOdw = cOdw.split(',');
			nSorD = 1 ;
		}
		else
		{	aOdw = document.form1.currendw.value.split(',');	
			nSorD = aOdw.length-1 ;
		}
		if (nSorD>0)
		{
			for(j=0; j < nSorD; j++)
			{
				cOdw = aOdw[j]
				cJsm = "document.all.on_" + cOdw + ".length";
				nVdc=eval(cJsm) ;
				for(i=0; i < nVdc; i++)
				{
					cJsm = "document.all.on_" + cOdw + "[" + i + "].checked == true";
					cVtn=eval(cJsm) ;
					if (cVtn==true)
					{

					cJsm = "document.all.on_" + cOdw + "[" + i + "].value";
					cJsm=eval(cJsm) ;

					cJsm = "document.all.id_" + cJsm + ".className='td1';";
					cJsm+= "document.all.on_" + cOdw + "[" + i + "].checked = false;";
					eval(cJsm) ;
					}
				}
			}
			document.form1.amount.value='';
		}

		document.form1.countslt.value=0 ;
		$('numbertotal').innerHTML=0;
		$('numbertotalmoney').innerHTML=0;

	  qCarHead = "";
	  qCarTail = "";
	  qChoDiv = "";
	  qChoTwo = "";
	  
	  for(i=0;i<=9;i++){
	    eval("form1.choDiv"+i).style.backgroundColor="";
	  }
	  for(i=4;i<=5;i++){
	    eval("form1.choTwo"+i).style.backgroundColor="";
	  }
	  for(i=0;i<=13;i++){
	    eval("form1.carHead"+i).style.backgroundColor="";
	    eval("form1.carTail"+i).style.backgroundColor="";
	  }
	}

//-->
</script>
	<form name="form1" method="post" action="index.php?action=soonselectnumber">
	<input type="hidden" name="formhash" value="546d1c94">
	<input type="hidden" name="post_number_money">
	<input type="hidden" name="post_money">
	<input type="hidden" name="action">
	<input type="hidden" name="doaction"> 
	<input type="hidden" name="lujingstat" value="1"> 
	<input type="hidden" value="0" name="countslt">
	<input type="hidden" value="A" name="currends">
	<input type="hidden" value="EZ" name="currendw">
	<input type="hidden" value="" name="currendc">
	<table width="100%" border="0" cellpadding="0" cellspacing="0" class="numberfrank">
	<tbody><tr class="header_left_b">
	<td colspan="2">
		 <button type="button" style="height: 22px;line-height: 19px;font: 12px Arial, Helvetica, sans-serif;" onclick=" moshi();" id="submit1">模式2</button>&nbsp;&nbsp;
		类别 &nbsp;&nbsp;&nbsp;&nbsp;<a href="###" onclick="info(1,102);jsclassname(&quot;口口XX&quot;,102,this);" id="childid0" style="" class="meuntop">口口XX</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="###" onclick="info(1,101);jsclassname(&quot;口X口X&quot;,101,this);" id="childid1" style="" class="meuntop">口X口X</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="###" onclick="info(1,100);jsclassname(&quot;口XX口&quot;,100,this);" id="childid2" style="color:#FF0000;" class="meuntop">口XX口</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="###" onclick="info(1,98);jsclassname(&quot;X口X口&quot;,98,this);" id="childid3" style="" class="meuntop">X口X口</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="###" onclick="info(1,99);jsclassname(&quot;X口口X&quot;,99,this);" id="childid4" style="" class="meuntop">X口口X</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="###" onclick="info(1,97);jsclassname(&quot;XX口口&quot;,97,this);" id="childid5" style="" class="meuntop">XX口口</a>  <font color="#FFFF00">笔数：<span id="numbertotal">0</span> 总金额：<span id="numbertotalmoney">0</span></font>
		  

	</td>
	</tr><tr>
	</tr><tr><td style="background: #FFFFFF;"><div id="show_table"><table width="100%" border="1" cellspacing="0" cellpadding="0" bordercolor="#000000" bordercolordark="#FFFFFF"><tbody><tr></tr><tr class="c1"><td class="td1" height="6"></td><td id="RowID_A1" onclick="BHry('EZ',1,0)" class="td1" height="6"><img src="./admincg/images/bhrow.gif"></td><td id="RowID_A2" onclick="BHry('EZ',2,0)" class="td1" height="6"><img src="./admincg/images/bhrow.gif"></td><td id="RowID_A3" onclick="BHry('EZ',3,0)" class="td1" height="6"><img src="./admincg/images/bhrow.gif"></td><td id="RowID_A4" onclick="BHry('EZ',4,0)" class="td1" height="6"><img src="./admincg/images/bhrow.gif"></td><td id="RowID_A5" onclick="BHry('EZ',5,0)" class="td1" height="6"><img src="./admincg/images/bhrow.gif"></td><td id="RowID_A6" onclick="BHry('EZ',6,0)" class="td1" height="6"><img src="./admincg/images/bhrow.gif"></td><td id="RowID_A7" onclick="BHry('EZ',7,0)" class="td1" height="6"><img src="./admincg/images/bhrow.gif"></td><td id="RowID_A8" onclick="BHry('EZ',8,0)" class="td1" height="6"><img src="./admincg/images/bhrow.gif"></td><td id="RowID_A9" onclick="BHry('EZ',9,0)" class="td1" height="6"><img src="./admincg/images/bhrow.gif"></td><td id="RowID_A10" onclick="BHry('EZ',10,0)" class="td1" height="6"><img src="./admincg/images/bhrow.gif"></td></tr><tr>  <td><table width="99%" border="0" cellspacing="0" cellpadding="0" style="font-size:13px;">    <tbody><tr height="25" align="center"><td></td><td><font color="red"></font></td></tr></tbody></table></td>  <td bgcolor="#FFCC66"><table width="99%" border="0" cellspacing="0" cellpadding="0" style="font-size:13px;">    <tbody><tr height="25" align="center"><td>号码</td><td><font color="red">赔率</font></td></tr></tbody></table></td>  <td bgcolor="#FFCC66"><table width="99%" border="0" cellspacing="0" cellpadding="0" style="font-size:13px;">    <tbody><tr height="25" align="center"><td>号码</td><td><font color="red">赔率</font></td></tr></tbody></table></td>  <td bgcolor="#FFCC66"><table width="99%" border="0" cellspacing="0" cellpadding="0" style="font-size:13px;">    <tbody><tr height="25" align="center"><td>号码</td><td><font color="red">赔率</font></td></tr></tbody></table></td>  <td bgcolor="#FFCC66"><table width="99%" border="0" cellspacing="0" cellpadding="0" style="font-size:13px;">    <tbody><tr height="25" align="center"><td>号码</td><td><font color="red">赔率</font></td></tr></tbody></table></td>  <td bgcolor="#FFCC66"><table width="99%" border="0" cellspacing="0" cellpadding="0" style="font-size:13px;">    <tbody><tr height="25" align="center"><td>号码</td><td><font color="red">赔率</font></td></tr></tbody></table></td>  <td bgcolor="#FFCC66"><table width="99%" border="0" cellspacing="0" cellpadding="0" style="font-size:13px;">    <tbody><tr height="25" align="center"><td>号码</td><td><font color="red">赔率</font></td></tr></tbody></table></td>  <td bgcolor="#FFCC66"><table width="99%" border="0" cellspacing="0" cellpadding="0" style="font-size:13px;">    <tbody><tr height="25" align="center"><td>号码</td><td><font color="red">赔率</font></td></tr></tbody></table></td>  <td bgcolor="#FFCC66"><table width="99%" border="0" cellspacing="0" cellpadding="0" style="font-size:13px;">    <tbody><tr height="25" align="center"><td>号码</td><td><font color="red">赔率</font></td></tr></tbody></table></td>  <td bgcolor="#FFCC66"><table width="99%" border="0" cellspacing="0" cellpadding="0" style="font-size:13px;">    <tbody><tr height="25" align="center"><td>号码</td><td><font color="red">赔率</font></td></tr></tbody></table></td>  <td bgcolor="#FFCC66"><table width="99%" border="0" cellspacing="0" cellpadding="0" style="font-size:13px;">    <tbody><tr height="25" align="center"><td>号码</td><td><font color="red">赔率</font></td></tr></tbody></table></td></tr><tr><td id="ColID_A1" class="td1" width="6" onclick="BHry('EZ',1,1)"><img src="./admincg/images/bhcol.gif"></td><td style="padding:0px;margin:0px;" id="id_00" align="center" onclick="Tg(this,'od_00');" onmouseover="style.cursor = 'hand';" class="td1"><input type="checkbox" id="od_00" name="on_EZ" value="00" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id00" name="id00" value="0XX0"><div style="width:96%;text-align:center;" id="name00">0XX0</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate00"><font color="red">80</font></div></b></font></td></tr></tbody></table></td><td style="padding:0px;margin:0px;" id="id_01" align="center" onclick="Tg(this,'od_01');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_01" name="on_EZ" value="01" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id01" name="id01" value="0XX1"><div style="width:96%;text-align:center;" id="name01">0XX1</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate01"><font color="red">80</font></div></b></font></td></tr></tbody></table></td><td style="padding:0px;margin:0px;" id="id_02" align="center" onclick="Tg(this,'od_02');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_02" name="on_EZ" value="02" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id02" name="id02" value="0XX2"><div style="width:96%;text-align:center;" id="name02">0XX2</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate02"><font color="red">80</font></div></b></font></td></tr></tbody></table></td><td style="padding:0px;margin:0px;" id="id_03" align="center" onclick="Tg(this,'od_03');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_03" name="on_EZ" value="03" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id03" name="id03" value="0XX3"><div style="width:96%;text-align:center;" id="name03">0XX3</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate03"><font color="red">80</font></div></b></font></td></tr></tbody></table></td><td style="padding:0px;margin:0px;" id="id_04" align="center" onclick="Tg(this,'od_04');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_04" name="on_EZ" value="04" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id04" name="id04" value="0XX4"><div style="width:96%;text-align:center;" id="name04">0XX4</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate04"><font color="red">80</font></div></b></font></td></tr></tbody></table></td><td style="padding:0px;margin:0px;" id="id_05" align="center" onclick="Tg(this,'od_05');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_05" name="on_EZ" value="05" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id05" name="id05" value="0XX5"><div style="width:96%;text-align:center;" id="name05">0XX5</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate05"><font color="red">80</font></div></b></font></td></tr></tbody></table></td><td style="padding:0px;margin:0px;" id="id_06" align="center" onclick="Tg(this,'od_06');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_06" name="on_EZ" value="06" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id06" name="id06" value="0XX6"><div style="width:96%;text-align:center;" id="name06">0XX6</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate06"><font color="red">80</font></div></b></font></td></tr></tbody></table></td><td style="padding:0px;margin:0px;" id="id_07" align="center" onclick="Tg(this,'od_07');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_07" name="on_EZ" value="07" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id07" name="id07" value="0XX7"><div style="width:96%;text-align:center;" id="name07">0XX7</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate07"><font color="red">80</font></div></b></font></td></tr></tbody></table></td><td style="padding:0px;margin:0px;" id="id_08" align="center" onclick="Tg(this,'od_08');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_08" name="on_EZ" value="08" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id08" name="id08" value="0XX8"><div style="width:96%;text-align:center;" id="name08">0XX8</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate08"><font color="red">80</font></div></b></font></td></tr></tbody></table></td><td style="padding:0px;margin:0px;" id="id_09" align="center" onclick="Tg(this,'od_09');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_09" name="on_EZ" value="09" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id09" name="id09" value="0XX9"><div style="width:96%;text-align:center;" id="name09">0XX9</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate09"><font color="red">80</font></div></b></font></td></tr></tbody></table></td></tr><tr><td id="ColID_A2" class="td1" width="6" onclick="BHry('EZ',2,1)"><img src="./admincg/images/bhcol.gif"></td><td style="padding:0px;margin:0px;" id="id_10" align="center" onclick="Tg(this,'od_10');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_10" name="on_EZ" value="10" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id10" name="id10" value="1XX0"><div style="width:96%;text-align:center;" id="name10">1XX0</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate10"><font color="red">80</font></div></b></font></td></tr></tbody></table></td><td style="padding:0px;margin:0px;" id="id_11" align="center" onclick="Tg(this,'od_11');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_11" name="on_EZ" value="11" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id11" name="id11" value="1XX1"><div style="width:96%;text-align:center;" id="name11">1XX1</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate11"><font color="red">80</font></div></b></font></td></tr></tbody></table></td><td style="padding:0px;margin:0px;" id="id_12" align="center" onclick="Tg(this,'od_12');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_12" name="on_EZ" value="12" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id12" name="id12" value="1XX2"><div style="width:96%;text-align:center;" id="name12">1XX2</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate12"><font color="red">80</font></div></b></font></td></tr></tbody></table></td><td style="padding:0px;margin:0px;" id="id_13" align="center" onclick="Tg(this,'od_13');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_13" name="on_EZ" value="13" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id13" name="id13" value="1XX3"><div style="width:96%;text-align:center;" id="name13">1XX3</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate13"><font color="red">80</font></div></b></font></td></tr></tbody></table></td><td style="padding:0px;margin:0px;" id="id_14" align="center" onclick="Tg(this,'od_14');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_14" name="on_EZ" value="14" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id14" name="id14" value="1XX4"><div style="width:96%;text-align:center;" id="name14">1XX4</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate14"><font color="red">80</font></div></b></font></td></tr></tbody></table></td><td style="padding:0px;margin:0px;" id="id_15" align="center" onclick="Tg(this,'od_15');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_15" name="on_EZ" value="15" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id15" name="id15" value="1XX5"><div style="width:96%;text-align:center;" id="name15">1XX5</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate15"><font color="red">80</font></div></b></font></td></tr></tbody></table></td><td style="padding:0px;margin:0px;" id="id_16" align="center" onclick="Tg(this,'od_16');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_16" name="on_EZ" value="16" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id16" name="id16" value="1XX6"><div style="width:96%;text-align:center;" id="name16">1XX6</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate16"><font color="red">80</font></div></b></font></td></tr></tbody></table></td><td style="padding:0px;margin:0px;" id="id_17" align="center" onclick="Tg(this,'od_17');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_17" name="on_EZ" value="17" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id17" name="id17" value="1XX7"><div style="width:96%;text-align:center;" id="name17">1XX7</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate17"><font color="red">80</font></div></b></font></td></tr></tbody></table></td><td style="padding:0px;margin:0px;" id="id_18" align="center" onclick="Tg(this,'od_18');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_18" name="on_EZ" value="18" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id18" name="id18" value="1XX8"><div style="width:96%;text-align:center;" id="name18">1XX8</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate18"><font color="red">80</font></div></b></font></td></tr></tbody></table></td><td style="padding:0px;margin:0px;" id="id_19" align="center" onclick="Tg(this,'od_19');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_19" name="on_EZ" value="19" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id19" name="id19" value="1XX9"><div style="width:96%;text-align:center;" id="name19">1XX9</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate19"><font color="red">80</font></div></b></font></td></tr></tbody></table></td></tr><tr><td id="ColID_A3" class="td1" width="6" onclick="BHry('EZ',3,1)"><img src="./admincg/images/bhcol.gif"></td><td style="padding:0px;margin:0px;" id="id_20" align="center" onclick="Tg(this,'od_20');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_20" name="on_EZ" value="20" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id20" name="id20" value="2XX0"><div style="width:96%;text-align:center;" id="name20">2XX0</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate20"><font color="red">80</font></div></b></font></td></tr></tbody></table></td><td style="padding:0px;margin:0px;" id="id_21" align="center" onclick="Tg(this,'od_21');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_21" name="on_EZ" value="21" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id21" name="id21" value="2XX1"><div style="width:96%;text-align:center;" id="name21">2XX1</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate21"><font color="red">80</font></div></b></font></td></tr></tbody></table></td><td style="padding:0px;margin:0px;" id="id_22" align="center" onclick="Tg(this,'od_22');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_22" name="on_EZ" value="22" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id22" name="id22" value="2XX2"><div style="width:96%;text-align:center;" id="name22">2XX2</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate22"><font color="red">80</font></div></b></font></td></tr></tbody></table></td><td style="padding:0px;margin:0px;" id="id_23" align="center" onclick="Tg(this,'od_23');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_23" name="on_EZ" value="23" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id23" name="id23" value="2XX3"><div style="width:96%;text-align:center;" id="name23">2XX3</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate23"><font color="red">80</font></div></b></font></td></tr></tbody></table></td><td style="padding:0px;margin:0px;" id="id_24" align="center" onclick="Tg(this,'od_24');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_24" name="on_EZ" value="24" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id24" name="id24" value="2XX4"><div style="width:96%;text-align:center;" id="name24">2XX4</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate24"><font color="red">80</font></div></b></font></td></tr></tbody></table></td><td style="padding:0px;margin:0px;" id="id_25" align="center" onclick="Tg(this,'od_25');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_25" name="on_EZ" value="25" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id25" name="id25" value="2XX5"><div style="width:96%;text-align:center;" id="name25">2XX5</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate25"><font color="red">80</font></div></b></font></td></tr></tbody></table></td><td style="padding:0px;margin:0px;" id="id_26" align="center" onclick="Tg(this,'od_26');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_26" name="on_EZ" value="26" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id26" name="id26" value="2XX6"><div style="width:96%;text-align:center;" id="name26">2XX6</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate26"><font color="red">80</font></div></b></font></td></tr></tbody></table></td><td style="padding:0px;margin:0px;" id="id_27" align="center" onclick="Tg(this,'od_27');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_27" name="on_EZ" value="27" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id27" name="id27" value="2XX7"><div style="width:96%;text-align:center;" id="name27">2XX7</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate27"><font color="red">80</font></div></b></font></td></tr></tbody></table></td><td style="padding:0px;margin:0px;" id="id_28" align="center" onclick="Tg(this,'od_28');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_28" name="on_EZ" value="28" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id28" name="id28" value="2XX8"><div style="width:96%;text-align:center;" id="name28">2XX8</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate28"><font color="red">80</font></div></b></font></td></tr></tbody></table></td><td style="padding:0px;margin:0px;" id="id_29" align="center" onclick="Tg(this,'od_29');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_29" name="on_EZ" value="29" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id29" name="id29" value="2XX9"><div style="width:96%;text-align:center;" id="name29">2XX9</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate29"><font color="red">80</font></div></b></font></td></tr></tbody></table></td></tr><tr><td id="ColID_A4" class="td1" width="6" onclick="BHry('EZ',4,1)"><img src="./admincg/images/bhcol.gif"></td><td style="padding:0px;margin:0px;" id="id_30" align="center" onclick="Tg(this,'od_30');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_30" name="on_EZ" value="30" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id30" name="id30" value="3XX0"><div style="width:96%;text-align:center;" id="name30">3XX0</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate30"><font color="red">80</font></div></b></font></td></tr></tbody></table></td><td style="padding:0px;margin:0px;" id="id_31" align="center" onclick="Tg(this,'od_31');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_31" name="on_EZ" value="31" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id31" name="id31" value="3XX1"><div style="width:96%;text-align:center;" id="name31">3XX1</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate31"><font color="red">80</font></div></b></font></td></tr></tbody></table></td><td style="padding:0px;margin:0px;" id="id_32" align="center" onclick="Tg(this,'od_32');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_32" name="on_EZ" value="32" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id32" name="id32" value="3XX2"><div style="width:96%;text-align:center;" id="name32">3XX2</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate32"><font color="red">80</font></div></b></font></td></tr></tbody></table></td><td style="padding:0px;margin:0px;" id="id_33" align="center" onclick="Tg(this,'od_33');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_33" name="on_EZ" value="33" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id33" name="id33" value="3XX3"><div style="width:96%;text-align:center;" id="name33">3XX3</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate33"><font color="red">80</font></div></b></font></td></tr></tbody></table></td><td style="padding:0px;margin:0px;" id="id_34" align="center" onclick="Tg(this,'od_34');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_34" name="on_EZ" value="34" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id34" name="id34" value="3XX4"><div style="width:96%;text-align:center;" id="name34">3XX4</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate34"><font color="red">80</font></div></b></font></td></tr></tbody></table></td><td style="padding:0px;margin:0px;" id="id_35" align="center" onclick="Tg(this,'od_35');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_35" name="on_EZ" value="35" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id35" name="id35" value="3XX5"><div style="width:96%;text-align:center;" id="name35">3XX5</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate35"><font color="red">80</font></div></b></font></td></tr></tbody></table></td><td style="padding:0px;margin:0px;" id="id_36" align="center" onclick="Tg(this,'od_36');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_36" name="on_EZ" value="36" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id36" name="id36" value="3XX6"><div style="width:96%;text-align:center;" id="name36">3XX6</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate36"><font color="red">80</font></div></b></font></td></tr></tbody></table></td><td style="padding:0px;margin:0px;" id="id_37" align="center" onclick="Tg(this,'od_37');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_37" name="on_EZ" value="37" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id37" name="id37" value="3XX7"><div style="width:96%;text-align:center;" id="name37">3XX7</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate37"><font color="red">80</font></div></b></font></td></tr></tbody></table></td><td style="padding:0px;margin:0px;" id="id_38" align="center" onclick="Tg(this,'od_38');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_38" name="on_EZ" value="38" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id38" name="id38" value="3XX8"><div style="width:96%;text-align:center;" id="name38">3XX8</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate38"><font color="red">80</font></div></b></font></td></tr></tbody></table></td><td style="padding:0px;margin:0px;" id="id_39" align="center" onclick="Tg(this,'od_39');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_39" name="on_EZ" value="39" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id39" name="id39" value="3XX9"><div style="width:96%;text-align:center;" id="name39">3XX9</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate39"><font color="red">80</font></div></b></font></td></tr></tbody></table></td></tr><tr><td id="ColID_A5" class="td1" width="6" onclick="BHry('EZ',5,1)"><img src="./admincg/images/bhcol.gif"></td><td style="padding:0px;margin:0px;" id="id_40" align="center" onclick="Tg(this,'od_40');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_40" name="on_EZ" value="40" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id40" name="id40" value="4XX0"><div style="width:96%;text-align:center;" id="name40">4XX0</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate40"><font color="red">80</font></div></b></font></td></tr></tbody></table></td><td style="padding:0px;margin:0px;" id="id_41" align="center" onclick="Tg(this,'od_41');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_41" name="on_EZ" value="41" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id41" name="id41" value="4XX1"><div style="width:96%;text-align:center;" id="name41">4XX1</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate41"><font color="red">80</font></div></b></font></td></tr></tbody></table></td><td style="padding:0px;margin:0px;" id="id_42" align="center" onclick="Tg(this,'od_42');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_42" name="on_EZ" value="42" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id42" name="id42" value="4XX2"><div style="width:96%;text-align:center;" id="name42">4XX2</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate42"><font color="red">80</font></div></b></font></td></tr></tbody></table></td><td style="padding:0px;margin:0px;" id="id_43" align="center" onclick="Tg(this,'od_43');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_43" name="on_EZ" value="43" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id43" name="id43" value="4XX3"><div style="width:96%;text-align:center;" id="name43">4XX3</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate43"><font color="red">80</font></div></b></font></td></tr></tbody></table></td><td style="padding:0px;margin:0px;" id="id_44" align="center" onclick="Tg(this,'od_44');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_44" name="on_EZ" value="44" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id44" name="id44" value="4XX4"><div style="width:96%;text-align:center;" id="name44">4XX4</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate44"><font color="red">80</font></div></b></font></td></tr></tbody></table></td><td style="padding:0px;margin:0px;" id="id_45" align="center" onclick="Tg(this,'od_45');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_45" name="on_EZ" value="45" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id45" name="id45" value="4XX5"><div style="width:96%;text-align:center;" id="name45">4XX5</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate45"><font color="red">80</font></div></b></font></td></tr></tbody></table></td><td style="padding:0px;margin:0px;" id="id_46" align="center" onclick="Tg(this,'od_46');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_46" name="on_EZ" value="46" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id46" name="id46" value="4XX6"><div style="width:96%;text-align:center;" id="name46">4XX6</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate46"><font color="red">80</font></div></b></font></td></tr></tbody></table></td><td style="padding:0px;margin:0px;" id="id_47" align="center" onclick="Tg(this,'od_47');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_47" name="on_EZ" value="47" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id47" name="id47" value="4XX7"><div style="width:96%;text-align:center;" id="name47">4XX7</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate47"><font color="red">80</font></div></b></font></td></tr></tbody></table></td><td style="padding:0px;margin:0px;" id="id_48" align="center" onclick="Tg(this,'od_48');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_48" name="on_EZ" value="48" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id48" name="id48" value="4XX8"><div style="width:96%;text-align:center;" id="name48">4XX8</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate48"><font color="red">80</font></div></b></font></td></tr></tbody></table></td><td style="padding:0px;margin:0px;" id="id_49" align="center" onclick="Tg(this,'od_49');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_49" name="on_EZ" value="49" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id49" name="id49" value="4XX9"><div style="width:96%;text-align:center;" id="name49">4XX9</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate49"><font color="red">80</font></div></b></font></td></tr></tbody></table></td></tr><tr><td id="ColID_A6" class="td1" width="6" onclick="BHry('EZ',6,1)"><img src="./admincg/images/bhcol.gif"></td><td style="padding:0px;margin:0px;" id="id_50" align="center" onclick="Tg(this,'od_50');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_50" name="on_EZ" value="50" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id50" name="id50" value="5XX0"><div style="width:96%;text-align:center;" id="name50">5XX0</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate50"><font color="red">80</font></div></b></font></td></tr></tbody></table></td><td style="padding:0px;margin:0px;" id="id_51" align="center" onclick="Tg(this,'od_51');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_51" name="on_EZ" value="51" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id51" name="id51" value="5XX1"><div style="width:96%;text-align:center;" id="name51">5XX1</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate51"><font color="red">80</font></div></b></font></td></tr></tbody></table></td><td style="padding:0px;margin:0px;" id="id_52" align="center" onclick="Tg(this,'od_52');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_52" name="on_EZ" value="52" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id52" name="id52" value="5XX2"><div style="width:96%;text-align:center;" id="name52">5XX2</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate52"><font color="red">80</font></div></b></font></td></tr></tbody></table></td><td style="padding:0px;margin:0px;" id="id_53" align="center" onclick="Tg(this,'od_53');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_53" name="on_EZ" value="53" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id53" name="id53" value="5XX3"><div style="width:96%;text-align:center;" id="name53">5XX3</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate53"><font color="red">80</font></div></b></font></td></tr></tbody></table></td><td style="padding:0px;margin:0px;" id="id_54" align="center" onclick="Tg(this,'od_54');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_54" name="on_EZ" value="54" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id54" name="id54" value="5XX4"><div style="width:96%;text-align:center;" id="name54">5XX4</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate54"><font color="red">80</font></div></b></font></td></tr></tbody></table></td><td style="padding:0px;margin:0px;" id="id_55" align="center" onclick="Tg(this,'od_55');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_55" name="on_EZ" value="55" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id55" name="id55" value="5XX5"><div style="width:96%;text-align:center;" id="name55">5XX5</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate55"><font color="red">80</font></div></b></font></td></tr></tbody></table></td><td style="padding:0px;margin:0px;" id="id_56" align="center" onclick="Tg(this,'od_56');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_56" name="on_EZ" value="56" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id56" name="id56" value="5XX6"><div style="width:96%;text-align:center;" id="name56">5XX6</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate56"><font color="red">80</font></div></b></font></td></tr></tbody></table></td><td style="padding:0px;margin:0px;" id="id_57" align="center" onclick="Tg(this,'od_57');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_57" name="on_EZ" value="57" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id57" name="id57" value="5XX7"><div style="width:96%;text-align:center;" id="name57">5XX7</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate57"><font color="red">80</font></div></b></font></td></tr></tbody></table></td><td style="padding:0px;margin:0px;" id="id_58" align="center" onclick="Tg(this,'od_58');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_58" name="on_EZ" value="58" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id58" name="id58" value="5XX8"><div style="width:96%;text-align:center;" id="name58">5XX8</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate58"><font color="red">80</font></div></b></font></td></tr></tbody></table></td><td style="padding:0px;margin:0px;" id="id_59" align="center" onclick="Tg(this,'od_59');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_59" name="on_EZ" value="59" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id59" name="id59" value="5XX9"><div style="width:96%;text-align:center;" id="name59">5XX9</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate59"><font color="red">80</font></div></b></font></td></tr></tbody></table></td></tr><tr><td id="ColID_A7" class="td1" width="6" onclick="BHry('EZ',7,1)"><img src="./admincg/images/bhcol.gif"></td><td style="padding:0px;margin:0px;" id="id_60" align="center" onclick="Tg(this,'od_60');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_60" name="on_EZ" value="60" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id60" name="id60" value="6XX0"><div style="width:96%;text-align:center;" id="name60">6XX0</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate60"><font color="red">80</font></div></b></font></td></tr></tbody></table></td><td style="padding:0px;margin:0px;" id="id_61" align="center" onclick="Tg(this,'od_61');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_61" name="on_EZ" value="61" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id61" name="id61" value="6XX1"><div style="width:96%;text-align:center;" id="name61">6XX1</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate61"><font color="red">80</font></div></b></font></td></tr></tbody></table></td><td style="padding:0px;margin:0px;" id="id_62" align="center" onclick="Tg(this,'od_62');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_62" name="on_EZ" value="62" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id62" name="id62" value="6XX2"><div style="width:96%;text-align:center;" id="name62">6XX2</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate62"><font color="red">80</font></div></b></font></td></tr></tbody></table></td><td style="padding:0px;margin:0px;" id="id_63" align="center" onclick="Tg(this,'od_63');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_63" name="on_EZ" value="63" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id63" name="id63" value="6XX3"><div style="width:96%;text-align:center;" id="name63">6XX3</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate63"><font color="red">80</font></div></b></font></td></tr></tbody></table></td><td style="padding:0px;margin:0px;" id="id_64" align="center" onclick="Tg(this,'od_64');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_64" name="on_EZ" value="64" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id64" name="id64" value="6XX4"><div style="width:96%;text-align:center;" id="name64">6XX4</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate64"><font color="#0000FF">47</font></div></b></font></td></tr></tbody></table></td><td style="padding:0px;margin:0px;" id="id_65" align="center" onclick="Tg(this,'od_65');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_65" name="on_EZ" value="65" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id65" name="id65" value="6XX5"><div style="width:96%;text-align:center;" id="name65">6XX5</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate65"><font color="red">80</font></div></b></font></td></tr></tbody></table></td><td style="padding:0px;margin:0px;" id="id_66" align="center" onclick="Tg(this,'od_66');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_66" name="on_EZ" value="66" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id66" name="id66" value="6XX6"><div style="width:96%;text-align:center;" id="name66">6XX6</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate66"><font color="red">80</font></div></b></font></td></tr></tbody></table></td><td style="padding:0px;margin:0px;" id="id_67" align="center" onclick="Tg(this,'od_67');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_67" name="on_EZ" value="67" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id67" name="id67" value="6XX7"><div style="width:96%;text-align:center;" id="name67">6XX7</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate67"><font color="red">80</font></div></b></font></td></tr></tbody></table></td><td style="padding:0px;margin:0px;" id="id_68" align="center" onclick="Tg(this,'od_68');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_68" name="on_EZ" value="68" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id68" name="id68" value="6XX8"><div style="width:96%;text-align:center;" id="name68">6XX8</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate68"><font color="red">80</font></div></b></font></td></tr></tbody></table></td><td style="padding:0px;margin:0px;" id="id_69" align="center" onclick="Tg(this,'od_69');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_69" name="on_EZ" value="69" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id69" name="id69" value="6XX9"><div style="width:96%;text-align:center;" id="name69">6XX9</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate69"><font color="red">80</font></div></b></font></td></tr></tbody></table></td></tr><tr><td id="ColID_A8" class="td1" width="6" onclick="BHry('EZ',8,1)"><img src="./admincg/images/bhcol.gif"></td><td style="padding:0px;margin:0px;" id="id_70" align="center" onclick="Tg(this,'od_70');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_70" name="on_EZ" value="70" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id70" name="id70" value="7XX0"><div style="width:96%;text-align:center;" id="name70">7XX0</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate70"><font color="red">80</font></div></b></font></td></tr></tbody></table></td><td style="padding:0px;margin:0px;" id="id_71" align="center" onclick="Tg(this,'od_71');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_71" name="on_EZ" value="71" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id71" name="id71" value="7XX1"><div style="width:96%;text-align:center;" id="name71">7XX1</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate71"><font color="red">80</font></div></b></font></td></tr></tbody></table></td><td style="padding:0px;margin:0px;" id="id_72" align="center" onclick="Tg(this,'od_72');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_72" name="on_EZ" value="72" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id72" name="id72" value="7XX2"><div style="width:96%;text-align:center;" id="name72">7XX2</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate72"><font color="red">80</font></div></b></font></td></tr></tbody></table></td><td style="padding:0px;margin:0px;" id="id_73" align="center" onclick="Tg(this,'od_73');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_73" name="on_EZ" value="73" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id73" name="id73" value="7XX3"><div style="width:96%;text-align:center;" id="name73">7XX3</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate73"><font color="red">80</font></div></b></font></td></tr></tbody></table></td><td style="padding:0px;margin:0px;" id="id_74" align="center" onclick="Tg(this,'od_74');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_74" name="on_EZ" value="74" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id74" name="id74" value="7XX4"><div style="width:96%;text-align:center;" id="name74">7XX4</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate74"><font color="red">80</font></div></b></font></td></tr></tbody></table></td><td style="padding:0px;margin:0px;" id="id_75" align="center" onclick="Tg(this,'od_75');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_75" name="on_EZ" value="75" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id75" name="id75" value="7XX5"><div style="width:96%;text-align:center;" id="name75">7XX5</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate75"><font color="red">80</font></div></b></font></td></tr></tbody></table></td><td style="padding:0px;margin:0px;" id="id_76" align="center" onclick="Tg(this,'od_76');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_76" name="on_EZ" value="76" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id76" name="id76" value="7XX6"><div style="width:96%;text-align:center;" id="name76">7XX6</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate76"><font color="red">80</font></div></b></font></td></tr></tbody></table></td><td style="padding:0px;margin:0px;" id="id_77" align="center" onclick="Tg(this,'od_77');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_77" name="on_EZ" value="77" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id77" name="id77" value="7XX7"><div style="width:96%;text-align:center;" id="name77">7XX7</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate77"><font color="red">80</font></div></b></font></td></tr></tbody></table></td><td style="padding:0px;margin:0px;" id="id_78" align="center" onclick="Tg(this,'od_78');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_78" name="on_EZ" value="78" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id78" name="id78" value="7XX8"><div style="width:96%;text-align:center;" id="name78">7XX8</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate78"><font color="red">80</font></div></b></font></td></tr></tbody></table></td><td style="padding:0px;margin:0px;" id="id_79" align="center" onclick="Tg(this,'od_79');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_79" name="on_EZ" value="79" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id79" name="id79" value="7XX9"><div style="width:96%;text-align:center;" id="name79">7XX9</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate79"><font color="red">80</font></div></b></font></td></tr></tbody></table></td></tr><tr><td id="ColID_A9" class="td1" width="6" onclick="BHry('EZ',9,1)"><img src="./admincg/images/bhcol.gif"></td><td style="padding:0px;margin:0px;" id="id_80" align="center" onclick="Tg(this,'od_80');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_80" name="on_EZ" value="80" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id80" name="id80" value="8XX0"><div style="width:96%;text-align:center;" id="name80">8XX0</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate80"><font color="red">80</font></div></b></font></td></tr></tbody></table></td><td style="padding:0px;margin:0px;" id="id_81" align="center" onclick="Tg(this,'od_81');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_81" name="on_EZ" value="81" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id81" name="id81" value="8XX1"><div style="width:96%;text-align:center;" id="name81">8XX1</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate81"><font color="red">80</font></div></b></font></td></tr></tbody></table></td><td style="padding:0px;margin:0px;" id="id_82" align="center" onclick="Tg(this,'od_82');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_82" name="on_EZ" value="82" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id82" name="id82" value="8XX2"><div style="width:96%;text-align:center;" id="name82">8XX2</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate82"><font color="red">80</font></div></b></font></td></tr></tbody></table></td><td style="padding:0px;margin:0px;" id="id_83" align="center" onclick="Tg(this,'od_83');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_83" name="on_EZ" value="83" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id83" name="id83" value="8XX3"><div style="width:96%;text-align:center;" id="name83">8XX3</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate83"><font color="red">80</font></div></b></font></td></tr></tbody></table></td><td style="padding:0px;margin:0px;" id="id_84" align="center" onclick="Tg(this,'od_84');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_84" name="on_EZ" value="84" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id84" name="id84" value="8XX4"><div style="width:96%;text-align:center;" id="name84">8XX4</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate84"><font color="red">80</font></div></b></font></td></tr></tbody></table></td><td style="padding:0px;margin:0px;" id="id_85" align="center" onclick="Tg(this,'od_85');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_85" name="on_EZ" value="85" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id85" name="id85" value="8XX5"><div style="width:96%;text-align:center;" id="name85">8XX5</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate85"><font color="red">80</font></div></b></font></td></tr></tbody></table></td><td style="padding:0px;margin:0px;" id="id_86" align="center" onclick="Tg(this,'od_86');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_86" name="on_EZ" value="86" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id86" name="id86" value="8XX6"><div style="width:96%;text-align:center;" id="name86">8XX6</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate86"><font color="red">80</font></div></b></font></td></tr></tbody></table></td><td style="padding:0px;margin:0px;" id="id_87" align="center" onclick="Tg(this,'od_87');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_87" name="on_EZ" value="87" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id87" name="id87" value="8XX7"><div style="width:96%;text-align:center;" id="name87">8XX7</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate87"><font color="red">80</font></div></b></font></td></tr></tbody></table></td><td style="padding:0px;margin:0px;" id="id_88" align="center" onclick="Tg(this,'od_88');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_88" name="on_EZ" value="88" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id88" name="id88" value="8XX8"><div style="width:96%;text-align:center;" id="name88">8XX8</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate88"><font color="red">80</font></div></b></font></td></tr></tbody></table></td><td style="padding:0px;margin:0px;" id="id_89" align="center" onclick="Tg(this,'od_89');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_89" name="on_EZ" value="89" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id89" name="id89" value="8XX9"><div style="width:96%;text-align:center;" id="name89">8XX9</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate89"><font color="red">80</font></div></b></font></td></tr></tbody></table></td></tr><tr><td id="ColID_A10" class="td1" width="6" onclick="BHry('EZ',10,1)"><img src="./admincg/images/bhcol.gif"></td><td style="padding:0px;margin:0px;" id="id_90" align="center" onclick="Tg(this,'od_90');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_90" name="on_EZ" value="90" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id90" name="id90" value="9XX0"><div style="width:96%;text-align:center;" id="name90">9XX0</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate90"><font color="red">80</font></div></b></font></td></tr></tbody></table></td><td style="padding:0px;margin:0px;" id="id_91" align="center" onclick="Tg(this,'od_91');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_91" name="on_EZ" value="91" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id91" name="id91" value="9XX1"><div style="width:96%;text-align:center;" id="name91">9XX1</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate91"><font color="red">80</font></div></b></font></td></tr></tbody></table></td><td style="padding:0px;margin:0px;" id="id_92" align="center" onclick="Tg(this,'od_92');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_92" name="on_EZ" value="92" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id92" name="id92" value="9XX2"><div style="width:96%;text-align:center;" id="name92">9XX2</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate92"><font color="red">80</font></div></b></font></td></tr></tbody></table></td><td style="padding:0px;margin:0px;" id="id_93" align="center" onclick="Tg(this,'od_93');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_93" name="on_EZ" value="93" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id93" name="id93" value="9XX3"><div style="width:96%;text-align:center;" id="name93">9XX3</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate93"><font color="red">80</font></div></b></font></td></tr></tbody></table></td><td style="padding:0px;margin:0px;" id="id_94" align="center" onclick="Tg(this,'od_94');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_94" name="on_EZ" value="94" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id94" name="id94" value="9XX4"><div style="width:96%;text-align:center;" id="name94">9XX4</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate94"><font color="red">80</font></div></b></font></td></tr></tbody></table></td><td style="padding:0px;margin:0px;" id="id_95" align="center" onclick="Tg(this,'od_95');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_95" name="on_EZ" value="95" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id95" name="id95" value="9XX5"><div style="width:96%;text-align:center;" id="name95">9XX5</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate95"><font color="red">80</font></div></b></font></td></tr></tbody></table></td><td style="padding:0px;margin:0px;" id="id_96" align="center" onclick="Tg(this,'od_96');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_96" name="on_EZ" value="96" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id96" name="id96" value="9XX6"><div style="width:96%;text-align:center;" id="name96">9XX6</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate96"><font color="red">80</font></div></b></font></td></tr></tbody></table></td><td style="padding:0px;margin:0px;" id="id_97" align="center" onclick="Tg(this,'od_97');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_97" name="on_EZ" value="97" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id97" name="id97" value="9XX7"><div style="width:96%;text-align:center;" id="name97">9XX7</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate97"><font color="red">80</font></div></b></font></td></tr></tbody></table></td><td style="padding:0px;margin:0px;" id="id_98" align="center" onclick="Tg(this,'od_98');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_98" name="on_EZ" value="98" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id98" name="id98" value="9XX8"><div style="width:96%;text-align:center;" id="name98">9XX8</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate98"><font color="red">80</font></div></b></font></td></tr></tbody></table></td><td style="padding:0px;margin:0px;" id="id_99" align="center" onclick="Tg(this,'od_99');" onmouseover="style.cursor = 'hand';"><input type="checkbox" id="od_99" name="on_EZ" value="99" style="display:none"><table style="padding:0px;margin:0px;text-align:center" width="98%" border="0" cellspacing="0" cellpadding="0"><tbody><tr align="center" height="30"><td style="padding:0px;margin:0px;" width="40"><input type="hidden" id="id99" name="id99" value="9XX9"><div style="width:96%;text-align:center;" id="name99">9XX9</div></td><td style="padding:0px;margin:0px;"><font color="red" face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id="rate99"><font color="red">80</font></div></b></font></td></tr></tbody></table></td></tr></tbody></table></div>
		<table width="100%" border="1" cellspacing="0" cellpadding="0" bordercolor="#000000" bordercolordark="#FFFFFF">

		    <tbody><tr>
		    <td>
      <table width="100%" border="1" style="font-size:13px;text-align:left;" cellspacing="0" cellpadding="0" bordercolor="#000000" bordercolordark="#FFFFFF">
        <tbody><tr> 

          <td bgcolor="#FFCC66" rowspan="2" width="40" align="center"><b>定位置</b></td>
          <td><span id="jsclassname0">仟</span>
          <script>
	    var qChArr = new Array("0","1","2","3","4","5","6","7","8","9","单","双","大","小");
	    for(i=0;i<qChArr.length;i++){
	      document.write('<input class="indw" type=button id=carHead'+i+' value='+qChArr[i]+' onclick="qChooseCar(2,1,'+i+');">');
	    }
	  </script><input class="indw" type="button" id="carHead0" value="0" onclick="qChooseCar(2,1,0);"><input class="indw" type="button" id="carHead1" value="1" onclick="qChooseCar(2,1,1);"><input class="indw" type="button" id="carHead2" value="2" onclick="qChooseCar(2,1,2);"><input class="indw" type="button" id="carHead3" value="3" onclick="qChooseCar(2,1,3);"><input class="indw" type="button" id="carHead4" value="4" onclick="qChooseCar(2,1,4);"><input class="indw" type="button" id="carHead5" value="5" onclick="qChooseCar(2,1,5);"><input class="indw" type="button" id="carHead6" value="6" onclick="qChooseCar(2,1,6);"><input class="indw" type="button" id="carHead7" value="7" onclick="qChooseCar(2,1,7);"><input class="indw" type="button" id="carHead8" value="8" onclick="qChooseCar(2,1,8);"><input class="indw" type="button" id="carHead9" value="9" onclick="qChooseCar(2,1,9);"><input class="indw" type="button" id="carHead10" value="单" onclick="qChooseCar(2,1,10);"><input class="indw" type="button" id="carHead11" value="双" onclick="qChooseCar(2,1,11);"><input class="indw" type="button" id="carHead12" value="大" onclick="qChooseCar(2,1,12);"><input class="indw" type="button" id="carHead13" value="小" onclick="qChooseCar(2,1,13);">
	 	 </td>
	 	 <td bgcolor="#FFCC66" rowspan="2" width="30" align="center"><b>合分</b></td>
	 	 <td rowspan="2" align="center">
          <script>
	    var qChArr = new Array("0","1","2","3","4","5","6","7","8","9");
	    for(i=0;i<qChArr.length;i++){
	      document.write('<input class="indw" type=button id=choDiv'+i+' value='+qChArr[i]+' onclick="qChooseCar(3,1,'+i+')">');
	      if(i==4){
	      	document.write('<input class="indw" type=button id=choTwo4 value="单" onclick="qChooseCar(1,3,4)">');
	      	document.write('<br>');
	      }else if(i==9){
	      	document.write('<input class="indw" type=button id=choTwo5 value="双" onclick="qChooseCar(1,3,5)">');
	      }
	    }
	  </script><input class="indw" type="button" id="choDiv0" value="0" onclick="qChooseCar(3,1,0)"><input class="indw" type="button" id="choDiv1" value="1" onclick="qChooseCar(3,1,1)"><input class="indw" type="button" id="choDiv2" value="2" onclick="qChooseCar(3,1,2)"><input class="indw" type="button" id="choDiv3" value="3" onclick="qChooseCar(3,1,3)"><input class="indw" type="button" id="choDiv4" value="4" onclick="qChooseCar(3,1,4)"><input class="indw" type="button" id="choTwo4" value="单" onclick="qChooseCar(1,3,4)"><br><input class="indw" type="button" id="choDiv5" value="5" onclick="qChooseCar(3,1,5)"><input class="indw" type="button" id="choDiv6" value="6" onclick="qChooseCar(3,1,6)"><input class="indw" type="button" id="choDiv7" value="7" onclick="qChooseCar(3,1,7)"><input class="indw" type="button" id="choDiv8" value="8" onclick="qChooseCar(3,1,8)"><input class="indw" type="button" id="choDiv9" value="9" onclick="qChooseCar(3,1,9)"><input class="indw" type="button" id="choTwo5" value="双" onclick="qChooseCar(1,3,5)">
	 	 </td>
        </tr>
        <tr> 
          <td><span id="jsclassname1">个</span>
          <script>
	    var qChArr = new Array("0","1","2","3","4","5","6","7","8","9","单","双","大","小");
	    for(i=0;i<qChArr.length;i++){
	      document.write('<input class="indw" type=button id=carTail'+i+' value='+qChArr[i]+' onclick="qChooseCar(2,2,'+i+');">');
	    }
	  </script><input class="indw" type="button" id="carTail0" value="0" onclick="qChooseCar(2,2,0);"><input class="indw" type="button" id="carTail1" value="1" onclick="qChooseCar(2,2,1);"><input class="indw" type="button" id="carTail2" value="2" onclick="qChooseCar(2,2,2);"><input class="indw" type="button" id="carTail3" value="3" onclick="qChooseCar(2,2,3);"><input class="indw" type="button" id="carTail4" value="4" onclick="qChooseCar(2,2,4);"><input class="indw" type="button" id="carTail5" value="5" onclick="qChooseCar(2,2,5);"><input class="indw" type="button" id="carTail6" value="6" onclick="qChooseCar(2,2,6);"><input class="indw" type="button" id="carTail7" value="7" onclick="qChooseCar(2,2,7);"><input class="indw" type="button" id="carTail8" value="8" onclick="qChooseCar(2,2,8);"><input class="indw" type="button" id="carTail9" value="9" onclick="qChooseCar(2,2,9);"><input class="indw" type="button" id="carTail10" value="单" onclick="qChooseCar(2,2,10);"><input class="indw" type="button" id="carTail11" value="双" onclick="qChooseCar(2,2,11);"><input class="indw" type="button" id="carTail12" value="大" onclick="qChooseCar(2,2,12);"><input class="indw" type="button" id="carTail13" value="小" onclick="qChooseCar(2,2,13);">
	  </td>
        </tr>
 	  </tbody></table>
		    </td>
		      <td><input type="hidden" name="id">   
		      金额:<input type="text" name="amount" id="amount" style="width:50px;" class="number" onkeyup="$('numbertotalmoney').innerHTML=document.form1.countslt.value*this.value;" onkeydown="if(event.keyCode == 13)return false;" size="8" maxlength="7">&nbsp;
		      <button type="button" class="number_w" name="submit1" id="submit1" onclick="soonsend(this);return false;">确定</button>&nbsp;
		      <button type="button" class="number_w" onclick="return Tre1(0);" id="submit1">取消</button>

		      </td>
		  </tr>
		  
		</tbody></table>	
	</td></tr><tr>
	</tr></tbody></table>
<script>
//onkeydown="KeyDown(this);"
function KeyDown(tt) 
{ 
	if (event.keyCode == 13) 
	{ 
	
	event.returnValue=false; 
	event.cancel = true; 
	soonsend(tt);return false; 
	} 
} 
var datetime = "";
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
function write_td0(no){    
  var bgcolor='bgcolor=#FFCC66';
  var baoma='号码';
  var peili='赔率';
  if(no==0){
  	bgcolor='';
  	baoma='';
  	peili='';
  }
  var h='';
  h='  <td '+bgcolor+'><table width=99% border="0" cellspacing="0" cellpadding="0"  style="font-size:13px;">'
  +'    <tr height=25 align="center"><td>'+baoma+'</td><td><font color=red>'+peili+'</font></td></tr></table></td>';
  return h;
}
function write_td(no){   
  var h=''; 
  h='<td style="padding:0px;margin:0px;" id=id_'+no+' align="center" onclick="Tg(this,\'od_'+no+'\');" onmouseover="style.cursor = \'hand\';">'
  +"<INPUT type='checkbox' id='od_"+no+"' name='on_EZ' value='"+no+"' style='display:none'>"
  +'<table style="padding:0px;margin:0px;text-align:center" width=98% border="0" cellspacing="0" cellpadding="0" style="font-size:13px;">'
  +'<tr align=center  height=30><td style="padding:0px;margin:0px;" width=40><input type=hidden id=id'+no+' name=id'+no+'><div style="width:96%;text-align:center;" id=name'+no+'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div></td>'
  +'<td style="padding:0px;margin:0px;"><font color=red face="Arial, Helvetica, sans-serif" style="font-size:15px;"><b><div style="width:94%;text-align:center;color:#oooooo;" id=rate'+no+'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div></b></font></td></tr>'
  +'</table>'
  +'</td>';
  return h;
}
function show_t(){
  var h='';
 h='<table width="100%" border="1" cellspacing="0" cellpadding="0" bordercolor="#000000" bordercolordark="#FFFFFF">'
  +'<tr>'
  +"<TR class='c1'>"
  +"<td class='td1' height='6'></td>"
  +"<td id='RowID_A1' onclick=BHry('EZ',1,0) class='td1' height='6'><img src='./admincg/images/bhrow.gif'></td>"
  +"<td id='RowID_A2' onclick=BHry('EZ',2,0) class='td1' height='6'><img src='./admincg/images/bhrow.gif'></td>"
  +"<td id='RowID_A3' onclick=BHry('EZ',3,0) class='td1' height='6'><img src='./admincg/images/bhrow.gif'></td>"
  +"<td id='RowID_A4' onclick=BHry('EZ',4,0) class='td1' height='6'><img src='./admincg/images/bhrow.gif'></td>"
  +"<td id='RowID_A5' onclick=BHry('EZ',5,0) class='td1' height='6'><img src='./admincg/images/bhrow.gif'></td>"
  +"<td id='RowID_A6' onclick=BHry('EZ',6,0) class='td1' height='6'><img src='./admincg/images/bhrow.gif'></td>"
  +"<td id='RowID_A7' onclick=BHry('EZ',7,0) class='td1' height='6'><img src='./admincg/images/bhrow.gif'></td>"
  +"<td id='RowID_A8' onclick=BHry('EZ',8,0) class='td1' height='6'><img src='./admincg/images/bhrow.gif'></td>"
  +"<td id='RowID_A9' onclick=BHry('EZ',9,0) class='td1' height='6'><img src='./admincg/images/bhrow.gif'></td>"
  +"<td id='RowID_A10' onclick=BHry('EZ',10,0) class='td1' height='6'><img src='./admincg/images/bhrow.gif'></td>"
  +"</TR>"
  +'<tr>';
  for(i=0;i<11;i++)h+=write_td0(i);
  h+='</tr>';
  var num =1;
for(i=0;i<100;i++){
  if (i%10 == 0) {
  	h+='<tr>';
  	h+="<td id='ColID_A"+num+"' class='td1' width='6' onclick=BHry('EZ',"+num+",1)><img src='./admincg/images/bhcol.gif'></td>";
  	num = num+1;
  }
  if (i<10) ii = "0"+i; else ii = i;
  h+= write_td(ii);
  if (i%10 == 9) h+='</tr>';
}
h+='</table>';
  $('show_table').innerHTML=h;
}
function jsclassname(c,d,t){
  carr = c.split('');
  var jsclassnameArr = new Array("仟","佰","拾","个");
  var cc=0;
  for(i=0;i<=(carr.length-1);i++) {
  	if(carr[i]=='口'&&cc==0){
  		$('jsclassname0').innerHTML=jsclassnameArr[i];
  		cc=1;
  	}else if(carr[i]=='口'&&cc==1){
  		$('jsclassname1').innerHTML=jsclassnameArr[i];
  	}
  }
  
  for(i=0;i<=5;i++)
	$("childid"+i).style.color = "#fff"; 
	t.style.color = "#FF0000"; 

}
function showdata(index,id,no,rate,money,frank_limit,shipanfrank){
  if (rate == ""){
  }else{
  	//if(frank_limit<=rate||'v2_default_5'=='v2_trad'||'v2_default_5'=='v2_trad_1')rate="<font color=red>"+rate+"</font>";
  	
  	//if(90>0 && 90 > (rate-0))rate="<font color=#0000FF>"+rate+"</font>"; else rate="<font color=red>"+rate+"</font>";
  	if(90>0 && 90 > (shipanfrank-0))rate="<font color=#0000FF>"+rate+"</font>"; else rate="<font color=red>"+rate+"</font>";
  	//if((frank_limit-0)<=(rate-0)||90<=0)rate="<font color=red>"+rate+"</font>";
  	//else rate="<font color=#0000FF>"+rate+"</font>";
  	
    eval("rate"+index).innerHTML = rate;

  }
  eval("name"+index).innerHTML = no; 
  eval("form1.id"+index).value = no;
  //eval("form1.id"+index).value = id;
}

function doinfo(str){
  show_t();
  if (str != null && str != ""){    
    infoa = str.split("!@#%");
    if(infoa[0]==5){
    	alert(infoa[1]);
    	return ;
    }
    infoline = str.split("@@");
    datetime = infoline[0];
    frank_limit = infoline[2];
    
    infodata = infoline[1].split("`");

    for(j=0;j<infodata.length;j++){
      sline = infodata[j].split("|");
      
      if (j<10)ii ="0"+j;
      else ii = j;
      
      showdata(ii,sline[0],sline[1],sline[2],sline[3],frank_limit,sline[4]);
    }
  }
  Tre1(0);
}
var s_cid=1;
var c_cid=100;
function moshi(){
	//location.href = "index.php?action=numberfrank2"+"&erzimode=2"+"&c="+s_cid+"&childid="+c_cid;
	location.href = 'twoWordSetOne.html';
}
function info(t,childid){
	s_cid=t;
	c_cid=childid;
	ajax("ajax.php?action=numberfrank"+"&inajax=1"+"&c="+t+"&childid="+childid+"&datetime="+datetime+"&time="+(new Date().getTime()),"",doinfo);
}
show_t();
info('1','100');
function qChooseCar(qType,qWay,qCode){
  realid = "";
  groupid = "";
  index = qCode;
  if(qCode < 10)qCode = "0"+qCode+",";
  else qCode = qCode+",";
  if(qType==1){
    if(qChoTwo.indexOf(qCode) == -1 && qWay==3){
      qChoTwo +=qCode;
      eval("form1.choTwo"+index).style.backgroundColor="red";
    }else if(qWay==3){
      qChoTwo = qChoTwo.replace(qCode,"");
      eval("form1.choTwo"+index).style.backgroundColor="";
    }  
  }else if(qType==2){
    if(qCarHead.indexOf(qCode) == -1 && qWay==1){
      qCarHead +=qCode;
      eval("form1.carHead"+index).style.backgroundColor="red";
    }else if(qWay==1){
      qCarHead = qCarHead.replace(qCode,"");
      eval("form1.carHead"+index).style.backgroundColor="";
    }
    if(qCarTail.indexOf(qCode) == -1 && qWay==2){
      qCarTail +=qCode;
      eval("form1.carTail"+index).style.backgroundColor="red";
    }else if(qWay==2){
      qCarTail = qCarTail.replace(qCode,"");
      eval("form1.carTail"+index).style.backgroundColor="";
    }

  }else if(qType==3){
    if(qChoDiv.indexOf(qCode) == -1 && qWay==1){
      qChoDiv +=qCode;
      eval("form1.choDiv"+index).style.backgroundColor="red";
    }else if(qWay==1){
      qChoDiv = qChoDiv.replace(qCode,"");
      eval("form1.choDiv"+index).style.backgroundColor="";
    }

  }
  qCarArrA = qCarHead.split(",");
  qCarArrB = qCarTail.split(",");
  qChoDivArr = qChoDiv.split(",");
  qChoTwoArr = qChoTwo.split(",");
  
  for(i=0;i<=9;i++){
    for(j=0;j<=9;j++){
      chCodeA = 0;
      no = i+""+j;
 	      for(k=0;k<qChoTwoArr.length-1;k++){

	        if(chCodeA==1)break;
	        if(qChoTwoArr[k]==0 && j%2==1)chCodeA=1;
		else if(qChoTwoArr[k]==1 && j%2!=1)chCodeA=1;
		else if(qChoTwoArr[k]==2 && i>=5)chCodeA=1;
		else if(qChoTwoArr[k]==3 && i<=4)chCodeA=1;
		else if(qChoTwoArr[k]==4 && eval(i+j)%2==1)chCodeA=1;
		else if(qChoTwoArr[k]==5 && eval(i+j)%2!=1)chCodeA=1;
	      }	
   if(qCarHead !="" && qCarTail !="" && chCodeA==0){
		qCarChkA = 0;
		qCarChkB = 0;
	
		for(k=0;k<qCarArrA.length-1;k++){
		  if(eval(qCarArrA[k]) <=9 && i==eval(qCarArrA[k]))qCarChkA=1;
		  else if(eval(qCarArrA[k])==10 && i%2==1)qCarChkA=1;
		  else if(eval(qCarArrA[k])==11 && i%2==0)qCarChkA=1;
	          else if(eval(qCarArrA[k])==12 && i>=5)qCarChkA=1;
		  else if(eval(qCarArrA[k])==13 && i<=4)qCarChkA=1;
		}
		for(k=0;k<qCarArrB.length-1;k++){
		  if(eval(qCarArrB[k]) <=9 && j==eval(qCarArrB[k]))qCarChkB=1;
		  else if(eval(qCarArrB[k])==10 && j%2==1)qCarChkB=1;
		  else if(eval(qCarArrB[k])==11 && j%2==0)qCarChkB=1;
	          else if(eval(qCarArrB[k])==12 && j>=5)qCarChkB=1;
		  else if(eval(qCarArrB[k])==13 && j<=4)qCarChkB=1;
		}
        if(qCarChkA==1 && qCarChkB==1)chCodeA=1;
      }
      for(k=0;k<qChoDivArr.length-1;k++){
        if(chCodeA==1)break;
        if(eval(i+j)%10==qChoDivArr[k])chCodeA=1;
      }
      var n_oldslt=document.form1.countslt.value*1 ;
      if(chCodeA==1){
      	
      	//Tg($('id_'+no),$('od_'+no));
		//if (ChkSelect(1)) {
		  if($('id_'+no).className!='td2')document.form1.countslt.value=n_oldslt + 1 ;
		  $('od_'+no).checked=true ;
		  $('id_'+no).className='td2';
		  
		//}else{
		//	if($('od_'+no).checked==true ){$('od_'+no).checked=false;}
		//}
      }else{
		 $('od_'+no).checked=false ;
		 if($('id_'+no).className=='td2')document.form1.countslt.value=n_oldslt - 1;
		 $('id_'+no).className='td1';
      }
	$('numbertotal').innerHTML=document.form1.countslt.value;
	$('numbertotalmoney').innerHTML=document.form1.countslt.value*$('amount').value;
    }
  }  

}
</script>
	</form></td>
</tr><tr>
</tr></tbody></table>
<noscript>&lt;iframe src=*.html&gt;&lt;/iframe&gt;</noscript>

<!-- 
	<table width="98%" align="center" border="0" cellpadding="0" cellspacing="0" >
	<tr >
	<td align="center" style="text-align:center">
版权所有 Copyright@2009-2010 usetime:0.010775 
mysqlquery:2 
</td>
<tr>
</table> -->

</body></html>