<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="renderer" content="webkit">
<title>中转管理</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/statics/css/pintuer.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/statics/css/admin.css">
<script src="<%=request.getContextPath()%>/statics/js/jquery-1.12.4.js"></script>
<script src="<%=request.getContextPath()%>/statics/js/pintuer.js"></script>
<script src="<%=request.getContextPath()%>/statics/js/warehouse.js"></script>
</head>
<body>
	<div id="showInfo" class="input">
		<div style="color: #FCFCFC;" id="info"></div>
	</div>
	<div id="warehouse"
		style="display: none; position: fixed; width: 100%; height: 100%; left: 0; top: 0; background: rgba(0, 0, 0, 0.4); z-index: 100;">
		<div class="input"
			style="position: fixed; left: 30%; top: 30%; width: auto; padding: 30px; background-color: white;">
			<input type="text" placeholder="请输入入库单号" class="input" name="orderId"
				style="width: 250px; line-height: 17px; display: inline-block; margin-right: 10px;" /><input
				type="submit" class="button border-main icon-search"
				style="width: 60px; height: 40px;" value="入库" id="doWare" /> <input
				type="submit" class="button border-main icon-search"
				style="width: 60px; height: 40px;" value="取消" id="cancel" /> <input
				type="hidden" id="path" value="<%=request.getContextPath()%>" /> <input
				type="hidden" name="operatorId"
				value="<shiro:principal></shiro:principal>" /> <input type="hidden"
				name="eventId" value="1" />
		</div>
	</div>
	<div id="df">
		<form method="post"
			action="<%=request.getContextPath()%>/warehouse/getTransInfoList.do"
			id="listform">
			<input type="hidden" name="operatorId"
				value="<shiro:principal></shiro:principal>" /> <input type="hidden"
				name="eventId" value="1" />
			<div class="panel admin-panel">
				<div class="panel-head">
					<strong class="icon-reorder"> 订单列表</strong>
				</div>
				<div class="padding border-bottom">
					<ul class="search" style="padding-left: 10px;">
						<li><a class="button border-main icon-plus-square-o"
							id="doWarehouse" style="cursor: pointer">入库操作</a></li>
						<li><input type="text" placeholder="请输入关键字" name="keyWords"
							value="${keyWords}" class="input"
							style="width: 250px; line-height: 17px; display: inline-block; margin-right: 10px;" />
							<input type="date" placeholder="请输入起始时间" name="startTime"
							value="${startTime}" class="input"
							style="width: auto; line-height: 17px; display: inline-block; margin-right: 10px;" /><span>至</span>
							<input type="date" placeholder="请输入终止时间" name="endTime"
							value="${endTime}" class="input"
							style="width: auto; line-height: 17px; display: inline-block; margin-right: 10px;" /><input
							type="submit" class="button border-main icon-search"
							style="width: 60px; height: 40px;" value="搜索" /></li>
					</ul>
				</div>
				<table class="table table-hover text-center">
					<tr style="text-align: center; padding: 10px;">
						<th>单号</th>
						<th>当前网点</th>
						<th>入库时间</th>
						<th>下一站网点</th>
						<th>操作员</th>
						<th>操作</th>
					</tr>
					<c:forEach var="WarehouseInfo" items="${list}" varStatus="i">
						<tr
							style='<c:if test="${i.index%2==1}">background-color:#EEEEE0</c:if>'>
							<td>${WarehouseInfo.orderId}</td>
							<td>${WarehouseInfo.currentAgentName}</td>
							<td><fmt:formatDate value="${WarehouseInfo.arrivalTime}"
									pattern="yyyy-MM-dd HH:mm:ss" /></td>
							<td>${WarehouseInfo.nextAgentName}</td>
							<td>${WarehouseInfo.staffName}</td>
							<td><input type="button"
								class="button border-main icon-search showTransInfo"
								style="width: auto;" value="物流信息"
								orderNo="${WarehouseInfo.orderId}" /> <input type="button"
								class="button border-main icon-search showOrderInfo"
								style="width: auto;" value="订单信息"
								orderNo="${WarehouseInfo.orderId}" /></td>
						</tr>
					</c:forEach>
					<tr>
						<td colspan="8"><div class="pagelist">
								<a
									href="<%=request.getContextPath()%>/warehouse/getTransInfoList.do?current=1&eventId=1&operatorId=<shiro:principal></shiro:principal>&keyWords=${keyWords}&startTime=${startTime}&endTime=${endTime}">首页</a>
								<a
									href="<%=request.getContextPath()%>/warehouse/getTransInfoList.do?current=${page.current-1}&eventId=1&operatorId=<shiro:principal></shiro:principal>&keyWords=${keyWords}&startTime=${startTime}&endTime=${endTime}">上一页</a>[${page.current}/${page.pageCount}]<a
									href="<%=request.getContextPath()%>/warehouse/getTransInfoList.do?current=${page.current+1}&eventId=1&operatorId=<shiro:principal></shiro:principal>&keyWords=${keyWords}&startTime=${startTime}&endTime=${endTime}">下一页</a><a
									href="<%=request.getContextPath()%>/warehouse/getTransInfoList.do?current=${page.pageCount}&eventId=1&operatorId=<shiro:principal></shiro:principal>&keyWords=${keyWords}&startTime=${startTime}&endTime=${endTime}">尾页</a><span
									width="100px">共${page.totalCount}条数据</span>
							</div></td>
					</tr>
				</table>
			</div>
		</form>
	</div>
	<div id="light" class="white_content">
		<a href="javascript:void(0)"
			onclick="document.getElementById('light').style.display='none';document.getElementById('fade').style.display='none'">
			<span style="float: right; font-size: 25px;">×</span>
		</a> <span style="text-align: center"><h3>订单详情</h3></span><br/>
		<table>
			<tr>
				<td id="view_orderNo"></td>
			</tr>
			<tr>
				<td id="view_belongId"></td>
			</tr>
			<tr>
				<td id="view_senderName"></td>
			</tr>
			<tr>
				<td id="view_senderTel"></td>
			</tr>
			<tr>
				<td id="view_senderDetail"></td>
			</tr>
			<tr>
				<td id="view_signName"></td>
			</tr>
			<tr>
				<td id="view_signTel"></td>
			</tr>
			<tr>
				<td id="view_signDetail"></td>
			</tr>
			<tr>
				<td id="view_orderNo"></td>
			</tr>
			<tr>
				<td id="view_collectorId"></td>
			</tr>
			<tr>
				<td id="view_delivererId"></td>
			</tr>
			<tr>
				<td id="view_goodsCategoryName"></td>
			</tr>
			<tr>
				<td id="view_goodsAccount"></td>
			</tr>
			<tr>
				<td id="view_goodsLong"></td>
			</tr>
			<tr>
				<td id="view_goodsWidth"></td>
			</tr>
			<tr>
				<td id="view_goodsHeight"></td>
			</tr>
			<tr>
				<td id="view_goodsWeight"></td>
			</tr>
			<tr>
				<td id="view_price"></td>
			</tr>
			<tr>
				<td id="view_payType"></td>
			</tr>
			<tr>
				<td id="view_insuredPrice"></td>
			</tr>
			<tr>
				<td id="view_createTime"></td>
			</tr>
			<tr>
				<td id="view_statusName"></td>
			</tr>
			<tr>
				<td id="view_remark"></td>
			</tr>
		</table>
	</div>
	<div id="fade" class="black_overlay"></div>
	
	<div id="light1" class="white_content">
		<a href="javascript:void(0)"
			onclick="document.getElementById('light1').style.display='none';document.getElementById('fade1').style.display='none'">
			<span style="float: right; font-size: 25px;">×</span>
		</a> <span style="text-align: center"><h3>物流详情</h3></span><br/>
		<table id="showTable"  style="font-size: 14px">
		</table>
	</div>
	<div id="fade1" class="black_overlay"></div>

</body>
</html>