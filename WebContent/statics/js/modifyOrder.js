$(function(){
	var path=$("#path").val()
	$.ajax({
		url:path+"/queryProvince.do",
		type:"get",
		dataType:"json",
		success:function(province){
			for(var i in province){
				$("#province1").append("<option value="+province[i].provinceId+">"+province[i].provinceName+"</option>")
				$("#province2").append("<option value="+province[i].provinceId+">"+province[i].provinceName+"</option>")				
			}
		}
	})
})

	/*$.ajax({
		url:path+"/getGoodsCategory.do",
		type:"get",
		dataType:"json",
		success:function(goodsCategory){	
			for(var i in goodsCategory){
				$("#goodsId").append("<option value="+goodsCategory[i].goodsCategoryId+">"+goodsCategory[i].goodsCategoryName+"</option>")				
			}
		}
	})
})*/

function showCity(Object){
	var path=$("#path").val();
	var province=$(Object).attr("id");
	var cityParentId;
	if(province=="province1"){
		$("#city1").html("<option value=0 style='display:none'>请选择城市</option>")
		$("#area1").html("<option value=0 style='display:none'>请选择县（区）</option>")
		cityParentId=$("#province1").val()
	}else if(province=="province2"){
		$("#city2").html("<option value=0 style='display:none'>请选择城市</option>")
		$("#area2").html("<option value=0 style='display:none'>请选择县（区）</option>")
		cityParentId=$("#province2").val()
	}
	alert(cityParentId);
	$.ajax({
		url:path+"/queryCity.do",
		data:{cityParentId:cityParentId},
		type:"get",
		dataType:"json",
		success:function(city){
			for(var i in city){
				if(province=='province1'){
					$("#city1").append("<option value="+city[i].cityId+">"+city[i].cityName+"</option>")	
				}else if(province=='province2'){
					$("#city2").append("<option value="+city[i].cityId+">"+city[i].cityName+"</option>")	
				}
			}
		}
	})
}

function showArea(Object){
	var path=$("#path").val()
	var city=$(Object).attr("id");
	var areaParentId;
	if(city=="city1"){
		$("#area1").html("<option value=0 style='display:none'>请选择县（区）</option>")
		areaParentId=$("#city1").val()
	}else if(city=="city2"){
		$("#area2").html("<option value=0 style='display:none'>请选择县（区）</option>")
		areaParentId=$("#city2").val()
	}
	$.ajax({
		url:path+"/queryArea.do",
		data:{areaParentId:areaParentId},
		type:"get",
		dataType:"json",
		success:function(area){
			for(var i in area){
				if(city=='city1'){
					$("#area1").append("<option value="+area[i].areaId+">"+area[i].areaName+"</option>")	
				}else if(city=='city2'){
					$("#area2").append("<option value="+area[i].areaId+">"+area[i].areaName+"</option>")		
				}
			}
		}
	})
}

function showSenderDetail(){
	var province=$('#province1 option:selected').text();//选中的文本
	var city=$('#city1 option:selected').text();//选中的文本
	var area=$('#area1 option:selected').text();//选中的文本
	var detail=province+'-'+city+'-'+area;
	$("[name=senderDetail]").val(detail);
}

function showSignDetail(){
	var province=$('#province2 option:selected').text();//选中的文本
	var city=$('#city2 option:selected').text();//选中的文本
	var area=$('#area2 option:selected').text();//选中的文本
	var detail=province+'-'+city+'-'+area;
	$("[name=signDetail]").val(detail);
}