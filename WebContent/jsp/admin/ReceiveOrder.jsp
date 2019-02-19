<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<!DOCTYPE">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript"
	src="<%=request.getContextPath()%>/statics/js/jquery-1.12.4.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/statics/js/receiveOrder.js"></script>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/statics/css/receiveOrder.css" />
<title>接件管理</title>
</head>
<body>
	<div class="order" id="order">
		<h2 style="background-color: #707783">寄件填单</h2>
		<form action="<%=request.getContextPath()%>/addOrder.do" method="get"
			style="position: relative; min-width: 900px;">
			<input type="hidden" id="info" value="${info}" />
			<input type="hidden" id="path" value="<%=request.getContextPath()%>" />
			<input type="hidden" name="collectorId"
				value="<shiro:principal></shiro:principal>" />
			<div class="addr-info" id="sender">
				<h3>寄件人</h3>
				<div class="addr-content">
					<div class="form">
						<label for="">姓名：</label> <input type="text"
							placeholder="请填写寄件人姓名" name="senderName" handle="name">
					</div>
					<div class="form">
						<label for="">联系电话：</label> <input type="text" name="senderTel"
							handle="phone" placeholder="请输入手机号或固话号码">
					</div>
					<div class="form" style="position:relative;left:80px;">
						<select id="province1" onchange="showCity(this)"><option
								value=0>请选择省份</option></select> <select id="city1"
							onchange="showArea(this)"><option value=0>请选择城市</option></select><select
							id="area1" onchange="showSenderDetail()" name="senderAddressId"><option
								value=0>请选择县(区)</option></select><br /> <br />
					</div>
					<div class="form">
						<label>寄件地址：</label>
						<div class="input-group">
							<input type="text" placeholder="选择地区" name="senderDetail"
								handle="area" readonly> <input type="text"
								placeholder="请填写详细的地址" name="sendAddr" handle="address"
								class="long">
						</div>
					</div>
				</div>
			</div>
			<div class="addr-info" id="recer">
				<h3>收件人</h3>
				<div class="addr-content">
					<div class="form">
						<label for="">姓名：</label> <input type="text"
							placeholder="请填写收件人姓名" name="signName" handle="name">
					</div>
					<div class="form">
						<label for="">联系电话：</label> <input type="text" handle="phone"
							name="signTel" placeholder="请输入手机号或固话号码">
					</div>
					<div class="form" style="position:relative;left:80px;">
						<select id="province2" onchange="showCity(this)"><option
								value=0>请选择省份</option>
						</select> <select id="city2" onchange="showArea(this)"><option
								value=0>请选择城市</option></select><select id="area2"
							onchange="showSignDetail()" name="signAddressId"><option
								value=0>请选择县(区)</option></select><br /> <br />
					</div>
					<div class="form">
						<label for="">收件地址：</label><input type="text" placeholder="选择地区"
							name="signDetail" handle="area" readonly> <input
							type="text" placeholder="请填写详细的地址" name="recAddr"
							handle="address" class="long">
					</div>
				</div>
			</div>
			<div class="pack-info">
				<h3>包裹信息</h3>
				<div class="addr-content">
					<div class="form">
						<label for="">寄件类型：</label> <select id="goodsId" name="goodsId"><option
								value=0>请选择货物类型</option></select><br /> <br />
					</div>
					<div class="form">
						<label for="">保价金额：</label>
						<div class="input-group">
							<input type="text" placeholder="如需保价请填写，最高10000"
								name="insuredPrice1">
						</div>
					</div>
					<div class="form">
						<label>付款方式：</label> <input type="radio" name="payType" value="1"
							checked><label>寄付</label><input type="radio"
							name="payType" value="2"><label>到付</label><br /> <br />
					</div>
					<div class="form">
						<label for="">物品长度：</label><input type="text" name="goodsLong"><span
							style="padding-left: 10px; font-size: 16px;">m</span>
					</div>
					<div class="form">
						<label for="">物品宽度：</label><input type="text" name="goodsWidth"><span
							style="padding-left: 10px; font-size: 16px;">m</span>
					</div>
					<div class="form">
						<label for="">物品高度：</label><input type="text" name="goodsHeight"><span
							style="padding-left: 10px; font-size: 16px;">m</span>
					</div>
					<div class="form">
						<label for="">物品重量：</label><input type="text" name="goodsWeight"><span
							style="padding-left: 10px; font-size: 16px;">kg</span>
					</div>
					<div class="form">
						<label>物品数量：</label> <input type="text" placeholder="选填"
							name="goodsAccount">
					</div>
					<div class="form">
						<label for="">备注：</label> <input type="text"
							placeholder="请填写给快递员的留言" name="remark">
					</div>
				</div>
			</div>
			<div class="order-btn-wrap">
				<input class="btn order-btn" type="submit" value="立即下单">
			</div>
		</form>
	</div>



</body>
</html>