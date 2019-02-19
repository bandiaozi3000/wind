<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title></title>

<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/statics/css/qq.css"/>
<script type="text/javascript">
var webSocket=null;
function connection(){
	if('WebSocket' in window){//判断浏览器支不支持webSocket
		/* webSocket = new WebSocket("ws://"+document.location.host+"/ssm/webSocket/"+'${login.userCode }')+_"改成session、name"; */
 	
	}else{
		alert("对不起,你的浏览器不支持此功能")
	}
	webSocket.onopen=function(){
		var toMessage='${userName}很高心为你服务';
        document.getElementById("di").innerHTML   += '<p style="font-size:15px;">'+toMessage+'</p>';
	}
	webSocket.onmessage=function(event){
		var data=$.parseJSON(event.data)
		var user=data.userCode;
		document.getElementById("spa").innerHTML   =user ;
		
	    var div = document.getElementById('di');//让滑动框一直处在最下面

        document.getElementById("di").innerHTML   += '<p style="font-size:15px;margin-left: 5px;"><img src="<%=request.getContextPath() %>/statics/image/kefu.jpg" width="7%"/>'+data.now+'</p>';//展示时间
        document.getElementById("di").innerHTML   += '<p style="font-size:15px;margin-left: 8px;">'+data.toMessage+'</p>';//展示信息
       
        div.scrollTop = div.scrollHeight;//让滑动框一直处在最下面
	}
	
	webSocket.onerror=function(){//出现异常调用
		var toMessage="出现异常";

        document.getElementById("di").innerHTML   += '<p style="font-size:15px;text-align:right;">'+toMessage+'</p>';	
        }
	
	
	webSocket.onclose=function(){//关闭调用
		var toMessage="链接关闭了";
        document.getElementById("di").innerHTML   += '<p style="font-size:15px;text-align:right;">'+toMessage+'</p>';		
        }
	
	
	webSocket.onbeforeunload=function(){//当浏览器的页面关闭的时候，次出应该关闭连接防止出问题
		if(webSocket!=null){
			webSocket.close();
		}
	}
}
function sendMessage(){
	
/* 		var toUser=document.getElementById("toUser").value;	
 */		 var toUser=$("#spa").html();//获取发送给谁
		var toMessage=document.getElementById("toMessage").value;//获取发送内容
    var now=getNowFormatDate();//获取发送时间
    var div = document.getElementById('di');//滑动框一直处在最下面
   
    document.getElementById("di").innerHTML   +='<p id="p" style="font-size:15px;text-align:right;">'+now+'<img src="<%=request.getContextPath() %>/statics/image/kehu.jpg" width="8%"/></p>';
    document.getElementById("di").innerHTML   += '<p style="font-size:15px;text-align:right;">'+toMessage+'</p>';
    div.scrollTop = div.scrollHeight;//滑动框一直处在最下面
    if(webSocket!=null){
		var message='{"toUser":"'+toUser+'","toMessage":"'+toMessage+'","now":"'+now+'","userCode":"'+'${login.userCode}'+'"}';
		webSocket.send(message);
	}else{
		alert("未连接")
	}
}

 function getNowFormatDate() {
        var date = new Date();
        var seperator1 = "-";
        var seperator2 = ":";
        var month = date.getMonth() + 1;
        var strDate = date.getDate();
        if (month >= 1 && month <= 9) {
            month = "0" + month;
        }
        if (strDate >= 0 && strDate <= 9) {
            strDate = "0" + strDate;
        }
        var currentdate = date.getFullYear() + seperator1 + month + seperator1 + strDate
                + " " + date.getHours() + seperator2 + date.getMinutes()
                + seperator2 + date.getSeconds();
        return currentdate;
} 
window.onload = connection;





</script>
</head>
<body>
<input id="kefu" type="hidden" value="<%=request.getContextPath() %>" />

<div class="qqBox">
	<div class="BoxHead">
		<div class="headImg">
			<img src="<%=request.getContextPath() %>/statics/img/6.jpg"/>
		</div>
		<div class="internetName">90后大叔</div>
	</div>
	<div class="context">
	
		<div class="conRight">
			<div class="Righthead">
 				<div class="headName">   </div>
 			<div class="headConfig">
					<ul>
						<li><img src="<%=request.getContextPath() %>/statics/img/20170926103645_06.jpg"/></li>
						<li><img src="<%=request.getContextPath() %>/statics/img/20170926103645_08.jpg"/></li>
						<li><img src="<%=request.getContextPath() %>/statics/img/20170926103645_10.jpg"/></li>
						<li><img src="<%=request.getContextPath() %>/statics/img/20170926103645_12.jpg"/></li>
					</ul>
				</div>
			</div>
			<div class="RightCont">
				<ul class="newsList" id="di">
					
				</ul>
			</div>
			<div class="RightFoot">
				<div class="emjon">
					<ul>
						<li><img src="<%=request.getContextPath() %>/statics/img/em_02.jpg"/></li>
						<li><img src="<%=request.getContextPath() %>/statics/img/em_05.jpg"/></li>
						<li><img src="<%=request.getContextPath() %>/statics/img/em_07.jpg"/></li>
						<li><img src="<%=request.getContextPath() %>/statics/img/em_12.jpg"/></li>
						<li><img src="<%=request.getContextPath() %>/statics/img/em_14.jpg"/></li>
						<li><img src="<%=request.getContextPath() %>/statics/img/em_16.jpg"/></li>
						<li><img src="<%=request.getContextPath() %>/statics/img/em_20.jpg"/></li>
						<li><img src="<%=request.getContextPath() %>/statics/img/em_23.jpg"/></li>
						<li><img src="<%=request.getContextPath() %>/statics/img/em_25.jpg"/></li>
						<li><img src="<%=request.getContextPath() %>/statics/img/em_30.jpg"/></li>
						<li><img src="<%=request.getContextPath() %>/statics/img/em_31.jpg"/></li>
						<li><img src="<%=request.getContextPath() %>/statics/img/em_33.jpg"/></li>
						<li><img src="<%=request.getContextPath() %>/statics/img/em_37.jpg"/></li>
						<li><img src="<%=request.getContextPath() %>/statics/img/em_38.jpg"/></li>
						<li><img src="<%=request.getContextPath() %>/statics/img/em_40.jpg"/></li>
						<li><img src="<%=request.getContextPath() %>/statics/img/em_45.jpg"/></li>
						<li><img src="<%=request.getContextPath() %>/statics/img/em_47.jpg"/></li>
						<li><img src="<%=request.getContextPath() %>/statics/img/em_48.jpg"/></li>
						<li><img src="<%=request.getContextPath() %>/statics/img/em_52.jpg"/></li>
						<li><img src="<%=request.getContextPath() %>/statics/img/em_54.jpg"/></li>
						<li><img src="<%=request.getContextPath() %>/statics/img/em_55.jpg"/></li>
					</ul>
				</div>
				<div class="footTop">
					<ul>
						<li><img src="<%=request.getContextPath() %>/statics/img/20170926103645_31.jpg"/></li>
						<li class="ExP"><img src="<%=request.getContextPath() %>/statics/img/20170926103645_33.jpg"/></li>
						<li><img src="<%=request.getContextPath() %>/statics/img/20170926103645_35.jpg"/></li>
						<li><img src="<%=request.getContextPath() %>/statics/img/20170926103645_37.jpg"/></li>
						<li><img src="<%=request.getContextPath() %>/statics/img/20170926103645_39.jpg"/></li>
						<li><img src="<%=request.getContextPath() %>/statics/img/20170926103645_41.jpg" alt="" /></li>
						<li><img src="<%=request.getContextPath() %>/statics/img/20170926103645_43.jpg"/></li>
						<li><img src="<%=request.getContextPath() %>/statics/img/20170926103645_45.jpg"/></li>
					</ul>
				</div>
				<div class="inputBox">
					<textarea id="toMessage" style="width: 99%;height: 75px; border: none;outline: none;" name="" rows="" cols=""></textarea>
					<button onclick="sendMessage()">发送(s)</button>
				</div>
			</div>
		</div>
	</div>
</div>
		<span id="spa" style="display:  none">111</span>

<script type="text/javascript" src="<%=request.getContextPath() %>/statics/js/jquery.kefumin.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/statics/js/chat.js"></script>

</body>
</html>