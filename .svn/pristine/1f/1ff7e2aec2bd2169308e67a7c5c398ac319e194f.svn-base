var logoutDone = 0;
var loginTOKEN = getcookie("TOKEN");
var accountInfo = ""
// 自动登录
isAutoLogin();

function isAutoLogin() {
    var loginSession = getcookie("loginSession");
    if (loginTOKEN) {
        login();
    } else {
        deleteCookie("loginSession");
        deleteCookie("loginId");
        deleteCookie("loginType");
        deleteCookie("loginName");
        deleteCookie("nickname");
        deleteCookie("loginEmail");
        deleteCookie("loginMobile");
        deleteCookie("KDSSO");
        deleteCookie("KDWWW");
        deleteCookie("TOKEN");
        if (window.location.href.indexOf("buyer.kuaidi100.com") != -1 || window.location.href.indexOf("seller.kuaidi100.com") != -1 || window.location.href.indexOf("sso.kuaidi100.com") != -1) {
            window.location.href = "https://sso.kuaidi100.com";
        } else {
            setWelcomeLogout();
        }
    }
}

function isSignin() {
    var now = new Date();
    var isMobile = /Android|webOS|iPhone|iPod|iPad|BlackBerry|Windows Phone/i.test(navigator.userAgent),
        today = now.getFullYear() + '_' + now.getMonth() + '_' + now.getDate(),
        last = localStorage.getItem('lastSignin');
    if (!isMobile || today == last) return;
    $.ajax({
        url: '/apicenter/creditmall.do?method=checksignin&token=' + getcookie("TOKEN"),
        success: function(result) {
            if (result.status == 201) { //未签到
                //var i = $(".user-img i").size() ? $(".user-img i") : $('<i></i>').appendTo($('.user-img'));
                //i.text('签到领积分').closest('a').attr('href', 'https://m.kuaidi100.com/points/');
                $("#menuBtn,aside .jf").addClass('badge');
            } else if (result.status == 200) {
                localStorage.setItem("lastSignin", today);
            }
        }
    });
}

// 登录操作
function login() {
    if (loginTOKEN) {
        $.ajax({
            type: "post",
            url: "/user/userapi.do",
            data: "method=getuserinfo",
            success: function(resultJson) {
                if (resultJson.status == "200") { //登录成功
                    accountInfo = resultJson;
                    setcookie_kuaidi100("loginId", resultJson.user.id);
                    setcookie_kuaidi100("loginType", resultJson.user.userType);
                    setcookie_kuaidi100("loginName", resultJson.user.name);
                    setcookie_kuaidi100("nickname", resultJson.user.realname);
                    setcookie_kuaidi100("loginEmail", resultJson.user.email);
                    setcookie_kuaidi100("loginMobile", resultJson.user.mobile);
                    setcookie_kuaidi100("loginExt", resultJson.user.ext);
                    setcookie_kuaidi100('auth', resultJson.user.auth);
                    setcookie_temp_kuaidi100("loginSession", "1");
                    setWelcomeLogin();
                    if ($.isFunction(window.init)) {
                        init();
                    }
                } else { //登录失败
                    deleteCookie("loginEmail");
                    deleteCookie("loginId");
                    deleteCookie("loginMobile");
                    deleteCookie("loginName");
                    deleteCookie("nickname");
                    deleteCookie("loginSession");
                    deleteCookie("loginType");
                    deleteCookie("KDWWW");
                    deleteCookie("KDSSO");
                    if (window.location.href.indexOf("buyer.kuaidi100.com") != -1 || window.location.href.indexOf("seller.kuaidi100.com") != -1 || window.location.href.indexOf("sso.kuaidi100.com") != -1) {
                        window.location.href = "https://www.kuaidi100.com/";
                    } else {
                        setWelcomeLogout();
                    }
                }
            }
        });
    } else { //无帐号显示登录
        setWelcomeLogout();
    }
}

// 退出
function logout() {
    if (getcookie("TOKEN")) {
        var logoutUrl = "/user/logout.do";
        try {
            $.post(logoutUrl, {
                method: "logout"
            }, function(resultJson) {
                if (resultJson.status == "200" || resultJson.status == "403") { //注销成功(或未登录)，注销时把记住我账号销毁
                    deleteCookie("loginEmail");
                    deleteCookie("loginId");
                    deleteCookie("loginMobile");
                    deleteCookie("loginName");
                    deleteCookie("nickname");
                    deleteCookie("loginSession");
                    deleteCookie_kuaidi100("loginType");
                    deleteCookie("KDWWW");
                    logoutDone = 0;
                    doPost("https://sso.kuaidi100.com/user/logout.do?method=logout&temp=" + Math.random());
                    doPost("https://www.kuaidi100.com/user/logout.do?method=logout&temp=" + Math.random());
                    if (window.location.href.indexOf("buyer.kuaidi100.com") != -1 || window.location.href.indexOf("seller.kuaidi100.com") != -1 || window.location.href.indexOf("sso.kuaidi100.com") != -1) {
                        window.location.href = "https://www.kuaidi100.com/";
                    } else {
                        setWelcomeLogout();
                    }
                } else {
                    location.reload()
                }
            });
        } catch (e) {
            location.reload();
        }
    } else {
        location.reload();
    }
}
//set login
function setWelcomeLogin() {
    isSignin();
    var auth = +getcookie('auth');
    (64 & auth) && $("#userUrl").append("<a href='//c.kuaidi100.com/' target='_blank'>进入快递超市</a>"); //快递超市
    (4 & auth) && $("#userUrl").append("<a href='//b.kuaidi100.com/' target='_blank'>进入快递管家</a>"); //快递管家
    (32 & auth) && $("#userUrl").append("<a href='//poll.kuaidi100.com/' target='_blank'>接口（API）</a>"); //API
    (16 & auth) && $("#userUrl").append("<a href='//net.kuaidi100.com/' target='_blank'>快递网点</a>"); //网点
    (128 & auth) && $("#userUrl").append("<a href='//mai.kuaidi100.com/' target='_blank'>淘宝卖家版</a>"); //淘宝卖家
    (256 & auth) && $("#userUrl").append("<a href='//jd.kuaidi100.com/' target='_blank'>京东卖家版</a>"); //京东卖家版
    (2 & auth) && $("#userUrl").append("<a href='//seller.kuaidi100.com/' target='_blank'>卖家版</a>"); //普通卖家版
    (1 & auth) && $("#userUrl").append("<a href='//buyer.kuaidi100.com/' target='_blank'>我的查件记录</a>")
    //用户名显示
    var userName = "";
    userName = $.trim(getcookie("nickname"));
    if (userName == "" || userName == 'null') {
        userName = $.trim(getcookie("loginName"));
    }
    if (userName == "" || userName == 'null') {
        userName = $.trim(getcookie("loginMobile"));
        if (userName == "null" || userName == "") {
            userName = getcookie("loginEmail");
        }
    }
    userName == 'null' && (userName = '');
    if (userName.length > 11) {
        userName = userName.substring(0, 10) + "...";
    }
    $("#userImg").attr('src', 'https://p.kuaidi100.com/mobile/mobileapi.do?method=download&id=avatar_' + getcookie('loginId') + '.jpg&verstion=' + (getcookie('avatar_version') || (new Date()).getTime()));
    $(".buyer-avatar").html("<img src=\"https://p.kuaidi100.com/mobile/mobileapi.do?method=download&id=avatar_" + getcookie("loginId") + ".jpg?version=" + (new Date().getTime()) + "\">");
    $("#userName").html(userName);
    $("#welcome").hide();
    $("#userInfo").show();
}

//set logout
function setWelcomeLogout() {
    $("#welcome").show();
    $("#userInfo").hide();
}

// iframe post
function doPost(url) {
    var frame = $("<iframe width=\"0\" height=\"0\" frameborder=\"0\" scrolling=\"0\"></iframe>");
    frame.appendTo('body');
    frame.attr("src", url);
    frame.load(logoutFinish);
}

// 刷新页面
function logoutFinish() {
    logoutDone++;
    if (logoutDone >= 2) {
        window.location.reload();
    }
}

function loadCouponTips() {
    var wrap = $('<div  style="z-index: 8888;position:fixed;width:100%;height:148px;background: url(https://cdn.kuaidi100.com/images/coupon.png) center top no-repeat;color:#FFF;bottom: 0;text-align: center;overflow:hidden"></div>'),
        code = $('<div class="w960 relative"><div style="position:absolute;right:0;top: 26px;"><img src="https://cdn.kuaidi100.com/images/xcxcode3.png" width="95"><p>微信扫描二维码寄件</p></div></div>'),
        close = $('<span style="position: absolute;right: 4px;top: 22px;display: inline-block;background: url(https://cdn.kuaidi100.com/images/spider_search_v4.png) 8px -1277px no-repeat;width: 30px;height: 28px;cursor: pointer;"></span>'),
        assive = $('<div style="cursor:pointer;display:none;position:fixed;bottom:194px;right:-38px;width:90px;height: 90px;background:url(https://cdn.kuaidi100.com/images/choujiang.jpg) no-repeat;"><div class="img" style="padding: 10px;position:absolute; left: -156px;top: -16px;width: 120px;display:none;text-align:center;border:1px solid #dadada;background:#FFF;"><i style="position:absolute;top: 65px;right: -10px;background: url(https://cdn.kuaidi100.com/images/arrow_r.png) -1px 0 no-repeat;width: 10px;height:20px;"></i><img src="https://cdn.kuaidi100.com/images/xcxcode2.png" width="120px"><p>微信扫描二维码下单</p><p style="color:red;">（赢取iPhoneX）</p></div></div>');
        var time = null;
    wrap.append(code).append(close);
    assive.appendTo("body")
    if(getcookie("btcoupon") == 'close') {
        assive.show();
    } else {
        wrap.appendTo("body");
    }
    close.click(function(event) {
        wrap.animate({
            right: 10,
            bottom: 234,
            width: 0,
            height: 0
        }, 100, function() {
            assive.show()
        });
        setcookie_kuaidi100("btcoupon", 'close')
    });
    assive.mouseover(function(event) {
        time && clearTimeout(time);
        time = setTimeout(function(){
         assive.animate({paddingRight: 48},200,
            function() {
                assive.stop().find(".img").fadeIn()
            });
        },300)
    }).mouseout(function(event) {
        time && clearTimeout(time)
        time = setTimeout(function(){
            assive.find(".img").fadeOut(function() {
                assive.animate({paddingRight: 0}, 100);
            });
        },0)
    });
}
if(!/Android|webOS|iPhone|iPod|iPad|BlackBerry/i.test(navigator.userAgent)){
   $.ajax({
        url: '/apicenter/card.do?method=checkActivityCoupon&cardtype=CARD_TYPE_PERNEW',
        success: function(result){
            result.status == 200 && loadCouponTips();
        }
    })
}

