<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <title>dwCms后台管理系统-登录</title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/statics/css/layui.css" media="all" />
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/statics/css/login1.css" />
<title>Insert title here</title>

</head>
<body>
<body class="beg-login-bg">
    <div class="beg-login-box">
        <header>
            <h1>疾风物流</h1>
        </header>
        <div class="beg-login-main">
            <form action="<%=request.getContextPath() %>/shiro/login.do"  class="layui-form" method="post">
                <div class="layui-form-item">
                    <label class="beg-login-icon">
                        <i class="layui-icon">&#xe612;</i>
                    </label>
                    <input type="text" lay-verify="required" name="staffNO" autocomplete="off" placeholder="这里输入工号" class="layui-input" lay-verType="tips">
                </div>
                <div class="layui-form-item">
                    <label class="beg-login-icon">
                        <i class="layui-icon">&#xe642;</i>
                    </label>
                    <input type="password" lay-verify="required" name="password" autocomplete="off" placeholder="这里输入密码" class="layui-input" lay-verType="tips">
                </div>
                <div class="layui-form-item">
                    <div class="beg-pull">
                        <input type="submit" class="layui-btn layui-btn-normal" style="width:100%;" lay-submit lay-filter="formDemo" value="登录">
                    </div>
                </div>
            </form>
        </div>
        <footer>
            <p>Strong wind logistics © </p>
        </footer>
    </div>
</body>
</html>