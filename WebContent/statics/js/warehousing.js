$(function(){
	var userName=$("#userName").html();
	var path=$("#path").val();
	var operatorId=$("#operatorId").html();
	$(".modifyOrderStatus").click(function(){
		var orderId =$(this).attr("orderNo");
		$.ajax({
			url : path + "/warehouse/addTransInfo.do",
			data : {
				operatorId : operatorId,
				eventId : 4,
				orderId : orderId
			},
			type : "get",
			dataType : "text",
			success : function(result) {
				alert(result);
				window.location.href = path + "/online/listOnLine.do?staffNo="+operatorId;
			}
			
		})
	
	})


	$(".modifyUntreated").click(function(){
		var path=$("#path").val();
		$.ajax({
			url:path+"/online/modifyUntreated.do",
			type:"get",
			data:{orderNo:$(this).attr("orderNo")},
			dataType:"json",
			success:function(result){
				if(result.result=="yes"){
					alert("商品预处理成功！");
					window.location.href=path+"/online/listUntreated.do?staffNo="+userName;
				}else if(result.result=="no"){
					alert("商品预处理失败！");
					window.location.href=path+"/online/listUntreated.do?staffNo="+userName;
				}
			}
		})
	})


	//查看未处理订单详情

	$(".viewUntreated").click(function(){
		var path=$("#path").val();
		$.ajax({
			url:path+"/online/getOrderStatus.do",
			type:"get",
			data:{orderNo:$(this).attr("orderNo")},
			dataType:"json",
			success:function(result){
				$("#view_orderNo").html("订单编号："+result.orderNo);
				$("#view_belongId").html("归属网点编号："+result.agentName);
				$("#view_senderName").html("寄件人姓名："+result.senderName);
				$("#view_senderTel").html("寄件人联系方式："+result.senderTel);
				$("#view_senderDetail").html("寄件人地址："+result.senderDetail);
				$("#view_signName").html("收件人姓名："+result.signName);
				$("#view_signTel").html("收件人联系方式："+result.signTel);
				$("#view_signDetail").html("收件人详细地址："+result.signDetail);
				$("#view_collectorId").html("揽件员工工号："+result.collectorId);
				$("#view_delivererId").html("派送员工编号："+result.delivererId);
				$("#view_goodsCategoryName").html("货物分类："+result.goodsCategoryName);
				$("#view_goodsAccount").html("货物数量："+result.goodsAccount);
				$("#view_goodsLong").html("货物长度："+result.goodsLong);
				$("#view_goodsWidth").html("货物宽度："+result.goodsWidth);
				$("#view_goodsHeight").html("货物高度："+result.goodsHeight);
				$("#view_goodsWeight").html("货物重量："+result.goodsWeight);
				$("#view_price").html("订单价格："+result.price);
				$("#view_payType").html("付款方式："+result.payType);
				$("#view_insuredPrice").html("保价金额："+result.insuredPrice);
				$("#view_createTime").html("订单创建日期："+result.createTime);
				$("#view_statusName").html("状态："+result.statusName);
				$("#view_remark").html("备注："+result.remark);

			}
		})
	})
	//查看预订单详情
	$(".viewOnLine").click(function(){
		var path=$("#path").val();
		$.ajax({
			url:path+"/online/getOrderStatus.do",
			type:"get",
			data:{orderNo:$(this).attr("orderNo")},
			dataType:"json",
			success:function(result){
				$("#view_orderNo").html("订单编号："+result.orderNo);
				$("#view_belongId").html("归属网点编号："+result.agentName);
				$("#view_senderName").html("寄件人姓名："+result.senderName);
				$("#view_senderTel").html("寄件人联系方式："+result.senderTel);
				$("#view_senderDetail").html("寄件人地址："+result.senderDetail);
				$("#view_signName").html("收件人姓名："+result.signName);
				$("#view_signTel").html("收件人联系方式："+result.signTel);
				$("#view_signDetail").html("收件人详细地址："+result.signDetail);
				$("#view_collectorId").html("揽件员工工号："+result.collectorId);
				$("#view_delivererId").html("派送员工编号："+result.delivererId);
				$("#view_goodsCategoryName").html("货物分类："+result.goodsCategoryName);
				$("#view_goodsAccount").html("货物数量："+result.goodsAccount);
				$("#view_goodsLong").html("货物长度："+result.goodsLong);
				$("#view_goodsWidth").html("货物宽度："+result.goodsWidth);
				$("#view_goodsHeight").html("货物高度："+result.goodsHeight);
				$("#view_goodsWeight").html("货物重量："+result.goodsWeight);
				$("#view_price").html("订单价格："+result.price);
				$("#view_payType").html("付款方式："+result.payType);
				$("#view_insuredPrice").html("保价金额："+result.insuredPrice);
				$("#view_createTime").html("订单创建日期："+result.createTime);
				$("#view_statusName").html("状态："+result.statusName);
				$("#view_remark").html("备注："+result.remark);
			}
		})
	})

	//查看订单详情
	$(".viewOrder").click(function(){
		var path=$("#path").val();
		$.ajax({
			url:path+"/online/getOrderStatus.do",
			type:"get",
			data:{orderNo:$(this).attr("orderNo")},
			dataType:"json",
			success:function(result){
				$("#view_orderNo").html("订单编号："+result.orderNo);
				$("#view_belongId").html("归属网点编号："+result.agentName);
				$("#view_senderName").html("寄件人姓名："+result.senderName);
				$("#view_senderTel").html("寄件人联系方式："+result.senderTel);
				$("#view_senderDetail").html("寄件人地址："+result.senderDetail);
				$("#view_signName").html("收件人姓名："+result.signName);
				$("#view_signTel").html("收件人联系方式："+result.signTel);
				$("#view_signDetail").html("收件人详细地址："+result.signDetail);
				$("#view_collectorId").html("揽件员工工号："+result.collectorId);
				$("#view_delivererId").html("派送员工编号："+result.delivererId);
				$("#view_goodsCategoryName").html("货物分类："+result.goodsCategoryName);
				$("#view_goodsAccount").html("货物数量："+result.goodsAccount);
				$("#view_goodsLong").html("货物长度："+result.goodsLong);
				$("#view_goodsWidth").html("货物宽度："+result.goodsWidth);
				$("#view_goodsHeight").html("货物高度："+result.goodsHeight);
				$("#view_goodsWeight").html("货物重量："+result.goodsWeight);
				$("#view_price").html("订单价格："+result.price);
				$("#view_payType").html("付款方式："+result.payType);
				$("#view_insuredPrice").html("保价金额："+result.insuredPrice);
				$("#view_createTime").html("订单创建日期："+result.createTime);
				$("#view_statusName").html("状态："+result.statusName);
				$("#view_remark").html("备注："+result.remark);
			}
		})
	})
	//修改未处理订单信息
	$(".modifyUntreatedOrder").click(function(){
		var path=$("#path").val();
		var orderNo=$(this).attr("orderNo")
		var areaId=$(this).attr("areaId")
		var signAddressId=$(this).attr("signAddressId")
		var orderPath=$(this).attr("url")
		window.location.href=path+"/online/modifyUntreatedOrder.do?orderNo="+orderNo+"&areaId="+areaId+"&signAddressId="+signAddressId+"&orderPath="+orderPath;
	})	
})