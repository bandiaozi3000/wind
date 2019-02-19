<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>疾风快递-天天快递有限公司首页</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="keywords" content="天天快递,天天快递有限公司" />
<meta name="description" content="天天快递,天天快递有限公司" />
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link href="<%=request.getContextPath()%>/statics/css/public.css"
	rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/statics/css/style.css"
	rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/statics/css/mystyle.css"
	rel="stylesheet" type="text/css" />
<!--  <script type="text/javascript" src="../static/js/jquery.1.9.1.js"></script>
 <script type="text/javascript" src="../static/js/jquery1.42.min.js"></script>  -->
<script type="text/javascript"
	src="<%=request.getContextPath()%>/statics/js/jquery.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/statics/js/jquery.superslide.2.1.1_2.js"></script>
<!--  <script type="text/javascript" src="../static/js/jquery.slidebox.min.js"></script>  -->
<script>

function sendCode() {
	var path = $("#path").val();
	var userPhone = $("[name=userPhone]").val();
	 $.ajax({
	   	   url:path+"/user/sendCode.do",
	   	   type: "post",
	          data: {"userPhone":userPhone},
	          dataType: "json",
	          success: function(json){
	        	 alert(json.info)
	          }
	}) 
}
	jQuery(document).ready(
			function() {
				var qcloud = {};
				$('[_t_nav]').hover(
						function() {
							var _nav = $(this).attr('_t_nav');
							clearTimeout(qcloud[_nav + '_timer']);
							qcloud[_nav + '_timer'] = setTimeout(function() {
								$('[_t_nav]').each(
										function() {
											$(this)[_nav == $(this).attr(
													'_t_nav') ? 'addClass'
													: 'removeClass']
													('nav-up-selected');
										});
								$('#' + _nav).stop(true, true).slideDown(200);
							}, 150);
						}, function() {
							var _nav = $(this).attr('_t_nav');
							clearTimeout(qcloud[_nav + '_timer']);
							qcloud[_nav + '_timer'] = setTimeout(function() {
								$('[_t_nav]').removeClass('nav-up-selected');
								$('#' + _nav).stop(true, true).slideUp(200);
							}, 150);
						});
			});
	function addFavorite() {
		if (document.all) {//IE
			try {
				window.external.addFavorite(window.location.href,
						document.title);
			} catch (e) {
				alert("加入收藏失败，请使用Ctrl+D进行添加");
			}

		} else if (window.sidebar) {
			window.sidebar.addPanel(document.title, window.location.href, "");
		} else {
			alert("加入收藏失败，请使用Ctrl+D进行添加");
		}
	}

	function collectionPage(sTitle, sURL) {
		try {
			alert(sURL + sTitle);
			window.external.addFavorite(sURL, sTitle);
		} catch (e) {
			try {
				window.sidebar.addPanel(sTitle, sURL, "");
			} catch (e) {
				alert("加入收藏失败，请使用Ctrl+D进行添加");
			}
		}
	}
</script>
<style>
	#search{
		background-color: #0055A2;
		color:#fff;
	}
</style>
</head>
<body>
<input type="hidden" id="path" value="<%=request.getContextPath() %>">
	<div class="Dtop1">
		<div class="top1">
			<div class="top_L">
				<a onclick="addFavorite();">加入收藏</a> <a
					href="">联系我们</a>
			</div>
			<div class="top_R">
				 <a href="http://mail.ttkd.cn/" target="_blank">企业邮箱</a> <a
					href="javascript:void();">188-3964-1878</a> <a id="logingALink"
					href="<%=request.getContextPath() %>/userlogin.jsp">登录</a> 
					<a id="registerALink"href="<%=request.getContextPath() %>/zhuce.jsp">注册</a>
			</div>
			<div style="clear: both"></div>
		</div>

		<div class="head-v3">
			<div class="navigation-up">
				<div class="navigation-inner">
					<div class="logimg">
						<a href="#"><img
							src="<%=request.getContextPath()%>/statics/picture/logo.png" /></a>
					</div>

					<div class="navigation-v3">
						<ul>
							<li class="nav-up-selected-inpage" _t_nav="home">
								<h2>
									<a href="<%=request.getContextPath() %>/index.jsp">&nbsp;&nbsp;&nbsp;首页&nbsp;&nbsp;&nbsp;</a>
								</h2>
							</li>
							<li class="" _t_nav="intoTTKExpress1">
								<h2>
									<a href="<%=request.getContextPath() %>/jsp/kehujsp/kuaijian.jsp">客户服务</a>
								</h2>
							</li>
							<li class="" _t_nav="intoTTKExpress">
								<h2>
									<a href="<%=request.getContextPath() %>/jsp/shengyu/zoujin1.jsp">走进疾风</a>
								</h2>
							</li>
							<li class="" _t_nav="ttnews">
								<h2>
									<a href="<%=request.getContextPath() %>/jsp/shengyu/xinwen.jsp">疾风新闻</a>
								</h2>
							</li>
							<li class="" _t_nav="ttservice">
								<h2>
									<a href="<%=request.getContextPath()%>/jsp/shengyu/fuwu.jsp">疾风服务</a>
								</h2>
							</li>
							<li class="" _t_nav="ttjoin">
								<h2>
									<a href="<%=request.getContextPath()%>/jsp/shengyu/jiameng.jsp">疾风加盟</a>
								</h2>
							</li>


							<li class=""_t_nav="mytt">
								<h2>
									<a href="<%=request.getContextPath() %>/pd.do">我的疾风</a>
								</h2>
							</li>
						</ul>
					</div>
				</div>
			</div>
		
		</div>

	</div>


	<div style="clear: both"></div>

<script type="text/javascript" src="../static/js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="../static/js/jquery.js"></script>
<script type="text/javascript" src="../static/js/jquery.min.js"></script>
<script type="text/javascript" src="../static/js/jquery.superslide.2.1.1_2.js"></script>
<script type="text/javascript" src="../static/js/jquery.slidebox.min.js"></script>
<link rel="stylesheet" type="text/css" href="../static/css/sweet-alert.css">
<script type="text/javascript" src="../static/js/sweet-alert.js"></script>
<script type="text/javascript" src="../static/js/gt.js"></script>

<div style="text-align:center;">
	<img src="<%=request.getContextPath() %>/statics/picture/ttjoin.jpg" width="100%" height="300px" />
</div>
<div class="about_cx"></div>
<div class="Dmain_about">
<div class="about_main1">
	<div class="customerservice" style="width:100%">
		<div class="czdlmm">
           	<span class="lt"></span>
               <span class="ltzi">会员注册</span>
           </div>
           <form action="<%=request.getContextPath() %>/user/register.do">
           <div class="czdlmm_bto">
           	<div class="czdlmm_bto_l">
               	<div class="iphone_numa">
               		<span>手机号</span>
               		<input type="text" id="telPhoneNumber" name="userPhone" autocomplete="off"
               			class="iphone_box" placeholder="请输入手机号">
					<div class="cxhqyam">
					<c:if test="${!empty register }">
						<span style="color: red">${register }</span>
					</c:if>
					<c:if test="${empty register }">
						<p id="telPhoneNumberCheck"></p>
					</c:if>
					</div>
               	</div>
				
                <div class="iphone_numa">
                	<div style="float: left;">
                		<span>短信验证码</span>
	                	<input type="text" id="messageCode" class="iphone_box1"  name="code" autocomplete="off"
	                		placeholder="请输入验证码">
	                	<input type="button" class="phoneInput" id="phoneInput" value="获取手机验证码" onclick="sendCode()"/>
                		
                	</div>
					<div class="cxhqyam">
						<p id="messageCodeCheck"></p>
					</div>
               	</div>
				<div class="iphone_numa">
					<span>设置密码</span>
					<input id="password" type="password" name="userPassword" autocomplete="off"
						class="iphone_box" placeholder="6-16个字符">
					<div class="cxhqyam">
						<p id="passwordCheck"></p>
					</div>
				</div>
				<div class="qiangdu">
                   	<ul>
                    	<li id="demo1">弱</li>
                        <li id="demo2">中</li>
                        <li id="demo3">强</li>
                    </ul>
                </div>
                <div class="iphone_numa">
               		<span>确认密码</span>
               		<input id="passwords" type="password" autocomplete="off" 
               		class="iphone_box" placeholder="6-16个字符">
					<div class="cxhqyam">
						<p id="passwordsCheck"></p>
					</div>
				</div>
                <div class="cxhqyam">
	                <span class="tstp">
	                <input type="hidden" id="validateResult" value="1"/>
	                </span></div>
	                <input id="registerBtn" type="submit" class="nexta" value="提交注册"> 
					<input id="messageInitStatu" type="hidden" value="0">
	            </div>

               <div class="czdlmm_bto_r">
               	<p class="hyzcz1">欢迎注册天天快递会员</p>
                   <p class="hyzcz2">1、如有疑问可以直接联系在线客服</p>
                   <div class="lxkf"><span><img src="<%=request.getContextPath() %>/statics/picture/wwkf.png"></span><span><img  src="<%=request.getContextPath() %>/statics/picture/qqkf.png"></span></div>
                   <p class="hyzcz3">2、如已经注册帐号可直接点击登录</p>
                   <div class="djdl"><a href="<%=request.getContextPath() %>/userlogin.jsp">点击登录</a></div>
               </div>
           </div>
           </form>
	</div>
	<div style="clear:both"></div>
</div>
<!--about_main1-->
</div>
<script type="text/javascript">
	var t = 60;
	
	$.ajax({
	    url: "/StartCaptcha.action?t=" + (new Date()).getTime(), 
	    type: "get",
	    dataType: "json",
	    success: function (data) {
	        initGeetest({
	            gt: data.gt,
	            challenge: data.challenge,
	            new_captcha: data.new_captcha, 
	            offline: !data.success, 
	            product: "popup", 
	            width: "100%"
	        }, handler2);
	    }
	});
	jQuery(document).ready(function(){
		var qcloud={};
		$('[_t_nav]').hover(function(){
			var _nav = $(this).attr('_t_nav');
			clearTimeout( qcloud[ _nav + '_timer' ] );
			qcloud[ _nav + '_timer' ] = setTimeout(function(){
			$('[_t_nav]').each(function(){
			$(this)[ _nav == $(this).attr('_t_nav') ? 'addClass':'removeClass' ]('nav-up-selected');
			});
			$('#'+_nav).stop(true,true).slideDown(200);
			}, 150);
		},function(){
			var _nav = $(this).attr('_t_nav');
			clearTimeout( qcloud[ _nav + '_timer' ] );
			qcloud[ _nav + '_timer' ] = setTimeout(function(){
			$('[_t_nav]').removeClass('nav-up-selected');
			$('#'+_nav).stop(true,true).slideUp(200);
			}, 150);
		});
	});

	function update_p(num, t) {
		if (num == t) {
			$("#phoneInput").val("重新发送");
			$("#phoneInput").attr("disabled",false);
			$("#phoneInput").css("background-color","#27a8e8");
		} else {
			printnr = t - num;
			$("#phoneInput").val("(" + printnr + ")秒后重新发送");
		}
	}
	function checkStrong(sValue) {
		var modes = 0;
		//正则表达式验证符合要求的
		if (sValue.length < 6)
			return modes;
		if (/\d/.test(sValue))
			modes++; //数字
		if (/[a-z]/.test(sValue))
			modes++; //小写
		if (/[A-Z]/.test(sValue))
			modes++; //大写  
		if (/[`~!@#$%\^\&\*\(\)_\+<>\?:"\{\},\.\\\/;'\[\]]/im.test(sValue))
			modes++; //特殊字符
		return modes;
	}
	
	function resetStyle(){
		$("#messageCodeCheck").text('').removeClass("errorTips");
		$("#messageCode").css("border", "1px #cacaca solid");
	}

	$("#password").on({
		input : function() {
			switch (checkStrong($("#password").val())) {
			case 1:
				$("#demo1").addClass("dqqd");
				$("#demo2").removeClass("dqqd");
				$("#demo3").removeClass("dqqd");
				break;
			case 2:
			case 3:
				$("#demo1").addClass("dqqd");
				$("#demo2").addClass("dqqd");
				$("#demo3").removeClass("dqqd");
				break;
			case 4:
				$("#demo1").addClass("dqqd");
				$("#demo2").addClass("dqqd");
				$("#demo3").addClass("dqqd");
				break;
			default:
				break;
			}
		}
	});
	$("#password").blur(function() {
		validatePassword();
	});
	$("#passwords").blur(function() {
		validatePasswords();
	});
	$("#telPhoneNumber").blur(function() {
		validateTelPhone();
	});
	function validatePassword() {
		if ($("#password").val().length >= 6
				&& $("#password").val().length <= 16) {
			$("#passwordCheck").text('').removeClass("errorTips").addClass(
					"rightTips");
			$("#password").css("border", "1px #cacaca solid");
			return 0;
		} else {
			$("#passwordCheck").text('亲~密码长度限制6-16位').removeClass(
					"rightTips").addClass("errorTips");
			$("#password").css("border", "1px #EA3A3A solid");
			return 1;
		}
	}
	function validatePasswords() {
		if($("#passwords").val().length > 0){
			if (($("#passwords").val()) == ($("#password").val())) {
				$("#passwordsCheck").text('').removeClass("errorTips")
						.addClass("rightTips");
				$("#passwords").css("border", "1px #cacaca solid");
				return 0;
			} else {
				$("#passwordsCheck").text('亲~请输入一致的密码呦').removeClass(
						"rightTips").addClass("errorTips");
				$("#passwords").css("border", "1px #EA3A3A solid");
				return 1;
			}	
		}
	}
	function validateTelPhone() {
       	var tel = $('#telPhoneNumber').val().search(/^(13[0-9]|14[57]|15[0-35-9]|17[6-8]|18[0-9])[0-9]{8}$/);
        if(tel == -1){
			$('#telPhoneNumberCheck').text('亲~请输入正确的手机号码').removeClass()
					.addClass("errorTips");
			$('#telPhoneNumber').css("border", "1px #EA3A3A solid");
			return 1;
		} else {
			$("#telPhoneNumberCheck").text('').removeClass("errorTips")
			.addClass("rightTips");
			$("#telPhoneNumber").css("border", "1px #cacaca solid");
			return 0;
		}
	}

	function validateMessageCode(){
        if($('#messageCode').val() == null || $('#messageCode').val().trim().length ==0){
			$('#messageCodeCheck').text('亲~请输入正确的短信验证码').removeClass()
					.addClass("errorTips");
			$('#messageCode').css("border", "1px #EA3A3A solid");
			return 1;
		} else{
			$("#messageCodeCheck").text('').removeClass("errorTips")
					.addClass("rightTips");
			$("#messageCode").css("border", "1px #cacaca solid");
			return 0;
		}
	}
	function ValidateCode(){
        if($('#validateResult').val() != 0 ){
			$('#validateCodeCheck').text('亲~亲进行安全验证。').removeClass()
					.addClass("errorTips");
			return 1;
		} else{
			$("#validateCodeCheck").text('').removeClass("errorTips")
					.addClass("rightTips");
			return 0;
		}
	}
	

	var handler2 = function(captchaObj) {
		$("#phoneInput").click(function(e) {
			var result = captchaObj.getValidate();
			if (!result) {
				sweetAlert("", "亲~请进行安全验证。", "info");
				return;
			}
			if (validateTelPhone() != 0) {
				return;
			}
			$("#validateResult").val(0);
			$.ajax({
				url: '/mytt/customerAction!sendPhoneMessage.action',
				type: 'post',
				data: {
					"userPhoneTel": $('#telPhoneNumber').val(),
					"operation": "register",
					geetest_challenge: result.geetest_challenge,
					geetest_validate: result.geetest_validate,
					geetest_seccode: result.geetest_seccode
				},
				success: function(data) {
					var obj = eval("(" + data + ")");
					if (obj.result == 'true') {
						$("#phoneInput").attr("disabled", true);
						$("#phoneInput").css("background-color", "#aaa");
						for (i = 1; i <= t; i++) {
							window.setTimeout("update_p(" + i + "," + t + ")", i * 1000);
						}
					} else if (obj.result == 'lastSendMessage') {
						$("#phoneInput").attr("disabled", true);
						$("#phoneInput").css("background-color", "#aaa");
						var maxsize = obj.msg;
						for (i = 1; i <= maxsize; i++) {
							window.setTimeout("update_p(" + i + "," + maxsize + ")", i * 1000);
						}
					} else {
						captchaObj.reset();
						sweetAlert("", obj.msg, "warning");
					}
				},
				error: function() {
					captchaObj.reset();
					sweetAlert("", 'Error loading web_jsp document！', "warning");
				},
			})
		});
		$('#registerBtn').click(function() {
			var result = captchaObj.getValidate();
			if (!result) {
				$('#validateCodeCheck').text('亲~请进行安全验证。').removeClass().addClass("errorTips");
				return;
			}
			var validateResult = validatePasswords() + validateTelPhone() + validatePassword() + validateMessageCode() + ValidateCode();
			if (validateResult == 0) {
				$.ajax({
					type: "post",
					url: "/mytt/customerAction!register.action",
					data: {
						"userPhoneTel": document.getElementById('telPhoneNumber').value,
						"password": document.getElementById('password').value,
						"messageCode": document.getElementById('messageCode').value,
						geetest_challenge: result.geetest_challenge,
						geetest_validate: result.geetest_validate,
						geetest_seccode: result.geetest_seccode
					},
					error: function() {
						sweetAlert("", 'Error loading web_jsp document！', "warning");
					},
					success: function(data) {
						var obj = eval("(" + data + ")");
						if (obj.success == "true") {
							window.location.href = "/registerSuccess.action";
						} else {
							captchaObj.reset();
							if (obj.msg == '验证码不正确！') {
								$("#messageCodeCheck").text(obj.msg).removeClass("rightTips").addClass("errorTips");
								$("#messageCode").css("border", "1px #EA3A3A solid");
							} else {
								sweetAlert("", obj.msg, "info");
							}
						}
					}
				});
			}
		});
	    captchaObj.appendTo("#captcha2");
	    captchaObj.onReady(function() {
	        $("#wait2").hide();
	    });
	};
</script>

<div class="Dfooter">
		<div class="footer1">

			<div class="footer2L">
				<ul>

					<li class="footerSplitlineLi"><img
						src="<%=request.getContextPath()%>/static/picture/footersplitline.png"
						width="1px" height="123px"></li>
					<li>
						<p>
							<a href="<%=request.getContextPath()%>/jsp/kehujsp/kuaijian.jsp">快件查询</a>
						</p>
						<p>
							<a href="<%=request.getContextPath()%>/jsp/kehujsp/zaixian.jsp">在线寄件</a>
						</p>
						<p>
							<a href="<%=request.getContextPath()%>/jsp/kehujsp/quanguo.jsp">网点查询</a>
						</p>
						<p>
							<a href="<%=request.getContextPath()%>/jsp/shengyu/guiding.jsp">禁运品</a>
						</p>
						<p>
							<a href="<%=request.getContextPath()%>/jsp/shengyu/jifei.jsp">计费方式</a>
						</p>

					</li>
					<li class="footerSplitlineLi"><img
						src="<%=request.getContextPath()%>/statics/picture/footersplitline.png"
						width="1px" height="123px"></li>
					<li>
						<p>
							<a href="/staticFile/pages/customerus.html">联系我们</a>
						</p>
						<p>
							<a
								href="/staticFile/pages/ttservice/customerGuide.html?column=clientele">投诉建议</a>
						</p>
						<p>
							<a href="<%=request.getContextPath()%>/jsp/shengyu/fuwu.jsp">疾风服务</a>
						</p>
						<p>
							<a href="<%=request.getContextPath()%>/jsp/shengyu/jiameng.jsp">疾风加盟</a>
						</p>

					</li>
					<li class="footerSplitlineLi"><img
						src="<%=request.getContextPath()%>/statics/picture/footersplitline.png"
						width="1px" height="123px"></li>
					<li>
						<p>
							<a href="<%=request.getContextPath()%>/jsp/kehujsp/kefu.jsp">在线客服</a>
						</p> <!-- <p>
							<a target="_blank"
								onclick="javascript:window.open('http://crm2.qq.com/page/portalpage/wpa.php?uin=4001888888&f=1&ty=1&aty=0&a=&from=6', '_blank', 'height=544, width=644,toolbar=no,scrollbars=no,menubar=no,status=no');return false;">QQ咨询</a>
						</p> --> <!-- <p>
							<a target="_blank"
								href="http://amos.im.alisoft.com/getcid.aw?v=3&uid=天天快递客服中心&site=cntaobao&groupid=220229&s=1&charset=utf-8">旺旺咨询</a>
						</p> -->
						<p>
							<a href="javascript:void();">全国客服热线：</a>
						</p>
						<p>
							<a href="javascript:void();">4001-888-888</a>
						</p>
						<p>
							<a
								href="http://weibo.com/p/1006063560658954/home?from=page_100606&mod=TAB#place"><img
								src="<%=request.getContextPath() %>/statics/picture/weibo.png"
								width="21px" height="21px" />&nbsp;官方微博</a>
						</p>
					</li>
					<div style="clear: both"></div>
				</ul>
			</div>
			<div style="clear: both"></div>
		</div>
		<!--footer1-->

		<div class="footer3">
			&nbsp;&nbsp;@版权所有 2016疾风快递有限公司 豫ICP备13006085号<br>
		</div>
	</div>
	<!--Dfooter-->


</body>
</html>

