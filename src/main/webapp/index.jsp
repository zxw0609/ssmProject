<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
<h2>Hello World!</h2>
<a href="hello?username=hehe">findById</a>
<a href="findAll">findAll</a>
<form action="saveUser"id="bd1">
    用户名:<input type="text" name="username"><br/>
    密码:<input type="text" name="password"><br/>
    act:<input type="text" name="act"><br/>
    vip:<input type="text" name="vip"><br/>
    address:<input type="text" name="address"><br/>
    phone:<input type="text" name="phone"><br/>
    <input type="submit" value="提交">
</form>
<a href="deleteUser?username=hehe">deleteUser</a>
<form action="updateUser" id="bd2">
    用户名:<input type="text" name="username"><br/>
    密码:<input type="text" name="password"><br/>
    act:<input type="text" name="act"><br/>
    vip:<input type="text" name="vip"><br/>
    address:<input type="text" name="address"><br/>
    phone:<input type="text" name="phone"><br/>
    <input type="submit" value="提交">
</form>
</body>
</html>

<%--
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>失物招领平台</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="res/layui/css/layui.css">
    <link rel="stylesheet" href="res/static/css/mian.css">
</head>
<body class="lay-blog">
&lt;%&ndash;<%
    HttpSession s=request.getSession();
    String act1=(String)s.getAttribute("act1");
    if(act1==null){
        request.getRequestDispatcher("../InforServlet?md=findAll").forward(request, response);
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
%>&ndash;%&gt;
<div class="header">
    <div class="header-wrap">
        <h1 class="logo pull-left">
            <a href="index.html">
                <img src="res/static/images/logo.png" alt="" class="logo-img">
                <img src="res/static/images/logo-text.png" alt="" class="logo-text">
            </a>
        </h1>
        <form class="layui-form blog-seach pull-left" method="post" action=<%=request.getContextPath()+"/InforServlet?md=find"%>>
            <div class="layui-form-item blog-sewrap">
                <div class="layui-input-block blog-sebox">
                    <i class="layui-icon layui-icon-search"></i>
                    <input type="text" name="xinxi" lay-verify="title" autocomplete="off"  class="layui-input">
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
            <h4 class="item-title">
                <p><i class="layui-icon layui-icon-speaker"></i>公告：<span>欢迎来到闲言失物招领平台</span></p>
            </h4>
            <c:if test="${empty list}">
                <h1 align="center">还没有人发布招领信息   快去发布吧！</h1>
            </c:if>
            <c:if test="${not empty list }">
                <c:forEach items="${list }" var="i">
                    <div class="item">
                        &lt;%&ndash;<div class="item-box  layer-photos-demo1 layer-photos-demo">
                            <h3><a href="details.html">${i.username }</a></h3>
                            <h5>发布于：<span>${i.stape }</span></h5>
                            <p>物品名：${i.tname}<br>时间：${i.tape}<br>地点：${i.locar}<br>类型：${i.leixing}<br>物品描述： ${i.infor }</p>
                        </div>
                        <div class="comment count">
                            <a href="message.jsp?id=${i.id}">留言</a>
                            <a href="javascript:;" class="like">点赞</a>
                        </div>&ndash;%&gt;
                    </div>
                </c:forEach>
            </c:if>

        </div>
        <!-- <div class="item-btn">
            <button class="layui-btn layui-btn-normal">下一页</button>
        </div> -->
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
<script src="res/layui/layui.js"></script>
<script>
    layui.config({
        base: 'res/static/js/'
    }).use('blog');
</script>
</body>
</html>--%>
