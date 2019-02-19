$(function(){
	var path=$("#path").val()
	var managerCode=$("#managerCode").html()
	if(managerCode==41000001){
		window.location.href=path+"/anomaly/listAll.do?"
	}else{
		managerCode=managerCode.substring(0,6)
		window.location.href=path+"/anomaly/listAllInAgent.do?agentCode="+managerCode
	}
})