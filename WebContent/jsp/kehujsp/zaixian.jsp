<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>疾风快递-天天快递有限公司首页</title>
<script type="text/javascript"
	src="http://api.map.baidu.com/api?v=2.0&ak=ybuu0uiZaBt3EefaiRu8deUHn5feGrYg"></script>
<script type='text/javascript'
	src='<%=request.getContextPath()%>/statics/js/jquery-1.12.4.js'></script>
<script type='text/javascript'
	src='<%=request.getContextPath()%>/statics/js/gareway.js'></script>
<script type='text/javascript'
	src='<%=request.getContextPath()%>/statics/js/gareways.js'></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/statics/js/receiveOrder.js"></script>

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
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/statics/css/gareway_base1.css" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/statics/css/gareway_sent.css" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/statics/css/gareway.css">
<script type="text/javascript"
	src="<%=request.getContextPath()%>/statics/js/jquery.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/statics/js/jquery.superslide.2.1.1_2.js"></script>
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
<script type="text/javascript">
function sendCodes(){
	var path = $("#path").val()
	var phone = $("#phonepd").val()
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
<script type="text/javascript">
function showinfos(){
	var oinfo = ${oinfo}
	if(oinfo!=null){
		alert(oinfo)
	}
}
</script>
<script type="text/javascript">
	$(function(){
		showinfos()
	})
</script>
<style type="text/css">
#input-wrap {
	position: absolute;
	left: 500px;
	top: 800px;
}
</style>
</head>

<body>
 
	<div id="froms1"
		style="display: none; width: 100%; height: 100%; background-color: rgba(0, 0, 0, 0.2); display: none; z-index: 9998;position: fixed;">
		<div class="Mian-cont-wrap"
			style="position: relative; top: 100px; height: 380px;width: 800px;margin:auto ">
			<div class="defaultTab-T">
				<table class="defaultTable">

				</table>
			</div>
			<table id="dizhi" class="defaultTable defaultTable2">

			</table>
		</div>
	</div>
	<div id="froms2"
		style="display: none; width: 100%; height: 100%; background-color: rgba(0, 0, 0, 0.2); display: none; z-index: 9998;position: fixed;">
		<div class="Mian-cont-wrap"
			style="position: relative; top: 100px; height: 380px;width: 800px;margin:auto ">
			<div class="defaultTab-T">
				<table class="defaultTable">

				</table>
			</div>
			<table id="dizhi2" class="defaultTable defaultTable2">

			</table>
		</div>
	</div>

	<div class="Dtop1">
		<div class="top1">
			<div class="top_L">
				<a onclick="addFavorite();">加入收藏</a> <a href="">联系我们</a>
			</div>
			<div class="top_R">
				<a href="http://mail.ttkd.cn/" target="_blank">企业邮箱</a> <a
					href="javascript:void();">188-3964-1878</a>
				<c:if test="${!empty users}">
					<a href="#">${users.userName}</a>&nbsp;&nbsp;
						<a href="<%=request.getContextPath() %>/user/logOut.do">退出</a>
				</c:if>
				<c:if test="${empty users}">
					<a id="logingALink"
						href="<%=request.getContextPath()%>/userlogin.jsp">登录</a>
					<a id="registerALink"
						href="<%=request.getContextPath()%>/zhuce.jsp">注册</a>
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
							<li class="nav-up-selected-inpage" >
								<h2>
									<a href="<%=request.getContextPath()%>/index.jsp">&nbsp;&nbsp;&nbsp;首页&nbsp;&nbsp;&nbsp;</a>
								</h2>
							</li>
							<li class="" >
								<h2>
									<a
										href="<%=request.getContextPath()%>/jsp/kehujsp/kuaijian.jsp">客户服务</a>
								</h2>
							</li>
							<li class="" >
								<h2>
									<a href="<%=request.getContextPath()%>/jsp/shengyu/zoujin1.jsp">走进疾风</a>
								</h2>
							</li>
							<li class="" >
								<h2>
									<a href="<%=request.getContextPath()%>/jsp/shengyu/xinwen.jsp">疾风新闻</a>
								</h2>
							</li>
							<li class="" >
								<h2>
									<a href="<%=request.getContextPath()%>/jsp/shengyu/fuwu.jsp">疾风服务</a>
								</h2>
							</li>
							<li class="" >
								<h2>
									<a href="<%=request.getContextPath()%>/jsp/shengyu/jiameng.jsp">疾风加盟</a>
								</h2>
							</li>
							<li class="" >
								<h2>
									<a href="<%=request.getContextPath()%>/jsp/usersInfo/usersInfo.jsp">我的疾风</a>
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
		window.onload = function() {

			var oTab = document.getElementById("about_left1");
			var arigh = document.getElementById("about_right1");
			var aH3 = oTab.getElementsByTagName("li");
			var aDiv = arigh.getElementsByTagName("div");
			for (var i = 0; i < aH3.length; i++) {
				aH3[i].index = i;
				aH3[i].onclick = function() {
					for (var i = 0; i < aH3.length; i++) {
						aH3[i].className = "";
						aDiv[i].style.display = "none";
					}
					this.className = "active";
					aDiv[this.index].style.display = "block";
				}
			}

		};
	</script>
	<div style="text-align: center;">
		<img src="<%=request.getContextPath()%>/statics/picture/J.png"
			width="100%" height="300px" />
	</div>


	<div class="Dmain_about">
		<div class="about_main1">
			<div class="about_left1" id="about_left1">
				<p class="bluelinea">&nbsp;&nbsp;客户服务</p>
				<ul>
					<li><a
						href="<%=request.getContextPath()%>/jsp/kehujsp/kuaijian.jsp">&nbsp;&nbsp;-
							快件查询</a></li>
					<li class="active"><a
						href="<%=request.getContextPath()%>/jsp/kehujsp/zaixian.jsp">&nbsp;&nbsp;-
							在线寄件</a></li>
					<li><a
						href="<%=request.getContextPath()%>/jsp/kehujsp/quanguo.jsp">&nbsp;&nbsp;-
							网点查询</a></li>
					<li><a
						href="<%=request.getContextPath()%>/jsp/kehujsp/kefu.jsp">&nbsp;&nbsp;-
							在线客服</a></li>
				</ul>
			</div>

			<div class="about_right1" id="about_right1">
				<div class="location">
					<div>在线寄件</div>
				</div>
				<div class="search-bar">
					<div class="input-wrap"
						style="position: absolute; top: 550px; left: 430px">
						<span id="startCity"></span> <input type="text"
							placeholder="输入寄件人地址" id="startAddr">
					</div>
					<button class="btn search-bt" onclick="setCity()"
						style="position: absolute; top: 550px; left: 900px">&nbsp;&nbsp;&nbsp;查找快递员</button>

					<script type="text/javascript">
						var points;
						var search = new BMap.LocalSearch("中国", {
							onSearchComplete : function(result) {
								if (search.getStatus() == BMAP_STATUS_SUCCESS) {
									var map = new BMap.Map("allmap");
									var point = new BMap.Point(116.413387,
											39.910924);
									map.centerAndZoom(point, 12);
									var res = result.getPoi(0);
									getdizhi(res, map);
								}
							}
						});
						function setCity() {
							search
									.search(document
											.getElementById("startAddr").value)
						}
					</script>
				</div>
				<div style="width: 100%; height: 500px">
					<input type="hidden" id="path"
						value="<%=request.getContextPath()%>" />
					<div id="allmap" style="width: 100%; height: 500px;"></div>

					<!-- 展示网点信息 -->
				</div>
				<div class="Mian-cont-wrap"
					style="position: relative; top: 30px; height: 360px">
					<div class="defaultTab-T">
						<table class="defaultTable">

						</table>
					</div>
					<table id="zhi1" class="defaultTable defaultTable2">
					</table>
				</div>
				<div id="froms"
					style="width: 100%; height: 1950px; background-color: rgba(0, 0, 0, 0.2); display: none; position: absolute; top: -100px; left: 0px; z-index: 9996">
					<form action="<%=request.getContextPath()%>/addUserOrder.do" method="post"
						style="position: absolute; top: 10%; left: 18%; z-index: 9997">
						<div class="order" id="order">
							<h2>
								寄件填单<span></span>
							</h2>
							<div class="addr-info" id="sender">
									<h3>
										寄件人 
										
										<%-- <c:if test="${!empty users}">
											<a class="a-addr" id="showContact" onclick="showDiZhi()">地址簿</a>
										</c:if> --%>
									</h3>
									<div class="form">
										<label for="">姓名：</label> 
											<input type="text" placeholder="请填写寄件人姓名" required name="senderName" id="sendName" />
									</div>
										<input type="hidden" id="agentNumber" name="agentNumber" />
									<div class="form">
										<label for="">联系电话：</label> 
										<input type="text" id="sendPhone" required name="senderTel" placeholder="请输入手机号或固话号码" /> 
									</div>
									<div class="form">
										<label for="">寄件地址：</label>
										<div class="input-group">
											<select id="province1" onchange="showCity(this)">
												<option value=0>请选择省份</option>
											</select> <select id="city1" onchange="showArea(this)">
												<option value=0>请选择城市</option>
											</select> <select id="area1" onchange="showSenderDetail()"
												name="senderAddressId">
												<option value=0>请选择县（区）</option>
											</select><br /> <br />
											<div class="input-group">
												<input type="text" placeholder="选择地区" required name="senderDetail" readonly id="sendDetails" /> 
												<input type="text" placeholder="请填写详细的地址" required name="sendAddr" id="sendAddr" class="long" />
											</div>
										</div>
										<div class="relative">
											<div class="location-box hidden" id="addSendProvince"></div>
										</div>
									</div>
								</div>
								
								<div class="addr-info" id="recer">
									<h3>
										收件人 <%-- <c:if test="${!empty users}">
												<a class="a-addr" id="showContact" onclick="showRecDiZhi()">地址簿</a>
											</c:if> --%>
									</h3>
									<div class="addr-content">
										<div class="form">
											<label for="">姓名：</label> 
											<input type="text" placeholder="请填写收件人姓名" required name="signName" id="recName" />
										</div>
										<div class="form">
											<label for="">联系电话：</label> 
											<input type="text" id="recPhone" required name="signTel" placeholder="请输入手机号或固话号码" />
										</div>
										<div class="form">
											<label for="">收件地址：</label> 
											<select id="province2" onchange="showCity(this)">
												<option value=0>请选择省份</option>
											</select> <select id="city2" onchange="showArea(this)">
												<option value=0>请选择城市</option>
											</select> <select id="area2" onchange="showSignDetail()" name="signAddressId">
												<option value=0>请选择县（区）</option>
											</select><br /> <br /> 
											<input type="text" placeholder="选择地区" required name="signDetail" id="cityName_input_3" readonly /> 
											<input type="text" placeholder="请填写详细的地址" required name="recAddr" id="recAddr" class="long" />
										</div>
										<div class="box relative">
											<div class="location-box hidden" id="addRecProvince"></div>
										</div>
									</div>
								</div>


								<div class="pack-info">
									<h3>包裹信息</h3>
									<div class="addr-content">
										<div class="form">
											<label for="">寄件类型：</label> 
											<select name="goodsId">
												<option value="1">食用</option>
												<option value="2">衣着</option>
												<option value="3">住宅</option>
												<option value="4">燃烧</option>
												<option value="5">家居</option>
												<option value="6">物质</option>
												<option value="7">易碎</option>
												<option value="8">其它</option>
											</select>
										</div>

										<div class="form">
											<label for="">保价金额：</label>
											<div class="input-group">
												<input type="text" name="insuredPrice" placeholder="如需保价请填写，最高10000" id="valins" />
												<input type="hidden" name="payValins" id="pay">
											</div>
										</div>
										<div class="form">
											<label for="">付款方式：</label> 
											<input type="radio" id="payment1" name="payType" value="1">
											<label for="payment1">寄付</label>
											<input type="radio" id="payment2" name="payType" value="2">
											<label for="payment2">到付</label>
										</div>
										<div class="form">
											<label for="">物品重量：</label> 
											<input type="text"   name="goodsWeight" id="cargoWeight" value="0.5" />
											<span style="padding-left: 10px; font-size: 16px;" >kg</span>
										</div>
										<div class="form">
											<label for="">物品长度：</label> 
											<input type="text"   name="goodsLong" id="cargoWeight" value="0.5" />
											<span style="padding-left: 10px; font-size: 16px;">kg</span>
										</div>
										<div class="form">
											<label for="">物品宽度：</label> 
											<input type="text"   name="goodsWidth" id="cargoWeight" value="0.5" />
											<span style="padding-left: 10px; font-size: 16px;">kg</span>
										</div>
										<div class="form">
											<label for="">物品高度：</label> 
											<input type="text"   name="goodsHeight" id="cargoWeight" value="0.5" />
											<span style="padding-left: 10px; font-size: 16px;">kg</span>
										</div>
										<div class="form">
											<label for="">物品数量：</label> 
											<input type="text"   name="goodsAccount" id="cargoCount" />
										</div>
										<div class="form hidden">
											<label for="">取件地址：</label> 
											<input type="text"   placeholder="如需上门取件请填写取件地址" id="gotaddr" />
										</div>
										<div class="form">
											<label for="">备注：</label> 
											<input type="text"   name="remark" placeholder="请填写给快递员的留言" id="orderComment" />
										</div>
										<c:if test="${empty users }">
											<div class="form">
												<label for="">手机号：</label> 
												<input type="text"   name="phonepd" placeholder="请填写您的手机号" id="phonepd" />
												<input type="button" onclick="sendCodes()" value="获取验证码" style="position: absolute;height: 33px;left: 588px"/>
												<label for="">验证码：</label> 
												<input type="text"   name="codepd" placeholder="请填写获取的验证码" id="codepd" />
											</div>
										</c:if>
									</div>
								</div>
								<div id="sendTips" class="hidden"></div>
								<div class="order-btn-wrap">
									<button class="btn order-btn" id="submit" type="submit" >立即下单</button> 
									<span class="tip hidden" id="gottime"></span>
								</div>
							</div>
						</form>
					</div>
				</div>
				<div class="contentDiv"></div>
			</div>
			<div style="clear: both"></div>
		</div>
		<div style="clear: both"></div>
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
