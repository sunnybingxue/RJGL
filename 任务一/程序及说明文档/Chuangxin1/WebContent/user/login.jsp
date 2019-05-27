<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<% 
String s=(String)session.getAttribute("error");
if(request.getAttribute("error")!=null){
	out.print("<script language='javaScript'>alert('密码错误');</script>");
}
%>
<body>
<div align="center">
<form action="<%=request.getContextPath() %>/ZhuceServlet" method = "post">
	用户名:<input id="username" name="username" type="text" onkeyup="Fkong(this.id)"/><span id="username1"></span><span id="username11"></span>
	</br>
	密&nbsp;码:<input id="password" name="password" type="password" onkeyup="Fkong(this.id)"/><span id="password1"></span><span id="password11"></span>
	</br>
	<input type="submit" value="登录" name="caozuo" onclick = "return Fjiancha()"><span id="p"></span>
	<a href="zhuce.jsp">注册</a>
</form>
</div>
<script type="text/javascript">
		function Fkong(id){
			var inputid=id;
			var username=document.getElementById(inputid);
			if(username.value==""||username.value==null){
				document.getElementById(inputid+''+1).innerHTML="此项不能为空";
				document.getElementById(inputid+''+11).innerHTML="";
			}else{
				document.getElementById(inputid+''+1).innerHTML="";
				document.getElementById(inputid+''+11).innerHTML="";
			}
		}
		function Fjiancha(){
			var inputid="username";
			var username=document.getElementById(inputid);
			if(username.value==""||username.value==null){
				document.getElementById(inputid+''+1).innerHTML="此项不能为空";
				document.getElementById(inputid+''+11).innerHTML="";
				return false;
			}else{
				document.getElementById(inputid+''+1).innerHTML="";
				document.getElementById(inputid+''+11).innerHTML="";
			}
			
			var inputid="password";
			var username=document.getElementById(inputid);
			if(username.value==""||username.value==null){
				document.getElementById(inputid+''+1).innerHTML="此项不能为空";
				document.getElementById(inputid+''+11).innerHTML="";
				return false;
			}else{
				document.getElementById(inputid+''+1).innerHTML="";
				document.getElementById(inputid+''+11).innerHTML="";
			}
			
			
		}

</script>
</body>

</html>