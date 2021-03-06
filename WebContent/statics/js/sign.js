$(function() {
	var path=$("#path").val();
	var operatorId = $('[name=operatorId]').val();
	var goodsId = $('#goodsId').val();
	$("[name=goodsId]").val(goodsId);
	
	//订单签收
	$("#sign").click(function() {
		var orderId = $(this).attr("orderNo");
		$.ajax({
			url : path + "/warehouse/addTransInfo.do",
			data : {
				operatorId : operatorId,
				eventId : 3,
				orderId : orderId
			},
			type : "get",
			dataType : "text",
			success : function(result) {
				alert(result);
				window.location.href = path + "/warehouse/getSignOrderList.do?operatorId="+operatorId;

			}
		})
	})
	//订单拒签
	$("#refuseSign").click(function() {
		var orderId = $(this).attr("orderNo");
		$.ajax({
			url : path + "/warehouse/addTransInfo.do",
			data : {
				operatorId : operatorId,
				eventId : 7,
				orderId : orderId
			},
			type : "get",
			dataType : "text",
			success : function(result) {
				alert(result);
				window.location.href = path + "/warehouse/getSignOrderList.do?operatorId="+operatorId;

			}
		})
	})
	
	//显示订单信息
	$(".showOrderInfo").click(function(){
		$.ajax({
			url:path+"/online/getOrderStatus.do",
			type:"get",
			data:{orderNo:$(this).attr("orderNo")},
			dataType:"json",
			success:function(result){
				$("#light").css("display","block");
				$("#fade").css("display","block");
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
});

function getSignOrderList(){
	var path=$("#path").val()
	var operatorId = $('[name=operatorId]').val();
	var keyWords = $('[name=keyWords]').val();
	var payType =  $('#payType option:selected').val();
	var goodsId =  $('#goodsId option:selected').val();
	var statusCode = $('#statusCode option:selected').val();
	alert(payType)
	$.ajax({
		url : path + "/warehouse/getSignOrderList.do",
		data : {
			operatorId : operatorId,
			keyWords : keyWords,
			payType : payType,
			goodsId : goodsId,
			statusCode : statusCode
		},
		type : "get",
		success : function(result) {
		}
	})
}