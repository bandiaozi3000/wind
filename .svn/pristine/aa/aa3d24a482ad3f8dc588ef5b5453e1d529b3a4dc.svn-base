<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="<%=request.getContextPath()%>/statics/css/style.css"
	rel="stylesheet" type="text/css" />
<title>物流信息</title>
</head>
<body>
	<div class="about_right1" id="about_right1">
		<div class="customerservice_caption">
			<span class="customerservice_caption_bar"></span><span
				class="customerservice_caption_text">&nbsp;&nbsp;快件查询</span>
		</div>

		<div class="express_query_upper_search_operation"
			style="margin-left: 100px;">
			<form action="<%=request.getContextPath()%>/transInfo/list.do"
				method="post">
				<input type="text" name="orderId" value="${orderId }"
					style="width: 160px; height: 36px; margin-right: 20px;" /> <input
					type="submit"
					value="查询">
			</form>
		</div>
		<div class="express_query_content">
			<c:if test="${not empty transInfoAgentList}">
				<div style="width: 700px">
					<span class="express_query_content_article_trace_code">运单编号：<font
						color="#0055A2">${orderId }</font></span> <span
						class="express_query_content_article_trace_status">状态：<font
						color="#0055A2">${status.statusName }</font></span>
				</div>
				<div class="express_query_content_article_trace_detail">
					<table width="700px" border="0">
						<tr>
							<th width="30%">时间</th>
							<th>跟踪记录</th>
						</tr>
						<c:forEach items="${transInfoAgentList }" var="transInfoAgent">
							<tr height="50px" align="left">
								<td><fmt:formatDate type="both"
										value="${transInfoAgent.arrivalTime }" /></td>
								<td>[${transInfoAgent.cityName }]&nbsp;&nbsp; <font
									color="red">${transInfoAgent.currentName }</font>
									${transInfoAgent.eventName} &nbsp;&nbsp;
								    <c:if test="${transInfoAgent.eventId==5 }">${transInfoAgent.issueInfo }</c:if>
									<c:if test="${transInfoAgent.eventId==6 }">${transInfoAgent.handling }</c:if>
									<c:if test="${transInfoAgent.eventId!=6&&transInfoAgent.eventId!=5&&transInfoAgent.nextName!='0'}">
									下一站: <font color="red">${transInfoAgent.nextName }</font>
									</c:if>
									<br/> 
									<c:if test="${transInfoAgent.staffName!='0'}">
									操作人:${transInfoAgent.staffName }
									工号:${transInfoAgent.staffNo } 手机号:${transInfoAgent.staffTel }
									</c:if>
								</td>
							</tr>
						</c:forEach>
					</table>
				</div>
				<div style="clear: both"></div>
			</c:if>
			<c:if test="${empty transInfoAgentList}">
				<div class="expressQueryIcon_div" style="margin-left:200px">
					<img
						src="<%=request.getContextPath()%>/statics/picture/313043.png" /></br>
					</br>亲~&nbsp;&nbsp;您查询的订单号没有物流信息哦.......
				</div>

			</c:if>
		</div>
	</div>
	<div style="clear: both"></div>
	<div style="clear: both"></div>
</body>
</html>