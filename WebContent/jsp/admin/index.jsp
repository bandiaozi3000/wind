<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html class=" js csstransforms3d"><head>
	<meta charset="utf-8">
	<meta name="renderer" content="webkit">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>网站后台管理系统</title>
	<link rel="stylesheet" href="<%=request.getContextPath() %>/statics/css/base.css">
	<link rel="stylesheet" href="<%=request.getContextPath() %>/statics/css/page.css">
	<script type="text/javascript" src="<%=request.getContextPath() %>/statics/js/jquery.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/statics/js/modernizr.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/statics/js/jquery-1.12.4.js"></script>
</head>

<body>
<div class="superWrap clearfix" style="height: 781px;">
	<!--side S-->
	<div class="super-side-menu">	
		<%@include file="left.jsp" %>
		<!-- <iframe src="left.jsp" width="205" height="100%" marginheight="0" marginwidth="0" frameborder="0" scrolling="no"></iframe> -->
	</div>
	<!--side E-->
	<!--content S-->
	<div class="superContent">
		
		<div class="super-header super-header2">
			<iframe src="Top.jsp" id="Pubheader" name="Pubheader" width="100%"  marginheight="0" marginwidth="0" frameborder="0" scrolling="no"></iframe>
		</div>
		<!--header-->
		<div class="superCtab superCtabBot" style="height: 695px;">
			<iframe src="right.jsp" id="Mainindex" name="Mainindex" width="100%" height="100%" marginheight="0" marginwidth="0" frameborder="0"></iframe>
		</div>
		<!--main-->
		
	</div>
	<!--content E-->
	
</div>

<script>
window.onresize = function(){
	var winH=$(window).height();
	var headH=$('.super-header').height();
	$('.superWrap').height(winH);
	$('.superCtabBot').height(winH-headH);
};
$(window).resize();
</script>

</body></html>