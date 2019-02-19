$(function(){
	//调用方法
	getAll();
	//为添加网点添加事件
	$("#adda").click(function(){
		if(!$(".div").is(":visible")){
			$(".div").show(); 
			$(this).val("添加网点");
		}else{ 
			$(".div").hide(); 
			$(this).val("添加网点");
		}
	});
	var manager = $("[name=manager]").val();
	if (manager==0) {
		$("#def").change(function() {
			City()
		})
		$("#p").change(function(){
			Area()
		})
	}else{
		//当市的选中发生变化的时候，去改变区
		$("#def").change(function() {
			Area()
		})
	}

})
/**
 * 网点信息的分页加模糊查询
 * @param val
 */
function getAll(val){
	var agentManager = $("#agentManager").html();//获取当前登录的工号
	var path = $("#path").val();//获取路径
	var agentName = $("#agentName").val();//输入的网点
	$.ajax({
		url : path + "/agents/getAll.do",
		type : "GET",
		data : {
			"currents" :val,
			"agentManager" : agentManager,
			"agentName":agentName
		},
		dataType : "json",
		success : function(json) {
			//为页面添加html标签和查询出来的值
			var agentLevel ="";
			var str = "<tr><th width='10%'>网点编号</th>"+
			"<th width='10%'>网点名称</th><th width='10%'>网点级别</th>"+
			"<th width='10%'>网点地址</th><th width='10%'>区域经理</th>"+
			"<th width='10%'>区域经理工号</th><th width='20%'>联系方式</th><th width='20%'>操作</th></tr>";
			var str1 = "";
			//循环遍历json封装的对象
			for(var i in json){
				//判断几级网点进行拼接
				if(json[i].agentLevel !=null) {
					agentLevel = json[i].agentLevel+"级网点"
				}
				//因为json中封装的有分页的对象，判断是否为空，否者每一页的最后一条都有一行空值
				if (json[i].agentNumber != null) {
					str = str+ "<tr><td width='10%' style='text-align: left; padding-left: 20px;'>"+json[i].agentNumber+"</td>"
					+"<td width='10%'>"+json[i].agentName+"</td>"
					+"<td width='10%'>"+agentLevel+"</td>"
					+"<td width='10%'>"+json[i].agentAddress+"</td>"
					+"<td width='10%'>"+json[i].staffName+"</td>"
					+"<td width='10%'>"+json[i].agentManager+"</td>"
					+"<td width='10%'>"+json[i].agentTel+"</td>"
					+"<td>"
					+"<span><input type='button' id='findById' value='查看' onclick='findById("+json[i].agentNumber+")'/> </span>"
					+"<span><input type='button' id='updates'  value='修改' onclick='update("+json[i].agentNumber+")'/> </span>"
					+"<span><input type='button'  value='删除' onclick='deletes("+json[i].agentNumber+")'/> </span>"
					+"</td></tr>";
				}
			}
			$("#getAll").html(str);
			//添加分页
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
/**
 * 添加网点的方法
 * @param val
 */
function addBranch(val){
	var agentManager = $("#agentManager").html();//获取当前登录的工号41200301
	var path = $("#path").val();//获取路径
	var agentName = $("#agentName").val();//输入的网点
	var Level =  agentManager.substring(2,3)
	$.ajax({
		url : path + "/agents/getAll.do",
		async: false,
		type : "GET",
		data : {
			"currents" :val,
			"agentManager" : agentManager,
			"agentName":agentName
		},
		dataType : "json",
		success : function(json) {
			var str = "";
			var str1 = "";
			var addbranch
			for(var i in json){
				//通过等级进行判断是否为3级网点，如果为3级网点就不让他添加网点了
				if (Level==3) {
					str = "<h1>该网点是3级网点,不添加网点</h1>"
						$("#divss").html(str);
				}
			}
		}
	})
	query();
}
/**
 * 根据工号查询出他能添加城市的所有信息
 */
function query(){
	var agentManager = $("#agentManager").html();//获取当前登录的工号
	var path = $("#path").val();//获取路径
	$.ajax({
		url : path + "/agents/query.do",
		type : "GET",
		data : {
			"agentManager" : agentManager
		},
		dataType : "json",
		success : function(json) {
			var str = "<option value='0'> " + "请选择" + "</option>";
			for(var i in json){
				if (json[i].provinceId !=null) {
					str = str+ "<option value='"+json[i].provinceId+"'>"
					+ json[i].provinceName+"</option>"
				}
				if (json[i].cityId !=null) {
					str = str+ "<option value='"+json[i].cityId+"'>"
					+ json[i].cityName+"</option>"
				}
				if (json[i].areaId !=null) {
					str = str+ "<option value='"+json[i].areaId+"'>"
					+ json[i].areaName+"</option>"
				}
			}
			$("#def").html(str);
		}
	})
}
/**
 * 查询单个信息
 * @param val
 */
function findById(val){
	var path = $("#path").val();//获取路径
	var aa = $(".findid").html();
	var agentNumber = $('#agentNumber').html();
	var html = $('.findid').html();
	if(html !=null){
		if(val==agentNumber){
			$('.findid').html("");
		}else{
			$.ajax({
				url : path + "/agents/findById.do",
				type : "GET",
				data : {
					"agentNumber" : val
				},
				dataType : "json",
				success : function(json) {
					var str ="";
					str = "网点编号:<span id='agentNumber'>"+json.agentNumber+"</span><br></br>"
					+"网点名:<span id='span'>"+json.agentName+"</span><br></br>"
					+"网点地址:<span id='span'>"+json.agentAddress+"</span><br></br>"
					+"城市编号:<span id='span'>"+json.agentCityId+"</span><br></br>"
					+"网点级别:<span id='span'>"+json.agentLevel+"</span><br></br>"
					+"网点业务电话:<span id='span'>"+json.agentHotline+"</span><br></br>"
					+"邮政编号:<span id='span'>"+json.agentCode+"</span><br></br>"
					+"网点手机号:<span id='span'>"+json.agentTel+"</span><br></br>"
					+"传真:<span id='span'>"+json.agentManager+"</span><br></br>"
					+"业务范围:<span id='span'>"+json.agentRange+"</span><br></br>"
					+"营业时间:<span id='span'>"+json.agentTime+"</span><br></br>";

					$(".findid").html(str);
				}
			})
		}
	}else{
		$.ajax({
			url : path + "/agents/findById.do",
			type : "GET",
			data : {
				"agentNumber" : val
			},
			dataType : "json",
			success : function(json) {
				var str ="";
				str = "网点编号:<span id='agentNumber'>"+json.agentNumber+"</span><br></br>"
				+"网点名:<span id='span'>"+json.agentName+"</span><br></br>"
				+"网点地址:<span id='span'>"+json.agentAddress+"</span><br></br>"
				+"城市编号:<span id='span'>"+json.agentCityId+"</span><br></br>"
				+"网点级别:<span id='span'>"+json.agentLevel+"</span><br></br>"
				+"网点业务电话:<span id='span'>"+json.agentHotline+"</span><br></br>"
				+"邮政编号:<span id='span'>"+json.agentCode+"</span><br></br>"
				+"网点手机号:<span id='span'>"+json.agentTel+"</span><br></br>"
				+"传真:<span id='span'>"+json.agentManager+"</span><br></br>"
				+"业务范围:<span id='span'>"+json.agentRange+"</span><br></br>"
				+"营业时间:<span id='span'>"+json.agentTime+"</span><br></br>";

				$(".findid").html(str);
			}
		})
	}
}
/**
 * 进行修改之前先能修改的信息展示出来
 * @param val
 */
function update(val){
	var path = $("#path").val();//获取路径
	var agentManager = $("#agentManager").html();//获取当前登录的工号
	var agentNumber = $("[name=agentNumber]").val();
	if (agentNumber !=null) {
		if (val == agentNumber) {
			$("#update").hide(); 
			$("[name=agentNumber]").val("");
		}else{
			$("#update").show(); 
			$.ajax({
				url : path + "/agents/findById.do",
				type : "GET",
				data : {
					"agentNumber" : val
				},
				dataType : "json",
				success : function(json) {
					$("[name=agentNumber]").val(json.agentNumber);
					$("[name=agentAddress]").val(json.agentAddress);
					$("[name=agentHotline]").val(json.agentHotline);
					$("[name=agentTel]").val(json.agentTel);
					$("[name=staffName]").val(json.staffName);
					$("[name=agentFax]").val(json.agentFax);
					$("[name=agentRange]").val(json.agentRange);
					$("[name=agentTime]").val(json.agentTime);
					$("[name=agentRemarks]").val(json.agentRemarks);
				}
			})
		}

	}else{
		$("#update").show(); 
		$.ajax({
			url : path + "/agents/findById.do",
			type : "GET",
			data : {
				"agentNumber" : val
			},
			dataType : "json",
			success : function(json) {
				$("[name=agentNumber]").val(json.agentNumber);
				$("[name=agentAddress]").val(json.agentAddress);
				$("[name=agentHotline]").val(json.agentHotline);
				$("[name=agentTel]").val(json.agentTel);
				$("[name=staffName]").val(json.staffName);
				$("[name=agentFax]").val(json.agentFax);
				$("[name=agentRange]").val(json.agentRange);
				$("[name=agentTime]").val(json.agentTime);
				$("[name=agentRemarks]").val(json.agentRemarks);
			}
		})
	}

}
/**
 * 删除网点
 * @param val
 */
function deletes(val){
	if (confirm("是否确认删除?")) {
		var path = $("#path").val();//获取路径
		var agentManager = $("#agentManager").html();//获取当前登录的工号
		$.ajax({
			url : path + "/agents/delete.do",
			type : "GET",
			data : {
				"agentNumber" : val,
				"agentManager" :agentManager
			},
			dataType : "json",
			success : function(json) {
				if (json>0) {
					alert("删除成功")
					location.reload();
				}else{
					alert("该网点有下属网点，删除失败!")
				}
			}

		})
	}
}
/**
 * 根据省id查询市
 */
function City(){
	var path = $("#path").val();//获取路径
	var cityParentId = $("#def").val()
	$.ajax({
		type : 'post', //请求方式  
		url : path + "/agents/getCity.do", //请求路径  
		data : {
			"cityParentId":cityParentId
		},
		dataType : 'json', //返回值类型  
		success : function(json) {
			var str = "<option value='-1'> " + "请选择市" + "</option>;";
			for ( var i in json) {
				str += "<option value='"+json[i].cityId+"'>"
				+ json[i].cityName + "</option>"
			}
			$("#p").html(str);
		}
	})
}
/**
 * 根据市id查询区
 */
function Area(){
	var path = $("#path").val();//获取路径
	var manager = $("[name=manager]").val();
	if (manager==0) {
		var areaParentId = $("#p").val()
		$.ajax({
			type : "post", //请求方式  
			url : path + "/agents/getArea.do", //请求路径  
			data : {
				"areaParentId":areaParentId
			},
			dataType : "json", //返回值类型  
			success : function(json) {
				var str = "<option value='-1'> " + "请选择区(县)" + "</option>;";
				for ( var i in json) {
					str += "<option value='"+json[i].areaId+"'>"
					+ json[i].areaName + "</option>"
				}
				$("#c").html(str);
			}
		})
	}
	if(manager==1){
		var areaParentId = $("#def").val()
		$.ajax({
			type : 'post', //请求方式  
			url : path + "/agents/getArea.do", //请求路径  
			data : {
				"areaParentId":areaParentId
			},
			dataType : 'json', //返回值类型  
			success : function(json) {
				var str = "<option value='-1'> " + "请选择区(县)" + "</option>;";
				for ( var i in json) {
					str += "<option value='"+json[i].areaId+"'>"
					+ json[i].areaName + "</option>"
				}
				$("#c").html(str);
			}
		})
	}
	
}



/*function getAll(val){
	var path = $("#path").val();//获取路径
	var queryIsPayment = $("#queryIsPayment").val();//获取是否付款的默认值
	var proNamesId = $("#proNames").val();//获取供应商
	var queryProductName = $("#queryProductName").val();//获取搜索的商品名
	$.ajax({
		url : path + "/sys/orderfrom/getAll.do",
		type : "GET",
		data : {
			"currents" :val,
			"queryIsPayment":queryIsPayment,
			"proNamesId" : proNamesId,
			"queryProductName" : queryProductName
		},
		dataType : "json",
		success : function(json) {
			var str = "<tr class='firstTr'><th width='10%'>订单编码</th>"+
			"<th width='20%'>商品名称</th><th width='25%'>供应商</th>"+
			"<th width='10%'>订单金额</th><th width='10%'>是否付款</th>"+
			"<th width='10%'>创建时间</th><th width='15%'>操作</th></tr>";
			for(var i in json){
				var isPayment;
				if(json[i].isPayment=="1"){
					isPayment="未付款"
				}else{
					isPayment="已付款"
				}
				if(json[i].billCode !=null){

					str = str+"<tr>"
					+"<td><span id='billCode'>"+json[i].billCode+"</span></td>"
					+"<td><span id='productName'>"+json[i].productDesc+"</span></td>"
					+"<td><span id='providerId'>"+json[i].proName+"</span></td>"
					+"<td><span id='totalPrice'>"+json[i].totalPrice+"</span></td>"
					+"<td><span id='isPayment'>"+isPayment+"</span></td>"
					+"<td><span id='creationDate'>"+json[i].creationDate+"</span></td>"
					+"<td>"
					+"<span><img src='"+path+"/statics/images/read.png'alt='查看' title='查看' onclick='findById("+json[i].id+")'/> </span>"
					+"<span><img src='"+path+"/statics/images/xiugai.png'alt='修改' title='修改' onclick='billmodify("+json[i].id+")'/> </span>"
					+"<span><img src='"+path+"/statics/images/schu.png'alt='删除' title='删除' /> </span>"
					+"</td>"
					+"</tr>";
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
}*/
/*$(function(){
	function getcitys(the) {
		for (var i = 0; i < the.length; i++) {
			if (the[i].selected == true) {
				if (the[i].value == 3) {
					$('#two')
							.after(
									'<select name="level3" class="input" id="citytree" style="width: 70px;display:inline-block;" required="required"></select><font id="tree">&nbsp;县(区)</font>');
				}
				if (the[i].value == 2) {
					$('#citytree').remove();
					$('#tree').remove();
				}
			}
		}
	}

	function showcity(obj) {
		var val = $('#citytwo option:selected').val();
		$.ajax({
			url : "/LMS/city/cityone.do",
			data : "id=" + val,
			type : "post",
			datatype : "json",
			success : function(data) {
				var c = eval(data);
				$('#citytree').html('');
				$('#citytree').append('<option value="0">请选择</option>');
				for (var i = 0; i < c.length; i++) {
					$('#citytree').append(
							'<option value="'+c[i].id+'">' + c[i].name
									+ '</option>');
				}
			}
		})
	}

	function showchange(c_id) {
		$('#' + c_id).toggle();

	}
	$(function() {
		$('#u_number').blur(function() {
			var val = $('#u_number').val();
			$.ajax({
				url : "/LMS/company/manger_number.do",
				data : "id=" + val,
				type : "post",
				datatype : "json",
				success : function(data) {
					if (data == true) {
						$('#fontNo').html(' * 工号已存在');
					} else {
						$('#fontNo').html('');
					}

				}
			})
		})

		$('#adda').click(function() {
			$('#adddiv').toggle()
		});

		$('#addform').submit(function() {
			var val2 = $('#citytwo option:selected').val();
			var val3 = $('#citytree option:selected').val();

			if (val2 == 0) {
				alert('请选择网点地址');
				return false;
			} else if (val3 == 0) {
				alert('请选择网点地址');
				return false;
			} else {
				return true;
			}
		});

})

$(function(){
	$(".win-homepage").click(function(){ 
        if(document.all){
        document.body.style.behavior = 'url(#default#homepage)'; 
        document.body.setHomePage(document.URL); 
        }else{alert("设置首页失败，请手动设置！");} 
	});
	$(".win-favorite").click(function(){
		var sURL=document.URL; 
		var sTitle=document.title; 
		try {window.external.addFavorite(sURL, sTitle);} 
		catch(e){ 
			try{window.sidebar.addPanel(sTitle, sURL, "");} 
			catch(e){alert("加入收藏失败，请使用Ctrl+D进行添加");} 
		}
	});
	$(".win-forward").click(function(){
		window.history.forward(1);
	});
	$(".win-back").click(function(){
		window.history.back(-1);
	});
	$(".win-backtop").click(function(){$('body,html').animate({scrollTop:0},1000);return false;});
	$(".win-refresh").click(function(){
		window.location.reload();
	});
	$(".win-print").click(function(){
		window.print();
	});
	$(".win-close").click(function(){
		window.close();
	});
	$('.checkall').click(function(){
		var e=$(this);
		var name=e.attr("name");
		var checkfor=e.attr("checkfor");
		var type;
		if (checkfor!='' && checkfor!=null && checkfor!=undefined){
			type=e.closest('form').find("input[name='"+checkfor+"']");
		}else{
			type=e.closest('form').find("input[type='checkbox']");
		};
		if (name=="checkall"){
			$(type).each(function(index, element){
				element.checked=true;
			});
			e.attr("name","ok");
		}else{
			$(type).each(function(index, element){
				element.checked=false;
			});
			e.attr("name","checkall");
		}	
	});
	$('.dropdown-toggle').click(function(){
		$(this).closest('.button-group, .drop').addClass("open");
	});
	 $(document).bind("click",function(e){
		 if($(e.target).closest(".button-group.open, .drop.open").length == 0){
			 $(".button-group, .drop").removeClass("open");
		 }
	});
	$checkplaceholder=function(){
		var input = document.createElement('input');
		return 'placeholder' in input;
	};
	if(!$checkplaceholder()){
		$("textarea[placeholder], input[placeholder]").each(function(index, element){
			var content=false;
			if($(this).val().length ===0 || $(this).val()==$(this).attr("placeholder")){content=true};
			if(content){
				$(element).val($(element).attr("placeholder"));
				$(element).css("color","rgb(169,169,169)");
				$(element).data("pintuerholder",$(element).css("color"));
				$(element).focus(function(){$hideplaceholder($(this));});
				$(element).blur(function(){$showplaceholder($(this));});
			}
		})
	};
	$showplaceholder=function(element){
		if( ($(element).val().length ===0 || $(element).val()==$(element).attr("placeholder")) && $(element).attr("type")!="password"){
			$(element).val($(element).attr("placeholder"));
			$(element).data("pintuerholder",$(element).css("color"));
			$(element).css("color","rgb(169,169,169)");
		}
	};
	var $hideplaceholder=function(element){
		if($(element).data("pintuerholder")){
			$(element).val("");
			$(element).css("color", $(element).data("pintuerholder"));		
			$(element).removeData("pintuerholder");
		}
	};
	$('textarea, input, select').blur(function(){
		var e=$(this);
		if(e.attr("data-validate")){
			e.closest('.field').find(".input-help").remove();
			var $checkdata=e.attr("data-validate").split(',');
			var $checkvalue=e.val();
			var $checkstate=true;
			var $checktext="";
			if(e.attr("placeholder")==$checkvalue){$checkvalue="";}
			if($checkvalue!="" || e.attr("data-validate").indexOf("required")>=0){
				for(var i=0;i<$checkdata.length;i++){
					var $checktype=$checkdata[i].split(':');
					if(! $pintuercheck(e,$checktype[0],$checkvalue)){
						$checkstate=false;
						$checktext=$checktext+"<li>"+$checktype[1]+"</li>";
					}
				}
			};
			if($checkstate){
				e.closest('.form-group').removeClass("check-error");
				e.parent().find(".input-help").remove();
				e.closest('.form-group').addClass("check-success");
			}else{
				e.closest('.form-group').removeClass("check-success");
				e.closest('.form-group').addClass("check-error");
				e.closest('.field').append('<div class="input-help"><ul>'+$checktext+'</ul></div>');
			}
		}
	});
	$pintuercheck=function(element,type,value){
		$pintu=value.replace(/(^\s*)|(\s*$)/g, "");
		switch(type){
			case "required":return /[^(^\s*)|(\s*$)]/.test($pintu);break;
			case "chinese":return /^[\u0391-\uFFE5]+$/.test($pintu);break;
			case "number":return /^\d+$/.test($pintu);break;
			case "integer":return /^[-\+]?\d+$/.test($pintu);break;
			case "plusinteger":return /^[+]?\d+$/.test($pintu);break;
			case "double":return /^[-\+]?\d+(\.\d+)?$/.test($pintu);break;
			case "plusdouble":return /^[+]?\d+(\.\d+)?$/.test($pintu);break;
			case "english":return /^[A-Za-z]+$/.test($pintu);break;
			case "username":return /^[a-z]\w{3,}$/i.test($pintu);break;
			case "mobile":return /^((\(\d{3}\))|(\d{3}\-))?13[0-9]\d{8}?$|15[89]\d{8}?$|170\d{8}?$|147\d{8}?$/.test($pintu);break;
			case "phone":return /^((\(\d{2,3}\))|(\d{3}\-))?(\(0\d{2,3}\)|0\d{2,3}-)?[1-9]\d{6,7}(\-\d{1,4})?$/.test($pintu);break;
			case "tel":return /^((\(\d{3}\))|(\d{3}\-))?13[0-9]\d{8}?$|15[89]\d{8}?$|170\d{8}?$|147\d{8}?$/.test($pintu) || /^((\(\d{2,3}\))|(\d{3}\-))?(\(0\d{2,3}\)|0\d{2,3}-)?[1-9]\d{6,7}(\-\d{1,4})?$/.test($pintu);break;
			case "email":return /^[^@]+@[^@]+\.[^@]+$/.test($pintu);break;
			case "url":return /^http:\/\/[A-Za-z0-9]+\.[A-Za-z0-9]+[\/=\?%\-&_~`@[\]\':+!]*([^<>\"\"])*$/.test($pintu);break;
			case "ip":return /^[\d\.]{7,15}$/.test($pintu);break;
			case "qq":return /^[1-9]\d{4,10}$/.test($pintu);break;
			case "currency":return /^\d+(\.\d+)?$/.test($pintu);break;
			case "zip":return /^[1-9]\d{5}$/.test($pintu);break;
			case "radio":
				var radio=element.closest('form').find('input[name="'+element.attr("name")+'"]:checked').length;
				return eval(radio==1);
				break;
			default:
				var $test=type.split('#');
				if($test.length>1){
					switch($test[0]){
						case "compare":
							return eval(Number($pintu)+$test[1]);
							break;
						case "regexp":
							return new RegExp($test[1],"gi").test($pintu);
							break;
						case "length":
							var $length;
							if(element.attr("type")=="checkbox"){
								$length=element.closest('form').find('input[name="'+element.attr("name")+'"]:checked').length;
							}else{
								$length=$pintu.replace(/[\u4e00-\u9fa5]/g,"***").length;
							}
							return eval($length+$test[1]);
							break;
						case "ajax":							
							var $getdata;
							var $url=$test[1]+$pintu;							
							$.ajaxSetup({async:false});
							$.getJSON($url,function(data){	
								//alert(data.getdata);							
								$getdata=data.getdata;								
							});
							if($getdata=="true"){return true;}
							break;
						case "repeat":
							return $pintu==jQuery('input[name="'+$test[1]+'"]').eq(0).val();
							break;
						default:return true;break;
					}
					break;
				}else{
					return true;
				}
		}
	};
	$('form').submit(function(){
		$(this).find('input[data-validate],textarea[data-validate],select[data-validate]').trigger("blur");
		$(this).find('input[placeholder],textarea[placeholder]').each(function(){$hideplaceholder($(this));});
		var numError = $(this).find('.check-error').length;
		if(numError){
			$(this).find('.check-error').first().find('input[data-validate],textarea[data-validate],select[data-validate]').first().focus().select();
			return false;
		}
	});
	$('.form-reset').click(function(){
		$(this).closest('form').find(".input-help").remove();
		$(this).closest('form').find('.form-submit').removeAttr('disabled');
		$(this).closest('form').find('.form-group').removeClass("check-error");
		$(this).closest('form').find('.form-group').removeClass("check-success");
	});
	$('.tab .tab-nav li').each(function(){
		var e=$(this);
		var trigger=e.closest('.tab').attr("data-toggle");
		if (trigger=="hover"){
			e.mouseover(function(){
				$showtabs(e);
			});
			e.click(function(){
				return false;
			});
		}else{
			e.click(function(){
				$showtabs(e);
				return false;
			});
		}
	});
	$showtabs=function(e){
		var detail=e.children("a").attr("href");
		e.closest('.tab .tab-nav').find("li").removeClass("active");
		e.closest('.tab').find(".tab-body .tab-panel").removeClass("active");
		e.addClass("active");
		$(detail).addClass("active");
	};
	$('.dialogs').each(function(){
		var e=$(this);
		var trigger=e.attr("data-toggle");
		if (trigger=="hover"){
			e.mouseover(function(){
				$showdialogs(e);
			});
		}else if(trigger=="click"){
			e.click(function(){
				$showdialogs(e);
			});
		}
	});
	$showdialogs=function(e){
		var trigger=e.attr("data-toggle");
		var getid=e.attr("data-target");
		var data=e.attr("data-url");
		var mask=e.attr("data-mask");
		var width=e.attr("data-width");
		var detail="";
		var masklayout=$('<div class="dialog-mask"></div>');
		if(width==null){width="80%";}

		if (mask=="1"){
			$("body").append(masklayout);
		}
		detail='<div class="dialog-win" style="position:fixed;width:'+width+';z-index:11;">';
		if(getid!=null){detail=detail+$(getid).html();}
		if(data!=null){detail=detail+$.ajax({url:data,async:false}).responseText;}
		//alert(detail);
		detail=detail+'</div>';

		var win=$(detail);
		win.find(".dialog").addClass("open");
		$("body").append(win);
		var x=parseInt($(window).width()-win.outerWidth())/2;
		var y=parseInt($(window).height()-win.outerHeight())/2;
		if (y<=10){y="10"}
		win.css({"left":x,"top":y});
		win.find(".dialog-close,.close").each(function(){
			$(this).click(function(){
				win.remove();
				$('.dialog-mask').remove();
			});
		});
		masklayout.click(function(){
			win.remove();
			$(this).remove();
		});
	};
	$('.tips').each(function(){
		var e=$(this);
		var title=e.attr("title");
		var trigger=e.attr("data-toggle");
		e.attr("title","");
		if (trigger=="" || trigger==null){trigger="hover";}
		if (trigger=="hover"){
			e.mouseover(function(){
				$showtips(e,title);
			});
		}else if(trigger=="click"){
			e.click(function(){
				$showtips(e,title);
			});
		}else if(trigger=="show"){
			e.ready(function(){
				$showtips(e,title);
			});
		}
	});
	$showtips=function(e,title){
		var trigger=e.attr("data-toggle");
		var place=e.attr("data-place");
		var width=e.attr("data-width");
		var css=e.attr("data-style");
		var image=e.attr("data-image");
		var content=e.attr("content");
		var getid=e.attr("data-target");
		var data=e.attr("data-url");
		var x=0;
		var y=0;
		var html="";
		var detail="";

		if(image!=null){detail=detail+'<img class="image" src="'+image+'" />';}
		if(content!=null){detail=detail+'<p class="tip-body">'+content+'</p>';}
		if(getid!=null){detail=detail+$(getid).html();}
		if(data!=null){detail=detail+$.ajax({url:data,async:false}).responseText;}
		if(title!=null && title!=""){
			if(detail!=null && detail!=""){detail='<p class="tip-title"><strong>'+title+'</strong></p>'+detail;}else{detail='<p class="tip-line">'+title+'</p>';}
		}
		detail='<div class="tip">'+detail+'</div>';
		html=$(detail);

		$("body").append( html );
		if(width!=null){
			html.css("width",width);
		}
		if(place=="" || place==null){place="top";}
		if(place=="left"){
			x=e.offset().left - html.outerWidth()-5;
			y=e.offset().top - html.outerHeight()/2 + e.outerHeight()/2;
		}else if(place=="top"){
			x=e.offset().left - html.outerWidth()/2 + e.outerWidth()/2;
			y=e.offset().top - html.outerHeight()-5;
		}else if(place=="right"){
			x=e.offset().left + e.outerWidth()+5;
			y=e.offset().top - html.outerHeight()/2 + e.outerHeight()/2;
		}else if(place=="bottom"){
			x=e.offset().left - html.outerWidth()/2 + e.outerWidth()/2;
			y=e.offset().top + e.outerHeight()+5;
		}
		if (css!=""){html.addClass(css);}
		html.css({"left":x+"px","top":y+"px","position":"absolute"});
		if (trigger=="hover" || trigger=="click" || trigger==null){
			e.mouseout(function(){html.remove();e.attr("title",title)});
		}
	};
	$('.alert .close').each(function(){
		$(this).click(function(){
			$(this).closest('.alert').remove();
		});
	});
	$('.radio label').each(function(){
		var e=$(this);
		e.click(function(){
			e.closest('.radio').find("label").removeClass("active");
			e.addClass("active");
		});
	});
	$('.checkbox label').each(function(){
		var e=$(this);
		e.click(function(){
			if(e.find('input').is(':checked')){
				e.addClass("active");
			}else{
				e.removeClass("active");
			};
		});
	});
	$('.collapse .panel-head').each(function(){
		var e=$(this);
		e.click(function(){
			e.closest('.collapse').find(".panel").removeClass("active");
			e.closest('.panel').addClass("active");
		});
	});
	$('.icon-navicon').each(function(){
		var e=$(this);
		var target=e.attr("data-target");
		e.click(function(){
			$(target).toggleClass("nav-navicon");
		});
	});
	$('.banner').each(function(){
		var e=$(this);
		var pointer=e.attr("data-pointer");
		var interval=e.attr("data-interval");
		var style=e.attr("data-style");
		var items=e.attr("data-item");
		var items_s=e.attr("data-small");
		var items_m=e.attr("data-middle");
		var items_b=e.attr("data-big");
		var num=e.find(".carousel .item").length;
		var win=$(window).width();
		var i=1;

		if(interval==null){interval=5};
		if(items==null || items<1){items=1};
		if(items_s!=null && win>760){items=items_s};
		if(items_m!=null && win>1000){items=items_m};
		if(items_b!=null && win>1200){items=items_b};

		var itemWidth=Math.ceil(e.outerWidth()/items);
		var page=Math.ceil(num/items);
		e.find(".carousel .item").css("width",itemWidth+ "px");
		e.find(".carousel").css("width",itemWidth*num + "px");

		var carousel=function(){
			i++;
			if(i>page){i=1;}
			$showbanner(e,i,items,num);
		};
		var play=setInterval(carousel,interval*600);

		e.mouseover(function(){clearInterval(play);});
		e.mouseout(function(){play=setInterval(carousel,interval*600);});

		if(pointer!=0 && page>1){
			var point='<ul class="pointer"><li value="1" class="active"></li>';
			for (var j=1;j<page;j++){
				point=point+' <li value="'+(j+1)+'"></li>';
			};
			point=point+'</ul>';
			var pager=$(point);
			if(style!=null){pager.addClass(style);};
			e.append(pager);
			pager.css("left",e.outerWidth()*0.5 - pager.outerWidth()*0.5+"px");
			pager.find("li").click(function(){
				$showbanner(e,$(this).val(),items,num);
			});
			var lefter=$('<div class="pager-prev icon-angle-left"></div>');
			var righter=$('<div class="pager-next icon-angle-right"></div>');
			if(style!=null){lefter.addClass(style);righter.addClass(style);};
			e.append(lefter);
			e.append(righter);

			lefter.click(function(){
				i--;
				if(i<1){i=page;}
				$showbanner(e,i,items,num);
			});
			righter.click(function(){
				i++;
				if(i>page){i=1;}
				$showbanner(e,i,items,num);
			});
		};
	});	
	$showbanner=function(e,i,items,num){
		var after=0,leftx=0;
		leftx = - Math.ceil(e.outerWidth()/items)*(items)*(i-1);
		if(i*items > num){after=i*items-num;leftx= - Math.ceil(e.outerWidth()/items)*(num-items);};
		e.find(".carousel").stop(true, true).animate({"left":leftx+"px"},800);
		e.find(".pointer li").removeClass("active");
		e.find(".pointer li").eq(i-1).addClass("active");
	};
	$(".spy a").each(function(){
		var e=$(this);
		var t=e.closest(".spy");
		var target=t.attr("data-target");
		var top=t.attr("data-offset-spy");
		var thistarget="";
		var thistop="";
		if(top==null){top=0;};
		if(target==null){thistarget=$(window);}else{thistarget=$(target);};

		thistarget.bind("scroll",function(){
			if(target==null){
				thistop=$(e.attr("href")).offset().top - $(window).scrollTop() - parseInt(top);	
			}else{
				thistop=$(e.attr("href")).offset().top - thistarget.offset().top - parseInt(top);
			};

			if(thistop<0){
				t.find('li').removeClass("active");
				e.parents('li').addClass("active");
			};

		});
	});
	$(".fixed").each(function(){
		var e=$(this);
		var style=e.attr("data-style");
		var top=e.attr("data-offset-fixed");
		if(top==null){top=e.offset().top;}else{top=e.offset().top - parseInt(top);};
		if(style==null){style="fixed-top";};

		$(window).bind("scroll",function(){
			var thistop=top - $(window).scrollTop();
			if(style=="fixed-top" && thistop<0){
				e.addClass("fixed-top");
			}else{
				e.removeClass("fixed-top");
			};

			var thisbottom=top - $(window).scrollTop()-$(window).height();
			if(style=="fixed-bottom" && thisbottom>0){
				e.addClass("fixed-bottom");
			}else{
				e.removeClass("fixed-bottom");
			};
		});

	});

})*/