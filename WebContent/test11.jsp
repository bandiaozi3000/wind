<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="<%=request.getContextPath()%>/statics/js/jquery-1.12.4.js"></script>
<title>Insert title here</title>
</head>
<body>
	<button id="test">点击</button>
	<input type="hidden" value="<%=request.getContextPath()%>">
</body>
<script type="text/javascript">
  $(function(){
	  var path = $('input').val();
	 $('#test').click(function(){
		 alert(path);
		 $.ajax({
			  url :path+"/test.do",
				data : {
					operatorId : 1,
					eventId : 2,
					orderId : 3
				},
				type : "get",
				dataType : "text",
				success : function(result) {
					alert(result);
				}
		 })
	 })
	 
  })


</script>
</html>