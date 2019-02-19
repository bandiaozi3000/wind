// get cookie
function getcookie(cookieName) {
	var cookieValue = "";
	if (document.cookie && document.cookie != '') {
		var cookies = document.cookie.split(';');
		for (var i = 0; i < cookies.length; i++) {
			var cookie = cookies[i].replace(/(^\s*)|(\s*$)/g, "");
			if (cookie.substring(0, cookieName.length + 1) == (cookieName + '=')) {
				cookieValue = unescape(cookie.substring(cookieName.length + 1));
				break;
			}
		}
	}
	return cookieValue;
}

//lang cookies
function setcookie(cookieName, cookieValue) {
	var expires = new Date();
	var now = parseInt(expires.getTime());
	var et = (86400 - expires.getHours() * 3600 - expires.getMinutes() * 60 - expires.getSeconds());
	expires.setTime(now + 1000000 * (et - expires.getTimezoneOffset() * 60));
	document.cookie = escape(cookieName) + "=" + escape(cookieValue) + ";expires=" + expires.toGMTString() + "; path=/";
}
function setcookie_kuaidi100(cookieName, cookieValue) {
	var expires = new Date();
	var now = parseInt(expires.getTime());
	var et = (86400 - expires.getHours() * 3600 - expires.getMinutes() * 60 - expires.getSeconds());
	expires.setTime(now + 1000000 * (et - expires.getTimezoneOffset() * 60));
	document.cookie = escape(cookieName) + "=" + escape(cookieValue) + ";expires=" + expires.toGMTString() + "; domain=.kuaidi100.com;path=/";
}

function setcookieCommon(name,value,day){
	day = day || 1;
	var expires = new Date();
	var now = parseInt(expires.getTime());
	expires.setTime(now + 86400 * day*1000);
	document.cookie = escape(name) + "=" + escape(value) + ";expires=" + expires.toGMTString() + ";path=/";
}

//temp cookies
function setcookie_temp(cookieName, cookieValue) {
	document.cookie = escape(cookieName) + "=" + escape(cookieValue) + ";path=/";
}
function setcookie_temp_kuaidi100(cookieName, cookieValue) {
	document.cookie = escape(cookieName) + "=" + escape(cookieValue) + ";domain=.kuaidi100.com;path=/";
}
function setcookie2(cookieName, cookieValue) {
	document.cookie = escape(cookieName) + "=" + escape(cookieValue) + ";path=/";
}
// delete cookie
function deleteCookie(name) {
	var exp = new Date();
	exp.setTime(exp.getTime() - 1);
	var cval = getcookie(name);
	document.cookie = escape(name) + "=" + escape(cval) + "; expires=" + exp.toGMTString() + "; path=/";
}
function deleteCookie_kuaidi100(name) {
	var exp = new Date();
	exp.setTime(exp.getTime() - 1);
	var cval = getcookie(name);
	document.cookie = escape(name) + "=" + escape(cval) + "; expires=" + exp.toGMTString() + "; domain=.kuaidi100.com;path=/";
}
//get url
function GetQueryString(name) {
	var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
	var r = window.location.search.substr(1).match(reg);
	if (r != null) return unescape(r[2]);
	return null;
}

//favorite
function addFavoritesHistory(setUrl) {
	var title = "快递查询-查快递，寄快递，上快递100";
	var url = "http://" + document.domain;
	if (setUrl != "" && setUrl != null) {
		url = setUrl;
	}
	try {
		window.external.addFavorite(url, title);
	} catch (e1) {
		try {
			window.external.AddToFavoritesBar(url, title);
		} catch (e2) {
			try {
				window.sidebar.addPanel(title, url);
			} catch (e3) {
				alert("收藏失败，此操作被浏览器拒绝！\n请使用\"Ctrl+D\"进行收藏！");
			}
		}
	}
}

//securityValid
function securityValid(str) {
	var regSqlStr = "select\\s.*|.*\\s*exec\\s.*|.*\\s*execute\\s.*|.*\\s*insert\\s.*|" + ".*\\s*create\\s.*|.*\\s*drop\\s.*|.*\\s*table\\s.*|.*\\s*from\\s.*|.*\\s*grant\\s.*|" + ".*\\s*use\\s.*|.*\\s*group_concat\\s.*|.*\\s*column_name\\s.*|.*\\s*delete\\s.*|" + ".*\\s*update\\s.*|.*\\s*table_schema\\s.*|.*\\s*truncate";
	var reSql = new RegExp(regSqlStr, "gi");
	var reTag = new RegExp(".*\\<.*?\\>.*|.*\\<.*|.*\\>.*", "gi");
	var reJs = new RegExp(".*javascript.*", "gi");

	if (reSql.test(str)) {
		return true;
	}
	if (reTag.test(str)) {
		return true;
	}
	if (reJs.test(str)) {
		return true;
	}

	return false;
}

function selectNav() {
	var headerMenu = $("#headerMenu").val();
	if (headerMenu != null && headerMenu != "") {
		$("#" + headerMenu).attr("class", "head-nav-select");
		$("#" + headerMenu).append("<i class='ico_select'></i>")
	}
}

function gototop() {
	acceleration = 0.3;
	time = 15;
	var x = 0,
		y = 0;

	if (document.documentElement) {
		x = document.documentElement.scrollLeft || 0;
		y = document.documentElement.scrollTop || 0;
	}

	var speed = 1 + acceleration;
	window.scrollTo(x, Math.floor(y / speed));
	if (y > 0) {
		var invokeFunction = "gototop()";
		window.setTimeout(invokeFunction, time);
	}
}
$(function() {
	/*deleteCookie("hideHeadTip");
	$("#bannerClose").hide();*/
	//head tips
	var time=new  Date().getTime();
	var arr = new Array();
	//圣诞节主题
	//arr[0] = ["#eb252e", "url('https://cdn.kuaidi100.com/images/index/surprise/merry/merryChristmas.png?version="+time+"')"];
	//冬日主题
	//arr[0] = ["#34a9fc", "url('https://cdn.kuaidi100.com/images/index/surprise/sendwarm.png?version="+time+"')"];
	//arr[1] = ["#24a8f9", "url('https://cdn.kuaidi100.com/images/customize/head-api-2.jpg?version="+time+"')", "http://b.kuaidi100.com/example/intro.shtml"];
	//arr[1] = ["#ffd543", "url('https://cdn.kuaidi100.com/images/head-ad-3.jpg')", "http://b.kuaidi100.com/example/index.shtml"];
	var random_bg = Math.round(Math.random()); // 0-1 random
	//var random_bg = Math.round(Math.random()*3);;// 0-3 random
	/*if(random_bg==0){
		$(".head-tip-btn").hide();
	}
	$("#headTip").css("background-color", arr[random_bg][0]);
	$("#headTip").css("background-image", arr[random_bg][1]);
	$("#headTipLink").attr("href", arr[random_bg][2]);
	if (getcookie("hideHeadTip") != "1") {
		$("#headTip").show();
	}
	$(".head-tip-close").click(function() {
		$("#headTip").hide();
		setcookie("hideHeadTip", "1");
	});*/
	$("#viewPage").on("click", function(){
		deleteCookie_kuaidi100("viewpage");
		window.location.href = "https://m.kuaidi100.com/";
	});

	$(".viewPage").on("click", function(){
		deleteCookie_kuaidi100("viewpage");
		window.location.href = "https://m.kuaidi100.com/";
	});

	$('#toCountry').click(function(event) {
		setcookieCommon('tocountry','Y');
	});

	$('#toSz').click(function(event) {
		deleteCookie('tocountry')
	});

	selectNav();
});// get cookie
function getcookie(cookieName) {
	var cookieValue = "";
	if (document.cookie && document.cookie != '') {
		var cookies = document.cookie.split(';');
		for (var i = 0; i < cookies.length; i++) {
			var cookie = cookies[i].replace(/(^\s*)|(\s*$)/g, "");
			if (cookie.substring(0, cookieName.length + 1) == (cookieName + '=')) {
				cookieValue = unescape(cookie.substring(cookieName.length + 1));
				break;
			}
		}
	}
	return cookieValue;
}

//lang cookies
function setcookie(cookieName, cookieValue) {
	var expires = new Date();
	var now = parseInt(expires.getTime());
	var et = (86400 - expires.getHours() * 3600 - expires.getMinutes() * 60 - expires.getSeconds());
	expires.setTime(now + 1000000 * (et - expires.getTimezoneOffset() * 60));
	document.cookie = escape(cookieName) + "=" + escape(cookieValue) + ";expires=" + expires.toGMTString() + "; path=/";
}
function setcookie_kuaidi100(cookieName, cookieValue) {
	var expires = new Date();
	var now = parseInt(expires.getTime());
	var et = (86400 - expires.getHours() * 3600 - expires.getMinutes() * 60 - expires.getSeconds());
	expires.setTime(now + 1000000 * (et - expires.getTimezoneOffset() * 60));
	document.cookie = escape(cookieName) + "=" + escape(cookieValue) + ";expires=" + expires.toGMTString() + "; domain=.kuaidi100.com;path=/";
}

function setcookieCommon(name,value,day){
	day = day || 1;
	var expires = new Date();
	var now = parseInt(expires.getTime());
	expires.setTime(now + 86400 * day*1000);
	document.cookie = escape(name) + "=" + escape(value) + ";expires=" + expires.toGMTString() + ";path=/";
}

//temp cookies
function setcookie_temp(cookieName, cookieValue) {
	document.cookie = escape(cookieName) + "=" + escape(cookieValue) + ";path=/";
}
function setcookie_temp_kuaidi100(cookieName, cookieValue) {
	document.cookie = escape(cookieName) + "=" + escape(cookieValue) + ";domain=.kuaidi100.com;path=/";
}
function setcookie2(cookieName, cookieValue) {
	document.cookie = escape(cookieName) + "=" + escape(cookieValue) + ";path=/";
}
// delete cookie
function deleteCookie(name) {
	var exp = new Date();
	exp.setTime(exp.getTime() - 1);
	var cval = getcookie(name);
	document.cookie = escape(name) + "=" + escape(cval) + "; expires=" + exp.toGMTString() + "; path=/";
}
function deleteCookie_kuaidi100(name) {
	var exp = new Date();
	exp.setTime(exp.getTime() - 1);
	var cval = getcookie(name);
	document.cookie = escape(name) + "=" + escape(cval) + "; expires=" + exp.toGMTString() + "; domain=.kuaidi100.com;path=/";
}
//get url
function GetQueryString(name) {
	var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
	var r = window.location.search.substr(1).match(reg);
	if (r != null) return unescape(r[2]);
	return null;
}

//favorite
function addFavoritesHistory(setUrl) {
	var title = "快递查询-查快递，寄快递，上快递100";
	var url = "http://" + document.domain;
	if (setUrl != "" && setUrl != null) {
		url = setUrl;
	}
	try {
		window.external.addFavorite(url, title);
	} catch (e1) {
		try {
			window.external.AddToFavoritesBar(url, title);
		} catch (e2) {
			try {
				window.sidebar.addPanel(title, url);
			} catch (e3) {
				alert("收藏失败，此操作被浏览器拒绝！\n请使用\"Ctrl+D\"进行收藏！");
			}
		}
	}
}

//securityValid
function securityValid(str) {
	var regSqlStr = "select\\s.*|.*\\s*exec\\s.*|.*\\s*execute\\s.*|.*\\s*insert\\s.*|" + ".*\\s*create\\s.*|.*\\s*drop\\s.*|.*\\s*table\\s.*|.*\\s*from\\s.*|.*\\s*grant\\s.*|" + ".*\\s*use\\s.*|.*\\s*group_concat\\s.*|.*\\s*column_name\\s.*|.*\\s*delete\\s.*|" + ".*\\s*update\\s.*|.*\\s*table_schema\\s.*|.*\\s*truncate";
	var reSql = new RegExp(regSqlStr, "gi");
	var reTag = new RegExp(".*\\<.*?\\>.*|.*\\<.*|.*\\>.*", "gi");
	var reJs = new RegExp(".*javascript.*", "gi");

	if (reSql.test(str)) {
		return true;
	}
	if (reTag.test(str)) {
		return true;
	}
	if (reJs.test(str)) {
		return true;
	}

	return false;
}

function selectNav() {
	var headerMenu = $("#headerMenu").val();
	if (headerMenu != null && headerMenu != "") {
		$("#" + headerMenu).attr("class", "head-nav-select");
		$("#" + headerMenu).append("<i class='ico_select'></i>")
	}
}

function gototop() {
	acceleration = 0.3;
	time = 15;
	var x = 0,
		y = 0;

	if (document.documentElement) {
		x = document.documentElement.scrollLeft || 0;
		y = document.documentElement.scrollTop || 0;
	}

	var speed = 1 + acceleration;
	window.scrollTo(x, Math.floor(y / speed));
	if (y > 0) {
		var invokeFunction = "gototop()";
		window.setTimeout(invokeFunction, time);
	}
}
$(function() {
	/*deleteCookie("hideHeadTip");
	$("#bannerClose").hide();*/
	//head tips
	var time=new  Date().getTime();
	var arr = new Array();
	//圣诞节主题
	//arr[0] = ["#eb252e", "url('https://cdn.kuaidi100.com/images/index/surprise/merry/merryChristmas.png?version="+time+"')"];
	//冬日主题
	//arr[0] = ["#34a9fc", "url('https://cdn.kuaidi100.com/images/index/surprise/sendwarm.png?version="+time+"')"];
	//arr[1] = ["#24a8f9", "url('https://cdn.kuaidi100.com/images/customize/head-api-2.jpg?version="+time+"')", "http://b.kuaidi100.com/example/intro.shtml"];
	//arr[1] = ["#ffd543", "url('https://cdn.kuaidi100.com/images/head-ad-3.jpg')", "http://b.kuaidi100.com/example/index.shtml"];
	var random_bg = Math.round(Math.random()); // 0-1 random
	//var random_bg = Math.round(Math.random()*3);;// 0-3 random
	/*if(random_bg==0){
		$(".head-tip-btn").hide();
	}
	$("#headTip").css("background-color", arr[random_bg][0]);
	$("#headTip").css("background-image", arr[random_bg][1]);
	$("#headTipLink").attr("href", arr[random_bg][2]);
	if (getcookie("hideHeadTip") != "1") {
		$("#headTip").show();
	}
	$(".head-tip-close").click(function() {
		$("#headTip").hide();
		setcookie("hideHeadTip", "1");
	});*/
	$("#viewPage").on("click", function(){
		deleteCookie_kuaidi100("viewpage");
		window.location.href = "https://m.kuaidi100.com/";
	});

	$(".viewPage").on("click", function(){
		deleteCookie_kuaidi100("viewpage");
		window.location.href = "https://m.kuaidi100.com/";
	});

	$('#toCountry').click(function(event) {
		setcookieCommon('tocountry','Y');
	});

	$('#toSz').click(function(event) {
		deleteCookie('tocountry')
	});
	$('#goH5').click(function(event) {
		event.preventDefault();
		deleteCookie_kuaidi100('viewpage')
		location.href = 'https://m.kuaidi100.com/';
	});

	selectNav();	
});