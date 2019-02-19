<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="<%=request.getContextPath() %>/statics/js/jquery-1.12.4.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/statics/js/selectAddress.js"></script>
</head>
<body>
	<select id="province" onchange="showCity()"></select>
	<select id="city" onchange="showArea()"></select>
	<select id="area"></select>
	<input type="hidden" id="path" value="<%=request.getContextPath()%>"/>
</body>
</html>