<%@page import="Model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="js/jquery.js"></script>
<script type="text/javascript">
$(function(){	
	//顶部导航切换
	$(".nav li a").click(function(){
		$(".nav li a.selected").removeClass("selected")
		$(this).addClass("selected");
	})	
})	
</script>


</head>
<%
		User user=new User();
		user=(User)session.getAttribute("user");
		if(user==null){
%>
			<jsp:forward page="login.jsp"></jsp:forward>
<% 
		}
%>
<body style="background:url(images/topbg.gif) repeat-x;">

    <div class="topleft">
<!--     <a href="main.html" target="_parent"><img src="images/logo.png" title="系统首页" /></a> -->
<!-- 		<span style="font-size:40px;color:white;">科技创新平台</span> -->
    </div>
    <div class="topright">    
    <ul>
<!--     <li><span><img src="images/help.png" title="帮助"  class="helpimg"/></span><a href="#">帮助</a></li> -->
<!--     <li><a href="#">关于</a></li> -->
	<li><span style="color:white">欢迎<%=user.getUsername() %>登录</span></li>
    <li><a href="login.jsp" target="_parent">退出</a></li>
    </ul>
    </div>
    <div >
         &nbsp;
        <span style="font-size:40px;color:white;"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;科技创新平台填报系统</span>
     </div>
    <ul class="nav" >

    </ul>
            
    
     
    <div class="user">
    <span>admin</span>
    <i>消息</i>
    <b></b>
    </div>    
    
    </div>
</body>
</html>