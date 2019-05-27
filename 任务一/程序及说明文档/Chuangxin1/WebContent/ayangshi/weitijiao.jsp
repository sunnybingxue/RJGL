<%@page import="java.util.List"%>
<%@page import="Bean.JibenDao"%>
<%@page import="Model.Jibenxx"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<script type="text/javascript" src="fyjs/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="fyjs/slimtable.min.js"></script>
<!-- <link rel="stylesheet" href="fycss/slimtable.css"> -->
<!-- <link rel="stylesheet" href="fycss/site.css"> -->
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
$(document).ready(function(){
  $(".click").click(function(){
  $(".tip").fadeIn(200);
  });
  
  $(".tiptop a").click(function(){
  $(".tip").fadeOut(200);
});

  $(".sure").click(function(){
  $(".tip").fadeOut(100);
});

  $(".cancel").click(function(){
  $(".tip").fadeOut(100);
});

});
</script>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<%
	JibenDao jibenDao=new JibenDao();
	List<Jibenxx> jibenxxs=jibenDao.loadall();
	
%>
<body>
	<div class="place">
    <span>位置：</span>
    <ul class="placeul">
    <li><a href="#">首页</a></li>
    <li><a href="#">数据表</a></li>
    <li><a href="#">基本内容</a></li>
    </ul>
    </div>
    
    <div class="rightinfo">
    
    <div class="tools">
    
    	<ul	 class="toolbar">
        <li class="click"><span><img src="images/t01.png" /></span>添加</li>
        <li class="click"><span><img src="images/t02.png" /></span>修改</li>
        <li><span><img src="images/t03.png" /></span>删除</li>
        <li><span><img src="images/t04.png" /></span>统计</li>
        </ul>
        
        
        <ul class="toolbar1">
        <li><span><img src="images/t05.png" /></span>设置</li>
        </ul>
    
    </div>
	<table id="exampletable" class="tablelist" align="center" border="1" width="500">
		<thead>
			<th>平台名称</th>
			<th>平台编号</th>
			<th>批准年月</th>
			<th>批准文号</th>
			<th>技术领域</th>
			<th>修改</th>
		</thead>
		<%
		
				for(Jibenxx jibenxx : jibenxxs){
					if(jibenxx.getType()==1)
						continue;
		%>
		<tr>
			<td><%=jibenxx.getPingtaimc() %></td>
			<td><%=jibenxx.getPingtaibh() %></td>
			<td><%=jibenxx.getPizhunny() %></td>
			<td><%=jibenxx.getPizhunwh() %></td>
			<td><%=jibenxx.getJsly() %></td>
			<td><a href="xiugai.jsp?id=<%=jibenxx.getId()%>">修改</a></td>
		</tr>
<%
			}
%>

	
	<table>
<script type="text/javascript">
$(function() {
	$("#exampletable").slimtable();
});
</script>
 <script type="text/javascript">
	$('.tablelist tbody tr:odd').addClass('odd');
	</script>
</body>
</html>