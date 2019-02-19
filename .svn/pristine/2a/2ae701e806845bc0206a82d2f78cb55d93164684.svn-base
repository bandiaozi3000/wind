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
<!--  <script type="text/javascript" src="../static/js/jquery.1.9.1.js"></script> -->
<!-- <script type="text/javascript" src="../static/js/jquery1.42.min.js"></script> -->
<script type="text/javascript"
	src="<%=request.getContextPath()%>/statics/js/jquery.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/statics/js/jquery.superslide.2.1.1_2.js"></script>
<!-- <script type="text/javascript" src="../static/js/jquery.slidebox.min.js"></script> -->
<script>
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
		function addFavorite(){
		    if (document.all){//IE
		        try{
		            window.external.addFavorite(window.location.href,document.title);
		        }catch(e){
		            alert( "加入收藏失败，请使用Ctrl+D进行添加" );
		        }
		        
		    }else if (window.sidebar){
		        window.sidebar.addPanel(document.title, window.location.href, "");
		     }else{
		        alert( "加入收藏失败，请使用Ctrl+D进行添加" );
		    }
		}

		function collectionPage(sTitle, sURL) {
		    try {
		    	alert(sURL+sTitle);
		        window.external.addFavorite(sURL, sTitle);
		    } catch(e) {
		        try {
		            window.sidebar.addPanel(sTitle, sURL, "");
		        } catch(e) {
		            alert("加入收藏失败，请使用Ctrl+D进行添加");
		        }
		    }
		}
	</script>

</head>
<body>
	<div class="Dtop1">
		<div class="top1">
			<div class="top_L">
				<a onclick="addFavorite();">加入收藏</a> <a href="">联系我们</a>
			</div>
			<div class="top_R">
				<a href="javascript:void();">188-3964-1878</a> 
					<c:if test="${!empty users}">
						<a href="#">${users.userName}</a>&nbsp;&nbsp;
						<a href="#">退出</a>
					</c:if>
					<c:if test="${empty users}">
						<a id="logingALink" href="<%=request.getContextPath() %>/userlogin.jsp">登录</a> 
					<a id="registerALink" href="<%=request.getContextPath() %>/zhuce.jsp">注册</a>
					</c:if>
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
							<li class="" _t_nav="intoTTKExpsress1">
								<h2>
									<a
										href="<%=request.getContextPath() %>/jsp/kehujsp/kuaijian.jsp">客户服务</a>
								</h2>
							</li>
							<li class="" _t_nav="intoTTKExpress">
								<h2>
									<a
										href="<%=request.getContextPath() %>/jsp/shengyu/zoujin1.jsp">走进疾风</a>
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
							<li class="" t_nav="mytt">
								<h2>
									<a href="<%=request.getContextPath() %>/userlogin.jsp">我的疾风</a>
								</h2>
							</li>
						</ul>
					</div>
				</div>
			</div>

		</div>

	</div>

	<div style="clear: both"></div>


<div style="text-align:center;">
	<img src="<%=request.getContextPath() %>/statics/picture/ttjoin.jpg"
			width="100%" height="300px" />
</div>
<div class="about_cx"></div>
<div class="Dmain_about">
	<div class="quick_navigation">
			您现在的位置：<a href="/">首页</a>&nbsp;>我的疾风</a>&nbsp;> <a
				href="<%=request.getContextPath() %>/jsp/usersInfo/changePass.jsp">修改密码
			</a>
		</div>
	<div class="about_main1">
		<div class="about_left1" id="about_left1">
			<p class="bluelinea">&nbsp;&nbsp;我的天天</p>
			<ul>
					<li><a
						href="<%=request.getContextPath() %>/jsp/usersInfo/usersInfo.jsp">&nbsp;&nbsp;-&nbsp;用户信息</a>
					</li>
					<li><a href="<%=request.getContextPath() %>/jsp/usersInfo/changeInfo.jsp">&nbsp;&nbsp;-&nbsp;修改个人信息</a>
					</li>

					<li class="active"><a href="<%=request.getContextPath() %>/jsp/usersInfo/changePass.jsp">&nbsp;&nbsp;-&nbsp;修改密码</a>
					</li>
					<li>
					<a href="<%=request.getContextPath() %>/jsp/usersInfo/addressBook.jsp">&nbsp;&nbsp;-&nbsp;管理地址簿</a>
					</li>
				</ul>
		</div>
<input type="hidden" id="path" value="<%=request.getContextPath()%>"/>
		<div class="about_right1" id="about_right1">
			<div class="location">
				<div>修改密码</div>
			</div>
			<form action="<%=request.getContextPath()%>/user/updateUserPassword.do">
			<div class="czdlmm_bto">
           	<div class="czdlmm_bto_l">
                <div class="iphone_numa">
                	<span>原密码</span>
					<input id="oldPassword" type="password" autocomplete="off"
						class="iphone_box" placeholder="6-16个字符">
					<div class="cxhqyam">
						<p id="oldPasswordCheck"></p>
					</div>
               	</div>
				<div class="iphone_num">
					<span>设置密码</span>
					<input id="password" type="password" autocomplete="off"
						class="iphone_box" name="userPassword" placeholder="6-16个字符">
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
                <div class="iphone_num1">
               		<span>确认密码</span>
               		<input id="passwords" type="password" autocomplete="off" 
               		class="iphone_box" placeholder="6-16个字符">
					<div class="cxhqyam">
						<p id="passwordsCheck"></p>
					</div>
				</div>
                <div class="cxhqyam">
	                <span class="tstp"></span></div>
	                <input id="modifyPasswordBtn" type="submit" class="nexta" value="提交">
	            </div>
           </div>
           </form>
		</div>
		<!--about_main1-->
	</div>
	<div style="clear:both"></div>
</div>
<script type="text/javascript">
	function checkStrong(sValue) {
	    var modes = 0;
	    //正则表达式验证符合要求的
	    if (sValue.length < 6) return modes;
	    if (/\d/.test(sValue)) modes++; //数字
	    if (/[a-z]/.test(sValue)) modes++; //小写
	    if (/[A-Z]/.test(sValue)) modes++; //大写  
	    if (/[`~!@#$%\^\&\*\(\)_\+<>\?:"\{\},\.\\\/;'\[\]]/im.test(sValue)) modes++; //特殊字符
	   	return modes;
	} 
	
	$(function(){
		$("#password").on({
			input:function(){
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

	    $("#oldPassword").blur(function(){
	    	validateOldPassword();
	    });
		$("#password").blur(function(){
			validatePassword();
		});
		$("#passwords").blur(function(){
			validatePasswords();
		});
	    function validateOldPassword(){
			if($("#oldPassword").val().length >= 6 && $("#oldPassword").val().length <= 16){
				$("#oldPasswordCheck").text('').removeClass("errorTips").addClass("rightTips");
				$("#oldPassword").css("border","1px #cacaca solid");
				return 0;
			}else{
				$("#oldPasswordCheck").text('亲~密码长度限制6-16位').removeClass("rightTips").addClass("errorTips");
				$("#oldPassword").css("border","1px #EA3A3A solid");
				return 1;
			}
		}
	    function validatePassword(){
			if($("#password").val().length >= 6 && $("#password").val().length <= 16){
				if($("#password").val() == $("#oldPassword").val()){
					$("#passwordCheck").text('亲~新密码不能与原密码相同').removeClass("rightTips").addClass("errorTips");
					$("#password").css("border","1px #EA3A3A solid");
					return 1;
				}else{
					$("#passwordCheck").text('').removeClass("errorTips").addClass("rightTips");
					$("#password").css("border","1px #cacaca solid");
					return 0;
				}
			}else{
				$("#passwordCheck").text('亲~密码长度限制6-16位').removeClass("rightTips").addClass("errorTips");
				$("#password").css("border","1px #EA3A3A solid");
				return 1;
			}
		}
	    function validatePasswords(){
			if(($("#passwords").val()) == ($("#password").val()) && $("#password").val() != ''){
				$("#passwordsCheck").text('').removeClass("errorTips").addClass("rightTips");
				$("#passwords").css("border","1px #cacaca solid");
		        return 0;
			}else{
				$("#passwordsCheck").text('亲~请输入一致的密码呦').removeClass("rightTips").addClass("errorTips");
				$("#passwords").css("border","1px #EA3A3A solid");
		        return 1;
			}
	    }
		$('#modifyPasswordBtn').click(function(){
			var validateResult = validatePasswords() + validateOldPassword() + validatePassword();
			if(validateResult==0){
    			$.ajax({
    				type:"post",	
    				url:"/mytt/customerAction!modifyPaassword.action",				
    				data:{"oldPassword":$('#oldPassword').val(),
    					  "password":$('#password').val()},
					error: function(){
						sweetAlert("", 'Error loading web_jsp document！', "warning");
    				},
    				success:function(data){
	                	var obj = eval( "(" + data + ")" );
     					if(obj.success == "true"){
     						window.location.href="/modifyPasswordSuccess.action"; 
     					}else{
     						sweetAlert("", obj.msg, "info");
     					}
    				} 	 		
    			});
			}
		});
	});
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
							<a
								href="/staticFile/pages/ttservice/customerGuide.html?column=provisionSet">禁运品</a>
						</p>
						<p>
							<a
								href="/staticFile/pages/ttservice/customerGuide.html?column=calculate">计费方式</a>
						</p>
						<p>
							<a href="/staticFile/pages/ttservice/mobileApplications.html">移动应用</a>
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
							<a href="/staticFile/pages/ttservice/expressDeliveryService.html">天天服务</a>
						</p>
						<p>
							<a href="/staticFile/pages/ttjoin/joinNotes.html">天天加盟</a>
						</p>

					</li>
					<li class="footerSplitlineLi"><img
						src="<%=request.getContextPath()%>/statics/picture/footersplitline.png"
						width="1px" height="123px"></li>
					<li>
						<p>
							<a href="<%=request.getContextPath()%>/jsp/kehujsp/kefu.jsp">在线客服</a>
						</p>
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

