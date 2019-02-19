<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
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
<script src="<%=request.getContextPath()%>/statics/js/jquery.min.js"></script>
<script src="<%=request.getContextPath()%>/statics/js/pintuer1.js"></script>
<style type="text/css">
.messp {
	display: inline-block;
	margin: 10px 20px;
}

#update, #div {
	display: none;
}
</style>
<script type="text/javascript">
	$(function(){
		$("#c,.c").change(function(){
			var s = $("select option:selected").text();
			 $("[name=agentname]").val(s)
			 $("#agentRange").val(s)
			 $(".agentCityId").val(s)
		})
	})
<c:if test="${not empty judge }">
 	alert("${judge }")
</c:if>
</script>
</head>
<body>
	<span id="agentManager" style="display: none"><shiro:principal></shiro:principal></span>
	<input type="hidden" name="manager" value="${manager }">
	<input type="hidden" id="path" value="<%=request.getContextPath() %>">
	<input type="hidden">
	<div class="panel admin-panel">
		<div class="panel-head">
			<strong class="icon-reorder">内容列表</strong>
		</div>
		<div class="padding border-bottom">
			<ul class="search" style="padding-left: 10px;">
				<li style="margin: auto 150px auto 20px;"><input type="button"
					id="adda" class="button border-main icon-plus-square-o"
					onclick="addBranch()" value="添加网点" 
					class="btn btn-primary btn-lg" data-toggle="modal"
					data-target="#myModal" 
					/></li>
				<li><input type="text" placeholder="直接搜索网点名" value=""
					id="agentName" name="c_name" class="input"
					style="width: 200px; line-height: 17px; display: inline-block;" />
					<input type="submit" value="搜索"
					class="button border-main icon-search" onclick="getAll()">
				</li>
			</ul>
		</div>
		<table class="table table-hover text-center" id="getAll">

		</table>
		<div id="update">
			<form action="<%=request.getContextPath() %>/agents/update.do"
				method="post">
				<input type="hidden" name="agentNumber" />
				网点地址&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="agentAddress"
					required="required" /> <br></br> 业务电话&nbsp;&nbsp;&nbsp;&nbsp;<input
					type="text" required="required" name="agentHotline" /> <br></br>
				网点手机号<input type="text" required="required" name="agentTel" /> <br></br>
				网点负责人<input type="text" required="required" name="staffName" /> <br></br>
				性别&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
					required="required" name="staffGender" type="radio" value="1" />男
				<input required="required" name="staffGender" type="radio" value="2" />女
				<br></br>
				传真&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
					required="required" type="text" name="agentFax" /> <br></br>
				业务范围&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="agentRange"
					required="required" /> <br></br> 营业时间&nbsp;&nbsp;&nbsp;&nbsp;<input
					type="text" required="required" name="agentTime" /> <br></br>
				备注&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
					required="required" type="text" name="agentRemarks" /> <input
					type="submit" value="提交"> <br></br>
			</form>
		</div>
		<table>
			<tr>
				<td colspan="7">
					<div class="pageWrap">
						<span id="span2"></span> <span id="span1"></span> <span></span>
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
		<div class="findid"></div>
	</div>
	<div class="divs"></div>
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content" id='divss'>
				<div class="modal-header">
					<!-- <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
					&times;
				</button> -->
					<h4 class="modal-title" id="myModalLabel">添加网点</h4>
				</div>
				<div class="modal-body" id='divss'>
					<form action="<%=request.getContextPath() %>/agents/addBranch.do"
			method="post" id="addBranch">
			<input type="hidden" name="agentname" />

			<c:if test="${manager==0 }">
			请选择网点地址<select id="def" name="agentCityId">
				</select>
				<select id="p" name='cityId'>
					<option value='-1'>请选择市</option>
				</select>
				<select id="c" name='areaId'>
					<option value='-1'>请选择区(县)</option>
				</select>
			</c:if>

			<c:if test="${manager==1 }">
			请选择网点地址<select id="def" name="agentCityId">
				</select>
				<select id="c" name='areaId'>
					<option value='-1'>请选择区(县)</option>
				</select>
			</c:if>

			<c:if test="${manager==2 }">
			请选择网点地址<select id="def" name="agentCityId" class="c">
				</select>
			</c:if>
			<div id="abc">
				<input type="hidden" name=agentManager value="<shiro:principal></shiro:principal>"/> <br></br>
				网点地址&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="agentAddress"
					required="required" /> <br></br> 业务电话&nbsp;&nbsp;&nbsp;&nbsp;<input
					type="text" name="agentHotline" required="required" /> <br></br>
				邮政编号&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="agentCode"
					required="required" /> <br></br> 网点手机号<input type="text"
					name="agentTel" required="required" /> <br></br> 网点负责人<input
					type="text" name="staffName" required="required" /> <br></br> 性别
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input name="sex"
					type="radio" value="1" checked="checked" required="required" />男 <input
					name="sex" type="radio" value="2" required="required" />女 <br></br>
				传真 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
					type="text" name="agentFax" required="required" /> <br></br>
				业务范围&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="agentRange"
					id="agentRange" required="required" /> <br></br>
				营业时间&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="agentTime"
					required="required" /> <br></br> 备注
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
					type="text" name="agentRemarks" required="required" /> <br></br> <input
					type="submit" value="提交" />
			</div>
		</form>

				</div>

			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal -->
	</div>


</body>
</html>