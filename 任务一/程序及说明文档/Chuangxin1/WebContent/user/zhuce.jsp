<%@page import="Bean.UserDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<!-- <link href="../logincss/style.css" rel="stylesheet" type="text/css" /> -->
<!-- <link href="../css/styles.css" rel="stylesheet" type="text/css" /> -->
<body >
	
	<form id="zhuce" action="<%=request.getContextPath() %>/ZhuceServlet" method = "post">
			<table align="center">
				<tr>
				<td>用户名：</td>
				<td><input id="username" name="username" type = "text" onkeyup="Fusername()"/></td>
				<td><span id="zhuce1" style="color:red;"></span><span id="zhuce11" style="color:green;"></span></td>
				</tr>
				<tr>
				<td>密  码：</td>
				<td><input id="password" name="password" type = "password" onchange="Fpassword()"/></td>
				<td><span id="zhuce2" style="color:red;"></span><span id="zhuce12" style="color:green;"></span></td>
				</tr>
				<tr>
				<td>确认密码：</td>
				<td><input id="password1" name="password1" type = "password" onkeyup="Fpassword1()"/></td>
				<td><span id="zhuce3" style="color:red;"></span><span id="zhuce13" style="color:green;"></span></td>
				</tr>
				<tr>
				<td>平台名称：</td>
				<td><input id="pingtaimc" name="pingtaimc" type = "text" onkeyup="Fpingtaimc()"/></td>
				<td><span id="zhuce4" style="color:red;"></span><span id="zhuce14" style="color:green;"></span></td>
				</tr>
				<tr>
				<td>平台编号：</td>
				<td><input id="pingtaibh" name="pingtaibh" type = "text" onkeyup="Fpingtaibh()"/></td>
				<td><span id="zhuce5" style="color:red;"></span><span id="zhuce15" style="color:green;"></span></td>
				</tr>
				<tr>
				<td>技术领域：</td>
				<td><input id="jsly" name="jsly" type = "text" onkeyup="Fjsly()"/></td>
				<td><span id="zhuce6" style="color:red;"></span><span id="zhuce16" style="color:green;"></span></td>
				</tr>
				<tr>
				<td>手机号码：</td>
				<td><input id="phone" name="phone" type = "text" onkeyup="Fphone()"/></td>
				<td><span id="zhuce7" style="color:red;"></span><span id="zhuce17" style="color:green;"></span></td>
				</tr>
				<tr>
				<td>电子邮箱：</td>
				<td><input id="email" name="email" type = "text" onchange="Femail()"/></td>
				<td><span id="zhuce8" style="color:red;"></span><span id="zhuce18" style="color:green;"></span></td>
				</tr>
				<tr>
				<td><input name="caozuo" type="submit" onclick = "return Fjiancha()" value="注册"/></td>
				</tr>
				<tr>
				<td><a href="login.jsp">登录</a></td>
				</tr>
			</table>
			
	</form>	
<%
					if(session.getAttribute("error1")!=null){
						out.print("<script language='javaScript'>alert('用户名已存在');</script>");
					}

					
%>
	
	<script >
	
	function Fjiancha(){
			
		var username=document.getElementById("username");
		if(username.value==""||username.value==null){
			document.getElementById("zhuce1").innerHTML="用户名不能为空";
			document.getElementById("zhuce11").innerHTML="";
			return false;
		}else{
			document.getElementById("zhuce1").innerHTML="";
			document.getElementById("zhuce11").innerHTML="用户名格式正确";
		}
		
		
		//密码
		var password=document.getElementById("password");

		if(password.value==""||password.value==null){
			document.getElementById("zhuce2").innerHTML="密码不能为空";
			document.getElementById("zhuce12").innerHTML="";
			return false;
		}else{
			document.getElementById("zhuce2").innerHTML="";
			document.getElementById("zhuce12").innerHTML="密码格式正确";
		}
		//第二次密码
		var password=document.getElementById("password");
		var password1=document.getElementById("password1");
		if(password1.value==""||password1.value==null){
			document.getElementById("zhuce3").innerHTML="密码不能为空";
			document.getElementById("zhuce13").innerHTML="";
			return false;
		}
		if(password.value==password1.value){
			document.getElementById("zhuce13").innerHTML="两次密码一致";
			document.getElementById("zhuce3").innerHTML="";
		}
		else{
			document.getElementById("zhuce3").innerHTML="两次密码不一致";
			document.getElementById("zhuce13").innerHTML="";
			return false;
		}
		
		//平台名称
		var pingtaimc=document.getElementById("pingtaimc");
		if(pingtaimc.value==null||pingtaimc.value==""){
			document.getElementById("zhuce4").innerHTML="此项不能为空";
			document.getElementById("zhuce14").innerHTML="";
			return false;
		}else{
			document.getElementById("zhuce14").innerHTML="已填";
			document.getElementById("zhuce4").innerHTML="";
		}
		//平台编号
		var pingtaibh=document.getElementById("pingtaibh");
		if(pingtaibh.value==null||pingtaibh.value==""){
			document.getElementById("zhuce5").innerHTML="此项不能为空";
			document.getElementById("zhuce15").innerHTML="";
			return false;
		}else{
			document.getElementById("zhuce15").innerHTML="已填";
			document.getElementById("zhuce5").innerHTML="";
		}
		
		//技术领域
		var jsly=document.getElementById("jsly");
		if(jsly.value==null||jsly.value==""){
			document.getElementById("zhuce6").innerHTML="此项不能为空";
			document.getElementById("zhuce16").innerHTML="";
			return false;
		}else{
			document.getElementById("zhuce16").innerHTML="已填";
			document.getElementById("zhuce6").innerHTML="";
		}
		
		//手机号码
		var phone=document.getElementById("phone").value;
		var myReg =/(\d){7,11}/gi;  
        if(!myReg.test(phone)){  
            //telSpan.innerText = "";  
            document.getElementById("zhuce7").innerHTML="电话号是7位或者11位";
			document.getElementById("zhuce17").innerHTML="";
            return false;  
        }else{
        	document.getElementById("zhuce17").innerHTML="格式正确";
			document.getElementById("zhuce7").innerHTML="";
        }
		//电子邮箱
		var email=document.getElementById("email").value;
		var myReg =/^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$/;
		if(!(myReg.test(email))){  
            //emailSpan.innerText = "不是电子邮箱";
            document.getElementById("zhuce8").innerHTML="不是电子邮箱"+email.value;
			document.getElementById("zhuce18").innerHTML="";
           return false;  
        } else{
        	document.getElementById("zhuce18").innerHTML="格式正确";
			document.getElementById("zhuce8").innerHTML="";
        }
	}
													function Fusername(){
														//var username=document.getElementById("money");
													
														var username=document.getElementById("username");
														var z=/^\d{3,}$/;
														if(username.value==""||username.value==null||!z.test(username.value)){
															document.getElementById("zhuce1").innerHTML="用户名不能为空";
															document.getElementById("zhuce11").innerHTML="";
														}else{
															document.getElementById("zhuce1").innerHTML="";
															document.getElementById("zhuce11").innerHTML="用户名格式正确";
														}
															
													}
													function Fpassword(){
														//var username=document.getElementById("money");
														var password=document.getElementById("password");
														var zheng=/^(?:\d+|[a-zA-Z]+|[!@#$%^&*]+)$/;
														var zhong=/ ^(?![a-zA-z]+$)(?!\d+$)(?![!@#$%^&*]+$)[a-zA-Z\d!@#$%^&*]+$/;
														var qiang=/^(?![a-zA-z]+$)(?!\d+$)(?![!@#$%^&*]+$)(?![a-zA-z\d]+$)(?![a-zA-z!@#$%^&*]+$)(?![\d!@#$%^&*]+$)[a-zA-Z\d!@#$%^&*]+$/;
														
														if(password.value==""||password.value==null){
															document.getElementById("zhuce2").innerHTML="密码不能为空";
															document.getElementById("zhuce12").innerHTML="";
														}else{
															document.getElementById("zhuce2").innerHTML="";
															document.getElementById("zhuce12").innerHTML="密码强度低";
														}
														
															
													}
													function Fpassword1(){
														//var username=document.getElementById("money");
														var password=document.getElementById("password");
														var password1=document.getElementById("password1");
														if(password1.value==""||password1.value==null){
															document.getElementById("zhuce3").innerHTML="密码不能为空";
															document.getElementById("zhuce13").innerHTML="";
														}
														if(password.value==password1.value){
															document.getElementById("zhuce13").innerHTML="两次密码一致";
															document.getElementById("zhuce3").innerHTML="";
														}
														else{
															document.getElementById("zhuce3").innerHTML="两次密码不一致";
															document.getElementById("zhuce13").innerHTML="";
														}
															
													}
													function Fpingtaimc(){
														//var username=document.getElementById("money");
														var pingtaimc=document.getElementById("pingtaimc");
														if(pingtaimc.value==null||pingtaimc.value==""){
															document.getElementById("zhuce4").innerHTML="此项不能为空";
															document.getElementById("zhuce14").innerHTML="";
														}else{
															document.getElementById("zhuce14").innerHTML="已填";
															document.getElementById("zhuce4").innerHTML="";
														}
														
															
													}
													function Fpingtaibh(){
														//var username=document.getElementById("money");
														var pingtaibh=document.getElementById("pingtaibh");
														if(pingtaibh.value==null||pingtaibh.value==""){
															document.getElementById("zhuce5").innerHTML="此项不能为空";
															document.getElementById("zhuce15").innerHTML="";
														}else{
															document.getElementById("zhuce15").innerHTML="已填";
															document.getElementById("zhuce5").innerHTML="";
														}
														
															
													}
													function Fjsly(){
														var jsly=document.getElementById("jsly");
														if(jsly.value==null||jsly.value==""){
															document.getElementById("zhuce6").innerHTML="此项不能为空";
															document.getElementById("zhuce16").innerHTML="";
														}else{
															document.getElementById("zhuce16").innerHTML="已填";
															document.getElementById("zhuce6").innerHTML="";
														}
													}
													function Fjsly(){
														var jsly=document.getElementById("jsly");
														if(jsly.value==null||jsly.value==""){
															document.getElementById("zhuce6").innerHTML="此项不能为空";
															document.getElementById("zhuce16").innerHTML="";
														}else{
															document.getElementById("zhuce16").innerHTML="已填";
															document.getElementById("zhuce6").innerHTML="";
														}
													}
													function Fphone(){
														var phone=document.getElementById("phone").value;
														var myReg =/(\d){7,11}/gi;  
														
												        if(!myReg.test(phone)){  
												            //telSpan.innerText = "";  
												            document.getElementById("zhuce7").innerHTML="电话号是7位或者11位";
															document.getElementById("zhuce17").innerHTML="";
												            
												        }else{
												        	document.getElementById("zhuce17").innerHTML="格式正确";
															document.getElementById("zhuce7").innerHTML="";
												        }
														//电子邮箱
														
													}
													function Femail(){
														var email=document.getElementById("email").value;
														var myReg =/^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$/;
														myReg.lastIndex = 0;
														if(!(myReg.test(email))){  
												            //emailSpan.innerText = "不是电子邮箱";
												            document.getElementById("zhuce8").innerHTML="不是电子邮箱"+email.value;
															document.getElementById("zhuce18").innerHTML=""; 
												        } else{
												        	document.getElementById("zhuce18").innerHTML="格式正确";
															document.getElementById("zhuce8").innerHTML="";
												        }
														
													}
	
	


</script>
</body>
</html>