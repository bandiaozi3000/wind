<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<!DOCTYPE html>
<html class=" js csstransforms3d">
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>公共侧边栏</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/statics/css/bubble.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/statics/css/base.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/statics/css/page.css">
<!--[if lte IE 8]>
	<link href="css/ie8.css" rel="stylesheet" type="text/css"/>
	<![endif]-->
<script type="text/javascript"
	src="<%=request.getContextPath()%>/statics/js/jquery.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/statics/js/main.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/statics/js/modernizr.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/statics/js/websocket.js"></script>
 <%-- <script type="text/javascript"
	src="<%=request.getContextPath()%>/statics/js/orderReminding.js"></script>  --%>
<!--[if IE]>
	<script src="http://libs.useso.com/js/html5shiv/3.7/html5shiv.min.js"></script>
	<![endif]-->
</head>

<body>
	<!--side S-->
	<input id="path" type="hidden" value="<%=request.getContextPath()%>" />
	<span style="display:none" id="userName"><shiro:principal></shiro:principal></span>
	<div class="super-side-menu">
		<div class="logo">
			<a href="public_super_cg.html" target="_parent"><img
				src="<%=request.getContextPath()%>/statics/images/logo.png"></a>
		</div>

		<div class="side-menu">
		<div id="xianoryin" class="tag"  style="display: none">
				<div class="arrow">
					<em></em><span></span>
				</div>
				<span id="qipaoview"></span>
			</div>
			<ul>
				<li class="on"><a><i
						class="ico-1"></i>订单管理</a></li>
				<ul class="hiddenlist">
					<li><a href="ReceiveOrder.jsp" target="Mainindex">接件管理</a></li>
					<li><a href="<%=request.getContextPath() %>/order/listOrder.do?staffNo=<shiro:principal></shiro:principal>" target="Mainindex">订单管理</a></li>
					<li><a href="<%=request.getContextPath() %>/jsp/admin/right/midA.jsp" target="Mainindex">售后处理</a></li>
					<!-- <li><a href="#" target="Mainindex">导出Excel</a></li> -->
					<li><a>在线订单管理&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="messageview" style="border-radius: 22px;background-color: red;color:white;"></span></a></li>
					<ul class="hiddenlist">
					<li><a onclick="fun(this)" id="listUntreated" href="<%=request.getContextPath() %>/online/listUntreated.do?staffNo=<shiro:principal></shiro:principal>" target="Mainindex">未处理订单管理 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="messageview" style="border-radius: 30px;background-color: red;color:white;"></span></a></li>
					<li><a href="<%=request.getContextPath() %>/online/listOnLine.do?staffNo=<shiro:principal></shiro:principal>" target="Mainindex">预订单管理</a></li>
					</ul>
				</ul>
				<li><a><i class="ico-2"></i>网点管理</a></li>
				<ul class="hiddenlist">
					<li><a href="<%=request.getContextPath()%>/agents/staffInfo.do?userName=<shiro:principal></shiro:principal>" target="Mainindex">网点管理</a></li>
					<li><a href="<%=request.getContextPath()%>/jsp/admin/user.jsp" target="Mainindex">员工管理</a></li>
				</ul>
				<li><a><i class="ico-3"></i>客户信息管理</a></li>
				<li><a><i class="ico-4"></i>车辆管理</a></li>
				<ul class="hiddenlist">
					<li><a href="<%=request.getContextPath() %>/jsp/admin/carmanage/carGetAll.jsp" target="Mainindex">车辆调度</a></li>
					<li><a href="<%=request.getContextPath() %>/car/addType.do" target="Mainindex">添加车辆</a></li>
				</ul>
				<li><a><i class="ico-5"></i>中转管理</a></li>
				<ul class="hiddenlist">
					<li><a href="<%=request.getContextPath()%>/warehouse/getTransInfoList.do?current=1&eventId=1&operatorId=<shiro:principal></shiro:principal>" target="Mainindex">入库管理</a></li>
					<li><a href="<%=request.getContextPath()%>/warehouse/getTransInfoList.do?current=1&eventId=2&operatorId=<shiro:principal></shiro:principal>" target="Mainindex">出库管理</a></li>
					<li><a href="<%=request.getContextPath()%>/warehouse/getSignOrderList.do?current=1&operatorId=<shiro:principal></shiro:principal>" target="Mainindex">签收管理</a></li>
				</ul>
				<li><a href="<%=request.getContextPath() %>/jsp/admin/right/transInfoAgent.jsp" target="Mainindex"><i class="ico-6"></i>物流查询</a></li>
			</ul>
		</div>
	</div>
	<!--side E-->

	<script type="text/javascript">
		$(function() {
			$('.side-menu li').click(function() {
				$('.side-menu li').removeClass('on');
				$(this).addClass('on');
			})

			$('.side-menu li').click(function(){
				$(this).next('.hiddenlist').slideToggle("slow")
			})
		})
	</script>

</body>
</html>