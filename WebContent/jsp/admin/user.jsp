<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="renderer" content="webkit">
<title></title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/statics/css/bootstrap.min.css">
<script src="<%=request.getContextPath()%>/statics/js/jquery.min.js"></script>
<script src="<%=request.getContextPath()%>/statics/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/statics/css/pintuer.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/statics/css/admin.css">
<script type="text/javascript"
	src="<%=request.getContextPath()%>/statics/js/users.js"></script>
<style type="text/css">
.black_overlay { display: none; position: absolute; top: 0%; left: 0%; width: 100%;
	height: 100%; background-color: black; z-index: 1001; -moz-opacity: 0.8; opacity: .80;
	filter: alpha(opacity = 88);
}
.white_content { border-radius: 15px; display: none; position: absolute; top: 10%; left: 25%; width: 25%;
	height: 60%; line-height: 25px; padding: 20px; border: 1px solid; background-color: white; z-index: 1002;
	overflow: auto; text-align: center;
}
</style>	
<script type="text/javascript">
<c:if test="${not empty judge }">
	alert("${judge }")
</c:if>
</script>
</head>
<body>
	<span id="agentManager" style="display: none"><shiro:principal></shiro:principal></span>
	<input type="hidden" id="path" value="<%=request.getContextPath()%>">
	<input type="hidden">
	<div class="panel admin-panel">
		<div class="panel-head">
			<strong class="icon-reorder">内容列表</strong>
		</div>
		<div class="padding border-bottom">
			<ul class="search" style="padding-left: 10px;">
				<li style="margin: auto 150px auto 20px;"><input type="button"
					id="adda" value="添加员工" onclick="getCateGory()"
					class="btn btn-primary btn-lg" data-toggle="modal"
					data-target="#myModal" /></li>
				<li><input type="text" placeholder="直接搜索员工名" value=""
					id="staffName" name="c_name" class="input"
					style="width: 200px; line-height: 17px; display: inline-block;" />
					<input type="submit" value="搜索"
					class="button border-main icon-search" onclick="getAll()">
				</li>
			</ul>
		</div>
		<table class="table table-hover text-center" id="getAll">
		</table>
		<table>
			<tr>
				<td colspan="7">
					<div class="pageWrap">
						<span id="span2"></span> <span id="span1"></span>
						<button name="home" class="right-button02" value="1"
							onclick="getAll(this.value)">首页</button>
						<button name="prev" class="right-button02" value=""
							onclick="getAll(this.value)">上一页</button>
						<button name="next" class="right-button02" value=""
							onclick="getAll(this.value)">下一页</button>
						<button name="last" class="right-button02" value="1"
							onclick="getAll(this.value)">末页</button>
					</div>
				</td>
			</tr>
		</table>
		<div id="findid"></div>
	</div>
	<div class="divs"></div>
	<!-- 模态框（Modal） -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<!-- <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button> -->
					<h4 class="modal-title" id="myModalLabel">添加员工</h4>
				</div>
				<div class="modal-body">
					<form style="margin-left: 150px;"
						action="<%=request.getContextPath()%>/users/addStaff.do"
						method="post">
						<input type="hidden" name="agentManagers"
							value="<shiro:principal></shiro:principal>"> 姓名<input
							type="text" name="staffName">
						<p style="word-break: break-all;"></p>
						性别<input name='staffGender' type='radio' value='1'
							checked='checked' />男 <input name='staffGender' type='radio'
							value='2' />女
						<p style="word-break: break-all;"></p>
						年龄<input type="text" name="staffAge">
						<p style="word-break: break-all;"></p>
						电话<input type="text" name="staffTel">
						<p style="word-break: break-all;"></p>
						角色<select id="category" name="categoryId">

						</select>
						<p style="word-break: break-all;"></p>
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">关闭</button>
							<input type="submit" class="btn btn-primary" value="提交">
						</div>
					</form>

				</div>

			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal -->
	</div>
	<div id="light" class="white_content">
		<a href="javascript:void(0)"
			onclick="document.getElementById('light').style.display='none';document.getElementById('fade').style.display='none'">
			<span style="float: right; font-size: 25px;">×</span>
		</a> <span style="text-align: center"><h3>修改员工信息</h3></span>
		<table>
			<form action="<%=request.getContextPath() %>/users/updateStaffInfo.do" method="post">
				<input type="hidden" name="staffNo"><br></br>
				姓名:&nbsp;&nbsp;<input type="text" name="staffName" ><br></br>
				性别:&nbsp;&nbsp;<input name="staffGender" type="radio" value="1" checked='checked'/>男 
				<input name="staffGender" type="radio" value="2" />女 <br></br>
				年龄:&nbsp;&nbsp;<input type="text" name="staffAge" ><br></br>
				新密码:<input type="text" name="npw"><br></br>
				电话:&nbsp;&nbsp;<input type="text" name="staffTel" ><br></br>
				角色:<select id="categorys" name="categoryId">
						
					</select><br></br>
				<input type="submit" value="提交">
			</form>
		</table>
	</div>
	<div id="fade" class="black_overlay"></div>

</body>
</html>