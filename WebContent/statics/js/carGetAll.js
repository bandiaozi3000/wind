//进入页面后运行的ajax
$(function(){
	getAll();
});

//查询该网点下的所有车辆
function getAll(val) {
	var path = $("[name=path]").val();
	var driverName = $("[name=driverName]").val();
	var staffNo = $("#staffNo").text();
	$.ajax({
		type : "post",
        url : path+"/car/listCar.do",
        data : {
        	"currents" : val,
        	"driverName" : driverName,
        	"staffNo" : staffNo
        },
        dateType : "json",
        success: function(json) {
        	var str = "";
        	  for(var i in json){
        		if(json[i].carId != null){
        			str = str+"<tr style='cursor: pointer' onclick='listCarFlowPath("+json[i].carId
        			+")'><td width='1%'></td><td width='4%'>"+json[i].carId
            		+"</td><td width='7%'>"+json[i].carNum
            		+"</td><td width='6%'>"+json[i].driverName
            		+"</td><td width='8%'>"+json[i].driverPhone
            		+"</td><td width='6%'>"+json[i].copilotName
            		+"</td><td width='7%'>"+json[i].copilotPhone
            		+"</td><td width='3%'>"+json[i].typeName
            		+"</td><td width='2%'><select style='width: 150px' id='statusName' onchange='tankuang("+json[i].carId
            		+")'>"
            		//调用查询车辆全部状态，接收返回来的集合写入select
            		var carStatus = getcarstatus();
        			for(var j in carStatus){
        				if(json[i].carState == carStatus[j].carStatusId){
        					str = str+"<option value='"+carStatus[j].carStatusId
                			+"' selected>"+carStatus[j].statusName
                			+"</option>"
        				}else{
        					str = str+"<option value='"+carStatus[j].carStatusId
                			+"'>"+carStatus[j].statusName
                			+"</option>"
        				}
        				
        			}
        			str = str+"</select></td></tr>"
        		}
        	}
        	//将查询的信息写到页面
        	$("#getAll").html(str);
        	//将分页信息显示到页面
        	for(var i in json){
        		if(json[i].totalCount != null){
        			$("#all").html(json[i].totalCount);
        			$("#nowpage").html(json[i].current+"/");
        			$("#numpage").html(json[i].pageCount);
        			$("[name=home]").val("1");
        			$("[name=prev]").val(json[i].current-1);
        			$("[name=next]").val(json[i].current+1);
        			$("[name=last]").val(json[i].pageCount);
        		}
        	}
        }
	});
}
//查询车辆全部状态
function getcarstatus(){
	var path = $("[name=path]").val();
	var carStatus = null;
	$.ajax({
		type : "post",
        url : path+"/car/listcarstatus.do",
        data : {
        	
        },
        //改为同步
        async: false,
        dateType : "json",
        success: function(json) {
        	carStatus = json;
        }
	});
	return carStatus
}

//判断用户点击了什么，是否确认修改车辆状态
function tankuang(val){
	var path = $("[name=path]").val();
	var statusName = $("#statusName").val();
	if(statusName == 2){
		var carArriveAgent = prompt("请输入您要运输的网点编号");
		if(carArriveAgent != null){
			$.ajax({
				type : "post",
		        url : path+"/car/modityCarState2.do",
		        data : {
		        	"carArriveAgent" : carArriveAgent,
		        	"statusName" : statusName,
		        	"carId" : val,
		        },
		        dateType : "text",
		        success: function(chenggong) {
		        	//判断返回的修改是否成功
		        	if(chenggong == "no"){
		        		alert("该车辆状态暂时不可修改")
		        		getAll();
		        	}
		        	if(chenggong == "yes"){
		        		alert("修改成功")
		        		getAll();
		        	}
		        	if(chenggong == "shibai"){
		        		alert("该网点无法运往")
		        		getAll();
		        	}
		        }
			});
		}else{
			getAll();
		}
	}else{
		var a = confirm("是否确认修改？")
		if(a){
			$.ajax({
				type : "post",
		        url : path+"/car/modityCarState.do",
		        data : {
		        	"statusName" : statusName,
		        	"carId" : val,
		        },
		        dateType : "text",
		        success: function(yes) {
		        	//判断返回的修改是否成功
		        	if(yes == "no"){
		        		alert("该车辆状态暂时不可修改")
		        		getAll();
		        	}else{
		        		alert("成功")
		        		getAll();
		        	}
		        }
			});
		}else{
			getAll();
		}
	}
}

//查询运输中车辆的运输状态
function listCarFlowPath(val) {
	var path = $("[name=path]").val();
	var carId = val;
	$.ajax({
		type : "post",
        url : path+"/car/listCarFlowPath.do",
        data : {
        	"carId" : carId,
        },
        dateType : "json",
        success: function(json) {
        	var str = "";
        	//判断开往下一个网点的值是否是空值，如果为空则不显示下一个网点的信息
        	if(json.carArriveAgentName == null){
        		str = str+"<span>车牌号<b id='carNum' style='color: red'>"+json.carNum
        		+"</b>:现在所在<b id='carNowAgentName' style='color: red'>"+json.carNowAgentName
        		+"</b><b id='carArriveAgentName' style='color: red'></b>车辆所能到达的网点编号";
        		//查询该车辆所能运输的网点
        		var belongId = listBelongId(json.carId);
        		for(var i in belongId){
        			if(belongId[i].agentNumber != null){
        				str = str+"<b>"+belongId[i].agentNumber
            			+"   </b>"
        			}
        		}
        		str = str+"</span>";
        	}else{
        		str = str+"<span>车牌号<b id='carNum' style='color: red'>"+json.carNum
        		+"</b>:现在所在<b id='carNowAgentName' style='color: red'>"+json.carNowAgentName
        		+"</b>正在开往<b id='carArriveAgentName' style='color: red'>"+json.carArriveAgentName
	        		+"</b></span>";
        	}
            $("#showFlowPath").html(str);
        }
	});
}

//查询该车辆所能运输的网点
function listBelongId(val) {
	var path = $("[name=path]").val();
	var belongId = null;
	$.ajax({
		type : "post",
        url : path+"/car/listCarFlowPath2.do",
        data : {
        	"carId" : val,
        },
        //改为同步
        async: false,
        dateType : "json",
        success: function(json){
        	belongId = json
        }
	}); 
	return belongId;
}