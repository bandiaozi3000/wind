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
<!--  <script type="text/javascript" src="../static/js/jquery.1.9.1.js"></script>
 <script type="text/javascript" src="../static/js/jquery1.42.min.js"></script>  -->
<script type="text/javascript"
	src="<%=request.getContextPath()%>/statics/js/jquery.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/statics/js/jquery.superslide.2.1.1_2.js"></script>
<!--  <script type="text/javascript" src="../static/js/jquery.slidebox.min.js"></script>  -->
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
<style>
#search {
	background-color: #0055A2;
	color: #fff;
}
</style>
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
						<a href="<%=request.getContextPath() %>/user/logOut.do">退出</a>
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
									<a href="<%=request.getContextPath() %>/pd.do">我的疾风</a>
								</h2>
							</li>
						</ul>
					</div>
				</div>
			</div>

		</div>

	</div>

	<div style="clear: both"></div>


	<script type="text/javascript"
		src="<%=request.getContextPath() %>/statics/js/jquery.slidebox.min.js"></script>
	<link rel="stylesheet" type="text/css"
		href="<%=request.getContextPath()%>/statics/css/sitenoticesendwindow.css">
	<script type="text/javascript">
		function getNowFormatDate() {
			var date = new Date();
			var seperator1 = "-";
			var seperator2 = ":";
			var month = date.getMonth() + 1;
			var strDate = date.getDate();
			if (month >= 1 && month <= 9) {
				month = "0" + month;
			}
			if (strDate >= 0 && strDate <= 9) {
				strDate = "0" + strDate;
			}
			var currentdate = date.getFullYear() + seperator1 + month
					+ seperator1 + strDate + " " + date.getHours() + seperator2
					+ date.getMinutes() + seperator2 + date.getSeconds();
			return currentdate;
		}
		function compareTime(startTime, endTime, userTime) {
			var startTimes = startTime.substring(0, 10).split('-');
			var endTimes = endTime.substring(0, 10).split('-');
			var userTimes = userTime.substring(0, 10).split('-');
			startTime = startTimes[1] + '-' + startTimes[2] + '-'
					+ startTimes[0] + ' ' + startTime.substring(10, 19);
			endTime = endTimes[1] + '-' + endTimes[2] + '-' + endTimes[0] + ' '
					+ endTime.substring(10, 19);
			userTime = userTimes[1] + '-' + userTimes[2] + '-' + userTimes[0]
					+ ' ' + userTime.substring(10, 19);
			var thisResult01 = (Date.parse(userTime) - Date.parse(startTime)) / 3600 / 1000;
			var thisResult02 = (Date.parse(userTime) - Date.parse(endTime)) / 3600 / 1000;
			if (thisResult01 >= 0 && thisResult02 <= 0) {
				$(".theme_popover").fadeIn(100);
				$(".popover_box").slideDown(200);
			}
		}

		var startTime = "";
		var endTime = "";
		$(document).ready(function() {
			var todayTime = getNowFormatDate();
			if (startTime != "" && endTime != "") {
				compareTime(startTime, endTime, todayTime)
			}

			$(".popover_text a").click(function() {
				$(".popover_box").slideUp(200);
				$(".theme_popover").fadeOut(100);
			})
		});
	</script>

	<div class="theme_popover"></div>
	<div class="popover_box">
		<div class="popover_text">
			<span id="titlesite"></span>
			<p id="siteConten"></p>
			<font><box id="depsite"></box><br> <box id="timersite"></box></font>
			<a href="javascript:;"></a>
		</div>
	</div>
	<div class="fullSlide" style="position: relative;">
		<div class="bd">
			<ul>

				<img src="<%=request.getContextPath() %>/statics/picture/Q.jpg"
					style="height: 600px; margin: 0 auto; z-index: 0; overflow: hidden" />
				<img src="<%=request.getContextPath() %>/statics/picture/N.jpg"
					style="height: 600px; margin: 0 auto; z-index: 0; overflow: hidden" />

			</ul>
		</div>
		<span class="prev"></span> <span class="next"></span>
	</div>
	<script type="text/javascript">
		$(".fullSlide").hover(function() {
			$(this).find(".prev,.next").stop(true, true).fadeTo("show", 0.5)
		}, function() {
			$(this).find(".prev,.next").fadeOut()
		});
		$(".fullSlide").slide(
				{
					titCell : ".hd ul",
					mainCell : ".bd ul",
					effect : "fold",
					autoPlay : true,
					autoPage : true,
					trigger : "click",
					interTime : "8000",
					startFun : function(i) {
						var curLi = jQuery(".fullSlide .bd li").eq(i);
						if (!!curLi.attr("_src")) {
							curLi.css("background-image", curLi.attr("_src"))
									.removeAttr("_src")
						}
					}
				});

		jQuery(function($) {
			$('#demo1').slideBox({
				duration : 0.3,//滚动持续时间，单位：秒
				easing : 'linear',//swing,linear//滚动特效
				delay : 5,//滚动延迟时间，单位：秒
				hideClickBar : false,//不自动隐藏点选按键
				clickBarRadius : 10
			})
		});
		// 新闻tab页
		$(function() {
			$(".ttnews_tabdiv ul li").click(
					function() {
						$(this).addClass("ttnews_tabdiv_li").siblings()
								.removeClass("ttnews_tabdiv_li")
						var weizhi = $(this).index();
						$(".ttnews_tabContentdiv .ttnews_tabContent")
								.eq(weizhi).stop().fadeIn().siblings(
										".ttnews_tabContent").stop().hide()
					})
		});
		// 快件查询
 		function search() {
			var verificationCodeValue = document
					.getElementById("verificationCode").value;
			var orderId = document.getElementById("orderId").value;
			if (orderId != "") {
				if (verificationCodeValue == "") {
					sweetAlert("", "请输入验证码。", "info");
				} else {
					$
							.ajax({
								type : "post",
								data : {
									"verificationCode" : verificationCodeValue
								},
								url : "/verificationCodeAction!validataVerificationCode.action",
								success : function(data, textStatus) {
									if (data == "0") {
										window.location.href = '/Track.action?no='
												+ ReplaceSeperator(orderId)
												+ '&verificationCode='
												+ verificationCodeValue;
									} else {
										sweetAlert("", "验证码错误，请核实后重新输入。",
												"info");
										var timenow = new Date().getTime();
										document
												.getElementById("verificationCodeImg").src = "/verificationCodeAction!getRandomPictrue.action?d="
												+ timenow;
									}
								},
							});//验证码   获得
				}
			} else {
				window.location.href = '/Track.action';
			}
		}

		function ReplaceSeperator(mobiles) {
			var i;
			var result = "";
			var c;
			for (i = 0; i < mobiles.length; i++) {
				c = mobiles.substr(i, 1);
				if (c == ";" || c == "," || c == "，" || c == "\n")
					result = result + ",";
				else if (c != "\r")
					result = result + c;
			}
			return result;
		}
		function expressQuery() {
			$('#verificationCodeImg').click();
			document.getElementById("serviceMenu_status").style.display = "none";
			document.getElementById("serviceMenu_trace").style.display = "block";
			document.getElementById("orderId").focus();
		}

		// 单击验证码图片切换验证码
		function changeValidateCode(obj) {
			var timenow = new Date().getTime();
			obj.src = "/verificationCodeAction!getRandomPictrue.action?d="
					+ timenow;
		} 
	</script>
	<div class="bigbox">
		<table class="firstMainOneTB">
			<tr>
				<td colspan="3" class="firstMainMenu"><br />
					<p>客户服务</p>
					<p class="mainMenuEn">customer service</p></td>
			</tr>
			<tr>
				<td class="firstMenuOne">
					<ul>
						<li class="serviceMenuLi">
							<div onclick="expressQuery()" id="serviceMenu_status"
								class="serviceMenu_status">
								<img class="menulogo"
									src="<%=request.getContextPath()%>/statics/picture/onlineorder_blue.png">
								<p class="serviceMenutitle">快件查询</p>
								<p class="serviceMenucontent">快速查询订单详情方便快捷</p>
								<img
									src="<%=request.getContextPath()%>/statics/picture/frist_kjcx_input.png"
									onclick="expressQuery()" style="cursor: hand;" width="254px"
									height="42px">
							</div>
							<div id="serviceMenu_trace" class="serviceMenu_trace">
								<p>快件查询</p>
								<form
									action="<%=request.getContextPath()%>/transInfo/clientList.do"
									method="post">
									<textarea id="orderId" name="orderId" rows="4"></textarea>
									<input id="search" type="submit" value="查询" />
								</form>

							</div>
						</li>

						<li class="serviceMenuLi_block" id="serviceMenuLiOne"
							style="margin-left: 17px;"><a
							href="<%=request.getContextPath()%>/jsp/kehujsp/zaixian.jsp">
								<img class="menulogo"
								src="<%=request.getContextPath()%>/statics/picture/frist_zxjj.png">
								<p class="serviceMenutitle">在线寄件</p>
								<p class="serviceMenucontent">
									客户寄件流程<br> 注意事项寄件方便快捷
								</p>
						</a></li>
						<li class="serviceMenuLi_block" id="serviceMenuLiTwo"
							style="margin-left: 17px;"><a
							href="<%=request.getContextPath()%>/jsp/kehujsp/quanguo.jsp">
								<img class="menulogo"
								src="<%=request.getContextPath()%>/statics/picture/frist_wdcx.png">
								<p class="serviceMenutitle">网点查询</p>
								<p class="serviceMenucontent">
									全国网点分布查询<br> 根据加盟须知了解具体详情<br> 方便双方签订了解和熟悉
								</p>
						</a></li>
						<li class="serviceMenuLi_block" id="serviceMenuLiThree"
							style="margin-left: 17px;"><a
							href="<%=request.getContextPath()%>/jsp/kehujsp/kefu.jsp"> <img
								class="menulogo"
								src="<%=request.getContextPath()%>/statics/picture/frist_zxkf.png">
								<p class="serviceMenutitle">在线客服</p>
								<p class="serviceMenucontent">
									直接联系QQ或者旺旺客服<br> 或者拨打我们全国统一客服热线<br> 4001-888-888
								</p>
						</a></li>
					</ul>
				</td>
			</tr>
		</table>
		
	</div>
	<script type="text/javascript">
		$(document)
				.ready(
						function() {
							$(".serviceMenuLi_block")
									.mouseover(
											function() {
												$(this).find("a p").css(
														"color", "#fff");
												if ($(this)[0].id == "serviceMenuLiOne") {
													$(this)
															.find("img")
															.attr('src',
																	"statics/picture/frist_zxjj1.png");
												}
												if ($(this)[0].id == "serviceMenuLiTwo") {
													$(this)
															.find("img")
															.attr('src',
																	"statics/picture/frist_wdcx1.png");
												}
												if ($(this)[0].id == "serviceMenuLiThree") {
													$(this)
															.find("img")
															.attr('src',
																	"statics/picture/frist_zxkf1.png");
												}
											});
							$(".serviceMenuLi_block")
									.mouseout(
											function() {
												$(this)
														.find(
																"a .serviceMenutitle")
														.css("color", "#0C5BA4");
												$(this)
														.find(
																"a .serviceMenucontent")
														.css("color", "#808080");
												if ($(this)[0].id == "serviceMenuLiOne") {
													$(this)
															.find("img")
															.attr('src',
																	"statics/picture/frist_zxjj.png");
												}
												if ($(this)[0].id == "serviceMenuLiTwo") {
													$(this)
															.find("img")
															.attr('src',
																	"statics/picture/frist_wdcx.png");
												}
												if ($(this)[0].id == "serviceMenuLiThree") {
													$(this)
															.find("img")
															.attr('src',
																	"statics/picture/frist_zxkf.png");
												}
											});
						});
	</script>
	<div class="firstNewsMenuDIV">
		<center>
			<table class="firstNewsTable">
				<tr>
					<td class="newsPictureScroll_td" style="">
						<div id="demo1" class="slideBox">
							<ul class="items">
								<li><a href="#"><img
										src="<%=request.getContextPath()%>/statics/picture/20171023112912-1322840172.jpg"></a></li>
								<li><a href=""><img
										src="<%=request.getContextPath()%>/statics/picture/20170318084406-389537758.jpg"></a></li>
								<li><a href="#"><img
										src="<%=request.getContextPath()%>/statics/picture/201709011014491802947699.jpg"></a></li>
								<li><a href="http://"><img
										src="<%=request.getContextPath()%>/statics/picture/20171211095542-577049775.jpg"></a></li>
							</ul>
						</div>
					</td>
					<td class="newListTab_td">
						<div class="ttnewscontentDiv">
							<div class="ttnews_tabdiv">
								<ul>
									<li class="ttnews_tabdiv_li">企业新闻</li>
									<li>行业动态</li>
									<li>信息公告</li>
								</ul>
								<div class="ttnews_tab_moreMenu">
									<span>+</span> <a
										href="/staticFile/pages/ttnews/enterpriseNews.html">更多</a>
								</div>
							</div>
							<div class="ttnews_tabContentdiv">
								<!-- 企业新闻 -->
								<div class="ttnews_tabContent">
									<table class="newlistContent">
										<tr>
											<td style="text-align: left;"><a href=""><div
														style="width: 600px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis; -o-text-overflow: ellipsis;">疾风快递，因你们而精彩！</div></a></td>
											<td style="text-align: right;">2018-07-13</td>
										</tr>
									</table>
									<table class="newlistContent">
										<tr>
											<td style="text-align: left;"><a href="" title=""><div
														style="width: 600px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis; -o-text-overflow: ellipsis;">疾风快递郑州分公司快递员获省级劳动奖章——“做服务，我们是认真的！”</div></a></td>
											<td style="text-align: right;">2018-04-27</td>
										</tr>
									</table>
									<table class="newlistContent">
										<tr>
											<td style="text-align: left;"><a href=""><div
														style="width: 600px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis; -o-text-overflow: ellipsis;">抓服务、树品牌，郑州疾风快递召开2018年网络大会</div></a></td>
											<td style="text-align: right;">2018-04-27</td>
										</tr>
									</table>
									<table class="newlistContent">
										<tr>
											<td style="text-align: left;"><a href=""><div
														style="width: 600px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis; -o-text-overflow: ellipsis;">3月快递业“红黑榜”出炉！疾风快递申诉率大幅下降</div></a></td>
											<td style="text-align: right;">2018-04-18</td>
										</tr>
									</table>
									<table class="newlistContent">
										<tr>
											<td style="text-align: left;"><a href=""><div
														style="width: 600px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis; -o-text-overflow: ellipsis;">疾风快递强势开启2018：15亿服务奖励基金，三年单量破2000万，服务冲刺第一</div></a></td>
											<td style="text-align: right;">2018-02-05</td>
										</tr>
									</table>
									<table class="newlistContent">
										<tr>
											<td style="text-align: left;"><a href=""><div
														style="width: 600px; overflow: hidden; white-space: nowrap; text-overflow: ellipsis; -o-text-overflow: ellipsis;">疾风快递西安公司大忙时期风采</div></a></td>
											<td style="text-align: right;">2017-12-15</td>
										</tr>
									</table>
								</div>
								<!-- 行业动态 -->
								<div class="ttnews_tabContent" style="display: none;">
									<table class="newlistContent">
										<tr>
											<td style="text-align: left;"><a href="">中央一号文第15次提及邮政、快递
													国家级利好行业政策密集发布</a></td>
											<td style="text-align: right;">2018-02-05</td>
										</tr>
									</table>
									<table class="newlistContent">
										<tr>
											<td style="text-align: left;"><a href="">国家邮政局下发紧急通知，要求牢固树立红线意识进一步做好安全生产工作</a></td>
											<td style="text-align: right;">2017-09-27</td>
										</tr>
									</table>
									<table class="newlistContent">
										<tr>
											<td style="text-align: left;"><a href="">国家邮政局出台指导意见
													持续推进邮政业安全生产领域改革发展</a></td>
											<td style="text-align: right;">2017-08-22</td>
										</tr>
									</table>
									<table class="newlistContent">
										<tr>
											<td style="text-align: left;"><a href="">国家邮政局党组召开会议
													审议通过推进邮政业安全生产领域改革发展指导意见</a></td>
											<td style="text-align: right;">2017-07-25</td>
										</tr>
									</table>
									<table class="newlistContent">
										<tr>
											<td style="text-align: left;"><a href="">浙江局联合省农办下发推进快递服务“三农”工作实施意见</a></td>
											<td style="text-align: right;">2017-07-25</td>
										</tr>
									</table>
									<table class="newlistContent">
										<tr>
											<td style="text-align: left;"><a href="">对快递等新业态，总理为何反复强调监管当“包容审慎”</a></td>
											<td style="text-align: right;">2017-07-19</td>
										</tr>
									</table>
								</div>
								<!-- 信息公告 -->
								<div class="ttnews_tabContent" style="display: none;">
									<table class="newlistContent">
										<tr>
											<td style="text-align: left;"><a href="">快递关于我国部分地区雨雪恶劣天气告客户书</a></td>
											<td style="text-align: right;">2018-03-06</td>
										</tr>
									</table>
									<table class="newlistContent">
										<tr>
											<td style="text-align: left;"><a href="">2018年疾风快递沪苏皖区域单边运输业务招标公告</a></td>
											<td style="text-align: right;">2018-02-28</td>
										</tr>
									</table>
									<table class="newlistContent">
										<tr>
											<td style="text-align: left;"><a href="">2018年疾风快递全国区域运输业务标段项目招标公告</a></td>
											<td style="text-align: right;">2018-02-28</td>
										</tr>
									</table>
									<table class="newlistContent">
										<tr>
											<td style="text-align: left;"><a href="">疾风快递关于我国部分地区暴雪恶劣天气告客户书</a></td>
											<td style="text-align: right;">2018-01-25</td>
										</tr>
									</table>
									<table class="newlistContent">
										<tr>
											<td style="text-align: left;"><a href="">疾风快递关于我国安徽江苏等地区暴雪恶劣天气告客户书</a></td>
											<td style="text-align: right;">2018-01-04</td>
										</tr>
									</table>
									<table class="newlistContent">
										<tr>
											<td style="text-align: left;"><a href="">告客户书</a></td>
											<td style="text-align: right;">2017-11-24</td>
										</tr>
									</table>
								</div>
							</div>
						</div>
					</td>
				</tr>
			</table>
		</center>
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
