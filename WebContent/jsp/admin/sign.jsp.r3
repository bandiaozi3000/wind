<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
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
<title></title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/statics/css/pintuer.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/statics/css/admin.css">
<script src="<%=request.getContextPath()%>/statics/js/jquery-1.12.4.js"></script>
<script src="<%=request.getContextPath()%>/statics/js/pintuer.js"></script>
<script src="<%=request.getContextPath()%>/statics/js/sign.js"></script>
</head>
<body>
	<div id="df">
		<form method="post" action="<%=request.getContextPath()%>/warehouse/getSignOrderList.do" id="listform">
		<input type="hidden" id="path" value="<%=request.getContextPath()%>" />
		<input type="hidden" value="${goodsId}" id="goodsId"/>
	<input type="hidden" name="operatorId"
		value="<shiro:principal></shiro:principal>" />
			<div class="panel admin-panel">
				<div class="panel-head">
					<strong class="icon-reorder"> 签收管理</strong>
				</div>
				<div class="padding border-bottom">
					<ul class="search" style="padding-left: 10px;">
						<li><select name="payType" class="input"
							style="width: 120px; line-height: 17px; display: inline-block">
								<option value="0">请选择支付方式</option>
								<option value="1" <c:if test="${payType==1}">selected</c:if>>寄付</option>
								<option value="2" <c:if test="${payType==2}">selected</c:if>>到付</option>
						</select></li>
						<li><select name="goodsId" class="input"
							style="width: 115px; line-height: 17px;">
								<option value="0">请选择分类</option>
								<option value="1">食用</option>
								<option value="2">衣着</option>
								<option value="3">住宅</option>
								<option value="4">燃烧</option>
								<option value="5">家居</option>
								<option value="6">物质</option>
								<option value="7">易碎</option>
								<option value="8">其他</option>
						</select></li>
						<li><select name="statusCode" class="input"
							style="width: 115px; line-height: 17px;">
								<option value="0">请选择状态</option>
								<option value="8" <c:if test="${statusCode==8}">selected</c:if>>待签收</option>
								<option value="9" <c:if test="${statusCode==9}">selected</c:if>>已签收</option>
						</select></li>
						<li><input type="text" placeholder="请输入关键字" name="keyWords"
							value="${keyWords}" class="input"
							style="width: 200px; line-height: 17px; display: inline-block" />
							<input type="submit" class="button border-main icon-search"
							value="查询" /></li>
					</ul>
				</div>
				<table class="table table-hover text-center">
					<tr style="text-align: center; padding: 10px;">
						<th>单号</th>
						<th>收件人</th>
						<th>收件人电话</th>
						<th>收件人地址</th>
						<th>物品类型</th>
						<th>价格</th>
						<th>支付方式</th>
						<th>状态</th>
						<th>操作</th>
					</tr>
					<c:forEach var="Order" items="${list}" varStatus="i">
						<tr
							style='<c:if test="${i.index%2==1}">background-color:#EEEEE0</c:if>'>
							<td>${Order.orderNo}</td>
							<td>${Order.signName}</td>
							<td>${Order.signTel}</td>
							<td>${Order.signDetail}</td>
							<td>${Order.goodsCategoryName}</td>
							<td>${Order.price}</td>
							<td>${Order.payTypeName}</td>
							<td>${Order.statusName}</td>
							<td><c:if test="${Order.statusName=='待签收'}">
									<input type="button" class="button border-main icon-search"
										style="width: auto;" value="签收" id="sign"
										orderNo="${Order.orderNo}" />
									<input type="button" class="button border-main icon-search"
										style="width: auto;" value="拒签" id="refuseSign"
										orderNo="${Order.orderNo}" />
								</c:if> <c:if
									test="${Order.statusName=='已签收' || Order.statusName=='拒收件'}">
									<input type="button"
										class="button border-main icon-search showOrderInfo"
										style="width: auto;" value="订单信息" orderNo="${Order.orderNo}" />
								</c:if></td>
						</tr>
					</c:forEach>
					<tr>
						<td colspan="9">
							<div class="pagelist">
								<a
									href="<%=request.getContextPath()%>/warehouse/getSignOrderList.do?current=1&eventId=1&operatorId=<shiro:principal></shiro:principal>">首页</a>
								<a
									href="<%=request.getContextPath()%>/warehouse/getSignOrderList.do?current=${page.current-1}&operatorId=<shiro:principal></shiro:principal>">上一页</a>[${page.current}/${page.pageCount}]<a
									href="<%=request.getContextPath()%>/warehouse/getSignOrderList.do?current=${page.current+1}&operatorId=<shiro:principal></shiro:principal>">下一页</a><a
									href="<%=request.getContextPath()%>/warehouse/getSignOrderList.do?current=${page.pageCount}&operatorId=<shiro:principal></shiro:principal>">尾页</a><span
									width="100px">共${page.totalCount}条数据</span>
							</div>
						</td>
					</tr>
				</table>
			</div>
		</form>
	</div>
	<div id="light" class="white_content">
		<a href="javascript:void(0)"
			onclick="document.getElementById('light').style.display='none';document.getElementById('fade').style.display='none'">
			<span style="float: right; font-size: 25px;">×</span>
		</a> <span style="text-align: center"><h3>订单详情</h3></span>
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
</body>
</html>