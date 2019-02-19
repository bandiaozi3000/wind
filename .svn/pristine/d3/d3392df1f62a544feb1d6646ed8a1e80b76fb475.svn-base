<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<!DOCTYPE html>

<html class=" js csstransforms3d"><head>
	<meta charset="utf-8">
	<meta name="renderer" content="webkit">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>公告管理</title>
	<link rel="stylesheet" href="<%=request.getContextPath() %>/statics/css/base.css">
	<link rel="stylesheet" href="<%=request.getContextPath() %>/statics/css/page.css">
	<script type="text/javascript" src="<%=request.getContextPath() %>/statics/js/jquery.min.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/statics/js/main.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/statics/js/modernizr.js"></script>
	<script type="text/javascript" src="<%=request.getContextPath() %>/statics/js/carGetAll.js"></script>
	<style type="text/css">
		#statusName{
			border: 1px solid #d8d8d8; 
			height: 33px; padding: 
			6px 34px 6px 6px; 
			width: 200px;
		}
	</style>
</head>
<body style="background: #f6f5fa;">
<input name="path" type="hidden" value="<%=request.getContextPath() %>">
<span  id="staffNo" style="display: none"><shiro:hasRole name="jingli"><shiro:principal></shiro:principal></shiro:hasRole></span>
	<div class="super-content">
		<div class="superCtab">
			<div class="ctab-title clearfix"><h3>车辆管理</h3></div>
				<div style="padding-left: 25px;" class="">
				<table >
					<tr>
						<td>
							<input name="driverName" type="text"  value="" style=" border: 1px solid #d8d8d8; height: 20px; padding: 6px 34px 6px 6px; width: 207px;" />&nbsp;&nbsp;
											
						</td>
						<td>
							<button onclick="" name="banned" value="" style="display: inline-block; width: 41px; height: 33px;border: 1px solid #e6e6e6; text-align: center; color: #919191; line-height: 33px; margin: 0 3px; background: #fff;" >查询</button>
						</td>
					</tr>
				</table>
			</div>
			<div class="ctab-Main">
			
				<div class="ctab-Mian-cont">
				
					<div class="Mian-cont-wrap">
					
						<div class="defaultTab-T">
							<table  class="defaultTable">
								<tbody>
								<tr>
									<th width="2%">id</th>
									<th width="7%">车牌号</th>
									<th width="6%">主驾姓名</th>
									<th width="8%">主驾电话</th>
									<th width="6%">副驾姓名</th>
									<th width="8%">副驾电话</th>
									<th width="5%">车辆类型</th>
									<th width="2%">操作</th>
								</tr>
							</tbody></table>
						</div>
						<table id="getAll" class="defaultTable defaultTable2" >
							<tr style="cursor: pointer" onclick="">
								<td width="1%"></td>
								<td width="4%"></td>
								<td width="7%"></td>
								<td width="6%"></td>
								<td width="8%"></td>
								<td width="6%"></td>
								<td width="7%"></td>
								<td width="3%"></td>
								<td width="2%"><select style="width: 110px" id="statusName" onchange="javascript:if(confirm('是否确认修改?')) tukuang()">
												<option value="" selected></option>
								</select></td>
							</tr>
						</table>
						<div id="showFlowPath" style="text-align: center;margin-top: 5px;">
							<!-- 显示车辆运输流程信息 -->
						</div>
						<div class="pageSelect">
						<span >共 <b id="all"></b> 条 每页 <b>5 </b>条 <a id="nowpage">/</a><a id="numpage"></a></span>
							<div class="pageWrap">
								<button name="home" class="pagenumb" value="1" onclick="getAll(this.value)">首页</button>
								<button name="prev" class="pagenumb" value="" onclick="getAll(this.value)">上页</button>
								<button name="next" class="pagenumb" value="" onclick="getAll(this.value)">下页</button>
								<button name="last" class="pagenumb" value="1" onclick="getAll(this.value)">末页</button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body></html>