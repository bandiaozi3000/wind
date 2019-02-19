<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
	<script type="text/javascript"
	src="<%=request.getContextPath()%>/statics/js/jquery.min.js"></script>
	<script type="text/javascript"
	src="<%=request.getContextPath()%>/statics/js/listAnomaly.js"></script>

<body>
	<span style="display:none" id="managerCode"><shiro:principal></shiro:principal></span>
		<input id="path" type="hidden" value="<%=request.getContextPath()%>" />
</body>
</html>