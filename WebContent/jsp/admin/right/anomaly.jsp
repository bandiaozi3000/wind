<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<!DOCTYPE html>
<html>
<head>
<link type="text/css" rel="stylesheet"
	href="<%=request.getContextPath() %>/statics/css/onlineWareshosing.css" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/statics/css/pintuer.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/statics/css/admin.css">
<script type="text/javascript" src="<%=request.getContextPath()%>/statics/js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/statics/js/anomaly.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<span style="display:none" id="managerCode"><shiro:principal></shiro:principal></span>
<input id="path" type="hidden" value="<%=request.getContextPath()%>" />
	<form method="post"
			action="<%=request.getContextPath() %>/anomaly/listAll.do"
			id="listform">
			<div class="panel admin-panel">
				<div class="panel-head">
					<strong class="icon-reorder"> 订单列表</strong>
				</div>
				<div class="padding border-bottom">
					<ul class="search" style="padding-left: 10px;">
						<li><input type="text" value="${values.orderNo }" placeholder="请输入订单号" class="input" name="orderNo"
							style="width: 250px; line-height: 17px; display: inline-block; margin-right: 10px;" <c:if test="${not empty orderNo}">value="${orderNo }"</c:if> />
							<input type="text" value="${values.agentInfo }" placeholder="请输入网点编号/名称" name="agentInfo"
							class="input" style="width: auto; line-height: 17px; display: inline-block; margin-right: 10px;"/>
							<select class="input" name="handledCode" style="width: auto; line-height: 17px; display: inline-block; margin-right: 10px;">
								<option value="0" <c:if test="${values.handledCode==0 }">selected</c:if>>全部</option>
								<option value="1" <c:if test="${values.handledCode==1 }">selected</c:if>>未处理</option>
								<option value="2" <c:if test="${values.handledCode==2 }">selected</c:if>>已处理</option>
							</select>
							<input type="hidden" name="currentAgentNo">
							<input
							type="submit" class="button border-main icon-search"
							style="width: 60px; height: 40px;" value="搜索" />
							<input
							type="button" class="button border-main icon-search"
							style="magin-left:30px;width:100px; height: 40px;" value="添加问题件" onclick="addOne()" /></li>
							
					</ul>
				</div>
			</div>
		</form>
	<!--问题件-->
	<table class="providerTable" cellpadding="0" cellspacing="1">
		<tr class="firstTr">
			<td width="10%">订单编号</td>
			<td width="6%">状态名称</td>
			<td width="18%">问题详情</td>
			<td width="10%">发现网点</td>
			<td width="10%">发现时间</td>
			<td width="10%">处理时间</td>
			<td width="19%">处理详情</td>
			<td width="6%">操作</td>
			<td width="11%">修改状态</td>
		</tr>
		<c:forEach var="anomaly" items="${list }">
			<tr>
				<td>${anomaly.orderNo }</td>
				<td>${anomaly.statusName }</td>
				<td>${anomaly.issueInfo }</td>
				<td>${anomaly.agentName }</td>
				<td><fmt:formatDate value="${anomaly.creationDate }" pattern="yyyy-MM-dd" /></td>
				<td><fmt:formatDate value="${anomaly.modifyDate }" pattern="yyyy-MM-dd" /></td>
				<td>${anomaly.handling }</td>
				<td>
					<a   order="${anomaly.orderNo }" agentId="${anomaly.agentNumber }" type="button" <c:if test="${anomaly.handledCode==2 }">style="color:grey" </c:if><c:if test="${anomaly.handledCode==1 }">class="modify" href="javascript:void(0)" </c:if>>处理</a>
					<a   order="${anomaly.orderNo }" agentId="${anomaly.agentNumber }" type="button" <c:if test="${anomaly.handledCode==1 }">style="color:grey" </c:if><c:if test="${anomaly.handledCode==2}">class="delete" href="javascript:void(0)" </c:if>>删除</a>
				</td>
				<td>	
					<input type="hidden" name="orderNo" value="${anomaly.orderNo }" id="oneOrder">
					<input type="hidden"   value="${anomaly.agentNumber }" id="oneAgent">
					<select name="statusCode" id="onlyChangeStatus">
						<c:forEach var="status" items="${statusList }">
							<option value="${status.statusCode }" <c:if test="${status.statusCode==anomaly.statusCode }">selected="selected"</c:if>>${status.statusName }</option>
						</c:forEach>
					</select>
					<input type="button" value="修改" onclick="onlyChangeStatus()">
				</td>
			</tr>
		</c:forEach>
	</table>
	<div align="center">
		<table>
					<tr>
						<td  colspan="8"><div class="pagelist">
								<a <c:if test="${pt.pageNo!=1&&pt.totalPage!=1 }">
									href="<%=request.getContextPath()%>/anomaly/listAll.do?pageNo=1&handledCode=${values.handledCode }&agentInfo=${values.agentInfo }" </c:if>>首页</a>
								<a <c:if test="${pt.pageNo!=1&&pt.totalPage!=1 }">
									href="<%=request.getContextPath() %>/anomaly/listAll.do?pageNo=${pt.pageNo-1 }&handledCode=${values.handledCode }&agentInfo=${values.agentInfo } "</c:if>>上一页</a>
								<a <c:if test="${pt.pageNo!=pt.totalPage&&pt.totalPage!=1&&pt.totalPage!=0 }">
									href="<%=request.getContextPath() %>/anomaly/listAll.do?pageNo=${pt.pageNo+1 }&handledCode=${values.handledCode }&agentInfo=${values.agentInfo } " </c:if>>
									下一页</a> <a 
									<c:if test="${pt.pageNo!=pt.totalPage&&pt.totalPage!=1&&pt.totalPage!=0 }">
									href="<%=request.getContextPath() %>/anomaly/listAll.do?pageNo=${pt.totalPage }&handledCode=${values.handledCode }&agentInfo=${values.agentInfo } " </c:if>>最后一页</a>
								<span class="page-num-ul clearfix"
									style="width: auto; position: relative; top: 4px;">
									共${pt.total }条记录&nbsp;&nbsp;${pt.pageNo }
									/${pt.totalPage }页&nbsp;&nbsp; </span>
							</div></td>
					</tr>
	</table>
	</div>
		
		
	
	
					
	

<div id="light" class="white_content">
<a href = "javascript:void(0)" onclick = "document.getElementById('light').style.display='none';document.getElementById('fade').style.display='none'">
<span style="float:right"><button>×</button></span>
</a>
<span style="text-align:center"><h3 style="font-weight:bold;font-size:30px">处理异常</h3></span>
<br><br><br><br>
<form	action="<%=request.getContextPath() %>/anomaly/modify.do" method="post">
	<input type="hidden" id="orderNo" name="orderNo">
	<input type="hidden" id="agentNumber" name="agentNumber">
	<textarea cols="75px" rows="4" name="handling" placeholder="请输入处理信息" required></textarea>
	<input type="submit" value="修改" style="float:right">
</form>
</div>
        <div id="fade" class="black_overlay"></div> 
        
<div id="addOne" class="white_content">
<a href = "javascript:void(0)" onclick = "document.getElementById('addOne').style.display='none';document.getElementById('fade1').style.display='none'">
<span style="float:right"><button>×</button></span>
</a>
<span style="text-align:center"><h3 style="font-weight:bold;font-size:30px">添加异常件</h3></span>
<br><br><br><br>
<form	action="<%=request.getContextPath() %>/anomaly/add.do" method="post">
	<span style="font-weight:bold;font-size:15px">请输入订单号：</span><input type="text" name="orderNo" required>
	<br><br>
	<span style="font-weight:bold;font-size:15px">请选择异常类型：</span>
	<select onchange="checkStatus()" id="changeStatus" name="statusCode">
		<c:forEach var="status" items="${statusList }">
				<option value="${status.statusCode }">${status.statusName }</option>
		</c:forEach>
	</select>
	<textarea cols="75px" rows="4" name="issueInfo" placeholder="请输入问题描述" style="display: none"></textarea>
	<input type="hidden" name="agentNumber">
	<input type="submit" value="添加" style="float:right">
</form>
</div>        
        <div id="fade1" class="black_overlay"></div> 
</body>
</html>