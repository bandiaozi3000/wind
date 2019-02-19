<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>天天快递-天天快递有限公司</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="renderer" content="webkit">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="keywords" content="天天快递,天天快递有限公司" />
	<meta name="description" content="天天快递,天天快递有限公司" />
	<link href="<%=request.getContextPath()%>/statics/css/public.css" rel="stylesheet" type="text/css" />
	<link href="<%=request.getContextPath()%>/statics/css/style.css" rel="stylesheet" type="text/css" />
	<link href="<%=request.getContextPath()%>/statics/css/mystyle.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="<%=request.getContextPath()%>/statics/js/jquery.1.9.1.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/statics/js/jquery1.42.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/statics/js/jquery.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/statics/js/jquery.superslide.2.1.1_2.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath()%>/statics/js/jquery.slidebox.min.js"></script>
	
	
		<!-- 百度地图 -->
	<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
	<meta http-equiv="Content-Type" content="text/html; charset=gbk" />
    <style type="text/css">
        html{height:100%}
        body{height:100%;margin:0px;padding:0px}
        #container{height:100%}
    </style>
    <script src="http://api.map.baidu.com/api?v=1.4" type="text/javascript"></script>
    <!--上  -->
    
    

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

<script type="text/javascript" src="<%=request.getContextPath()%>/statics/js/74d2088be7104e379d14e93926b49d7e.js"></script>

<script type="text/javascript" src="<%=request.getContextPath()%>/statics/js/sweet-alert.js"></script>
<div style="text-align:center;">
	<img src="<%=request.getContextPath()%>/statics/picture/ttnetwork.jpg" width="100%" height="300px" />
</div>
<script>
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
<script>
    $(function(){
		$.ajax({
			type: "post",
			url: "/onlineOrder/onlineOrderAction!validateNetworkInfo.action",
			data: {
				networkNo: "37102"
			},
			error: function() {
			},
			success: function(data) {
				data = $.trim(data);
				if ($.trim(data).length > 0) {
					var db3 = eval("(" + data + ")");
					if(db3.queryphone != null && db3.queryphone != ""){$("#searchTel").html(db3.queryphone);}
					if(db3.pickphone != null && db3.pickphone != ""){$("#serviceTle").html(db3.pickphone);}
					if(db3.fax != null && db3.fax != ""){$("#fax").html(db3.fax)}
				}
			}
		})
	})
</script>
<div class="about_cx"></div>
<div class="Dmain_about">
	<div class="quick_navigation">
		您现在的位置：<a href="<%=request.getContextPath() %>/index.jsp">首页</a>&nbsp;>客户服务&nbsp;> &nbsp;<a href="<%=request.getContextPath()%>/jsp/kehujsp/quanguo.jsp">网点查询</a>
	</div>

	<div class="customerservice"style="width:1200px">
		<div class="customerservice_caption">
			<span class="customerservice_caption_bar"></span><span
				class="customerservice_caption_text">&nbsp;&nbsp;${agent.agentName}&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;网点编号：${agent.agentNumber}</span>
		</div>
		<div class="networkQuery_nationwide_content">
			<table class="networkInfo_content">
				<tr>
					<td class="networkInfo_content_lefttd" width="170px" style="background-color: #ECEEEE;">所在地区</td>
					<td class="networkInfo_content_righttd" style="background-color: #ECEEEE"><span id="countyName">${agent.agentAddress }</span></td>
				</tr>
				<tr>
					<td class="networkInfo_content_lefttd">网点电话(座机)</td>
					<td class="networkInfo_content_righttd" id="searchTel">${agent.agentHotline }</td>
				</tr>
				<tr>
					<td class="networkInfo_content_lefttd" style="background-color: #ECEEEE">手机</td>
					<td class="networkInfo_content_righttd" id="serviceTle" style="background-color: #ECEEEE">${agent.agentTel }</td>
				</tr>
				<tr>
					<td class="networkInfo_content_lefttd">传真</td>
					<td class="networkInfo_content_righttd" id="fax">${agent.agentFax }</td>
				</tr>
				<tr>
					<td class="networkInfo_content_lefttd" style="background-color: #ECEEEE">网点负责人</td>
					<td class="networkInfo_content_righttd" style="background-color: #ECEEEE">${agent.staffName }</td>
				</tr>
				<tr>
					<td class="networkInfo_content_lefttd">业务范围</td>
					<td class="networkInfo_content_righttd">${agent.agentRange }</td>
				</tr>
				<tr>
					<td class="networkInfo_content_lefttd" style="background-color: #ECEEEE">营业时间</td>
					<td class="networkInfo_content_righttd" style="background-color: #ECEEEE"> ${agent.agentTime }</td>
				</tr>
				<tr>
					<td class="networkInfo_content_lefttd">网点邮政编号</td>
					<td class="networkInfo_content_righttd">${agent.agentCode }</td>
				</tr>
				<tr>
					<td class="networkInfo_content_lefttd" style="background-color: #ECEEEE">城市编号</td>
					<td class="networkInfo_content_righttd" style="background-color: #ECEEEE">${agent.cityId }</td>
				</tr>
				<tr><td></td></tr>
				
				<tr>
					<td class="networkInfo_content_lefttd">备注</td>
					<td class="networkInfo_content_righttd">${agent.agentRemarks }</td>
				</tr>
				<tr>
					<td class="networkInfo_content_lefttd" style="background-color: #ECEEEE">网点地图</td>
					<td class="networkInfo_content_righttd" style="background-color: #ECEEEE"></td>
				</tr>
				<tr>
					<td></td>
					<td class="networkInfo_content_righttd">
						<div class="mapdiv" id="mapdiv">
							<script type="text/javascript">
								// 百度地图API功能
								var map = new BMap.Map("mapdiv");
								var point = new BMap.Point(116.331398,39.897445);
								map.centerAndZoom(point,12);
								// 创建地址解析器实例
								var myGeo = new BMap.Geocoder();
								// 将地址解析结果显示在地图上,并调整地图视野
								myGeo.getPoint("${agent.agentAddress}" , function(point){
									if (point) {
										map.centerAndZoom(point, 16);
										map.addOverlay(new BMap.Marker(point));
									}else{
									}
								}, "北京市");
							</script>
						</div>
					</td>
				</tr>
			</table>
		</div>
		<div class="networkQuery__nationwide_content_caption">
			<p id="regionNameText"></p>
		</div>
		
	</div>
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
							<a href="/staticFile/pages/ttservice/expressDeliveryService.html">天天服务</a>
						</p>
						<p>
							<a href="/staticFile/pages/ttjoin/joinNotes.html">天天加盟</a>
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
