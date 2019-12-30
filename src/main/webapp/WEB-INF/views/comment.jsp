<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>留言-闲言轻博客</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="../res/layui/css/layui.css">
	<link rel="stylesheet" href="../res/static/css/mian.css">
</head>
<body class="lay-blog">
	<%
		HttpSession s=request.getSession();
		String act1=(String)s.getAttribute("act1");
		if(act1==null){
			request.getRequestDispatcher("../InforServlet?md=findOne").forward(request, response);
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
			<div class="container container-message container-details container-comment">
					<div class="contar-wrap">
						<div class="item">
							<div class="item-box  layer-photos-demo1 layer-photos-demo">
								<h3><a href="details.html">${ir.username }</a></h3>
								<h5>发布于：<span>${ir.stape }</span></h5>
								<p>物品名：${ir.tname}<br>时间：${ir.tape}<br>地点：${ir.locar}<br>类型：${ir.leixing}<br>物品描述： ${ir.infor }</p>
								<!-- <h3>拥有诗意的心态,才能拥有诗意的生活</h3>
								<h5>发布于：<span>刚刚</span></h5>
								<p>父爱如山，不善表达。回想十多年前，总记得父亲有个宽厚的肩膀，小小的自己跨坐在上面，越过人山人海去看更广阔的天空，那个时候期望自己有一双翅膀，能够像鸟儿一样飞得高，看得远。虽然父亲有时会和自己开玩笑，但在做错事的时候会受到严厉的训斥。父亲有双粗糙的大手掌，手把手教我走路、骑车，却会在该放手的时刻果断地放开让自己去大胆尝试，那个时候期望快快长大，能够做自己想做的事，不用受父亲的“控制”。父亲是智慧树，他无所不知、无所不晓，虽然你有十万个为什么，但是也难不倒他。</p>
								<img src="../res/static/images/item.png" 
								 alt="帅哥"> -->
								<!-- <div class="count layui-clear">
									<span class="pull-left">阅读 <em>100000+</em></span>
									<span class="pull-right like"><i class="layui-icon layui-icon-praise"></i><em>999</em></span>
								</div> -->
							</div>
						</div>
						<form class="layui-form layui-form-pane" method="post" action=<%=request.getContextPath()+"/InforServlet?md=liuyan&id="+request.getParameter("id")%>>
							<div class="layui-form-item layui-form-text">
								<textarea  class="layui-textarea" name="liuyan" style="resize:none" placeholder="说一下情况吧"></textarea>
							</div>
							<div class="item-btn">
						          <button class="layui-btn" lay-filter="*" lay-submit>确定</button>
						    </div>
						</form>
					</div>
			</div>
		</div>
		<div class="footer">
			<p>
				<span>&copy; 2019</span>
				<span><a href="http://www.layui.com" target="_blank">layui.com</a></span> 
				<span>MIT license</span>
			</p>
			<p><span>人生就是一场修行</span></p>
		</div>
	<script src="../res/layui/layui.js">

	</script>
	<script>
		layui.config({
		  base: '../res/static/js/' 
		}).use('blog');
	</script>
	<script id="LAY-msg-tpl" type="text/html">
		<div class="info-box">
			<div class="info-item">
				<img class="info-img" src="{{ d.avatar }}" alt="">
			  <div class="info-text">
					<p class="title">
					  <span class="name">{{ d.username }}</span>
					  <span class="info-img">
					  	<i class="layui-icon layui-icon-praise"></i>
					  	{{ d.praise }}
					 	</span>
					</p>
					<p class="info-intr">
						{{ d.content }}
					</p>
			  </div>
			</div>
		</div>
	</script>
</body>
</html>