<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>疾风快递-天天快递有限公司</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="keywords" content="天天快递,天天快递有限公司" />
<meta name="description" content="天天快递,天天快递有限公司" />
<link href="<%=request.getContextPath()%>/statics/css/public.css"
	rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/statics/css/style.css"
	rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/statics/css/mystyle.css"
	rel="stylesheet" type="text/css" />

<script type="text/javascript"
	src="<%=request.getContextPath()%>/statics/js/jquery.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/statics/js/jquery.superslide.2.1.1_2.js"></script>
<link href="<%=request.getContextPath()%>/statics/css/city-picker.css" rel="stylesheet" />
<!-- shengshi -->

<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/statics/css/common.css" />

<script src="<%=request.getContextPath()%>/statics/js/jquery.min.js"></script> 
<script src="<%=request.getContextPath()%>/statics/js/city-picker.data.js"></script>
<script src="<%=request.getContextPath()%>/statics/js/city-picker.js"></script>

<link href="<%=request.getContextPath()%>/statics/css/service.css" rel="stylesheet" />
<link href="<%=request.getContextPath()%>/statics/css/base1.css" rel="stylesheet" />

<script src="<%=request.getContextPath()%>/statics/js/map.js"></script>
<script src="<%=request.getContextPath()%>/statics/js/jquery-jvectormap-cn-mill-en.js"></script>
<script src="statics/js/site.js"></script>

<script>
/*认证查询两个是否为空  只有一个不为空时才可以提交*/
	
	$(function(){
		/* alert("++++++++++"); */
		//网点名或编号认证
		var code = false;
		var password = false;
		$("[name=address]").blur(function(){
			
			var address = $(this).val();
			if(address==null||address==""){
				
				code = false;
			}else{
			
				code = true;
			}
		});
		
		//地区搜索认证
		$("[name=code]").blur(function(){
			
			var code = $(this).val();
			if(code==null||code==""){
				
				password = false;
			}else{
			
				password = true;
			}
		});
		
		//地区搜索
		$("#fromcha").submit(function(){
		
			return code||password;
		});
	});
</script>

<!--结果设置  -->
<script type="text/javascript">
/*   $(function(){
	 var message = "${message}";
		alert(message);
		$("#p").html(message); 
		 document.getElementById('div').style.display = 'block';
		
		
}); */

    function closeme() {
			
			  var message = "${message}";
			alert(message)
			message=null; 
			$("#p").html(""); 
			document.getElementById('div').style.display = 'none';
			
		};

</script>
<script>
	jQuery(document).ready(
			function() {
				var qcloud = {};
				$('[_t_nav]').hover(
						function() {
							var _nav = $(this).attr('_t_nav');
							clearTimeout(qcloud[_nav + '_timer']);
							qcloud[_nav + '_timer'] = setTimeout(function() {
								$('[_t_nav]').each(
										function() {
											$(this)[_nav == $(this).attr(
													'_t_nav') ? 'addClass'
													: 'removeClass']
													('nav-up-selected');
										});
								$('#' + _nav).stop(true, true).slideDown(200);
							}, 150);
						}, function() {
							var _nav = $(this).attr('_t_nav');
							clearTimeout(qcloud[_nav + '_timer']);
							qcloud[_nav + '_timer'] = setTimeout(function() {
								$('[_t_nav]').removeClass('nav-up-selected');
								$('#' + _nav).stop(true, true).slideUp(200);
							}, 150);
						});
			});
	function addFavorite() {
		if (document.all) {//IE
			try {
				window.external.addFavorite(window.location.href,
						document.title);
			} catch (e) {
				alert("加入收藏失败，请使用Ctrl+D进行添加");
			}

		} else if (window.sidebar) {
			window.sidebar.addPanel(document.title, window.location.href, "");
		} else {
			alert("加入收藏失败，请使用Ctrl+D进行添加");
		}
	}

	function collectionPage(sTitle, sURL) {
		try {
			alert(sURL + sTitle);
			window.external.addFavorite(sURL, sTitle);
		} catch (e) {
			try {
				window.sidebar.addPanel(sTitle, sURL, "");
			} catch (e) {
				alert("加入收藏失败，请使用Ctrl+D进行添加");
			}
		}
	}
</script>
<style type="text/css">

/*查询结果*/
.right_top{
right: 10px;
top: 10px;
width: 5000px;
height: 50px;
}
#div{
 background-image: linear-gradient(#DDDDDD,#CCEEFF);
/* background:#DDDDDD; */
color:#444444;
overflow: hidden;
z-index: 9999;
position: fixed;
padding:5px;
text-align:center;
width: 1490px;
height: 200px;
border-bottom-left-radius: 4px;
border-bottom-right-radius: 4px;
border-top-left-radius: 4px;	
border-top-right-radius: 4px;
font-size:20px;
/* left:40px;/*在原来的位置向右移动*/  */
 top:1000px;/*在原来的位置向下移动*/ 
/* display:none; */

} 
.button{
	display: inline-block;
    padding: .3em .5em;
    width:100px;
    height:30px;
    border: 1px solid rgba(0,0,0,.2);
    border-radius: .3em;
    box-shadow: 0 1px white inset;
    text-align: center;
    text-shadow: 0 1px 1px black;
    color:white;
    font-weight: bold;
    box-shadow: .05em .1em .2em rgba(0,0,0,.6) inset;
    border-color: rgba(0,0,0,.3);
    background-image: linear-gradient(#AAAAAA, #DDDDDD);
    font-size:16px;
    padding-bottom:0.55em;
}
#p{
text-align:center;
padding-top:30px;
}
</style>

</head>
<body>
<c:if test="${not empty message }">
<div class="right_top" id="div">
<h1><input class="button" type="button" value="查询结果ｘ" onClick="closeme()"></h1>
	<p id="p">${message}</p>
</div>
</c:if>

<div class="Dtop1">
		<div class="top1">
			<div class="top_L">
				<a onclick="addFavorite();">加入收藏</a> <a
					href="">联系我们</a>
			</div>
			<div class="top_R">
				 <a href="http://mail.ttkd.cn/" target="_blank">企业邮箱</a> <a
					href="javascript:void();">188-3964-1878</a> 
					 <c:if test="${!empty users}">
						<a href="#">${users.userName}</a>&nbsp;&nbsp;
						<a href="#">退出</a>
					</c:if>
					<c:if test="${empty users}">
						<a id="logingALink" href="<%=request.getContextPath() %>/userlogin.jsp">登录</a> 
					<a id="registerALink" href="<%=request.getContextPath() %>/zhuce.jsp">注册</a>
					</c:if>
			</div>
			<div style="clear: both"></div>
		</div>

		<div class="head-v3">
			<div class="navigation-up">
				<div class="navigation-inner">
					<div class="logimg">
						<a href="#"><img
							src="<%=request.getContextPath()%>/statics/picture/logo.png" /></a>
					</div>

					<div class="navigation-v3">
						<ul>
							<li class="nav-up-selected-inpage" _t_nav="home">
								<h2>
									<a href="<%=request.getContextPath() %>/index.jsp">&nbsp;&nbsp;&nbsp;首页&nbsp;&nbsp;&nbsp;</a>
								</h2>
							</li>
							<li class="" _t_nav="intoTTKExpress1">
								<h2>
									<a
										href="<%=request.getContextPath() %>/jsp/kehujsp/kuaijian.jsp">客户服务</a>
								</h2>
							</li>
							<li class="" _t_nav="intoTTKExpress">
								<h2>
									<a
										href="<%=request.getContextPath() %>/jsp/shengyu/zoujin1.jsp">走进疾风</a>
								</h2>
							</li>
							<li class="" _t_nav="ttnews">
								<h2>
									<a href="<%=request.getContextPath() %>/jsp/shengyu/xinwen.jsp">疾风新闻</a>
								</h2>
							</li>
							<li class="" _t_nav="ttservice">
								<h2>
									<a href="<%=request.getContextPath()%>/jsp/shengyu/fuwu.jsp">疾风服务</a>
								</h2>
							</li>
							<li class="" _t_nav="ttjoin">
								<h2>
									<a href="<%=request.getContextPath()%>/jsp/shengyu/jiameng.jsp">疾风加盟</a>
								</h2>
							</li>


							<li _t_nav="mytt">
								<h2>
									<a href="<%=request.getContextPath() %>/jsp/usersInfo/usersInfo.jsp">我的疾风</a>
								</h2>
							</li>
						</ul>
					</div>
				</div>
			</div>
		
		</div>

	</div>

	<div style="clear: both"></div>
	
	<script type="text/javascript">
		window.onload = function() {

			var oTab = document.getElementById("about_left1");
			var arigh = document.getElementById("about_right1");
			var aH3 = oTab.getElementsByTagName("li");
			var aDiv = arigh.getElementsByTagName("div");
			for (var i = 0; i < aH3.length; i++) {
				aH3[i].index = i;
				aH3[i].onclick = function() {
					for (var i = 0; i < aH3.length; i++) {
						aH3[i].className = "";
						aDiv[i].style.display = "none";
					}
					this.className = "active";
					aDiv[this.index].style.display = "block";
				}
			}

		};
	</script>
	<div style="text-align: center;">
		<img src="<%=request.getContextPath()%>/statics/picture/ttnetwork.jpg" width="100%" height="300px" />
	</div>

	<!-- 中间部分 -->
	<div class="Dmain_about">
		<div class="quick_navigation">
		您现在的位置：<a href="<%=request.getContextPath() %>/index.jsp">首页</a>&nbsp;>客户服务&nbsp;> &nbsp;<a href="<%=request.getContextPath()%>/jsp/kehujsp/quanguo.jsp">网点查询</a>
	</div>

		<div class="about_main1">
			<div class="about_left1" id="about_left1">
				<p class="bluelinea">&nbsp;&nbsp;客户服务</p>
				<ul>
					<li><a href="<%=request.getContextPath()%>/jsp/kehujsp/kuaijian.jsp">&nbsp;&nbsp;-
							快件查询</a></li>
					<li><a href="<%=request.getContextPath()%>/jsp/kehujsp/zaixian.jsp">&nbsp;&nbsp;-
							在线寄件</a></li>
					<li class="active"><a
						href="<%=request.getContextPath()%>/jsp/kehujsp/quanguo.jsp">&nbsp;&nbsp;-
							网点查询</a></li>
					<li><a href="<%=request.getContextPath()%>/jsp/kehujsp/kefu.jsp">&nbsp;&nbsp;-
							在线客服</a></li>
				</ul>

			</div>

			
			<div class="about_right1" id="about_right1">
				<div class="contentDiv">
					<div class="contentDiv_xin">
						<div class="box">
							<div class="service_net service_box">
								<div class="type_title">网点分布查询</div>
								
								<form id="fromcha" action="<%=request.getContextPath() %>/agent/solrAgent.do" method="post"> 
								<div class="form_group">
									<div class="inline_group">
										<label id="allSearch">网点名或编号</label> <input class="w300"
											name="code" type="text" placeholder="" id="information" />
									</div>
								</div>
								<div class="form_group">
									<div class="inline_group">
										<label id="areaSearch">地区搜索</label>
										<div class="area_box">
											<input id="endCityAres" class="w300" type="text"
											name="address"	data-toggle="city-picker" placeholder="请选择省市区" />
										</div>
										<input type="hidden" name="furl" value="kehujsp/quanguo">
										<!--  <a href="javascript:void(0)" id="layer-shade"
											class="btn btn_search">查询</a>  -->
											<input id="layer-shade" class="btn btn_search" type="submit" value="查询">
									</div>
								</div>
								</form>
								
								
								<div class="network_map">
									<div
										style="width: 730px; margin: 0px auto; text-align: left; height: 600px; position: relative; z-index: 99;"
										id="service_content">
										<div style="width: 730px; height: 600px; margin: 0px auto;">
											<div id="map1"
												style="width: 730px; height: 600px; position: absolute; margin: 0px auto; z-index: 1;"
												value="provice">
												<div class="jvectormap-label"
													style="display: block; left: 189px; top: 218px; z-index: 1"
													onmouseover="map.regions['CN-45'].element.setHovered(true); "
													onmouseout="map.regions['CN-45'].element.setHovered(false); "
													onclick="toList( '650000', '650000', '新疆' )"
													value="provice">新疆</div>
												<div class="jvectormap-label"
													style="display: block; left: 558px; top: 143px;"
													onmouseover="map.regions['CN-64'].element.setHovered(true); "
													onmouseout="map.regions['CN-64'].element.setHovered( false );"
													onclick="toList( '230000','230000','黑龙江' )" value="provice">
													黑龙江</div>
												<div class="jvectormap-label"
													style="display: block; left: 566px; top: 186px;"
													onmouseover="map.regions['CN-65'].element.setHovered(true); "
													onmouseout="map.regions['CN-65'].element.setHovered( false );"
													onclick="toList( '220000','220000','吉林' )" value="provice">
													吉林</div>
												<div class="jvectormap-label"
													style="display: block; left: 537px; top: 215px;"
													onmouseover="map.regions['CN-46'].element.setHovered(true); "
													onmouseout="map.regions['CN-46'].element.setHovered( false );"
													onclick="toList( '210000','210000','辽宁' )" value="provice">
													辽宁</div>
												<div class="jvectormap-label"
													style="display: block; left: 197px; top: 344px;"
													onmouseover="map.regions['CN-15'].element.setHovered(true); "
													onmouseout="map.regions['CN-15'].element.setHovered( false );"
													onclick="toList( '540000','540000','西藏' )" value="provice">
													西藏</div>
												<div class="jvectormap-label"
													style="display: block; left: 365px; top: 312px;"
													onmouseover="map.regions['CN-63'].element.setHovered(true); "
													onmouseout="map.regions['CN-63'].element.setHovered( false );"
													onclick="toList( '620000','620000','甘肃' )" value="provice">
													甘肃</div>
												<div class="jvectormap-label"
													style="display: block; left: 281px; top: 296px;"
													onmouseover="map.regions['CN-37'].element.setHovered(true); "
													onmouseout="map.regions['CN-37'].element.setHovered( false );"
													onclick="toList( '630000','630000','青海' )" value="provice">
													青海</div>
												<div class="jvectormap-label"
													style="display: block; left: 402px; top: 239px;"
													onmouseover="map.regions['CN-44'].element.setHovered(true); "
													onmouseout="map.regions['CN-44'].element.setHovered( false );"
													onclick="toList( '150000','150000','内蒙古' )" value="provice">
													内蒙古</div>
												<div class="jvectormap-label"
													style="display: block; left: 384px; top: 282px;"
													onmouseover="map.regions['CN-62'].element.setHovered(true); "
													onmouseout="map.regions['CN-62'].element.setHovered( false );"
													onclick="toList( '640000','640000','宁夏' )" value="provice">
													宁夏</div>
												<div class="jvectormap-label"
													style="display: block; left: 442px; top: 278px;"
													onmouseover="map.regions['CN-41'].element.setHovered(true); "
													onmouseout="map.regions['CN-41'].element.setHovered( false );"
													onclick="toList( '140000','140000','山西' )" value="provice">
													山西</div>
												<div class="jvectormap-label"
													style="display: block; left: 497px; top: 289px;"
													onmouseover="map.regions['CN-43'].element.setHovered(true); "
													onmouseout="map.regions['CN-43'].element.setHovered( false );"
													onclick="toList( '370000','370000','山东' )" value="provice">
													山东</div>
												<div class="jvectormap-label"
													style="display: block; left: 475px; top: 261px;"
													onmouseover="map.regions['CN-42'].element.setHovered(true); "
													onmouseout="map.regions['CN-42'].element.setHovered( false );"
													onclick="toList( '130000','130000','河北' )" value="provice">
													河北</div>
												<div class="jvectormap-label"
													style="display: block; left: 476px; top: 232px;"
													onmouseover="map.regions['CN-22'].element.setHovered(true); "
													onmouseout="map.regions['CN-22'].element.setHovered( false );"
													onclick="toList( '110000', '110000', '北京' )"
													value="provice">北京</div>
												<div class="jvectormap-label"
													style="display: block; left: 515px; top: 259px; color: #1eafff"
													onmouseover="map.regions['CN-21'].element.setHovered(true); "
													onmouseout="map.regions['CN-21'].element.setHovered( false );"
													onclick="toList( '120000','120000','天津' )" value="provice">
													天津</div>
												<div class="jvectormap-label"
													style="display: block; left: 347px; top: 363px;"
													onmouseover="map.regions['CN-14'].element.setHovered(true); "
													onmouseout="map.regions['CN-14'].element.setHovered( false );"
													onclick="toList( '510000','510000','四川' )" value="provice">
													四川</div>
												<div class="jvectormap-label"
													style="display: block; left: 395px; top: 376px;"
													onmouseover="map.regions['CN-13'].element.setHovered(true); "
													onmouseout="map.regions['CN-13'].element.setHovered( false );"
													onclick="toList( '500000','500000','重庆' )" value="provice">
													重庆</div>
												<div class="jvectormap-label"
													style="display: block; left: 396px; top: 415px;"
													onmouseover="map.regions['CN-31'].element.setHovered(true); "
													onmouseout="map.regions['CN-31'].element.setHovered( false );"
													onclick="toList( '520000','520000','贵州' )" value="provice">
													贵州</div>
												<div class="jvectormap-label"
													style="display: block; left: 445px; top: 403px;"
													onmouseover="map.regions['CN-32'].element.setHovered(true); "
													onmouseout="map.regions['CN-32'].element.setHovered( false );"
													onclick="toList( '430000','430000','湖南' )" value="provice">
													湖南</div>
												<div class="jvectormap-label"
													style="display: block; left: 489px; top: 392px;"
													onmouseover="map.regions['CN-33'].element.setHovered(true); "
													onmouseout="map.regions['CN-33'].element.setHovered(false); "
													onclick="toList('360000','360000','江西')" value="provice">
													江西</div>
												<div class="jvectormap-label"
													style="display: block; left: 330px; top: 441px;"
													onmouseover="map.regions['CN-52'].element.setHovered(true); "
													onmouseout="map.regions['CN-52'].element.setHovered( false );"
													onclick="toList( '530000','530000','云南' )" value="provice">
													云南</div>
												<div class="jvectormap-label"
													style="display: block; left: 414px; top: 453px;"
													onmouseover="map.regions['CN-35'].element.setHovered(true); "
													onmouseout="map.regions['CN-35'].element.setHovered( false );"
													onclick="toList( '450000','450000','广西' )" value="provice">
													广西</div>
												<div class="jvectormap-label"
													style="display: block; left: 452px; top: 360px;"
													onmouseover="map.regions['CN-11'].element.setHovered(true); "
													onmouseout="map.regions['CN-11'].element.setHovered( false );"
													onclick="toList( '420000','420000','湖北' )" value="provice">
													湖北</div>
												<div class="jvectormap-label"
													style="display: block; left: 411px; top: 325px;"
													onmouseover="map.regions['CN-36'].element.setHovered(true); "
													onmouseout="map.regions['CN-36'].element.setHovered( false );"
													onclick="toList( '610000','610000','陕西' )" value="provice">
													陕西</div>
												<div class="jvectormap-label"
													style="display: block; left: 456px; top: 321px;"
													onmouseover="map.regions['CN-53'].element.setHovered(true); "
													onmouseout="map.regions['CN-53'].element.setHovered( false );"
													onclick="toList( '410000','410000','河南' )" value="provice">
													河南</div>
												<div class="jvectormap-label"
													style="display: block; left: 520px; top: 320px;"
													onmouseover="map.regions['CN-61'].element.setHovered(true); "
													onmouseout="map.regions['CN-61'].element.setHovered( false );"
													onclick="toList( '320000','320000','江苏' )" value="provice">
													江苏</div>
												<div class="jvectormap-label"
													style="display: block; left: 502px; top: 350px;"
													onmouseover="map.regions['CN-34'].element.setHovered(true); "
													onmouseout="map.regions['CN-34'].element.setHovered( false );"
													onclick="toList( '340000','340000','安徽' )" value="provice">
													安徽</div>
												<div class="jvectormap-label"
													style="display: block; left: 567px; top: 349px; color: #1eafff"
													onmouseover="map.regions['CN-23'].element.setHovered(true); "
													onmouseout="map.regions['CN-23'].element.setHovered( false );"
													onclick="toList( '310000','310000','上海' )" value="provice">
													上海</div>
												<div class="jvectormap-label"
													style="display: block; left: 533px; top: 377px;"
													onmouseover="map.regions['CN-12'].element.setHovered(true); "
													onmouseout="map.regions['CN-12'].element.setHovered( false );"
													onclick="toList( '330000','330000','浙江' )" value="provice">
													浙江</div>
												<div class="jvectormap-label"
													style="display: block; left: 518px; top: 417px;"
													onmouseover="map.regions['CN-51'].element.setHovered(true); "
													onmouseout="map.regions['CN-51'].element.setHovered( false );"
													onclick="toList( '350000','350000','福建' )" value="provice">
													福建</div>
												<div class="jvectormap-label"
													style="display: block; left: 451px; top: 515px; color: #1eafff"
													onmouseover="map.regions['CN-54'].element.setHovered(true); "
													onmouseout="map.regions['CN-54'].element.setHovered( false );"
													onclick="toList( '460000','460000','海南' )" value="provice">
													海南</div>
												<div class="jvectormap-label"
													style="display: block; left: 504px; top: 472px; color: #1eafff"
													onmouseover="map.regions['CN-313'].element.setHovered(true); "
													onmouseout="map.regions['CN-313'].element.setHovered( false );"
													onclick="toList( '810000','810000','香港' )" value="provice">
													香港</div>
												<div class="jvectormap-label"
													style="display: block; left: 470px; top: 484px; color: #1eafff"
													onmouseover="map.regions['CN-311'].element.setHovered(true); "
													onmouseout="map.regions['CN-311'].element.setHovered( false );"
													onclick="toList( '820000','820000','澳门' )" value="provice">
													澳门</div>
												<div class="jvectormap-label"
													style="display: block; left: 574px; top: 442px; color: #1eafff"
													onmouseover="map.regions['CN-50'].element.setHovered(true); "
													onmouseout="map.regions['CN-50'].element.setHovered( false );"
													onclick="toList( '830000','830000','台湾' )" value="provice">
													台湾</div>
												<div class="jvectormap-label"
													style="display: block; left: 472px; top: 449px;"
													onmouseover="map.regions['CN-310'].element.setHovered(true); "
													onmouseout="map.regions['CN-310'].element.setHovered( false );"
													onclick="toList( '440000','440000','广东')" value="provice">
													广东</div>
												<div class="jvectormap-label"
													style="display: block; left: 125px; top: 425px;">
													<img src="<%=request.getContextPath()%>/statics/picture/nhzd_map.png" />
												</div>
												<div class="jvectormap-label"
													style="display: block; left: 570px; top: 403px;">
													<img src="<%=request.getContextPath()%>/statics/picture/dyd_map.png" />
												</div>
											</div>
										</div>
									</div>
									<script>
                            var dataStatus = [
                                { id: 'CN-11', name: '湖北', event: '1', url: '/Site/GetOranizeByArea', pinyin: "hubei", areaId: '420000' },
                                { id: 'CN-12', name: '浙江', event: '1', url: '/Site/GetOranizeByArea', pinyin: "zhejiang", areaId: '330000' },
                                { id: 'CN-13', name: '重庆', event: '1', url: '/Site/GetOranizeByArea', pinyin: "chongqing", areaId: '500000' },
                                { id: 'CN-14', name: '四川', event: '1', url: '/Site/GetOranizeByArea', pinyin: "sichuan", areaId: '510000' },
                                { id: 'CN-15', name: '西藏', event: '1', url: '/Site/GetOranizeByArea', pinyin: "xizang", areaId: '540000' },
                                { id: 'CN-21', name: '天津', event: '1', url: '/Site/GetOranizeByArea', pinyin: "tianjing", areaId: '120000' },
                                { id: 'CN-22', name: '北京', event: '1', url: '/Site/GetOranizeByArea', pinyin: "beijing", areaId: '110000' },
                                { id: 'CN-23', name: '上海', event: '1', url: '/Site/GetOranizeByArea', pinyin: "shanghai", areaId: '310000' },
                                { id: 'CN-31', name: '贵州', event: 't', url: '/Site/GetOranizeByArea', pinyin: "guizhou", areaId: '520000' },
                                { id: 'CN-32', name: '湖南', event: '1', url: '/Site/GetOranizeByArea', pinyin: "hunan", areaId: '430000' },
                                { id: 'CN-33', name: '江西', event: '1', url: '/Site/GetOranizeByArea', pinyin: "jiangxi", areaId: '360000' },
                                { id: 'CN-34', name: '安徽', event: '1', url: '/Site/GetOranizeByArea', pinyin: "anhui", areaId: '340000' },
                                { id: 'CN-35', name: '广西', event: '1', url: '/Site/GetOranizeByArea', pinyin: "guangxi", areaId: '450000' },
                                { id: 'CN-36', name: '陕西', event: '1', url: '/Site/GetOranizeByArea', pinyin: "shan-xi", areaId: '610000' },
                                { id: 'CN-37', name: '青海', event: '1', url: '/Site/GetOranizeByArea', pinyin: "qinghai", areaId: '630000' },
                                { id: 'CN-310', name: '广东', event: '1', url: '/Site/GetOranizeByArea', pinyin: "guangdong", areaId: '440000' },
                                { id: 'CN-311', name: '澳门', event: '1', url: '/Site/GetOranizeByArea', pinyin: "aomen", areaId: '820000' },
                                { id: 'CN-313', name: '香港', event: '1', url: '/Site/GetOranizeByArea', pinyin: "xianggang", areaId: '810000' },
                                { id: 'CN-41', name: '山西', event: '1', url: '/Site/GetOranizeByArea', pinyin: "shanxi", areaId: '140000' },
                                { id: 'CN-42', name: '河北', event: '1', url: '/Site/GetOranizeByArea', pinyin: "heibei", areaId: '130000' },
                                { id: 'CN-43', name: '山东', event: '1', url: '/Site/GetOranizeByArea', pinyin: "shandong", areaId: '370000' },
                                { id: 'CN-44', name: '内蒙古', event: '1', url: '/Site/GetOranizeByArea', pinyin: "neimenggu", areaId: '150000' },
                                { id: 'CN-45', name: '新疆', event: '1', url: '/Site/GetOranizeByArea', pinyin: "xinjiang", areaId: '650000' },
                                { id: 'CN-46', name: '辽宁', event: '1', url: '/Site/GetOranizeByArea', pinyin: "liaoning", areaId: '210000' },
                                { id: 'CN-50', name: '台湾', event: '1', url: '/Site/GetOranizeByArea', pinyin: "taiwan", areaId: '830000' },
                                { id: 'CN-51', name: '福建', event: '1', url: '/Site/GetOranizeByArea', pinyin: "fujian", areaId: '350000' },
                                { id: 'CN-52', name: '云南', event: '1', url: '/Site/GetOranizeByArea', pinyin: "yunnan", areaId: '530000' },
                                { id: 'CN-53', name: '河南', event: '1', url: '/Site/GetOranizeByArea', pinyin: "henan", areaId: '410000' },
                                { id: 'CN-54', name: '海南', event: '1', url: '/Site/GetOranizeByArea', pinyin: "hainan", areaId: '460000' },
                                { id: 'CN-61', name: '江苏', event: '1', url: '/Site/GetOranizeByArea', pinyin: "jiangsu", areaId: '320000' },
                                { id: 'CN-62', name: '宁夏', event: '1', url: '/Site/GetOranizeByArea', pinyin: "ningxia", areaId: '640000' },
                                { id: 'CN-63', name: '甘肃', event: '1', url: '/Site/GetOranizeByArea', pinyin: "gansu", areaId: '620000' },
                                { id: 'CN-64', name: '黑龙江', event: '1', url: '/Site/GetOranizeByArea', pinyin: "heilongjiang", areaId: '230000' },
                                { id: 'CN-65', name: '吉林', event: '1', url: '/Site/GetOranizeByArea', pinyin: "jilin", areaId: '220000' }
                            ];
                            var map;
                            var regionhits = {};
                            var regionhits_countr = {};
                            var inser_mage = {};
                            var massage = null;
                            $(function () {
                                var palette = ['#1eafff'];
                                generateColors = function () {
                                    var colors = {}, key;
                                    var i = 0;
                                    for (key in map.regions) {
                                        colors[key] = palette[i];
                                        ++i;
                                        if (i == palette.length) {
                                            i = 0;
                                        }
                                    }
                                    return colors;
                                };
                                map = new jvm.WorldMap({
                                    map: 'cn_mill_en',
                                    container: $('#map1'),
                                    series: {
                                        regions: [{
                                            attribute: 'fill'
                                        }]
                                    },
                                    onRegionOver: function (event, code) {
                                        $.each(dataStatus, function (i, items) {
                                            if ((code == items.id)) {
                                                $('#map1').css({ cursor: 'pointer' });
                                            }
                                        });
                                    },
                                    onRegionOut: function (event, code) {
                                        $.each(dataStatus, function (i, items) {
                                            if (code == items.id) {
                                                $('#map1').css({ cursor: 'auto' });
                                            }
                                        });
                                    },
                                    onRegionClick: function (event, code) {
                                        $.each(dataStatus, function (i, items) {
                                            if (code == items.id) { 
                                                toList(items.id, items.areaId, items.name);
                                                //ListByArea( value );
                                            }
                                        });
                                    }
                                });
                                map.series.regions[0].setValues(generateColors());
                            });

                            function toList(id, areaId, name) {;
                                if (areaId == "500000" || areaId == "310000" || areaId == "120000" ||
                                    areaId == "110000" || areaId == "810000" || areaId == "830000" ||
                                    areaId == "820000") {
                                    ListByArea(areaId);
                                }
                                else {
                                    document.location.href = "<%=request.getContextPath()%>/agent/page.do?provinceId=" + areaId;
                                }
                            }
                        </script>
								</div>
							</div>



						</div>
					
					<div style="clear: both"></div>
				</div>
			</div>
		</div>
		
		<div style="clear: both"></div>
	</div>
	<div style="clear: both"></div>
	</div>

	
<div class="Dfooter">
	<div class="footer1">

			<div class="footer2L">
				<ul>
					
					<li class="footerSplitlineLi"><img
						src="<%=request.getContextPath()%>/static/picture/footersplitline.png"
						width="1px" height="123px"></li>
					<li>
						<p>
							<a href="<%=request.getContextPath()%>/jsp/kehujsp/kuaijian.jsp">快件查询</a>
						</p>
						<p>
							<a href="<%=request.getContextPath()%>/jsp/kehujsp/zaixian.jsp">在线寄件</a>
						</p>
						<p>
							<a href="<%=request.getContextPath()%>/jsp/kehujsp/quanguo.jsp">网点查询</a>
						</p>
						<p>
							<a
								href="/staticFile/pages/ttservice/customerGuide.html?column=provisionSet">禁运品</a>
						</p>
						<p>
							<a
								href="/staticFile/pages/ttservice/customerGuide.html?column=calculate">计费方式</a>
						</p>
						<p>
							<a href="/staticFile/pages/ttservice/mobileApplications.html">移动应用</a>
						</p>
					</li>
					<li class="footerSplitlineLi"><img
						src="<%=request.getContextPath()%>/statics/picture/footersplitline.png" width="1px"
						height="123px"></li>
					<li>
						<p>
							<a href="/staticFile/pages/customerus.html">联系我们</a>
						</p>
						<p>
							<a
								href="/staticFile/pages/ttservice/customerGuide.html?column=clientele">投诉建议</a>
						</p>
						<p>
							<a href="/staticFile/pages/ttservice/expressDeliveryService.html">疾风服务</a>
						</p>
						<p>
							<a href="/staticFile/pages/ttjoin/joinNotes.html">疾风加盟</a>
						</p>

					</li>
					<li class="footerSplitlineLi"><img
						src="<%=request.getContextPath()%>/statics/picture/footersplitline.png" width="1px"
						height="123px"></li>
					<li>
						<p>
							<a href="<%=request.getContextPath()%>/jsp/kehujsp/kefu.jsp">在线客服</a>
						</p>
						<!-- <p>
							<a target="_blank"
								onclick="javascript:window.open('http://crm2.qq.com/page/portalpage/wpa.php?uin=4001888888&f=1&ty=1&aty=0&a=&from=6', '_blank', 'height=544, width=644,toolbar=no,scrollbars=no,menubar=no,status=no');return false;">QQ咨询</a>
						</p> -->
						<!-- <p>
							<a target="_blank"
								href="http://amos.im.alisoft.com/getcid.aw?v=3&uid=天天快递客服中心&site=cntaobao&groupid=220229&s=1&charset=utf-8">旺旺咨询</a>
						</p> -->
						<p>
							<a href="javascript:void();">全国客服热线：</a>
						</p>
						<p>
							<a href="javascript:void();">4001-888-888</a>
						</p>
						<p>
							<a
								href="http://weibo.com/p/1006063560658954/home?from=page_100606&mod=TAB#place"><img
								src="<%=request.getContextPath() %>/statics/picture/weibo.png"
								width="21px" height="21px" />&nbsp;官方微博</a>
						</p>
					</li>
					<div style="clear: both"></div>
				</ul>
			</div>
			<div style="clear: both"></div>
		</div>
		<!--footer1-->

		<div class="footer3">
			&nbsp;&nbsp;@版权所有 2016疾风快递有限公司 豫ICP备13006085号<br>
		</div>
	</div>
	<!--Dfooter-->

</body>
</html>
