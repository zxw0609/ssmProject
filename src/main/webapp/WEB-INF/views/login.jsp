<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>闲言-登录/注册</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="../res/layui/css/layui.css">
	<link rel="stylesheet" href="../res/static/css/mian.css">
</head>
<body class="lay-blog">
	<%
	HttpSession s=request.getSession();
	String msg=(String)s.getAttribute("msg");
	if(msg!=null){
		//out.print(msg);
	%> 
		<script type="text/javascript" language="javascript">alert("<%=msg%>");</script>
	<%
		/* 此时有两种做法
			1.销毁session 
				s.invalidate();
			2.移除session中的msg
				s.removeAttribute("msg"); */
		s.removeAttribute("msg");
	}
	%>
		<div class="header">
			<div class="header-wrap">
				<h1 class="logo pull-left">
					<a href="index.html">
						<img src="../res/static/images/logo.png" alt="" class="logo-img">
						<img src="../res/static/images/logo-text.png" alt="" class="logo-text">
					</a>
				</h1>
				<form class="layui-form blog-seach pull-left" action="">
					<div class="layui-form-item blog-sewrap">
					    <div class="layui-input-block blog-sebox">
					      <i class="layui-icon layui-icon-search"></i>
					      <input type="text" name="title" lay-verify="title" autocomplete="off"  class="layui-input">
					    </div>
					</div>
				</form>
				<div class="blog-nav pull-right">
					<ul class="layui-nav pull-left">
					  <li class="layui-nav-item"><a href="index.jsp">首页</a></li>
					  <li class="layui-nav-item"><a href="informationPublish.jsp">信息发布</a></li>
					  <li class="layui-nav-item  layui-this"><a href="login.jsp">登录/注册</a></li>
					</ul>
					<a href="#" class="personal pull-left">
						<i class="layui-icon layui-icon-username"></i>
					</a>
				</div>
				<div class="mobile-nav pull-right" id="mobile-nav">
					<a href="javascript:;">
						<i class="layui-icon layui-icon-more"></i>
					</a>
				</div>
			</div>
			<ul class="pop-nav" id="pop-nav">
				<li><a href="index.jsp">首页</a></li>
				<li><a href="informationPublish.jsp">信息发布</a></li>
				<li><a href="login.jsp">登录/注册</a></li>
			</ul>
		</div>
		<div class="container-wrap">
			<div class="container container-message container-details container-about">
					<div class="contar-wrap">
						<div class="item">
							 <div class="item-box">
								<ul class="layui-tab-title">
						        <li class="layui-this">登录</li>
						        <li><a href="reg.jsp">注册</a></li>
						      </ul>
						      <div class="layui-form layui-tab-content" id="LAY_ucm" style="padding: 20px 0;">
						        <div class="layui-tab-item layui-show">
						          <div class="layui-form layui-form-pane">
						            <form method="post"action=<%=request.getContextPath()+"/UserServlet?md=login" %>>
						              <div class="layui-form-item">
						                <label for="L_email" class="layui-form-label">账号</label>
						                <div class="layui-input-inline">
						                  <input type="text" id="L_email" name="username" required lay-verify="required" autocomplete="off" class="layui-input">
						                </div>
						              </div>
						              <div class="layui-form-item">
						                <label for="L_pass" class="layui-form-label">密码</label>
						                <div class="layui-input-inline">
						                  <input type="password" id="L_pass" name="password" required lay-verify="required" autocomplete="off" class="layui-input">
						                </div>
						              </div>
						              <div class="layui-form-item">
						                <button class="layui-btn" lay-filter="*" lay-submit>立即登录</button>
						                <span style="padding-left:20px;">
						                  <a href="forget.html">忘记密码？</a>
						                </span>
						              </div> 
						            </form>
						          </div>
						        </div>
						      </div>
							</div> 
						</div>			
					</div>
			</div>
		</div>
      
		<div class="footer">
			<p>
				<span>&copy; 2019</span>
				<span><a href="http://www.layui.com" target="_blank">layui.com</a></span> 
				<span>MIT license</span>
			</p>
			<p><span>日行一善</span></p>
		</div>
	<script src="../res/layui/layui.js"></script>
	<script>
		layui.config({
		  base: '../res/static/js/' 
		}).use('blog');
	</script>
</body>
</html>