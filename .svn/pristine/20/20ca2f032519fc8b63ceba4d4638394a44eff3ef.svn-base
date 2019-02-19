<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
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
</head>
<body style="background: #f6f5fa;">
	<div class="super-content">
		<div class="superCtab">
		
			<div class="ctab-title clearfix"><h3>车辆管理</h3></div>
				<div style="padding-left: 25px;" class="">
				<table >
					<tr>
						<td>
							<input name="" type="text"  value="" style=" border: 1px solid #d8d8d8; height: 20px; padding: 6px 34px 6px 6px; width: 207px;" />&nbsp;&nbsp;
						</td>
						<td>
							<button name="banned" value="" style="display: inline-block; width: 41px; height: 33px;border: 1px solid #e6e6e6; text-align: center; color: #919191; line-height: 33px; margin: 0 3px; background: #fff;" >查询</button>
							
						</td>
					</tr>
				</table>
			</div>
			<div class="ctab-Main" >
			
				<div class="ctab-Mian-cont" >
				
					<div class="Mian-cont-wrap">
					
						<div class="defaultTab-T"  style="margin-top: 20px">
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
						<table id="getAll" class="defaultTable defaultTable2">
							<tr>
								<td width="1%"></td>
								<td width="4%">1</td>
								<td width="7%">123456</td>
								<td width="6%">曹潇</td>
								<td width="8%">18839641878</td>
								<td width="6%">胡威</td>
								<td width="7%">18839641878</td>
								<td width="3%">大车</td>
								<td width="2%">运输中</td>
							</tr>
						</table>
						<div class="pageSelect">
							<div class="pageWrap">
								<button name="home" class="pagenumb" value="1" onclick="getAll(this.value)">首页</button>
								<button name="prev" class="pagenumb" value="" onclick="getAll(this.value)">上页</button>
								<button name="next" class="pagenumb" value="" onclick="getAll(this.value)">下页</button>
								<button name="last" class="pagenumb" value="1" onclick="getAll(this.value)">末页</button>
								<a href="<%=request.getContextPath() %>/system/adminNotice_Add.jsp" >增加</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body></html>