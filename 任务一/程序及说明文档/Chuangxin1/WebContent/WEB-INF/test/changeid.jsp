<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<input type="text" id="w" >
	<button  value="修改" ></button>
	<span id="show"></span>
	<span id="show2"></span>
</body>
<%
	int num=0;
	session.setAttribute("num", num);
	response.sendRedirect("tianjia.jsp");
%>
</html>

<script>
	function change(){
		
		var idd=document.getElementById("w");
		document.getElementById("show").innerHTML=idd.id;
		<%
		num=num+1;
		%>
		idd.id=idd.id+<%=num%>;
		
		document.getElementById("show2").innerHTML=idd.id;
		return false;
	}
</script>