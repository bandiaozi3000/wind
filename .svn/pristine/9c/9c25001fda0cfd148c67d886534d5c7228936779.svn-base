$(function(){
	getAll();
	
})
function getAll(val){
	var agentManager = $("#agentManager").html();//获取当前登录的工号
	var path = $("#path").val();//获取路径
	var staffName = $("#staffName").val();//输入的员工姓名
	$.ajax({
		url : path + "/users/getAll.do",
		type : "GET",
		data : {
			"currents" :val,
			"agentManager" : agentManager,
			"staffName":staffName
		},
		dataType : "json",
		success : function(json) {
			var str = "<tr><th width='10%'>员工编号</th>"+
			"<th width='10%'>姓名</th><th width='10%'>性别</th>"+
			"<th width='10%'>年龄</th><th width='10%'>类型</th>"+
			"<th width='20%'>联系方式</th><th width='20%'>操作</th></tr>";
			var str1 = "";
			for(var i in json){
				if (json[i].staffGender==1) {
					json[i].staffGender="男"
				}else{
					json[i].staffGender="女"
				}
				if (json[i].staffNo !=null) {
					str =str+"<tr><th width='10%'>"+json[i].staffNo+"</th>"+
					"<th width='10%'>"+json[i].staffName+"</th><th width='10%'>"+json[i].staffGender+"</th>"+
					"<th width='10%'>"+json[i].staffAge+"</th><th width='10%'>"+json[i].rightName+"</th>"+
					"<th width='10%'>"+json[i].staffTel+"</th>"
					+"<td>"
					if (json[i].categoryId !=1) {
						str = str+"<span><input type='button' id='updates' value='修改' onclick='update("+json[i].staffNo+")' /> </span>"
						+"<span><input type='button'  value='删除'onclick='deletes("+json[i].staffNo+")'/> </span>"
						+"</td></tr>"
					}
				}
			}
			$("#getAll").html(str);
			for(var i in json){
				if(json[i].totalCount != null){
					$("#span2").html("第"+json[i].current+"页/");
					$("#span1").html("共"+json[i].pageCount+"页");
					$("[name=home]").val("1");
					$("[name=prev]").val(json[i].current-1);
					$("[name=next]").val(json[i].current+1);
					$("[name=last]").val(json[i].pageCount);
				}
			}
		}
	})
}
var str = "";

function getCateGory(){
	
	var path = $("#path").val();//获取路径
	$.ajax({
		url : path + "/users/getCateGory.do",
		type : "GET",
		async: false,
		data : {
		},
		dataType : "json",
		success : function(json) {
			str = "<option value=''> " + "请选择" + "</option>"
			for(var i in json){
				str =str+"<option value='"+json[i].categoryId+"'>"
				+ json[i].categoryName+"</option>"
			}
			$("#category").html(str);
		}
	})
	return str;
}
function update(val){
	$("#light").slideDown("slow");
	$("#fade").css("display","block");
	var path = $("#path").val();//获取路径
	var strs = getCateGory();
	$("#categorys").html(strs);
	$.ajax({
		url : path + "/users/findById.do",
		type : "GET",
		async: false,
		data : {
			"val":val
		},
		dataType : "json",
		success : function(json) {
			$("[name=staffNo]").val(json.staffNo)
			$("[name=staffName]").val(json.staffName)
			$("[name=staffGender]").val(json.staffGender)
			$("[name=staffAge]").val(json.staffAge)
			$("[name=staffTel]").val(json.staffTel)
		}
	})
}
function deletes(val){
	if (confirm("是否确认删除?")) {
		var path = $("#path").val();//获取路径
		$.ajax({
			url : path + "/users/deletes.do",
			type : "GET",
			data : {
				"val" : val
			},
			dataType : "json",
			success : function(json) {
				if (json>0) {
					alert("删除成功")
					window.location.href=path+"/jsp/admin/user.jsp"
				}else {
					alert("删除失败")
				}
			}

		})
	}
}











