<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<!DOCTYPE html>
<html class=" js csstransforms3d">
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>公共头部</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/statics/css/base.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/statics/css/page.css">
<!--[if lte IE 8]>
	<link href="css/ie8.css" rel="stylesheet" type="text/css"/>
	<![endif]-->
<script type="text/javascript"
	src="<%=request.getContextPath()%>/statics/js/jquery.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/statics/js/main.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/statics/js/modernizr.js"></script>
<!--[if IE]>
	<script src="http://libs.useso.com/js/html5shiv/3.7/html5shiv.min.js"></script>
	<![endif]-->
</head>

<body>
	<div class="super-header clearfix">
		<h2>网站后台管理系统</h2>
		<div class="head-right">
			<i class="ico-user"></i>当前用户：
			<div class="userslideDown">
				<a href="javascript:;" class="superUser">
						<shiro:principal></shiro:principal>
					<i class="ico-tri"></i></a>
				<div class="slidedownBox">
					<ul>
						<li><a href="change_psw.html" target="Mainindex">修改密码</a></li>
						<li><a href="logout" target="_parent">退出</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!--header-->


</body>
</html>