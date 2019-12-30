<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>闲言-404</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="../res/layui/css/layui.css">
	<link rel="stylesheet" href="../res/static/css/mian.css">
</head>
<body class="lay-blog">
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
					  <li class="layui-nav-item layui-this"><a href="index.jsp">首页</a></li>
					  <li class="layui-nav-item"><a href="informationPublish.jsp">信息发布</a></li>
					  <li class="layui-nav-item"><a href="login.jsp">登录/注册</a></li>
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
			<div class="container">
					<div class="contar-wrap">
						<div style="padding: 150px 0 50px; text-align: center; font-size: 30px; color: #ccc; font-weight: 300;">
							心姐抛出了个 404
						</div>
					</div>
			</div>
		</div>
		<div class="footer">
			<p>
				<span>&copy; 2018</span>
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