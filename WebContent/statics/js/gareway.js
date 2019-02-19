$(function(){
	var map = new BMap.Map("allmap");
    var point = new BMap.Point(116.413387,39.910924);
    map.centerAndZoom(point,12);
    var geolocation = new BMap.Geolocation();
    geolocation.getCurrentPosition(function(r){console.log(r.point)
        if(geolocation.getStatus() == BMAP_STATUS_SUCCESS){
            getdizhi(r,map);
        }else {
            alert('failed'+this.getStatus());
        }        
    },{enableHighAccuracy: true})
})

function show(addressComponents){
	var path = $("#path").val();
	$.ajax({
   	   url:path+"/agent/listAgentById.do",
   	   type: "post",
          data: {"addressComponents":addressComponents},
          dataType: "json",
          success: function(json){
       	   var str = "<div><tr class='shows'><td>" + "网点名"
 				+ "</td><td>" + "网点地址" + "</td><td>" + "网点业务电话" + "</td><td>"
 				+ "网点手机号" + "</td><td>"
 				+ "网点负责人" + "</td><td>"
 				+ "营业时间" + "</td><td>"
 				+ "" + "</td></tr></div>"
 				for ( var i in json) {
 					str += "<tr class='shows'><td>"
 						+ json[i].agentName + "</td><td>"
 						+ json[i].agentAddress + "</td><td>"
 						+ json[i].agentHotline +"</td><td>"
 						+ json[i].agentTel +"</td><td>"
 						+ json[i].agentManager +"</td><td>"
 						+ json[i].agentTime + "</td><td>"
 						+ "<input type='button' value='立即下单' onclick='showInfo("+json[i].agentNumber+")'/>" + "</td></tr>";
 				}
 				$("#zhi1").html(str);	
 				$("#startCity").html(addressComponents);
          }
      });
}

function getdizhi(r,map){
	var mk = new BMap.Marker(r.point);
    map.addOverlay(mk);//标出所在地
    map.panTo(r.point);//地图中心移动
    map.enableScrollWheelZoom(true);//开启鼠标滚轮缩放
	var point = new BMap.Point(r.point.lng,r.point.lat);//用所定位的经纬度查找所在地省市街道等信息
    var gc = new BMap.Geocoder();
    gc.getLocation(point, function(rs){
       var addComp = rs.addressComponents; console.log(rs.address);//地址信息
    	var addressComponents = rs.addressComponents.city;
       show(addressComponents);
       alert("定位您当前的位置是："+addressComponents);
    });
}


function showInfo(val){
	alert(val)
	$("#froms").show();
	$("#agentNumber").val(val);
}

function showDiZhi(){
	var path = $("#path").val();
	$.ajax({
		url:path+"/addressBook/getAllAddressBook.do",
   	   type: "post",
          data: {},
          dataType: "json",
          success: function(json){
        	  var str = "<tr><td>序号</td><td>地址</td><td>电话</td><td>联系人</td><td>操作</td></tr>";
        	  for(var i = 0;i<json.length;i++){
        		  str += "<tr><td>"+(i+1)+"</td><td>"+json[i].userAddressBook+"-"+json[i].userAddressInfo+"</td><td>"+json[i].userPhone+"</td><td>"+json[i].userAddressName+"</td><td><input type='button' onclick='write1("+json[i].addressBookId+")' value='选择'/></td></tr>"
        	  }
        	  str +="<tr><td></td><td></td><td><a href='../usersInfo/addressBook.jsp'><input type='button' value='添加地址信息'/></a><input type='button' onclick='none()' value='关闭'/></td><td></td><td></td></tr>"
        	  $("#dizhi").html(str)
        	  $("#froms1").show();
          }
	})
}

function showRecDiZhi(){
	var path = $("#path").val();
	$.ajax({
		url:path+"/addressBook/getAllAddressBook.do",
   	   type: "post",
          data: {},
          dataType: "json",
          success: function(json){
        	  var str = "<tr><td>序号</td><td>地址</td><td>电话</td><td>联系人</td><td>操作</td></tr>";
        	  for(var i = 0;i<json.length;i++){
        		  str += "<tr><td>"+(i+1)+"</td><td>"+json[i].userAddressBook+"-"+json[i].userAddressInfo+"</td><td>"+json[i].userPhone+"</td><td>"+json[i].userAddressName+"</td><td><input type='button' onclick='write2("+json[i].addressBookId+")' value='选择'/></td></tr>"
        	  }
        	  str +="<tr><td></td><td></td><td><a href='../usersInfo/addressBook.jsp'><input type='button' value='添加地址信息'/></a><input type='button' onclick='none()' value='关闭'/></td><td></td><td></td></tr>"
        	  $("#dizhi2").html(str)
        	  $("#froms2").show();
          }
	})
}

function none(){
	$("#froms1").css("display","none");
	$("#froms2").css("display","none");
}

function write1(val){
	var path = $("#path").val();
	$.ajax({
		url:path+"/addressBook/findById.do",
   	   type: "post",
          data: {"val":val},
          dataType: "json",
          success: function(json){
        	  $("#sendName").val(json.userAddressName)
        	  $("#sendPhone").val(json.userPhone)
        	  $("#sendDetails").val(json.userAddressBook)
        	  $("#sendAddr").val(json.userAddressInfo)
          }
	})
	none()
}

function write2(val){
	var path = $("#path").val();
	$.ajax({
		url:path+"/addressBook/findById.do",
   	   type: "post",
          data: {"val":val},
          dataType: "json",
          success: function(json){
        	  $("#recName").val(json.userAddressName)
        	  $("#recPhone").val(json.userPhone)
        	  $("#cityName_input_3").val(json.userAddressBook)
        	  $("#recAddr").val(json.userAddressInfo)
          }
	})
	none()
}

function open(){
	alert("...........")
	var path = $("#path").val();
	window.location.href=path+"/addressBook/open.do";
}




