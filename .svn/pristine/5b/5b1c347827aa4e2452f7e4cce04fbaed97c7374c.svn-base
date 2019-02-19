<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta name="renderer" content="webkit">
<title></title>
<link rel="stylesheet" href="<%=request.getContextPath() %>/statics/css/cheliang1.css" type="text/css"></link>
<link rel="stylesheet" href="<%=request.getContextPath() %>/statics/css/cheliang2.css" type="text/css"></link>
</head>
<c:if test="${yes eq 'yes' }">
	<script type="text/javascript">
		alert("添加成功");
	</script>
</c:if>
<c:if test="${yes eq 'no' }">
	<script type="text/javascript">
		alert("添加失败");
	</script>
</c:if>
<body>

<div class="panel admin-panel" style="text-align: center;">
  <div class="panel-head" id="add"><strong><span class="icon-pencil-square-o"></span>添加新的车辆信息</strong></div>
  <div class="body-content" style="text-align: center;" >
    
    <form method="post" class="form-x" action="<%=request.getContextPath() %>/car/add.do" style="text-align: center;">  
      <input type="hidden" name="manager" value="<shiro:principal></shiro:principal>" >
      <div class="form-group" style="text-align: center;">
        <div class="label">
          <label>司机姓名：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" value="" name="driverName" data-validate="required:请输入姓名" />
          <div class="tips"></div>
        </div>
      </div>
     
     <div class="form-group">
        <div class="label">
          <label>司机电话：</label>
        </div>
        <div class="field">
        	 <input type="text" class="input w50" value="" name="driverPhone" data-validate="required:请输入姓名" />

          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>车牌号：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50"   value="" name="carNum" data-validate="required:请输入生日" />
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>副驾：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" value="" name="copilotName" data-validate="required:请输入电话" />
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>副驾电话：</label>
        </div>
        <div class="field">
          <input type="text" class="input w50" value="" name="copilotPhone" data-validate="required:请输入身份证号码" />
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label>车辆类型：</label>
        </div>
        <div class="field">
          <select name="carType" class="input w50">
            <c:forEach items="${list }" var="li">
			        		<option value="${li.carTypeId }">${li.typeName }</option>
			 </c:forEach>
            </select>
          <div class="tips"></div>
        </div>
      </div>
      <div class="form-group">
        <div class="label">
          <label></label>
        </div>
        <div class="field">
          <button class="button bg-main icon-check-square-o" type="submit">提交</button>
        </div>
      </div>
    </form>
  </div>
</div>
</body></html>
