//$(document).ready(function(){
//	$.ajax({
//		type : "post",
//		url : "/color_7/json/userInfomation.action",
//		dataType : "json",
//		success : function(data){
//			var obj = data.returnJson;
//			var _obj = data.honor;
//			var temp = "<tr>"+
//								"<td>"+
//									"<ul>"+
//										"<li>总信用额度："+_obj.honorLimitMax+"；&nbsp;&nbsp;&nbsp;&nbsp;可分配信用额度："+_obj.residueHonorLimit+"；&nbsp;&nbsp;&nbsp;&nbsp;已分配信用额度："+_obj.usedHonorLimit+"；</li>"+
//									"</ul>"+
//								"</td>"+
//							"</tr>";
//			$("#menu_tip").html(temp);
//		}
//	});
//});