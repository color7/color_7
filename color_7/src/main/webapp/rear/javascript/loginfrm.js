function getQueryTimeid()
{
	var date = new Date();   
	return date.getTime();
} 
var loginTimes = 1;
var logingetr = '';
var loginwap = '';

function onLogin(getr,wap)
{
	logingetr=getr;
	loginwap=wap;

	if($("#login_admin").attr("disabled")=="disabled")return false;
	$('#login_admin').val('Loading..');
	$("#login_admin").attr({"disabled":"disabled"});
	var uu = "admin_username"+getr;
	var pp = "admin_password"+getr;
	var username = $("input[name='"+uu+"']").val();
	var password = $("input[name='"+pp+"']").val();

	if (username.length == 0)
	{
		smessagebox(null,'Please fill out the account！',false,uu,wap);
		$("input[name='"+uu+"']").focus();
		return false;
	}else if(password.length == 0){
		smessagebox(null,'Please fill in password！',false,pp,wap);
		$("input[name='"+pp+"']").focus();
		return false;	
	}
	var encryptkey = $.jCryption.createKey();
	
    $.jCryption.authenticate(encryptkey, "/ajax_login.php?action=CryptionData&getPublicKey=true&timeid="+getQueryTimeid(), "/ajax_login.php?action=CryptionData&handshake=true&timeid="+getQueryTimeid(), function(AESKey)
    {
    	var getuser =  $.jCryption.str2hex(Base64_2.encode($.jCryption.encrypt(username, encryptkey)));
    	var getpass =  $.jCryption.str2hex(Base64_2.encode($.jCryption.encrypt($.md5(password), encryptkey)));
    	 //$("input[name='"+uu+"']").val(getuser.s);
        var logininfo = {
            username: getuser, 
            password: getpass,
            useragent: navigator.userAgent.toLowerCase()
        };
        
        $.ajax({
            url: '/ajax_login.php?action=LogApp', 
            type: 'POST', 
            dataType: 'json', 
            data: logininfo, 
            //async:true,
            //timeout:6000,
            complete: function (xhr, status)
            {
            	//alert(status);
            }, 
            error: function(jqXHR, textStatus, errorThrown)
            {
                smessagebox(null,'代号:'+jqXHR.status+' ,连接失败, 请重新登录',false,pp,wap);
            }, 
            success: function(data, textStatus, jqXHR)
            {
            	
                if (data.status == 200)
                {
                	if(wap==3){
                		smessagebox(null,data.msg,false,pp,data.status);
                	}else{
                    	location.href = data.fUrl;
                	}
                }

                else
                {
                    smessagebox(null,data.msg,false,pp,wap);
                    $("input[name='"+pp+"']").val('');

                }
            }
        });
    }, function()
    {
        if (loginTimes <= 3)
        {
            ++ loginTimes;
            onLogin(getr,wap);
        }
        else
        {
            smessagebox(null,'未知错误, 请重新登录',false,pp,wap); 
        }
    });
    
    return false;
}

(function ($, undefined) {
	$.fn.extend ({
		doModal: function (params)
		{
			var parent = $(this);
			var options = $.extend(true, 
				{
					name: '',
					content: '',
					showfocus: '',
					show_ok_btn: true,
					show_close_btn: true,
					ok_handler: null,
					close_handler: null,
					minwidth: 300,
					minheight: 120,
					offsetx: 0,
					offsety: 0,
					show_dlgclose: true,
					autoscroll:false,	/** 是否自动滚动 **/
					autokeyenter:true, /** 是否启用enter事件 **/
					show_title:true	,/** 是否显示标题 **/
					isconfirm: false /** **/
				}, 
				params);
	
			var htmlmsg='<div id="mdlg_overlay"></div><div class="alert_window_box" id="jq_alert_window_box">';
			htmlmsg+='<div class="alert_border">';
            htmlmsg+='<div class="alert_box">';
            htmlmsg+='    <div class="alert_top">';
            htmlmsg+='        <div class="alert_title">温馨提示</div>';
            htmlmsg+='        <div class="alert_close" title="关闭" ></div>';
            htmlmsg+='        <div class="clear"></div>';
            htmlmsg+='    </div>';
            htmlmsg+='    <div class="alert_main">';
            htmlmsg+='        <div class="icon_error"></div>';//icon_tip  icon_success
            htmlmsg+='        <div class="alert_content">'+params.content+'';
            htmlmsg+='            <h4></h4>';
            htmlmsg+='            <div class="detail"></div>';
            htmlmsg+='        </div>';
            htmlmsg+='        <div class="clear"></div>';
            htmlmsg+='        <div class="alert_push"></div>';
            htmlmsg+='        <div class="alert_sbt"><input type="button" class="alert_sbt" value="确 定"/></div>';
            htmlmsg+='    </div>';
            htmlmsg+='</div>';
       		htmlmsg+='</div></div>';
			var dialog = $('<div class="modal_dialog" style="z-index: 1000;"></div>').append(htmlmsg);
			if(options.bodyscale){
				dialog.addClass("modal_dialog_body");
			}
	
			if (!options.show_title)
			{
				$('#mdlg_title', dialog).hide();
			}
			
			var $mdlg = $('.alert_close', dialog).click(function () {
				if (options.before_close)
				{
					options.before_close(params);
				}
				if (options.close_handler)
				{
					dialog.hide();
					options.close_handler(params);
				} 

				dialog.remove();
			});
			
			if (!options.show_dlgclose)
			{
				$mdlg.hide();
			}
			
			$('.alert_sbt', dialog).click(function () {
				if (options.ok_handler)
				{
					dialog.hide();
					options.ok_handler(params);
				}
				if (options.showfocus!='')
				{
					setTimeout(function () {$("input[name='"+options.showfocus+"']").focus();}, 300);
				}
				dialog.remove();
			});

			

			parent.append(dialog);
			
			if(options.autokeyenter) {
				setTimeout(function () {$('.alert_sbt', dialog).focus();}, 300);
			}	
			

			if(options.autoscroll) 
			{
				var $dlg = $(".alert_content",dialog);
				$.autoscrollex($dlg);
			}
			
			dialog.close = function ()
			{
				return $(this).remove();
			}
			
			return dialog;
		}
	});
	$.fn.extend ({
		doModalWap: function (msg,wap)
		{
			if(wap==3){
				var dialog='<div class="detail"><p class="red-box wrong-tip">'+msg+'</p></div>';
			}else{
				var dialog='<div class="detail"><p class="success-tip">'+msg+'<br /><a href=\"./wap_rule.html\">了解以及同意本系统协议</a><br /><FORM METHOD=POST ACTION="index.php?action=soonorder&"><input onClick="self.location=\'index.php?action=logout\'" class="button" type=button value=不同意 name=Submit>&nbsp;&nbsp;<input type=submit value=同意 id=Submit2 name=Submit2 class=\"button\"></FORM></p></div>';
				$('#showwaplogin').hide();
			}
			$(this).html(dialog);
			$(this).show();
			
		}
	});
}) (jQuery);

function smessagebox ($target, msg, autoscroll,showfocus,wap) 
{
	$('#login_admin').val('login');$("#login_admin").removeAttr("disabled");
	if(wap==3||wap==200){
		$target = $("#showwapmsg");
		$target.doModalWap(msg,wap);
	}else{	
		if(!$target) {
			$target = $("body");
		}
	
		$target.doModal({
			show_dlgclose: true, 
			content: msg,
			show_ok_btn: true,
			autokeyenter: true,
			autoscroll: autoscroll,
			showfocus: showfocus
		});
	}
}

