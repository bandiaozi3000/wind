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
	
<link href="<%=request.getContextPath()%>/statics/css/base1.css" rel="stylesheet" type="text/css" />
<script src="http://apps.bdimg.com/libs/jquery/1.7.2/jquery.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/statics/js/jquery.min.js"></script> 
<script type="text/javascript"
	src="<%=request.getContextPath()%>/statics/js/jquery.superslide.2.1.1_2.js"></script>
 <link href="<%=request.getContextPath()%>/statics/css/base1.css" rel="stylesheet" type="text/css" />
 <script src="http://apps.bdimg.com/libs/jquery/1.7.2/jquery.min.js"></script>
<!-- 浙江省 --> 


<!-- 查询样式 -->
<script src="<%=request.getContextPath()%>/statics/js/city-picker.data.js"></script>
<script src="<%=request.getContextPath()%>/statics/js/city-picker.js"></script>
<link href="<%=request.getContextPath()%>/statics/css/service.css" rel="stylesheet" />
<link href="<%=request.getContextPath()%>/statics/css/base1.css" rel="stylesheet" />
 <!-- 查询省市样式查询 -->
<script type="text/javascript"
	src="<%=request.getContextPath()%>/statics/js/jquery.superslide.2.1.1_2.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/statics/js/jquery.slidebox.min.js"></script>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/statics/css/common.css" />
<link href="<%=request.getContextPath()%>/statics/css/city-picker.css" rel="stylesheet" />   
 
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
				/* $(this).next().html("账户不能为空").css("color","red"); */
				code = false;
			}else{
				/* $(this).next().html("√").css("color","green"); */
				code = true;
			}
		});
		
		//地区搜索认证
		$("[name=code]").blur(function(){
			
			var code = $(this).val();
			if(code==null||code==""){
				/* $(this).next().html("密码不能为空").css("color","red"); */
				password = false;
			}else{
				/* $(this).next().html("√").css("color","green"); */
				password = true;
			}
		});
		
		//地区搜索
		$("#fromcha").submit(function(){
			 alert(code+"_____"+password);
			return code||password;
		});
	});
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
<!--结果设置  -->
<script type="text/javascript">
function closeme() {
	document.getElementById('div').style.display = 'none';
	
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
 
 
<script>
		
        var url = "<%=request.getContextPath()%>/agent/listAgent.do?furl=kehujsp/540000&province=540000&city=";
        var dataStatus = [
            { id: 'CN-01', code: '542400', name: '那曲地区', event: '1', url: url, lx: "300px", ly: "240px" },
            { id: 'CN-02', code: '542100', name: '昌都地区', event: '1', url: url, lx: "465px", ly: "215px" },
            { id: 'CN-03', code: '542600', name: '林芝地区', event: '1', url: url, lx: "440px", ly: "280px" },
            { id: 'CN-04', code: '542200', name: '山南地区', event: '1', url: url, lx: "380px", ly: "330px" },
            { id: 'CN-05', code: '540100', name: '拉萨市', event: '1', url: url, lx: "350px", ly: "280px" },
            { id: 'CN-06', code: '542300', name: '日喀则地区', event: '1', url: url, lx: "260px", ly: "340px" },
            { id: 'CN-07', code: '542500', name: '阿里地区', event: '1', url: url, lx: "120px", ly: "250px" }
        ];
        var map;
        var regionhits = {};
        var regionhits_countr = {};
        var inser_mage = {};
        var massage = null;
        function Setcity( province, cityData )
        {
            $( "#city" ).val( cityData );
            window.parent.ListByArea2( 540000, cityData )
        }
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
                            //子类iframe内调用父类函数：
                            window.parent.LoadDataByArea( "540000", items.code );
                            $( "#city" ).val( items.code );
                        }
                    });
                }
            });
            map.series.regions[0].setValues(generateColors());

            $.each(dataStatus, function (i, items) {
                var html = "<div id=\"" + items.id + "\" class=\"jvectormap-label\" onclick=\"Setcity( " + 540000 + ", " + items.code + " )\" style=\"display: block; left: " + items.lx + "; top: " + items.ly + "; color:#fff\">" + items.name + "</div>";
                $("#map1").append(html);
            });
            $.each(dataStatus, function (i, items) {
                $("#map1>div").each(function () {
                    var id = $(this).attr("id");
                    if (id == items.id) {
                        $(this).attr("onmouseover", "map.regions['" + id + "'].element.setHovered(true);");
                        $(this).attr("onmouseout", "map.regions['" + id + "'].element.setHovered(false);");
                        /*页面跳转路径  */$(this).attr("onclick", "top.location.href = '" + items.url + items.code + "'");

                    }
                });
            });
        });
    </script>

 
   

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
									<a href="<%=request.getContextPath() %>/jsp/kehujsp/kuaijian.jsp">客户服务</a>
								</h2>
							</li>
							<li class="" _t_nav="intoTTKExpress">
								<h2>
									<a href="<%=request.getContextPath() %>/jsp/shengyu/zoujin1.jsp">走进疾风</a>
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
									<a href="<%=request.getContextPath() %>/userlogin.jsp">我的疾风</a>
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
		for ( var i = 0; i < aH3.length; i++) {
			aH3[i].index = i;
			aH3[i].onclick = function() {
				for ( var i = 0; i < aH3.length; i++) {
					aH3[i].className = "";
					aDiv[i].style.display = "none";
				}
				this.className = "active";
				aDiv[this.index].style.display = "block";
			}
		}

	};
</script>
<div style="text-align:center;">
	<img src="<%=request.getContextPath()%>/statics/picture/ttnetwork.jpg" width="100%" height="300px" />
</div>
<!-- 中间部分  class="Dmain_about-->
<div class="Dmain_about">
<div class="quick_navigation">
您现在的位置：<a href="<%=request.getContextPath() %>/index.jsp">首页</a>&nbsp;>客户服务&nbsp;> &nbsp;<a href="<%=request.getContextPath()%>/jsp/kehujsp/quanguo.jsp">网点查询</a>	</div>
	<div class="about_main1">
		<!--左侧部分 选择框 class="about_left1" -->
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
		<!--右侧部分 class="about_right1  -->
<div class="about_right1" id="about_right1">
	<div class="contentDiv">
	
	<!-- 展示索引 -->
	<div class="quick_navigation">
			<h1 style="font-size:20px;color:#1eafff"><a href="<%=request.getContextPath()%>/jsp/kehujsp/quanguo.jsp" style="color:#1eafff">中国</a>&nbsp;· &nbsp;<a href="" style="color:#1eafff">西藏!</a></h1>
	</div>
	
			<div class="contentDiv_xin">
				<div style="clear:both">
				
				
				 	<!--网点查询  -->
				<form id="fromcha" action="<%=request.getContextPath() %>/agent/solrAgent.do" method="post">
								<div class="form_group">
									<div class="inline_group">
										<label id="allSearch">网点名或编号</label> <input class="w300"
										name="code"	type="text" placeholder="" id="information" />
									</div>
								</div>
							<input type="hidden" name="furl" value="kehujsp/540000">

								<div class="form_group">
									<div class="inline_group">
										<label id="areaSearch">地区搜索</label>
										<div class="area_box">
											<input id="endCityAres" class="w300" type="text"
											name="address"	data-toggle="city-picker" placeholder="请选择省市区" />
											 <button type="submit" id="layer-shade" class="btn btn_search" >查询</button>
										
										</div>
										
									</div>
								</div>
							 </form>
					<div ><br><br><br><br></div>	
				
				 <!-- 地图 -->
				  <div id="map1" class="customProvince">
				   <input type="hidden" id="city" />
				    <input type="hidden" id="province" value="540000" />
				    </div>
				    
				    <script src="<%=request.getContextPath() %>/statics/js/jquery.vmap.js"></script>
				    <script src="<%=request.getContextPath() %>/statics/js/xizang.js"></script>
			
			</div>
    	</div>
	</div>		
</div>
		<div style="clear:both"></div>
</div>
<!-- 中间部分底部部空白边框 -->
	<div style="clear:both"></div>
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
