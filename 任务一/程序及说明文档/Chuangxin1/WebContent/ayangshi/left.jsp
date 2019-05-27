<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="js/jquery.js"></script>

<script type="text/javascript">
$(function(){	
	//导航切换
	$(".menuson li").click(function(){
		$(".menuson li.active").removeClass("active")
		$(this).addClass("active");
	});
	
	$('.title').click(function(){
		var $ul = $(this).next('ul');
		$('dd').find('ul').slideUp();
		if($ul.is(':visible')){
			$(this).next('ul').slideUp();
		}else{
			$(this).next('ul').slideDown();
		}
	});
})	
</script>


</head>

<body style="background:#f0f9fd;">
	<div class="lefttop"><span></span><a href="index.jsp" target="rightFrame">首页</a></div>
    
    <dl class="leftmenu">
        
    <dd>

    <div class="title">
    <span><img src="images/leftico01.png" href="#"/></span>信息填报
    </div>
    	<ul class="menuson">
        <li><cite></cite><a href="jibenxinxi.jsp" target="rightFrame">基本信息表</a><i></i></li>
        <!-- <li><cite></cite><a href="all.jsp" target="rightFrame">我的所有表</a><i></i></li> -->

        </ul>    
    </dd>
        
    
    <dd>
    <div class="title">
    <span><img src="images/leftico02.png" /></span>查询
    </div>
    	<ul class="menuson">
<!--     	<li><cite></cite><a href="fenleicx.jsp" target="rightFrame">分类查询</a><i></i></li> -->
<!--         <li><cite></cite><a href="duoselect.jsp" target="rightFrame">条件查询</a><i></i></li> -->
<!--         <li><cite></cite><a href="#">档案列表显示</a><i></i></li> -->
        </ul>     
    </dd> 
    
 
    
    
    </dl>
</body>
</html>