$(function(){
	var managerCode=$("#managerCode").html()
	managerCode=managerCode.substring(0,6)
	$("[name=agentNumber]").val(managerCode)
	$("[name=currentAgentNo]").val(managerCode)
	
	$(".modify").click(function(){
		document.getElementById('light').style.display='block';document.getElementById('fade').style.display='block'
		var orderNo=$(this).attr("order")
		var agentNumber=$(this).attr("agentId")
		$("#orderNo").val(orderNo)
		$("#agentNumber").val(agentNumber)
	})
	
	$(".delete").click(function(){
		if(confirm("确定删除该异常件吗？")){
			var orderNo=$(this).attr("order")
			var agentNumber=$(this).attr("agentId")
			var path=$("#path").val()
			$.ajax({
				url:path+"/anomaly/delete.do",
				data:{"orderNo":orderNo,"agentNumber":agentNumber},
				type:"get",
				dataType:"text",
				success:function(result){
					if(result=="yes"){
						alert("删除成功！")
						location.reload()
					}else{
						alert("删除失败，请稍后再试！")
						location.reload()
					}
				}
			})
		}
	})
})

function addOne(){
	document.getElementById('addOne').style.display='block';document.getElementById('fade1').style.display='block'
}

function checkStatus(){
	var id=$("#changeStatus").val()
	if(id==7){
		$("#changeStatus").next().attr("required","required")
		$("#changeStatus").next().show()
	}else{
		$("#changeStatus").next().removeAttr("required")
		$("#changeStatus").next().hide()
	}
}


function onlyChangeStatus(){
	if(confirm("确定修改类型吗？")){
	var orderNo=$("#oneOrder").val()
	var agentNumber=$("#oneAgent").val()
	var statusCode=$("#onlyChangeStatus").val()
	var path=$("#path").val()
	$.ajax({
				url:path+"/anomaly/modifyStatus.do",
				data:{"orderNo":orderNo,"agentNumber":agentNumber,"statusCode":statusCode},
				type:"get",
				dataType:"text",
				success:function(result){
					if(result=="yes"){
						alert("修改成功！")
						location.reload()
					}else{
						alert("修改失败，请稍后再试！")
						location.reload()
					}
				}
	})
	}
}
