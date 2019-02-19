/*$(function(){
	var path=$("#path").val()
	var operatorId = $('[name=operatorId]').val();
	var eventId = $('[name=eventId]').val();
	$("#inWarehouse").click(function(){
		alert('11111');
		var orderId = $('[name=orderId]').val();
		$.ajax({
			url:path+"/online/searchUntreated.do",
			data:{operatorId:operatorId,eventId:eventId,orderId:orderId},
			type:"get",
			dataType:"text",
			success:function(result){
				alert(result);
			}
		})
	})
})*/