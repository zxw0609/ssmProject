<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>闲言-上传物品信息</title>
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
					  <li class="layui-nav-item"><a href="index.jsp">首页</a></li>
					  <li class="layui-nav-item  layui-this"><a href="informationPublish.jsp">信息发布</a></li>
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
				<li><a href="informationPublish.jsp">上传物品信息</a></li>
				<li><a href="login.jsp">登录/注册</a></li>
			</ul>
		</div>
		<div class="container-wrap">
			<div class="container container-message ">
				<div class="contar-wrap" id="contar-wrap">
					<div class="item">
						<div class="item-box">
							<form class="layui-form layui-form-pane" method="post" action=<%=request.getContextPath()+"/InforServlet?md=saveInfor" %>>
							  
							  <div class="layui-form-item">
							    <label class="layui-form-label">物品名</label>
							    <div class="layui-input-inline">
							      <input type="text" name="tname" lay-verify="required" placeholder="请输入" autocomplete="off" class="layui-input">
							    </div>
							  </div>
							  
							  <div class="layui-form-item">
							    <div class="layui-inline">
							      <label class="layui-form-label">时间</label>
							      <div class="layui-input-block">
							        <input type="text" name="tape" id="date1" lay-verify="required" autocomplete="off" class="layui-input">
							      </div>
							    </div>
							  </div>
							  
							  <div class="layui-form-item">
							    <label class="layui-form-label">地点</label>
							    <div class="layui-input-block">
							      <input type="text" name="locar" lay-verify="required" autocomplete="off" placeholder="请输入丢失/拾取地点" class="layui-input">
							    </div>
							  </div>
							  
							  <div class="layui-form-item" pane="">
							    <label class="layui-form-label">类型</label>
							    <div class="layui-input-block">
							      <input type="radio" name="leixing" value="失物信息" title="失物信息" checked="">
							      <input type="radio" name="leixing" value="拾物信息" title="拾物信息">
							    </div>
							  </div>
							  <div class="layui-form-item layui-form-text">
							    <label class="layui-form-label">物品描述</label>
							    <div class="layui-input-block" >
							      <textarea placeholder="请输入物品相关信息" class="layui-textarea" name="infor"></textarea>
							    </div>
							  </div>
							  <div class="item-btn">
								<button class="layui-btn" lay-filter="*" lay-submit>提交</button>
							  </div>
							</form>
							
						</div>
					</div>
					<!-- <div id="LAY-msg-box">
						<div class="info-box">
							<div class="info-item">
								<img class="info-img" src="../res/static/images/info-img.png" alt="">
								<div class="info-text">
									<p class="title count">
										<span class="name">一片空白</span>
										<span class="info-img like"><i class="layui-icon layui-icon-praise"></i>5.8万</span>
									</p>
									<p class="info-intr">父爱如山，不善表达。回想十多年前，总记得父亲有个宽厚的肩膀，小小的自己跨坐在上面，越过人山人海去看更广阔的天空，那个时候期望自己有一双翅膀，能够像鸟儿一样飞得高，看得远。虽然父亲有时会和自己开玩笑，但在做错事的时候会受到严厉的训斥。父亲有双粗糙的大手掌。</p>
								</div>
							</div>
						</div>
					</div> -->

					<!-- <div id="test1" class="paging"></div> 分页在这里不需要-->
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
	</div>
	<script src="../res/layui/layui.js">

	</script>
	<script>		
		layui.config({
		  base: '../res/static/js/' 
		}).use('blog');
		layui.use('laydate', function(){
			  var laydate = layui.laydate;
			  
			  //日期
			  laydate.render({
			    elem: '#date1'
			  });
		});
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
