$(function() {
	var path=$("#path").val()
	var operatorId = $('[name=operatorId]').val();
	var eventId = $('[name=eventId]').val();
	$("#showInfo").hide();
	$("#warehouse").hide();
	$("#showInfo").click(function() {
		$("#showInfo").slideUp(1000);
	});

	$("#doWarehouse").click(function() {
		$("#warehouse").css("display", "block");
	});

	$("#cancel").click(function() {
		$("#warehouse").css("display", "none");
	});

	$("#doWare").click(function() {
		var orderId = $('[name=orderId]').val();
		$.ajax({
			url : path + "/warehouse/addTransInfo.do",
			data : {
				operatorId : operatorId,
				eventId : eventId,
				orderId : orderId
			},
			type : "get",
			dataType : "text",
			success : function(result) {
				alert(result);
				$("#warehouse").css("display", "none");
				window.location.href = path + "/warehouse/getTransInfoList.do?operatorId="+operatorId+"&eventId="+eventId;
			}
		})
	})

	$(".showOrderInfo").click(function(){
		$.ajax({
			url:path+"/online/getOrderStatus.do",
			type:"get",
			data:{orderNo:$(this).attr("orderNo")},
			dataType:"json",
			success:function(result){
				$("#light").slideDown("slow");
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


	$(".showTransInfo").click(function(){
		var orderNo = $(this).attr("orderNo");
		$.ajax({
			url:path+"/transInfo/adminList.do",
			type:"get",
			data:{orderNo:orderNo},
			dataType:"json",
			success:function(result){
				$("#light1").slideDown("slow");
				$("#fade1").css("display","block");
				$("#showTable").html("");
				for(var i=0;i<result.length;i++){
					var str= "<tr><td>订单"+result[i].orderId+",由    <span style='color:#FF4040'>"+result[i].currentName+"</span> 在"+result[i].arrivalTime+"  <span style='color:#FF4040'>"+result[i].eventName+"</span></td></tr>";
					$("#showTable").append(str);
				}
			}
		})
	})
});

function getTransInfoList(){
	var path=$("#path").val()
	var eventId = $('[name=eventId]').val();
	var operatorId = $('[name=operatorId]').val();
	var keyWords = $('[name=keyWords]').val();
	var startTime = $('[name=startTime]').val();
	var endTime = $('[name=endTime]').val();
	$.ajax({
		url : path + "/warehouse/getTransInfoList.do",
		data : {
			operatorId : operatorId,
			eventId : eventId,
			keyWords : keyWords,
			startTime : startTime,
			endTime : endTime
		},
		type : "get",
		success : function(result) {
		}
	})
}
