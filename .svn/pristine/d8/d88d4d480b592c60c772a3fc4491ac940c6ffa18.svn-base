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
		<img src="<%=request.getContextPath() %>/statics/picture/ttjoin.jpg" width="100%" height="300px" />
</div>
<div class="Dmain_about">
	<div class="quick_navigation">
		您现在的位置：<a href="/">首页</a>&nbsp;>疾风加盟&nbsp;> <a
						href="<%=request.getContextPath()%>/jsp/shengyu/jiameng.jsp">加盟须知
						</a>
	</div>
	<div class="about_main1">
		<div class="about_left1" id="about_left1">
			<p class="bluelinea">&nbsp;&nbsp;疾风加盟</p>
			<ul>
						<li class="active">
							<a href="/staticFile/pages/ttjoin/joinNotes.html">&nbsp;&nbsp;-
								加盟须知</a></li>
						<li><a
							href="/staticFile/pages/ttjoin/joiningProcess.html">&nbsp;&nbsp;-
								加盟流程</a></li>
						<li><a
							href="/staticFile/pages/ttjoin/joiningHotline.html">&nbsp;&nbsp;-
								加盟热线</a></li>
						<li><a
							href="/staticFile/pages/ttjoin/joiningMerchants.html">&nbsp;&nbsp;-
								招商区域</a></li>
			</ul>
		</div>
		
		<div class="about_right1" id="about_right1">
			<div class="location">
				<div>加盟须知</div>
			</div>
<div class="contentDiv">
	<div class="contentDiv_xin">
		<p class="requirement">一、加盟商加盟要求</p>
        <div class="tj_box">
        	<ul>
            	<li class="tj_box_margin1"><div>企业法定代表人须有初中及以上文化程度，有2年以上经营管理经验者优先，有团队合作精神，有责任心。</div></li>
                <li class="tj_box_margin2"><div>依法注册公司，经营范围应有快递服务项目，办理《快递经营许可证》<br>注册资金：省会城市100万元地级城市以下50万元。</div></li>
                <li class="tj_box_margin3"><div>经营过程中需备足流动资金流动资金：省会城市50万元地级城市30万元，县级城市15万。</div></li>
            </ul>
        </div>
        <p class="requirement1">二、加盟商应提交的资料及要求</p>
        <div class="tjd1"><div>加盟商需提交：《身份证复印件》、《加盟商申请简历表》、《派送范围》、《企业法人营业执照》、《税务登记证》
《组织机构代码证》、《道路运输许可证》、《快递业务经营许可证》、《房屋租赁协议》(必须注明租金、期限、房屋面积
房屋地址、双方签字)《市场调研报告及运营、投资计划》、《风险措施解决方案》《交接信息》<br>（注：身份证复印件和个人简历必须提供企业法人与职业经理人的，简历填写必须详细）</div></div>
        <div class="tjd2"><div>营业执照的注册资金必须为50万，经营范围必须有快递、速递、寄递等项目。投资计划：机动车辆配置与金额；人员配置与具体人员薪资；通讯设备周转资金具体金额。</div></div>
        <p class="requirement1">三、加盟商开业前培训内容</p>
        <div class="pxnr">
        	<ul>
            	<li class="pxnr_box1"><div>企业历史简介以及政策解读</div></li>
                <li class="pxnr_jia">+</li>
                <li class="pxnr_box2"><div>快递运作流程<br>信息部系统操作</div></li>
                <li class="pxnr_jia">+</li>
                <li class="pxnr_box3"><div>查询系统的操作<br>及语言标准化</div></li>
                <li class="pxnr_jia">+</li>
                <li class="pxnr_box4"><div>仲裁系统的操作<br>及经典案例的讲解</div></li>
                <li class="pxnr_jia">+</li>
                <li class="pxnr_box5"><div>财务结算系统的操作<br>
及结算制度(操作实务)</div></li>
            </ul>
        </div>
        <p class="requirement1">四、开业前审核标准</p>
        <div class="shbz">
        	<ul>
            	<li>1、全体员工必须着工装(穿带有“疾风快递”标识的工作服)。</li>
                <li>2、加盟商必须有一线派送车辆和中转车辆，车辆必须带有“疾风快递”标识。</li>
                <li>3、门面必须由总部统一设计(字体、颜色、图案等)，门边必须有“疾风快递”字样。</li>
                <li>4、办公设备齐全(电脑、传真、电话、复印机、桌、椅等)。</li>
                <li>5、在办公场所适当的位置装订财务、客服、仓管、快递员相关规章制度及业务操作规范。</li>
            </ul>
        </div>
        <p class="requirement1">五、开业公告</p>
        <div class="shbz">
        	<ul>
            	<li>1、审核通过后，加盟商做好开业准备报总部发布开业公告。</li>
                <li>2、总部以OA公告和业务通告的形式向全网宣布开业。</li>
            </ul>
        </div>
       	<p class="djxz">加盟商需要提交的资料(点击可下载)</p>
        <div class="dj">
        	<ul>
            	<li><a href="#">1、加盟商应提交材料明细表</a></li>
                <li><a href="#">2、疾风快递加盟商申请简历表</a></li>
                <li><a href="#">3、派送范围申报表</a></li>
                <li><a href="#">4、市场调查报告及运营计划</a></li>
                <li><a href="#">5、风险措施解决方案</a></li>
            </ul>
        </div>
		<div style="clear:both"></div>
    </div>
</div>		</div>
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
