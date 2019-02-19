<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="zh-cmn-Hans">
<head>
<meta name="apple-itunes-app" content="app-id=458270120"/>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1" />
<meta name="renderer" content="webkit" />
<title>寄快递,在线寄件 - 疾风快递</title>
<meta name="Keywords" content="寄快递,在线寄件,寄送包裹,快递网寄件点,附近快递员电话,物流下单,申通寄件,顺丰寄件" />
<meta name="Description" content="快递100在线寄件服务平台。专业打包,快速理赔,可免费快速上门提货。支持在线支付快递费、免手写快递单、寄件全程跟踪查询。不管您是寄申通还是寄顺丰都能轻松搞定" />

<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=ybuu0uiZaBt3EefaiRu8deUHn5feGrYg"></script>

<script type='text/javascript' 
src='<%=request.getContextPath() %>/statics/js/jquery-1.12.4.js'></script>
<script type='text/javascript' 
src='<%=request.getContextPath() %>/statics/js/gareway.js'></script>
<script type='text/javascript' 
src='<%=request.getContextPath() %>/statics/js/gareways.js'></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/statics/js/receiveOrder.js"></script>

<link rel="canonical" href="https://www.kuaidi100.com/sz/index.shtml"/>
<link rel="shortcut icon" href="https://cdn.kuaidi100.com/favicon.ico"/>
<link rel="icon" type="image/gif" href="https://cdn.kuaidi100.com/images/favicon.gif"/>
<link rel="stylesheet" href="<%=request.getContextPath() %>/statics/css/gareway_base.css"/>
<link rel="stylesheet" href="<%=request.getContextPath() %>/statics/css/gareway_sent.css"/>
<link rel="stylesheet" href="<%=request.getContextPath() %>/statics/css/gareway.css">
</head>
<body>
<input type="hidden" id="headerMenu" value="menu-send"/>
<div class="header">
  <div class="w960">
    <div class="head-nav">
      <ul>
       <li></li>
        <li><a href="#" id="menu-track">查快递</a><i class="ico_triangle"></i>
          <ul>
            <li><a href="#">快递大全</a></li>
            <li><a href="#" title="快递网点查询、网点大全">快递网点</a></li>
            <li><a href="#" title="快递时效查询">时效查询</a></li>
          </ul>
        </li>
        <li class="head-noborder"><a href="#" id="menu-send">寄快递</a></li>
        <li class="head-noborder"><a href="#" id="menu-service">企业服务</a></li>
        <li><a href="#" id="menu-api">快递接口(API)</a><i class="ico_triangle"></i>
          <ul>
            <li><a href="#">接口申请</a></li>
            <li><a href="#">技术文档</a></li>
            <li><a href="#">插件下载</a></li>
            <li><a href="#">常见问题</a></li>
            <li><a href="#">伙伴合作</a></li>
          </ul>
        </li>
      </ul>
    </div>
    <div class="user-box">
      <div class="head-nav user-info hidden" id="userInfo">
        <ul>
        <li><a href="https://sso.kuaidi100.com/user/account.jsp"><span class="user-img"><img width="35" height="35" id="userImg"></span><span class="user-name" id="userName"></span></a>
            <ul>
              <li id="userUrl"></li>
              <li><a href='#'>我的寄件订单</a></li>
              <li><a href="#" target="_blank">用户中心</a></li>
              <li><a href="#" onClick="logout();return false;">退出</a></li>
            </ul>
          </li>
        </ul>
      </div>
      <span id="welcome" class="sign hidden"><a href="#">注册</a><i>|</i><a href="#">登录</a></span>
    </div>
    <div class="box"></div>
  </div>
</div>
<div class="search-bar">
        <div class="input-wrap">
            <span id="startCity"></span>
            <input type="text" placeholder="输入寄件人地址" id="startAddr">
        </div>
        <button class="btn search-btn" onclick="setCity()">&nbsp;&nbsp;&nbsp;查找快递员</button>
        
<script type="text/javascript">
var points;
var search = new BMap.LocalSearch("中国", {
    onSearchComplete: function(result){
      if (search.getStatus() == BMAP_STATUS_SUCCESS){
    	  var map = new BMap.Map("allmap");
    	    var point = new BMap.Point(116.413387,39.910924);
    	    map.centerAndZoom(point,12);
        var res = result.getPoi(0);
        getdizhi(res,map);
      }
    }
  });
function setCity(){
search.search(document.getElementById("startAddr").value)
}
</script>
    </div>
<div style="width: 100%;height: 500px">
<input type="hidden" id="path" value="<%=request.getContextPath()%>"/>
    <div id="allmap" style="width: 100%;height: 500px;"></div>

<!-- 展示网点信息 -->
  </div>
    <div class="Mian-cont-wrap" style="position: relative; top: 30px; height: 360px">
		<div class="defaultTab-T" >
			<table  class="defaultTable">
			</table>
		</div>
		<table id="zhi1" class="defaultTable defaultTable2">
		</table>
	</div>
	<form action="<%=request.getContextPath()%>/addOrder.do" method="post">
	<div class="order" id="order">
      <h2>寄件填单<span></span></h2>
      <div class="addr-info" id="sender">
        <h3>寄件人</h3>
        <div class="addr-content">
          <div class="form">
            <label for="">姓名：</label>
            <input type="text" placeholder="请填写寄件人姓名" name="senderName" id="sendName">
           <!--  <span class="danger">请填写寄件人名字</span> -->
          </div>
          <div class="form">
            <label for="">联系电话：</label>
            <input type="text" id="sendPhone" name="senderTel" placeholder="请输入手机号或固话号码">
          </div>
          <div class="form">
            <label for="">寄件地址：</label>
            <div class="input-group">
             	<select id="province1" onchange="showCity(this)">
              		<option value=0>请选择省份</option>
              	</select>
				<select id="city1" onchange="showArea(this)">
					<option value=0>请选择城市</option>
				</select>
				<select id="area1" onchange="showSenderDetail()" name="senderAddressId">
					<option value=0>请选择县（区）</option>
				</select><br /> <br />
				<div class="input-group">
					<input type="text" placeholder="选择地区" name="senderDetail" readonly>
              		<input type="text" placeholder="请填写详细的地址" name="sendAddr" id="sendAddr" class="long">
            	</div>
          	</div>
          <div class="relative">
            <div class="location-box hidden" id="addSendProvince"></div>
          </div>
        </div>
      </div>
      <div class="addr-info" id="recer">
        <h3>收件人
        </h3>
        <div class="addr-content">
          <div class="form">
            <label for="">姓名：</label>
            <input type="text" placeholder="请填写收件人姓名" name="signName" id="recName" >
          </div>
          <div class="form">
            <label for="">联系电话：</label>
            <input type="text"  id="recPhone" name="signTel" placeholder="请输入手机号或固话号码">
          </div>
          <div class="form">
            <label for="">收件地址：</label>
            <select id="province2" onchange="showCity(this)">
            	<option value=0 >请选择省份</option>
			</select> 
			<select id="city2" onchange="showArea(this)">
				<option value=0>请选择城市</option>
			</select>
			<select id="area2" onchange="showSignDetail()" name="signAddressId">
				<option value=0>请选择县（区）</option>
			</select><br /> <br />
            <input type="text" placeholder="选择地区" name="signDetail" id="cityName_input_3" readonly>
            <input type="text" placeholder="请填写详细的地址" name="recAddr" id="recAddr" class="long">
          </div>
          <div class="box relative">
            <div class="location-box hidden" id="addRecProvince"></div>
          </div>
        </div>
      </div>
      
      
      <div class="pack-info">
        <h3>包裹信息</h3>
        <div class="addr-content">
          <div class="form">
            <label for="">寄件类型：</label>
              <input type="radio" id="addUnit1" name="goodsId" value="1"><label for="addUnit1">个人</label>
              <input type="radio" id="addUnit2" name="goodsId" value="2"><label for="addUnit2">公司</label>
          </div>

          <div class="form">
            <label for="">保价金额：</label>
            <div class="input-group">
              <input type="text" name="insuredPrice" placeholder="如需保价请填写，最高10000" id="valins"/><span></span>
              <input type="hidden" name="payValins" id="pay">
            </div>
          </div>
          <div class="form">
            <label for="">付款方式：</label>
              <input type="radio" id="payment1" name="payType" value="1"><label for="payment1">寄付</label>
              <input type="radio" id="payment2" name="payType" value="2"><label for="payment2">到付</label>
          </div>
          <div class="form">
            <label for="">物品重量：</label>
            <input type="text" placeholder="选填" name="goodsWeight" id="cargoWeight" value="0.5"><span style="padding-left: 10px;font-size: 16px;">kg</span>
          </div>
          <div class="form">
            <label for="">物品长度：</label>
            <input type="text" placeholder="选填" name="goodsLong" id="cargoWeight" value="0.5"><span style="padding-left: 10px;font-size: 16px;">kg</span>
          </div>
          <div class="form">
            <label for="">物品宽度：</label>
            <input type="text" placeholder="选填" name="goodsWidth" id="cargoWeight" value="0.5"><span style="padding-left: 10px;font-size: 16px;">kg</span>
          </div>
          <div class="form">
            <label for="">物品高度：</label>
            <input type="text" placeholder="选填" name="goodsHeight" id="cargoWeight" value="0.5"><span style="padding-left: 10px;font-size: 16px;">kg</span>
          </div>
          <div class="form">
            <label for="">物品数量：</label>
            <input type="text" name="goodsAccount" placeholder="选填" id="cargoCount">
          </div>
          <div class="form hidden">
            <label for="">取件地址：</label>
            <input type="text" placeholder="如需上门取件请填写取件地址" id="gotaddr">
          </div>
          <div class="form">
            <label for="">备注：</label>
            <input type="text" name="remark" placeholder="请填写给快递员的留言" id="orderComment">
          </div>
        </div>
      </div>
      <div id="sendTips" class="hidden"></div>
      <div class="order-btn-wrap">
        <input class="btn order-btn" id="submit" type="submit" value="立即下单">
        <span class="tip hidden" id="gottime"></span>
      </div>
    </div>
    </div>
    </form>
<div class="footer">
  <div class="w960">
    <div class="foot-link">
        <dl>
          <dt>关注我们</dt>
          <dd><a href="#">微信公众号</a></dd>
          <dd><a href="#">新浪微博</a></dd>
          <dd><a href="#">官方博客</a></dd>
        </dl>
        <dl>
          <dt>联系我们</dt>
          <dd><a href="#">联系方式</a></dd>
          <!--<dd><a href="https://wpa.b.qq.com/cgi/wpa.php?ln=1&key=XzgwMDAzNjg1N180NDEyMDBfODAwMDM2ODU3XzJf">QQ客服</a></dd>-->
          <dd><a href="#" target="_blank">加入我们</a></dd>
          <dd><a href="#">帮助文档</a></dd>
        </dl>
        <dl>
          <dt>快速通道</dt>
          <dd><a class="viewPage">手机HTML5站</a></dd>
          <dd><a href="#">快递网点入驻/加盟</a></dd>
          <dd><a href="#">快递网点维护/更新</a></dd>
        </dl>
        <div class="foot-code">扫一扫下载快递100</div>
        <div class="foot-code foot-code-sjd">是快递员来这里玩</div>
        <div class="box"></div>
      </div>
    <ul class="footCpoyright">
      <li><a href="#" title="金蝶" target="_blank" class="ft-kingde-log"></a></li>
      <li>金蝶旗下网站&emsp;深圳前海百递网络有限公司 版权所有&copy;2010-2017</li>
      <li><a href="#" target="_blank" rel="nofollow">粤ICP备14085002号-5</a></li>
      <li><a href="#" target="_blank" rel="nofollow">粤B2-20150010</a></li>
    </ul>
    <ul class="valid">
      <li><a target="_blank" href="http://61.144.227.239:9002/" title="深圳市网上报警平台" class="sznet01" rel="nofollow"></a></li>
      <li><a target="_blank" href="http://61.144.227.239:9003/webrecord/form_query.jsp" title="深圳市公共信息网络备案" class="sznet02" rel="nofollow"></a></li>
      <li><a target="_blank" href="http://szcert.ebs.org.cn/C8900EF4-041B-4E72-96CC-EDCEF5A444C0" title="深圳市市场监督管理局企业主体身份公示" class="sznet04" rel="nofollow"></a></li>
      <li><a target="_blank" href="https://ss.knet.cn/verifyseal.dll?sn=e17090744030068817gc1i000000&pa=111332" class="sznet05" rel="nofollow"></a></li>
    </ul>
    <div class="box"></div>
  </div>
</div>
<script>
(function(a,h,c,b,f,g){a["UdeskApiObject"]=f;a[f]=a[f]||function(){(a[f].d=a[f].d||[]).push(arguments)};g=h.createElement(c);g.async=1;g.charset="utf-8";g.src=b;c=h.getElementsByTagName(c)[0];c.parentNode.insertBefore(g,c)})(window,document,"script","//assets-cli.udesk.cn/im_client/js/udeskApi.js","ud");
ud({
    "code": "298f17ga",
    "link": "https://kuaidi100.udesk.cn/im_client/?web_plugin_id=48851",
    targetSelector: "#uDeskTarget"
});
</script>
<script src="statics/js/jquery-1.7.1.min.js"></script>
<script src="statics/js/base_v4.js"></script>
<script src="statics/js/user_v4.js"></script>
<script src="statics/js/areas.js"></script>
<script src="statics/js/city_sz.js"></script>
<script src="statics/js/2fda53e5d4244c19a4fe614c67278720.js"></script>
<!-- <script src="staticsc/js/addtoolbar.js"></script> -->
<script src="statics/js/sent_v4_new.js"></script>
<script src="statics/js/count.js"></script>
</body>
 
</html>
