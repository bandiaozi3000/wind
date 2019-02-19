<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<!DOCTYPE">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/statics/css/receiveorder.css">
<script type="text/javascript"
	src="<%=request.getContextPath()%>/statics/js/jquery-1.12.4.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/statics/js/modifyOrder.js"></script>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/statics/css/receiveOrder.css" />
<title>修改订单</title>
</head>
<body>
	<span style="display:none" id="userName"><shiro:principal></shiro:principal></span>
	<div class="order" id="order">
		<h2 style="background-color: #707783">修改订单</h2>
		<form action="<%=request.getContextPath()%>/online/doModifyUntreatedOrder.do" style="position: relative; min-width: 900px;" method="get">
		    <input type="hidden" name="staffNo" value="<shiro:principal></shiro:principal>"/>
		   <input type="hidden" id="path" value="<%=request.getContextPath()%>"/>
			<div class="addr-info" id="sender">
			<div class="orderNo">
					<label for="">订单号：</label> <input type="text" 
						 value="${order.orderNo }" disabled="disabled" />
					</div>
					 <input type="hidden" name="orderNo"
						 value="${order.orderNo }" />
				
				<h3>寄件人</h3>
				<div class="addr-content">
					<div class="form">
						<label for="">姓名：</label> <input type="text"
						 name="senderName" handle="name" value="${order.senderName }">
					</div>
					<div class="form">
						<label for="">联系电话：</label> <input type="text" name="senderTel"
							handle="phone" placeholder="请输入手机号或固话号码" value="${order.senderTel }"/>
					</div>
					</div>
					<div class="form">
						<label>修改寄件地址：</label> <select id="province1"
							onchange="showCity(this)"><option value=0>请选择省份</option></select>
						<select id="city1" onchange="showArea(this)"><option
								value=0>请选择城市</option></select><select id="area1"
							onchange="showSenderDetail()" name="senderAddressId"><option
								value=0>请选择县（区）</option></select><br /> <br />
						<div class="input-group">
							<input type="text" placeholder="选择地区" name="senderDetail"
								handle="area" readonly value="${areaDetail }"> <input type="text"
								placeholder="请填写详细的地址" name="sendAddr" handle="address"
								class="long" value="${senderDetail }">
						</div>
					</div>
				</div>
				
				
			<div class="addr-info" id="recer">
				<h3>收件人</h3>
				<div class="addr-content">
					<div class="form">
						<label for="">姓名：</label> <input type="text"
							 name="signName" handle="name" value="${order.signName }">
					</div>
					<div class="form">
						<label for="">联系电话：</label> <input type="text" handle="phone"
							name="signTel" placeholder="请输入手机号或固话号码" value="${order.signTel }">
					</div>
					</div>
					<div class="form">
						<label for="">修改收件地址：</label><select id="province2" onchange="showCity(this)"><option
								value=0 >请选择省份</option>
						</select> <select id="city2" onchange="showArea(this)"><option
								value=0>请选择城市</option></select><select id="area2"
							onchange="showSignDetail()" name="signAddressId"><option
								value=0>请选择县（区）</option></select><br /> <br />
					</div>
					<div class="form">
						<input type="text" placeholder="选择地区"
							name="signDetail" handle="area" readonly value="${signAreaDetail}"> <input
							type="text" placeholder="请填写详细的地址" name="recAddr" handle="address"
							class="long" value="${signDetail}">
					</div>
				</div>
			
			<div class="pack-info">
				<h3>包裹信息</h3>
				<div class="addr-content">
						<div class="orderNo">
					<label for="">订单号：</label> <input type="hidden" name="goodsNo"
						 value="${order.orderNo }"/>
					</div>
					<div class="form">
						<label for="">寄件类型：</label> <select id="goodsId" name="goodsId"><option
								value=0>请选择货物类型</option>
								<c:forEach items="${listGoodsCategory }" var="goodsCategory" varStatus="status">
					<option value="${goodsCategory.goodsCategoryId}"
						<c:if test="${order.goodsId==goodsCategory.goodsCategoryId }">selected</c:if>>${goodsCategory.goodsCategoryName}</option>
				</c:forEach>
								</select><br />		
					</div>
					<div class="form">
						<label for="">保价金额：</label>
						<div class="input-group">
							<input type="text" placeholder="如需保价请填写，最高10000"
								name="insuredPrice" value="${order.insuredPrice }">
						</div>
					</div>
					<div class="form">
						<label>付款方式：</label> <input type="radio" name="payType" value="1" <c:if test="${order.payType==1 }">checked</c:if>
							><label>寄付</label><input type="radio"
							name="payType" value="2"  <c:if test="${order.payType==2 }">checked</c:if>><label>到付</label><br /> <br />
					</div>
					<div class="form">
						<label for="">物品长度：</label><input type="text" name="goodsLong" value="${order.goodsLong }"><span
							style="padding-left: 10px; font-size: 16px;" >m</span>
					</div>
					<div class="form">
						<label for="">物品宽度：</label><input type="text" name="goodsWidth" value="${order.goodsWidth}"><span
							style="padding-left: 10px; font-size: 16px;" >m</span>
					</div>
					<div class="form">
						<label for="">物品高度：</label><input type="text" name="goodsHeight" value="${order.goodsHeight}"><span
							style="padding-left: 10px; font-size: 16px;">m</span>
					</div>
					<div class="form">
						<label for="">物品重量：</label><input type="text" name="goodsWeight" value="${order.goodsWeight}"><span
							style="padding-left: 10px; font-size: 16px;">kg</span>
					</div>
					<div class="form">
						<label>物品数量：</label> <input type="text" placeholder="选填" 
							name="goodsAccount" value="${order.goodsAccount}">
					</div>
					<div class="form">
						<label for="">备注：</label> <input type="text"
							placeholder="请填写给快递员的留言" name="remark" value="${order.remark }">
					</div>
				</div>
			</div>
			<div class="order-btn-wrap">
				<input class="btn order-btn" type="submit" value="提交" style="width:120px;left:50px">
			</div>

		</form>

	</div>



</body>
</html>