<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>闲言-留言</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="../res/layui/css/layui.css">
	<link rel="stylesheet" href="../res/static/css/mian.css">
</head>
<body class="lay-blog">
	<%
		HttpSession s=request.getSession();
		String act1=(String)s.getAttribute("act1");
		if(act1==null){
			request.getRequestDispatcher("../InforServlet?md=findLiuYanAndInfor").forward(request, response);
		}else{
			s.removeAttribute("act1");
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
					  <li class="layui-nav-item layui-this"><a href="index.jsp">首页</a></li>
					  <li class="layui-nav-item"><a href="informationPublish.jsp">信息发布</li>
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
			<div class="container container-message container-details">
					<div class="contar-wrap">
						<div class="item">
							<div class="item-box  layer-photos-demo1 layer-photos-demo">
								<h3><a href="details.html">${ir.username }</a></h3>
								<h5>发布于：<span>${ir.stape }</span></h5>
								<p>物品名：${ir.tname}<br>时间：${ir.tape}<br>地点：${ir.locar}<br>类型：${ir.leixing}<br>物品描述： ${ir.infor }</p>
								<!-- <div class="count layui-clear">
									<span class="pull-left">阅读 <em>100000+</em></span>
									<span class="pull-right like"><i class="layui-icon layui-icon-praise"></i><em>999</em></span>
								</div> -->
							</div>
						</div>	
						<a name="comment"> </a>
						<div class="comt layui-clear">
							<a href="comment.jsp?id=${ir.id}" class="pull-right">写留言</a>
						</div>
						<div id="LAY-msg-box">
							<c:if test="${empty lys}">
								<div class="info-item">
									<div class="info-text">
										<p class="info-intr">还没有留言快去留言吧</p>
									</div>
								</div>
							</c:if>
							<c:if test="${not empty lys }">
								<c:forEach items="${lys }" var="ly">
									<div class="info-item">
										<div class="info-text">
											<p class="title count">
												<span class="name">${ly.username}</span>
											</p>
											<p class="info-intr">${ly.liuyan }</p>
										</div>
									</div>
								</c:forEach>	
							</c:if>
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
	<script src="../res/layui/layui.js">

	</script>
	<script>
		layui.config({
		  base: '../res/static/js/' 
		}).use('blog');
	</script>
</body>
</html>