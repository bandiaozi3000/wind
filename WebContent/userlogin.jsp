<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>疾风快递-天天快递有限公司首页</title>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="keywords" content="天天快递,天天快递有限公司" />
<meta name="description" content="天天快递,天天快递有限公司" />
<link href="<%=request.getContextPath()%>/statics/css/public.css"
	rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/statics/css/style.css"
	rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/statics/css/mystyle.css"
	rel="stylesheet" type="text/css" />
<!--  <script type="text/javascript" src="../static/js/jquery.1.9.1.js"></script> -->
<!-- <script type="text/javascript" src="../static/js/jquery1.42.min.js"></script> -->
<script type="text/javascript" src="<%=request.getContextPath()%>/statics/js/jquery.min.js"></script> 
<script type="text/javascript"
	src="<%=request.getContextPath()%>/statics/js/jquery.superslide.2.1.1_2.js"></script>
<!-- <script type="text/javascript" src="../static/js/jquery.slidebox.min.js"></script> -->
</head>
<body>
<div class="Dtop1">
		<div class="top1">
			<div class="top_L">
				<a onclick="addFavorite();">加入收藏</a> <a
					href="">联系我们</a>
			</div>
			<div class="top_R">
				 <a href="http://mail.ttkd.cn/" target="_blank">企业邮箱</a> <a
					href="javascript:void();">188-3964-1878</a>
					<a id="logingALink" href="<%=request.getContextPath() %>/userlogin.jsp">登录</a> 
					<a id="registerALink" href="<%=request.getContextPath() %>/zhuce.jsp">注册</a>
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
							<li _t_nav="mytt">
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

<script type="text/javascript">


	window.onload = function(){
		var overTime = '';
		if(overTime!=""){
			$("#cuxs").html("<span><img src='../static/picture/tips_errormenu.png'></span><font>"+overTime+"</font>");	
			$(".login").attr('disabled', 'true'); 
		}
	}
	// 单击验证码图片切换验证码
	function changeValidateCode(obj) {
	    var timenow = new Date().getTime();     
	    obj.src="/verificationCodeAction!getRandomPictrue.action?d="+timenow;     
	}  
	
	function onkeyDownEvent(evt){
		var evt=evt?evt:(window.event?window.event:null);//兼容IE和FF
		if(evt.keyCode ==13){
			submitValidate();
		}
	}
	
	function submitValidate(){
		if($("#userName").val().length < 1){
			$("#cuxs").html("<span><img src='../static/picture/tips_errormenu.png'></span><font>请输入手机号</font>");	
		}else if($("#passwordI").val().length < 1){
			$("#cuxs").html("<span><img src='../static/picture/tips_errormenu.png'></span><font>请输入密码</font>");
		}else if($("#encodinginput").val().length < 1){
			$("#cuxs").html("<span><img src='../static/picture/tips_errormenu.png'></span><font>请输入验证码</font>");
		}else{
			$("#userForm").submit();
		}
		
	}
	
	function sj(){
		$("#userForm").css("display","none")
		$("#userPhoneForm").show();
	}
	function zm(){
		$("#userPhoneForm").css("display","none")
		$("#userForm").show();
	}
</script>
<script type="text/javascript">
function sendCodes(){
	var path = $("#path").val()
	var phone = $("#userloginphone").val()
	$.ajax({
		url:path+"/user/sendCode.do",
		type:"post",
		data:{"userPhone":phone},
		dataType: "json",
		success: function(json){
        	 alert(json.info)
          }
	})
}
</script>
<div class="logo_bgimg">
  <div class="logo_xin">
    <div class="login_box">
      <div class="login_box_xin">
      <br><br>
        <span class="zhdl_zi" onclick="zm()" style="cursor: pointer" >账号密码登录</span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <span class="zhdl_zi" onclick="sj()" style="cursor: pointer" >手机号登录</span>
        <br><br>
        <div id="cuxs" class="cuxs">
        <input type="hidden" id="path" value="<%=request.getContextPath()%>"/>
        </div>
        <div class="clear"></div>
        <form action="<%=request.getContextPath() %>/user/login.do" method="post" id="userForm"  name="userForm">
          <div class="yz">
            <label class="username">帐&nbsp;&nbsp;&nbsp;号</label>
            <input type="text" name="userPhone" id="userName" class="usernamea" placeholder="请输入手机号">
          </div>
          <div class="yz">
            <label class="username">密&nbsp;&nbsp;&nbsp;码</label>
            <input type="password" name="userPassword" id="passwordI" class="usernamea" placeholder="请输入密码">
          </div>
        <div class="clear"></div>
        <div class="xcdl">
        </div>
        <input type="submit" value="登录" class="login">
        </form>
        <form action="<%=request.getContextPath() %>/user/phonelogin.do" method="post" id="userPhoneForm"  name="userForm" style="display: none">
          <div class="yz">
            <label class="username">手&nbsp;机&nbsp;号</label>
            <input type="text" name="userPhone" id="userloginphone" class="usernamea" placeholder="请输入手机号">
          </div>
          <input type="button" onclick="sendCodes()" value="获取验证码" style="position: absolute;height: 50px;left: 1180px"/>
          <div class="yz">
            <label class="username">验&nbsp;证&nbsp;码</label>
            <input type="password" name="code" id="code" class="usernamea" placeholder="请输入验证码">
          </div>
        <div class="clear"></div>
        <div class="xcdl">
        </div>
        <input type="submit" value="登录" class="login">
        </form>
        <span class="zczh"><a href="<%=request.getContextPath() %>/zhuce.jsp">注册帐号</a></span> </div>
    </div>
  </div>
</div>


  

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

