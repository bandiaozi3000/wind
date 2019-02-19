<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html >
<html>
<head>
<link type="text/css" rel="stylesheet"
	href="<%=request.getContextPath()%>/statics/css/onlineWareshosing.css" />
<script type="text/javascript"
	src="<%=request.getContextPath()%>/statics/js/jquery-1.12.4.js"></script>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/statics/css/pintuer.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/statics/css/admin.css">
<script src="<%=request.getContextPath()%>/statics/js/jquery-1.12.4.js"></script>
<script src="<%=request.getContextPath()%>/statics/js/pintuer.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/statics/js/warehousing.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
</script>
</head>
<body>
	<input id="path" type="hidden" value="<%=request.getContextPath()%>" />
	<div id="df">
		<form method="post"
			action="<%=request.getContextPath()%>/order/listSearchOrder.do"
			id="listform">
			<div class="panel admin-panel">
				<div class="panel-head">
					<strong class="icon-reorder"> 订单列表</strong>
				</div>
				<div class="padding border-bottom">
					<ul class="search" style="padding-left: 10px;">
						<li><input type="text" placeholder="请输入订单号" class="input"
							style="width: 200px; line-height: 17px; display: inline-block; margin-right: 10px;"
							name="orderNo" /> 
						<select name="payType" style="height: 44px;">
				<option value="0">支付方式</option>
				<option value="1">寄付</option>
				<option value="2">到付</option>
				</select>
					<select name="statusId" style="height: 44px;">
				<option value="0">请选择状态</option>
				<c:forEach items="${listStatus }" var="sta" varStatus="status">
				<option value="${sta.statusId }">${sta.statusName }</option>
				</c:forEach>
				</select>
				<input type="text" placeholder="请输入姓名" class="input"
							style="width: 150px; line-height: 17px; display: inline-block; margin-right: 10px;"
							name="orderName" /> 
						<input type="text" placeholder="请输入手机号" class="input"
							style="width: 150px; line-height: 17px; display: inline-block; margin-right: 10px;"
							name="orderTel" /> 
							<input type="text" placeholder="请输入起始地点"
							name="startAddress" class="input"
							style="width: 120px; line-height: 17px; display: inline-block; margin-right: 10px;" /><span>至</span>
							<input type="text" placeholder="请输入终止地点" name="endAddress"
							class="input"
							style="width: 120px; line-height: 17px; display: inline-block; margin-right: 10px;" />
							
		
							<input type="date" placeholder="请输入起始时间"
							name="startTime" class="input"
							style="width: 150px; line-height: 17px; display: inline-block; margin-right: 10px;" /><span>至</span>
							<input type="date" placeholder="请输入终止时间" name="endTime"
							class="input"
							style="width: 150px; line-height: 17px; display: inline-block; margin-right: 10px;" />
							<input type="submit" class="button border-main icon-search"
							style="width: 60px; height: 40px;" value="搜索" /></li>
					</ul>
				</div>
				<div style="overflow-x: scroll">
				<table class="table table-hover text-center" cellpadding="0" cellspacing="1" style="width: 2500px;" >
					<tr style="text-align: center; padding: 10px;">
						<td width="">订单编号</td>
						<td width="">所属网点</td>
						<td width="">寄件人</td>
						<td width="">寄件人电话</td>
						<td width="">寄件地址</td>
						<td width="">收件人</td>
						<td width="">收件人电话</td>
						<td width="">收件地址</td>
						<td width="">揽件人工号</td>
						<td width="">货物类型</td>
						<td width="">货物价格</td>
						<td width="">付款方式</td>
						<td width="">保价金额</td>
						<td width="">创建日期</td>
						<td width="">签收日期</td>
						<td width="">订单状态</td>
						<td width="">备注</td>
						<td width="">操作</td>
					</tr>
					<c:forEach var="order" items="${orderStatusList }"
						varStatus="status">
						<tr style='<c:if test="${status.index%2==1}">background-color:#EEEEE0</c:if>'>
							<td><span>${order.orderNo }</span></td>
							<td><span>${order.agentName}</span></td>
							<td><span>${order.senderName }</span></td>
							<td><span>${order.senderTel}</span></td>
							<td><span>${order.senderDetail} </span></td>
							<td><span>${order.signName}</span></td>
							<td><span>${order.signTel }</span></td>
							<td><span>${order.signDetail}</span></td>
							<td><span>${order.collectorId}</span></td>
							<td><span>${order.goodsCategoryName} </span></td>
							<td><span>${order.price}</span></td>
							<td><span>${order.payTypeName}</span></td>
							<td><span>${order.insuredPrice} </span></td>
							<td><span> <fmt:formatDate
										value="${order.createTime}" pattern="yyyy-MM-dd hh:mm:ss" />
							</span></td>
							<td><span> <fmt:formatDate value="${order.signTime}"
										pattern="yyyy-MM-dd hh:mm:ss" />
							</span></td>
							<td><span>${order.statusName}</span></td>
							<td><span>${order.remark}</span></td>
							<td><span><button><a class="viewOrder"
									orderNo="${order.orderNo}" href="javascript:void(0)"
									onclick="document.getElementById('light').style.display='block';document.getElementById('fade').style.display='block'">查看</a></button>
						</tr>
					</c:forEach>
					<tr>
						<td colspan="8"><div class="pagelist">
								<a <c:if test="${pu.current!=1 && not empty orderStatusList }">
									href="<%=request.getContextPath()%>/order/listSearchOrder.do?currentPage=1&orderNo=${orderNo}&payType=${payType}&statusId=${statusId}&orderName=${orderName}&orderTel=${orderTel}&startAddress=${startAddress}&endAddress${endAddress}startTime=${startTime}&endTime=${endTime}" </c:if>>首页</a>
								<a <c:if test="${pu.current!=1 && not empty orderStatusList }">
									href="<%=request.getContextPath() %>/order/listSearchOrder.do?currentPage=${pu.current-1}&orderNo=${orderNo}&payType=${payType}&statusId=${statusId}&orderName=${orderName}&orderTel=${orderTel}&startAddress=${startAddress}&endAddress${endAddress}startTime=${startTime}&endTime=${endTime}"</c:if>>上一页</a>
								<a <c:if test="${pu.current!=pu.pageCount || pu.current!=1 || pu.pageCount==0}">
									href="<%=request.getContextPath() %>/order/listSearchOrder.do?currentPage=${pu.current+1}&orderNo=${orderNo}&payType=${payType}&statusId=${statusId}&orderName=${orderName}&orderTel=${orderTel}&startAddress=${startAddress}&endAddress${endAddress}startTime=${startTime}&endTime=${endTime}" </c:if>>
									下一页</a> <a <c:if test="${pu.current!=pu.pageCount || pu.current!=1 || pu.pageCount==0}">
									href="<%=request.getContextPath() %>/order/listSearchOrder.do?currentPage=${pu.pageCount}&orderNo=${orderNo}&payType=${payType}&statusId=${statusId}&orderName=${orderName}&orderTel=${orderTel}&startAddress=${startAddress}&endAddress${endAddress}startTime=${startTime}&endTime=${endTime}" </c:if>>最后一页</a>
								<span class="page-num-ul clearfix"
									style="width: auto; position: relative; top: 4px;">
									共${pu.totalCount}条记录&nbsp;&nbsp;${pu.current}
									/${pu.pageCount}页&nbsp;&nbsp; </span>
							</div></td>
					</tr>
				</table>
				</div>
			</div>
		</form>
	</div>


	<div id="light" class="white_content">

		<a href="javascript:void(0)"
			onclick="document.getElementById('light').style.display='none';document.getElementById('fade').style.display='none'">
			<span style="float: right"><button>×</button></span>
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