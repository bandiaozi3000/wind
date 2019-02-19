<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>疾风快递-天天快递有限公司首页</title>
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
<!--  <script type="text/javascript" src="../static/js/jquery.1.9.1.js"></script> -->
<!-- <script type="text/javascript" src="../static/js/jquery1.42.min.js"></script> -->
<script type="text/javascript" src="<%=request.getContextPath()%>/statics/js/jquery.min.js"></script> 
<script type="text/javascript"
	src="<%=request.getContextPath()%>/statics/js/jquery.superslide.2.1.1_2.js"></script>
<!-- <script type="text/javascript" src="../static/js/jquery.slidebox.min.js"></script> -->
	<script>
		jQuery(document).ready(function(){
			var qcloud={};
			$('[_t_nav]').hover(function(){
				var _nav = $(this).attr('_t_nav');
				clearTimeout( qcloud[ _nav + '_timer' ] );
				qcloud[ _nav + '_timer' ] = setTimeout(function(){
				$('[_t_nav]').each(function(){
				$(this)[ _nav == $(this).attr('_t_nav') ? 'addClass':'removeClass' ]('nav-up-selected');
				});
				$('#'+_nav).stop(true,true).slideDown(200);
				}, 150);
			},function(){
				var _nav = $(this).attr('_t_nav');
				clearTimeout( qcloud[ _nav + '_timer' ] );
				qcloud[ _nav + '_timer' ] = setTimeout(function(){
				$('[_t_nav]').removeClass('nav-up-selected');
				$('#'+_nav).stop(true,true).slideUp(200);
				}, 150);
			});
		});
		function addFavorite(){
		    if (document.all){//IE
		        try{
		            window.external.addFavorite(window.location.href,document.title);
		        }catch(e){
		            alert( "加入收藏失败，请使用Ctrl+D进行添加" );
		        }
		        
		    }else if (window.sidebar){
		        window.sidebar.addPanel(document.title, window.location.href, "");
		     }else{
		        alert( "加入收藏失败，请使用Ctrl+D进行添加" );
		    }
		}

		function collectionPage(sTitle, sURL) {
		    try {
		    	alert(sURL+sTitle);
		        window.external.addFavorite(sURL, sTitle);
		    } catch(e) {
		        try {
		            window.sidebar.addPanel(sTitle, sURL, "");
		        } catch(e) {
		            alert("加入收藏失败，请使用Ctrl+D进行添加");
		        }
		    }
		}
	</script>

</head>
<body>
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
	<img src="<%=request.getContextPath() %>/statics/picture/intottkexpress.jpg" width="100%" height="300px" />
</div>
<div class="Dmain_about">
	<div class="quick_navigation">
		您现在的位置：<a href="/">首页</a>&nbsp;>走进疾风&nbsp;> <a
						href="<%=request.getContextPath() %>/jsp/shengyu/zoujin1.jsp">企业概况
						</a>
	</div>
	<div class="about_main1">
		<div class="about_left1" id="about_left1">
			<p class="bluelinea">&nbsp;&nbsp;走进疾风</p>
			<ul>
						<li class="active">
							<a href="<%=request.getContextPath() %>/jsp/shengyu/zoujin1.jsp">&nbsp;&nbsp;-
								企业概况</a></li>
						<li><a
							href="">&nbsp;&nbsp;-
								企业历程</a></li>
						<li><a
							href="">&nbsp;&nbsp;-
								企业荣誉</a></li>
						<li><a
							href="">&nbsp;&nbsp;-
								企业文化</a></li>
						<li><a
							href="">&nbsp;&nbsp;-
								经营理念</a></li>
						<li><a
							href="">&nbsp;&nbsp;-
								企业视频</a></li>
			</ul>
		</div>
		
		<div class="about_right1" id="about_right1">
			<div class="location">
				<div>企业概况</div>
			</div>
<div class="contentDiv">
	<p class="content_text">
		&nbsp;&nbsp;&nbsp;&nbsp;“疾风快递”品牌创建于2000年，总部位于中原大地的郑州，自成立以来疾风快递始终专注于服务质量的提升，不断满足市场的需求，建立了庞大的市场采集、市场开发、物流配送、快件收派等业务机构及服务网络。</br>
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;目前疾风快递服务客户30万余家，其中世界500强客户100多家，客户群体遍及电子商务、纺织服装、医药化工、高科技IT产业、货代企业、进出口贸易、制造业等多个领域。
	</p>
	<div class="content_images">
	<img src="<%=request.getContextPath() %>/statics/picture/enterprise_introduction_contentimg.png">
	</div>
	<p class="content_text">
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;二十多年来，疾风快递一直秉承“服务大众、奉献社会”的企业宗旨，本着“快速物流、安全抵达、品质服务、追求满意”的企业理念，坚持“诚信、务实、创新”的企业精神，竭诚为客户提供快捷、安全、贴心、可靠的快递服务。
	</p>
</div>
		</div>
		<div style="clear:both"></div>
	</div>
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
							<a href="<%=request.getContextPath()%>/jsp/shengyu/guiding.jsp">禁运品</a>
						</p>
						<p>
							<a href="<%=request.getContextPath()%>/jsp/shengyu/jifei.jsp">计费方式</a>
						</p>

					</li>
					<li class="footerSplitlineLi"><img
						src="<%=request.getContextPath()%>/statics/picture/footersplitline.png"
						width="1px" height="123px"></li>
					<li>
						<p>
							<a href="/staticFile/pages/customerus.html">联系我们</a>
						</p>
						<p>
							<a
								href="/staticFile/pages/ttservice/customerGuide.html?column=clientele">投诉建议</a>
						</p>
						<p>
							<a href="<%=request.getContextPath()%>/jsp/shengyu/fuwu.jsp">疾风服务</a>
						</p>
						<p>
							<a href="<%=request.getContextPath()%>/jsp/shengyu/jiameng.jsp">疾风加盟</a>
						</p>

					</li>
					<li class="footerSplitlineLi"><img
						src="<%=request.getContextPath()%>/statics/picture/footersplitline.png"
						width="1px" height="123px"></li>
					<li>
						<p>
							<a href="<%=request.getContextPath()%>/jsp/kehujsp/kefu.jsp">在线客服</a>
						</p> <!-- <p>
							<a target="_blank"
								onclick="javascript:window.open('http://crm2.qq.com/page/portalpage/wpa.php?uin=4001888888&f=1&ty=1&aty=0&a=&from=6', '_blank', 'height=544, width=644,toolbar=no,scrollbars=no,menubar=no,status=no');return false;">QQ咨询</a>
						</p> --> <!-- <p>
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
