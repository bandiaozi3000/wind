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
<script type="text/javascript"
	src="<%=request.getContextPath()%>/statics/js/jquery-1.12.4.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/statics/js/receiveOrder.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/statics/js/jquery.superslide.2.1.1_2.js"></script>
<!-- <script type="text/javascript" src="../static/js/jquery.slidebox.min.js"></script> -->
<link href="<%=request.getContextPath()%>/statics/css/tastySelect.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/statics/css/htmleaf-demo.css">

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



	<div style="text-align: center;">
		<img src="<%=request.getContextPath() %>/statics/picture/ttjoin.jpg"
			width="100%" height="300px" />
	</div>
	<div class="about_cx"></div>
	<div class="Dmain_about">
		<div class="quick_navigation">
			您现在的位置：<a href="/">首页</a>&nbsp;>我的疾风</a>&nbsp;> <a
				href="<%=request.getContextPath() %>/jsp/usersInfo/changeInfo.jsp">修改个人信息
			</a>
		</div>
		<div class="about_main1">
			<div class="about_left1" id="about_left1">
				<p class="bluelinea">&nbsp;&nbsp;我的疾风</p>
				<ul>
					<li><a
						href="<%=request.getContextPath() %>/jsp/usersInfo/usersInfo.jsp">&nbsp;&nbsp;-&nbsp;用户信息</a>
					</li>
					<li class="active"><a href="<%=request.getContextPath() %>/jsp/usersInfo/changeInfo.jsp">&nbsp;&nbsp;-&nbsp;修改个人信息</a>
					</li>

					<li><a href="<%=request.getContextPath() %>/jsp/usersInfo/changePass.jsp">&nbsp;&nbsp;-&nbsp;修改密码</a>
					</li>
					<li>
					<a href="<%=request.getContextPath() %>/jsp/usersInfo/addressBook.jsp">&nbsp;&nbsp;-&nbsp;管理地址簿</a>
					</li>
				</ul>
			</div>
<input type="hidden" id="path" value="<%=request.getContextPath() %>"/>
			<div class="about_right1" id="about_right1">
				<div class="location">
					<div>修改用户信息</div>
				</div>
				<div class="contentDiv">
					<div class="xgzl">
						<form id="modifyCustomerForm"
							action="<%=request.getContextPath()%>/user/updateUserInfo.do"
							method="post">
							<input type="hidden" name="userId" value="${usesr.userId }"/>
							<table class="modifyPersonalTable">
								<tr>
									<td class="modifyPersonalTable_titletd">头像</td>
									<td class="modifyPersonalTable_righttd">
										<div id="imgdiv" class="sctx">

											<img src="/staticFile/images/defaultPhoto.gif"
												name="customer.headPortraitUrl" id="imgShow"> <input
												type="file" name="file" value="1" id="up_img"
												accept="image/jpeg,image/png" />
										</div> <span id="fileerrorTip"></span> <span id="showFileName"></span>
									</td>
									<td></td>
								</tr>
								
								<tr>
									<td class="modifyPersonalTable_titletd">昵称</td>
									<td class="modifyPersonalTable_righttd"><input type="text"
										id="userName" class="xgzl_box" placeholder="设置昵称"
										name="userName" value="${users.userName}" /></td>
									<td><span id="userNameCheck"></span></td>
								</tr>
								<tr>
									<td class="modifyPersonalTable_titletd">手机号码</td>
									<td class="modifyPersonalTable_righttd"><input
										style="background-color: #eee; color: #000;" type="text"
										class="xgzl_box" readonly="readonly"
										name="customer.userPhoneTel" value="${users.userPhone }" /></td>
									<td><span></span></td>
								</tr>
								<tr>          	
								<tr>
									<td class="modifyPersonalTable_titletd"><input
										id="userSex" type="hidden" name="customer.userSex" value="" />
										<input type="hidden" name="customer.headPortraitUrl" value="" />
									</td>
									<td class="modifyPersonalTable_righttd"><input
										type="submit" id="modifyCustomer" class="xg" value="保存修改" />
										<input type="button" class="xg" onclick="history.go(-1)"
										style="background-color: #aaa; color: #fff;"
										value="取&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;消" /></td>
									<td></td>
								</tr>
								<tr>
									<td class="modifyPersonalTable_titletd"></td>
									<td class="modifyPersonalTable_righttd"></td>
									<td></td>
								</tr>
							</table>
						</form>
					</div>
				</div>
			</div>
			<!--about_main1-->
		</div>
		<div style="clear: both"></div>
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

