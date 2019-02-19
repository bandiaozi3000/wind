<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>疾风快递-天天快递有限公司</title>
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


<script type="text/javascript" src="<%=request.getContextPath()%>/statics/js/jquery.min.js"></script>

<script type="text/javascript" src="<%=request.getContextPath()%>/statics/js/jquery.slidebox.min.js"></script>

<!-- 查询样式 -->
<script src="<%=request.getContextPath()%>/statics/js/city-picker.data.js"></script>
<script src="<%=request.getContextPath()%>/statics/js/city-picker.js"></script>
<link href="<%=request.getContextPath()%>/statics/css/service.css" rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/statics/css/base1.css" rel="stylesheet" type="text/css" />
<style>



</style>
<script type="text/javascript">
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
	
	

<div style="text-align:center;">
	<img src="<%=request.getContextPath()%>/statics/picture/ttnetwork.jpg" width="100%" height="300px" />
</div>
<!-- 中间部分  class="Dmain_about-->
<div class="Dmain_about">
<div class="quick_navigation">
您现在的位置：<a href="<%=request.getContextPath() %>/index.jsp">首页</a>&nbsp;>客户服务&nbsp;> &nbsp;<a href="<%=request.getContextPath()%>/jsp/kehujsp/quanguo.jsp">网点查询</a>	</div>
	<div class="about_main1">
	
		<!--左侧部分 选择框 class="about_left1" -->
		<div class="about_left1" id="about_left1">
			<p class="bluelinea">&nbsp;&nbsp;客户服务</p>
			<ul>
					<li><a href="<%=request.getContextPath()%>/jsp/kehujsp/kuaijian.jsp">&nbsp;&nbsp;-
							快件查询</a></li>
					<li><a href="<%=request.getContextPath()%>/jsp/kehujsp/zaixian.jsp">&nbsp;&nbsp;-
							在线寄件</a></li>
					<li class="active"><a
						href="<%=request.getContextPath()%>/jsp/kehujsp/quanguo.jsp">&nbsp;&nbsp;-
							网点查询</a></li>
					<li><a href="<%=request.getContextPath()%>/jsp/kehujsp/kefu.jsp">&nbsp;&nbsp;-
							在线客服</a></li>
				</ul>

		</div>
		<!--右侧部分 class="about_right1  -->
<div class="about_right1" id="about_right1">

	<div class="contentDiv">
			<div class="contentDiv_xin">
				<div style="clear:both">
				
				<!-- <div class="form_group">
									<div class="inline_group">
										<label id="allSearch">网点名或编号</label> <input class="w300"
											type="text" placeholder="" id="information" />
									</div>
								</div>


								<div class="form_group">
									<div class="inline_group">
										<label id="areaSearch">地区搜索</label>
										<div class="area_box">
											<input id="endCityAres" class="w300" type="text"
												data-toggle="city-picker" placeholder="请选择省市区" />
										</div>
										<a href="javascript:void(0)" id="layer-shade"
											class="btn btn_search">查询</a>
									</div>
								</div> -->
				<div id="customerservice_caption" class="customerservice_caption">
				
				<span class="customerservice_caption_bar"></span>
				<span id="networkAddressTitile" 
					class="customerservice_caption_text">&nbsp;&nbsp;&nbsp;为您查询到：</span>
			</div>
			<!-- 展示网点 -->
			<div id="networkQuery_nationwide_content" class="networkQuery_nationwide_content">
				
				<ul id="networkQuery_nationwide_content_ul" class="networkQuery_nationwide_content_ul">
				<c:forEach items="${listAgent }" var="agent"> 
				<li ><a href="<%=request.getContextPath()%>/agent/getAgent.do?solrId=${agent.solrId}">${agent.agentName}</a></li>
				</c:forEach>
					
				</ul>
			</div>
			
			
			</div>
    	</div>
	</div>		
</div>
		<div style="clear:both"></div>
</div>
<!-- 中间部分底部部空白边框 -->
	<div style="clear:both"></div>
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
						src="<%=request.getContextPath()%>/statics/picture/footersplitline.png" width="1px"
						height="123px"></li>
					<li>
						<p>
							<a href="/staticFile/pages/customerus.html">联系我们</a>
						</p>
						<p>
							<a
								href="/staticFile/pages/ttservice/customerGuide.html?column=clientele">投诉建议</a>
						</p>
						<p>
							<a href="/staticFile/pages/ttservice/expressDeliveryService.html">疾风服务</a>
						</p>
						<p>
							<a href="/staticFile/pages/ttjoin/joinNotes.html">疾风加盟</a>
						</p>

					</li>
					<li class="footerSplitlineLi"><img
						src="<%=request.getContextPath()%>/statics/picture/footersplitline.png" width="1px"
						height="123px"></li>
					<li>
						<p>
							<a href="<%=request.getContextPath()%>/jsp/kehujsp/kefu.jsp">在线客服</a>
						</p>
						<!-- <p>
							<a target="_blank"
								onclick="javascript:window.open('http://crm2.qq.com/page/portalpage/wpa.php?uin=4001888888&f=1&ty=1&aty=0&a=&from=6', '_blank', 'height=544, width=644,toolbar=no,scrollbars=no,menubar=no,status=no');return false;">QQ咨询</a>
						</p> -->
						<!-- <p>
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
