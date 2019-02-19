<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="<%=request.getContextPath()%>/statics/js/jquery-1.12.4.js"></script>
</head>
<body>
<a href="<%=request.getContextPath()%>/agent/listAgent.do"><input type="button"> 查看</a>
<form action="<%=request.getContextPath()%>/agent/listAgent.do" method="post">
 输入城市编号:<input type="text" name="agentCityId">

<input type="submit" value="查看"> 
</form>

<div>
	<c:forEach var="agent" items="${agentlist }">
	
	<p>${agent.agentAddress }</p>
	<p>${agent.agentCityId }</p>
	<p><fmt:formatDate value="${agent.creationDate }" pattern="yyyy-MM-dd" /></p>
	</c:forEach>

</div>

<div>
<form action="<%=request.getContextPath()%>/agent/solrAgent.do" method="post">
 输入网点编号或网点名:<input type="text" name="text">

<input type="submit" value="查看"> 
</form>


</div>
</body>
</html>