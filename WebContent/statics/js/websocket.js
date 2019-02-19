$(function(){
	var host=window.location.host
	var userName=$("#userName").html()
	var webSocket = new WebSocket("ws://"+host+"/wind/websocket/login/"+userName);  
	 /* webSocket.onerror = function(event) {  
    alert(event.data);  
}; */ 
//与WebSocket建立连接  
/* webSocket.onopen = function(event) {  
   $("p").html("与服务器建立连接")
};  */
//处理服务器返回的信息  
webSocket.onmessage = function(event) {  
  if(event.data=="kickout"){
	  alert("您的账号在其他地方登录！请重新登录！")
	  var path=$("#path").val()
	  window.location.href=path+"/shiro/logout.do"
  }
};  
window.onbeforeunload = function(){  
    webSocket.close();  
}  
/*  webSocket.onclose = function() {
	 $("p").html("WebSocket连接关闭");
}*/
/*function send(){
var mes=$("input").val()
webSocket.send("mes")
}*/

})


      