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
									<a href="<%=request.getContextPath()%>/userlogin.jsp">我的疾风</a>
								</h2>
							</li>
						</ul>
					</div>
				</div>
			</div>

		</div>

	</div>

	<div style="clear: both"></div>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<script type="text/javascript" src="../static/js/page.js"></script>
	<div style="text-align: center;">
		<img src="<%=request.getContextPath()%>/statics/picture/ttnews.jpg"
			width="100%" height="300px" />
	</div>
	<script type="text/javascript">
		function QueryUrlParameter() {
			var name, value, i;
			var str = location.href;
			var num = str.indexOf("?")
			str = str.substr(num + 1);
			var arrtmp = str.split("&");
			for (i = 0; i < arrtmp.length; i++) {
				num = arrtmp[i].indexOf("=");
				if (num > 0) {
					name = arrtmp[i].substring(0, num);
					value = arrtmp[i].substr(num + 1);
					this[name] = value;
				}
			}
		}

		jQuery(document).ready(function($) {
			var queryArray = new QueryUrlParameter();
			var param = decodeURIComponent(queryArray['searchStr']);
			if (param != "undefined" && param.length > 0) {
				$(".searchNewsText").val(param);
				searchNews();
			}
		});
	</script>
	<div class="Dmain_about">
		<div class="quick_navigation">
			您现在的位置：<a href="/">首页</a>&nbsp;> 疾风新闻&nbsp;> <a
				href="<%=request.getContextPath()%>/jsp/shengyu/xinwen.jsp">企业新闻
			</a>
		</div>
		<div class="Dmain_about">
			<div class="about_main1">
				<div class="about_left1">
					<p class="bluelinea">&nbsp;&nbsp;疾风新闻</p>
					<ul>
						<li class="active"><a href=""">&nbsp;&nbsp;- 企业新闻</a></li>
						</li>
						<li><a href="">&nbsp;&nbsp;- 行业动态</a></li>
						</li>
						<li><a href="">&nbsp;&nbsp;- 信息公告</a></li>
						</li>
						<li><a href="">&nbsp;&nbsp;- 公益慈善</a></li>
						</li>
					</ul>


					<script type="text/javascript">
						function searchNews() {
							$
									.ajax({
										type : "post",
										url : "/article/baseArticleAction!newsSearch.action",
										data : {
											"searchStr" : $(".searchNewsText")
													.val(),
											"parentUrl" : "enterpriseNews"
										},
										error : function() {
										},
										success : function(data) {
											$("#newlistPage").html(data);
										}
									});
						}
					</script>
				</div>

				<div class="about_right1">
					<div class="location">
						<div>企业新闻</div>
					</div>
					<div id="newlistPage">
						<div class="wlist">
							<li><span><div
										style="width: 700px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis; -o-text-overflow: ellipsis; float: left;">
										<a href="" target="_blank"
											title="天天快递芜湖分公司快递员获省级劳动奖章——“做服务，我们是认真的！”">疾风快递芜湖分公司快递员获省级劳动奖章——“做服务，我们是认真的！”</a>
									</div> <img class="baseArticleIsTop"
									src="<%=request.getContextPath()%>/statics/picture/top-ic.png" />
							</span> <span style="float: right">2018-04-27</span></li>
							<li><span><div
										style="width: 700px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis; -o-text-overflow: ellipsis; float: left;">
										<a href="" target="_blank" title="抓服务、树品牌，天津天天快递召开2018年网络大会">抓服务、树品牌，天津疾风快递召开2018年网络大会</a>
									</div> <img class="baseArticleIsTop"
									src="<%=request.getContextPath()%>/statics/picture/top-ic.png" />
							</span> <span style="float: right">2018-04-27</span></li>
							<li><span><div
										style="width: 700px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis; -o-text-overflow: ellipsis; float: left;">
										<a href="" target="_blank" title="3月快递业“红黑榜”出炉！天天快递申诉率大幅下降">3月快递业“红黑榜”出炉！疾风快递申诉率大幅下降</a>
									</div> <img class="baseArticleIsTop"
									src="<%=request.getContextPath()%>/statics/picture/top-ic.png" />
							</span> <span style="float: right">2018-04-18</span></li>
							<li><span><div
										style="width: 700px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis; -o-text-overflow: ellipsis; float: left;">
										<a href="" target="_blank"
											title="天天快递强势开启2018：15亿服务奖励基金，三年单量破2000万，服务冲刺第一">疾风快递强势开启2018：15亿服务奖励基金，三年单量破2000万，服务冲刺第一</a>
									</div> </span> <span style="float: right">2018-02-05</span></li>
							<li><span><div
										style="width: 700px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis; -o-text-overflow: ellipsis; float: left;">
										<a href="" target="_blank" title="天天快递上海公司大忙时期风采">疾风快递上海公司大忙时期风采</a>
									</div> </span> <span style="float: right">2017-12-15</span></li>
							<li><span><div
										style="width: 700px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis; -o-text-overflow: ellipsis; float: left;">
										<a href="" target="_blank" title="【天天快递的故事】大学生的创业史">【疾风快递的故事】大学生的创业史</a>
									</div> </span> <span style="float: right">2017-12-15</span></li>
							<li><span><div
										style="width: 700px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis; -o-text-overflow: ellipsis; float: left;">
										<a
											href="/staticFile/pages/newList/c7632d2a3839d6da5ef1727e8b4e3ca5.html"
											target="_blank" title="双十二必胜！天天快递淮安分拨严阵以待！">双十二必胜！疾风快递淮安分拨严阵以待！</a>
									</div> </span> <span style="float: right">2017-12-14</span></li>
							<li><span><div
										style="width: 700px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis; -o-text-overflow: ellipsis; float: left;">
										<a
											href="/staticFile/pages/newList/3f3bd9dfc99172899af1fc5e3323420c.html"
											target="_blank" title="新融入，心融入 ——天天快递福州公司苏宁企业文化行活动">新融入，心融入
											——疾风快递福州公司苏宁企业文化行活动</a>
									</div> </span> <span style="float: right">2017-12-14</span></li>
							<li><span><div
										style="width: 700px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis; -o-text-overflow: ellipsis; float: left;">
										<a href="" target="_blank" title="【天天快递的故事】儿子，爸爸想给你更好的生活">【疾风快递的故事】儿子，爸爸想给你更好的生活</a>
									</div> </span> <span style="float: right">2017-11-23</span></li>
							<li><span><div
										style="width: 700px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis; -o-text-overflow: ellipsis; float: left;">
										<a href="" target="_blank" title="【天天快递的故事】身残志坚的快递员">【疾风快递的故事】身残志坚的快递员</a>
									</div> </span> <span style="float: right">2017-11-22</span></li>
							<li><span><div
										style="width: 700px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis; -o-text-overflow: ellipsis; float: left;">
										<a href="" target="_blank" title="【天天快递的故事】爱就是天天相伴">【疾风快递的故事】爱就是天天相伴</a>
									</div> </span> <span style="float: right">2017-11-22</span></li>
							<li><span><div
										style="width: 700px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis; -o-text-overflow: ellipsis; float: left;">
										<a href="" target="_blank" title="【天天快递的故事】伤病也打败不了我们送件的激情">【疾风快递的故事】伤病也打败不了我们送件的激情</a>
									</div> </span> <span style="float: right">2017-11-20</span></li>
							<li><span><div
										style="width: 700px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis; -o-text-overflow: ellipsis; float: left;">
										<a href="" target="_blank" title="【天天快递的故事】平凡的感动">【疾风快递的故事】平凡的感动</a>
									</div> </span> <span style="float: right">2017-11-20</span></li>
							<li><span><div
										style="width: 700px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis; -o-text-overflow: ellipsis; float: left;">
										<a href="" target="_blank" title="陕西省快递协会慰问天天快递西安公司">陕西省快递协会慰问疾风快递西安公司</a>
									</div> </span> <span style="float: right">2017-11-20</span></li>
							<li><span><div
										style="width: 700px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis; -o-text-overflow: ellipsis; float: left;">
										<a href="" target="_blank" title="临海分拨齐心协力保运营 奋力拼搏战高峰">临海分拨齐心协力保运营
											奋力拼搏战高峰</a>
									</div> </span> <span style="float: right">2017-11-15</span></li>
							<li><span><div
										style="width: 700px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis; -o-text-overflow: ellipsis; float: left;">
										<a
											href="/staticFile/pages/newList/8fa997bbcc983c7024863184eca8e398.html"
											target="_blank" title="奋战双十一！那些感动你我的天天快递一线员工">奋战双十一！那些感动你我的疾风快递一线员工</a>
									</div> </span> <span style="float: right">2017-11-15</span></li>
						</div>
						<div class="pagin">
							<form method='post' id='pageUtilForm'>
								<div class="page1">
									<a href="#">首页</a> <a class="current" style="color: #fff;"
										href='#'
										onclick="turnPage('/article/baseArticleAction!newsPage.action?page=' ,'/article/baseArticleAction!newsPage.action?ids=4692&statusValue=1&page=', 1);return false;">1</a>
									<a href='#'
										onclick="turnPage('/article/baseArticleAction!newsPage.action?page=' ,'/article/baseArticleAction!newsPage.action?ids=4692&statusValue=1&page=', 2);return false;">2</a>
									<a href='#'
										onclick="turnPage('/article/baseArticleAction!newsPage.action?page=' ,'/article/baseArticleAction!newsPage.action?ids=4692&statusValue=1&page=', 3);return false;">3</a>
									<a href='#'
										onclick="turnPage('/article/baseArticleAction!newsPage.action?page=' ,'/article/baseArticleAction!newsPage.action?ids=4692&statusValue=1&page=', 4);return false;">4</a>
									<a href='#'
										onclick="turnPage('/article/baseArticleAction!newsPage.action?page=' ,'/article/baseArticleAction!newsPage.action?ids=4692&statusValue=1&page=', 5);return false;">5</a>
									<a href='#'
										onclick="turnPage('/article/baseArticleAction!newsPage.action?page=' ,'/article/baseArticleAction!newsPage.action?ids=4692&statusValue=1&page=', 6);return false;">6</a>
									<a href='#'
										onclick="turnPage('/article/baseArticleAction!newsPage.action?page=' ,'/article/baseArticleAction!newsPage.action?ids=4692&statusValue=1&page=', 7);return false;">7</a>
									<a href='#'
										onclick="turnPage('/article/baseArticleAction!newsPage.action?page=' ,'/article/baseArticleAction!newsPage.action?ids=4692&statusValue=1&page=', 2);return false;">下一页</a>
									<a href='#'
										onclick="turnPage('/article/baseArticleAction!newsPage.action?page=' ,'/article/baseArticleAction!newsPage.action?ids=4692&statusValue=1&page=', 62);return false;">尾页</a>
									<input type="hidden" name="curPage" id="curPage" value="1" /><input
										type="hidden" name="Parameter" id="Parameter"
										value="?ids=4692&statusValue=1&page=" /><input type="hidden"
										name="ids" id="ids" value="4692" /> <input type="hidden"
										name="statusValue" id="statusValue" value="1" />
								</div>
							</form>
							<input type="hidden" id="parentUrl" value="enterpriseNews" />
						</div>
					</div>
				</div>
				<div style="clear: both"></div>
			</div>
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
