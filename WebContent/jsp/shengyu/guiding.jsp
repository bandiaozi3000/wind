<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>疾风快递-疾风快递有限公司首页</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="keywords" content="疾风快递,疾风快递有限公司" />
<meta name="description" content="疾风快递,疾风快递有限公司" />
<link href="<%=request.getContextPath()%>/statics/css/public.css"
	rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/statics/css/style.css"
	rel="stylesheet" type="text/css" />
<link href="<%=request.getContextPath()%>/statics/css/mystyle.css"
	rel="stylesheet" type="text/css" />
<!--  <script type="text/javascript" src="../static/js/jquery.1.9.1.js"></script> -->
<!-- <script type="text/javascript" src="../static/js/jquery1.42.min.js"></script> -->
<script type="text/javascript"
	src="<%=request.getContextPath()%>/statics/js/jquery.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/statics/js/jquery.superslide.2.1.1_2.js"></script>
<!-- <script type="text/javascript" src="../static/js/jquery.slidebox.min.js"></script> -->
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

</head>
<body>
	<div class="Dtop1">
		<div class="top1">
			<div class="top_L">
				<a onclick="addFavorite();">加入收藏</a> <a href="">联系我们</a>
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
									<a href="<%=request.getContextPath()%>/index.jsp">&nbsp;&nbsp;&nbsp;首页&nbsp;&nbsp;&nbsp;</a>
								</h2>
							</li>
							<li class="" _t_nav="intoTTKExpress1">
								<h2>
									<a
										href="<%=request.getContextPath()%>/jsp/kehujsp/kuaijian.jsp">客户服务</a>
								</h2>
							</li>
							<li class="" _t_nav="intoTTKExpress">
								<h2>
									<a
										href="<%=request.getContextPath()%>/jsp/shengyu/zoujin1.jsp">走进疾风</a>
								</h2>
							</li>
							<li class="" _t_nav="ttnews">
								<h2>
									<a href="<%=request.getContextPath()%>/jsp/shengyu/xinwen.jsp">疾风新闻</a>
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
	<img src="<%=request.getContextPath()%>/statics/picture/ttservice.jpg" width="100%" height="300px" />
</div>
<div class="Dmain_about">
	<div class="quick_navigation">
			您现在的位置：<a href="/">首页</a>&nbsp;疾风服务</a>&nbsp;>
			<a href="<%=request.getContextPath()%>/jsp/shengyu/guiding.jsp">禁忌规定
			</a>
		</div>
	<div class="about_main1">
		<div class="about_left1" id="about_left1">
			<p class="bluelinea">&nbsp;&nbsp;疾风服务</p>
			<ul>
					<li><a
						href="<%=request.getContextPath()%>/jsp/shengyu/fuwu.jsp">&nbsp;&nbsp;-
							快递服务</a></li>
					<li class="active"><a
						href="<%=request.getContextPath()%>/jsp/shengyu/guiding.jsp">&nbsp;&nbsp;-
							禁忌规定</a></li>
					<li><a
						href="<%=request.getContextPath()%>/jsp/shengyu/jifei.jsp">&nbsp;&nbsp;-
							计费方式</a></li>
					
				</ul>
		</div>
		
		<div class="about_right1" id="about_right1">
			<div class="location">
				<div>禁忌规定</div>
			</div>
<script type="text/javascript" src="../static/js/jquery-form_1.js"></script>
<link rel="stylesheet" type="text/css" href="../static/css/sweet-alert_1.css">
<script type="text/javascript" src="../static/js/sweet-alert_1.js"></script>
<script type="text/javascript" src="../static/js/gt_1.js"></script>
<div class="contentDiv">
	<script type="text/javascript">
		function QueryUrlParameter()
		{
		    var name,value,i;
		    var str=location.href;
		    var num=str.indexOf("?")
		    str=str.substr(num+1);
		    var arrtmp=str.split("&");
		    for(i=0;i < arrtmp.length;i++)
		    {
		        num=arrtmp[i].indexOf("=");
		        if(num>0)
		        {
		            name=arrtmp[i].substring(0,num);
		            value=arrtmp[i].substr(num+1);
		            this[name]=value;
		        }
		    }
		} 
		$(function(){
			 var query=new QueryUrlParameter();
			 if(query['column']){
			     $("#"+query['column']).addClass("customerGuide_tabdiv_li");
			 	 $("#sendPiece").removeClass("customerGuide_tabdiv_li");
			 }
		});
	</script>
	
	<div class="customerGuide_tabContentdiv">
		 <!-- 计费方式 -->
		<!-- <div class="customerGuide_tabContent" style="display: none;">
			<ul class="customerGuide_tabContent_ul">
				<li>
					普通快件：首重+续重  （首重及续重以寄件所在地公司的标准为依据）
				</li>
				<li>
					轻抛货物定义：体积重量大于实际重量的货物为轻抛货物
				</li>
				<li>
					体积重量计算标准：长(cm)×宽(cm)×高(cm)÷6000=体积重量(kg)；不规则货物的长、宽高去货物的三边最大值计算
				</li>
			</ul>
		</div>  -->
		
		<!-- 禁忌规定 -->
		<div class="customerGuide_tabContent">
			<p class="content_text">禁寄物品是指国家法律、法规禁止寄递的物品，主要包括以下：</p>
			<ul class="customerGuide_tabContent_ul">
				<li>
					各类武器、弹药，如枪支、弹药、炮弹、手榴弹、地雷、炸弹等。
				</li>
				<li>
					各类以爆炸性物品，如雷管、炸药、鞭炮等。
				</li>
				<li>
					各类易燃烧性物品、包括液体、气体和固体，如汽油 、煤油、桐油、酒精、生漆、柴油、气雾剂、气体打
					火机、瓦斯气瓶、硫、硫磺、火柴等。 
				</li>
				<li>
					各类易腐蚀性物品，如火硫酸、盐酸、有机溶剂、农药、双氧水、危险化学品等。
				</li>
				<li>
					各类放射性元素及容器，如铀、钴、锡、钚等；各类烈性元素及容器，如铊、氯化物、砒霜等。
				</li>
				<li>
					各类麻醉药物，如鸦片(包括罂粟壳、花、苞、叶)、吗啡、可卡因、海洛因、大麻、麻黄素及其它制品等。
				</li>
				<li>
					各类化制品和传染性物品，如炭疽、危险性病菌、医药用废物等。
				</li>
				<li>
					各类危害国家安全和社会政治稳定以及淫秽的出版物、宣传品、印刷品等。
				</li>
				<li>
					各种妨害公共卫生的物品，如尸骨、动物器官、肢体、未经硝制的兽皮、未经药制的兽骨等。
				</li>
				<li>
					国家法律、法规、行政规章明令禁止流通、寄递或进出境的物品，如国家秘密文件和资料、国家货币及伪造
					的货币和有价证券、仿真武器、管制刀具、珍贵文物、病危野生动物及其制品等。
				</li>
				<li>
					包装不妥，可能危害人身安全、污染或者损毁其他寄递件、设备的物品等。
				</li>
				<li>
					各寄达过(地区)禁止寄递进口的物品等，其他禁止寄递的物品。
				</li>
			</ul>
			<p class="content_text">寄递服务企业对禁寄物品处理办法：</p>
			<ul class="customerGuide_tabContent_ul">
				<li>
					企业发现各类武器、弹药等物品，应立即通知公安部门处理、疏散人员、维护现场。同时通报国家安全机关
					企业发现各类放射性物品、生化制品、麻醉药物、传染性物品和烈性毒药，应立即通知防化及公安部门按应
					急预案处理。同时通报国家安全机关。
				</li>
				<li>
					企业发现各类易燃易爆等危险物品，收寄环节发现的不予收寄；经转环节发现的，应停止转发；投递环节发
					现的，不予投递。对危险品要隔离存放，对其中易发生危害的危险品，应通知公安部门，同时通报国家安全
					机关，采取措施进行销毁。需要清除污染的，应报请卫生防疫部门处理。其他危险品，可通知寄件人限期领
					回。对内件中其他非危险品，应当整理重封，随时证明发寄或通知收件人到投递环节领取。
				</li>
				<li>
					企业发现各种危害国家安全和社会政治稳定以及淫秽的出版物、宣传品、印刷品、应及时通知公安、国家安
					全和新闻出版部门处理。
				</li>
				<li>
					企业发现妨害公共卫生的物品和容易腐烂的物品，应视情况通知寄件人限期领回，无法通知寄件人领回的可
					就地销毁。
				</li>
				<li>
					企业发现包装不妥，可能危害人身安全，污染或损毁其他寄递物品和设备的，收寄环节发现后，应通知寄件
					人限期领回。经转或投递中发现的，应根据情况妥善处理。
				</li>
				<li>
					企业发现禁止进出境的物品，应移交海关处理，其他情形，可通知相关政府监督部门处理。
				</li>
			</ul>
		</div>
		
	</div>
	<p class="content_title">常见问题</p>
	<p class="content_question_title">我要寄件，该如何处理？</p>
	<p class="content_question_text">
		方式一：请您拨打您所在地取件公司的电话，提供寄递物品的品名、重量、取件地址、取件人、取件人联系方式等相关取件信息，我们会安排业务员上门取件。</br>
		方式二：如果您是电商客户，可选择在线下单。
	</p>
	<p class="content_question_title">如何在淘宝网上下订单？</p>
	<p class="content_question_text">
		1、进入淘宝网后，点击"我的淘宝"进入下一个界面；点"交易管理"—"我有货物要运输";</br>
		2、根据界面提示内容，填写详细资料后，点击"保存信息" </br>
		3、点击后，会有诸多物流公司供卖家选择，您只要在选择的物流公司后点击"选即可；</br>
		4、点击"选择"后，客户无需输入"运单号",直接点击"确定"即可，如有运单号码，直接填入。</br>
		5、确定后进入完成界面。
	</p>
	<p class="content_question_title">如何查询快件的寄递范围？</p>
	<p class="content_question_text">
		国家法律法规禁止寄递的物品不在我司的寄递范围内，详细禁寄品内容请您登录疾风快递网站<a href="http://www.ttkdex.com" class="homePageLink">www.ttkdex.com</a>，选择"客户指南"菜单，点击"禁忌规定"，即出现"禁寄物品指导目录"，里面详细记录禁寄物品的品种。
	</p>
	<p class="content_question_title">如何查询所在地取件公司的相关联系方式及派送范围？</p>
	<p class="content_question_text">
		请您登录疾风快递网站<a href="http://www.ttkdex.com" class="homePageLink">www.ttkdex.com</a></br> 
		方式一：选择"网点分布"菜单进入，点击"网点分布"，进到疾风快递全网分布图点击您所在省份，进入到省份各网点，查找您所在的网点，点击进入，即显示当地公司的相关服务电话及派送范围。</br> 
		方式二：选择"网点分布"菜单进入，点击"网点查询"，输入您需要的省份，城市，路段关键字即显示网点相关联系方式及派送范围。
	</p>
	<p class="content_question_title">快件时效是怎样的？</p>
	<p class="content_question_text">
		正常情况下：同城件24小时，异地件24-72小时（不含偏远地区）。
	</p>
</div>
<script type="text/javascript">

$(function(){
	$(".customerGuide_tabdiv ul li").click(function(){
		$(this).addClass("customerGuide_tabdiv_li").siblings().removeClass("customerGuide_tabdiv_li")
		var weizhi=$(this).index();
		$(".customerGuide_tabContentdiv .customerGuide_tabContent").eq(weizhi).stop().fadeIn().siblings(".customerGuide_tabContent").stop().hide()
		})
	})
</script>
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
