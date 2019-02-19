$(function(){
	var userName=$("#userName").html();
	var path=$("#path").val();
//	一开始先让气泡div隐藏
	var div = document.getElementById("xianoryin");
	div.style.display = "none";
	//判断账号是否为空，不为空，开始设置触发轮询ajax的时间
	if(userName!=null){
		c = window.setInterval("getResult()",1000); //间隔多少秒去触发ajax
	}
})
//ajax轮询方法
function getResult(){
	var userName=$("#userName").html();
	var path=$("#path").val();
	var count=$(".messageview").html();
	//ajax轮询
	$.ajax({
		type:'get',
		url:path+"/online/untreatedCount.do",
		data:{'staffNo':userName},
		dataType:'json',
		async: true,
		success:function(result){
			if(count==null||count==null){
				count=0
			}
			if(result.untreatedCount>count){
				var div = document.getElementById("xianoryin");
				div.style.display = "block";
				$("#qipaoview").html("有新订单了")
				$(".messageview").html(result.untreatedCount).css("color","white");
			}
			if(result.untreatedCount==0){
				$(".messageview").html("");
			}
			if(result.untreatedCount<count){
				$(".messageview").html(result.untreatedCount).css("color","white");
			}
		}
	});
}
//当点击未处理订单时，使div气泡隐藏
function fun(obj){
	var div = document.getElementById("xianoryin");
	div.style.display = "none";
}

