<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>欢迎登录管理系统</title>
<link href="css/style.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" src="js/jquery.js"></script>
<script src="js/cloud.js" type="text/javascript"></script>

<script language="javascript">
	$(function(){
    $('.loginbox').css({'position':'absolute','left':($(window).width()-692)/2});
	$(window).resize(function(){  
    $('.loginbox').css({'position':'absolute','left':($(window).width()-692)/2});
    })  
});  
</script> 

</head>

<body style="background-color:#1c77ac; background-image:url(images/light.png); background-repeat:no-repeat; background-position:center top; overflow:hidden;">



    <div id="mainBody">
      <div id="cloud1" class="cloud"></div>
      <div id="cloud2" class="cloud"></div>
    </div>  


<div class="logintop">    
    <span>欢迎登录后台管理界面平台</span>    
    <ul>
    <li><a href="#">回首页</a></li>
    <li><a href="#">帮助</a></li>
    <li><a href="#">关于</a></li>
    </ul>    
    </div>
    
    <div class="loginbody">
    
    <span class="systemlogo"></span> 
      
    <div align="center">
      <form action="<%=request.getContextPath() %>/ZhuceServlet" method = "post">
<!-- 	    <div class="loginbox"> -->
	    
	    <ul style="position:absolute;top:3.9cm;left:19cm;">
	    <li><input id="username" name="username" type="text" class="loginuser" value="用户名" 	 onclick="JavaScript:this.value=''" onkeyup="Fusername()"/><label><span id="zhuce1" style="color:red;"></span><span id="zhuce11" style="color:green;"></span></label></li>
	    <li><input id="password" name="password" type="password" class="loginpwd" value="密码"   onclick="JavaScript:this.value=''" onchange="Fpassword()"/><span id="zhuce2" style="color:red;"></span><span id="zhuce12" style="color:green;"></span></li>
	    <li><input id="password1" name="password1" type="password" class="loginpwd" value="确认密码" onclick="JavaScript:this.value=''" onkeyup="Fpassword1()"/><span id="zhuce3" style="color:red;"></span><span id="zhuce13" style="color:green;"></span></li>
	    <li><input id="pingtaimc" name="pingtaimc" type="text" class="loginuser" value="平台名称" 	 onclick="JavaScript:this.value=''" onkeyup="Fpingtaimc()"/><span id="zhuce4" style="color:red;"></span><span id="zhuce14" style="color:green;"></span></li>
	    <li><input id="pingtaibh" name="pingtaibh" type="text" class="loginuser" value="平台编号" 	 onclick="JavaScript:this.value=''" onkeyup="Fpingtaibh()"/><span id="zhuce5" style="color:red;"></span><span id="zhuce15" style="color:green;"></span></li>
	    <li><input id="jsly" name="jsly" type="text" class="loginuser" value="技术领域" 	   onclick="JavaScript:this.value=''" onkeyup="Fjsly()"/><span id="zhuce6" style="color:red;"></span><span id="zhuce16" style="color:green;"></span></li>
	    <li><input id="phone" name="phone" type="text" class="loginuser" value="手机号码" 	   onclick="JavaScript:this.value=''" onkeyup="Fphone()"/><span id="zhuce7" style="color:red;"></span><span id="zhuce17" style="color:green;"></span></li>
	    <li><input id="email" name="email" type="text" class="loginuser" value="电子邮箱" 	   onclick="JavaScript:this.value=''" onchange="Femail()"/><span id="zhuce8" style="color:red;"></span><span id="zhuce18" style="color:green;"></span></li>
	    
	    <li><input name="caozuo" type="submit" class="loginbtn" value="注册"  onclick = "return Fjiancha()"  /><label></label><label><a href="#"></a></label></li>
	    </ul>
    
    
   		 </div>
    </form>
    </div>
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
			document.getElementById("zhuce11").innerHTML="";
		}
		
		
		//密码
		var password=document.getElementById("password");

		if(password.value==""||password.value==null){
			document.getElementById("zhuce2").innerHTML="密码不能为空";
			document.getElementById("zhuce12").innerHTML="";
			return false;
		}else{
			document.getElementById("zhuce2").innerHTML="";
			document.getElementById("zhuce12").innerHTML="";
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
			document.getElementById("zhuce13").innerHTML="";
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
			document.getElementById("zhuce14").innerHTML="";
			document.getElementById("zhuce4").innerHTML="";
		}
		//平台编号
		var pingtaibh=document.getElementById("pingtaibh");
		if(pingtaibh.value==null||pingtaibh.value==""){
			document.getElementById("zhuce5").innerHTML="此项不能为空";
			document.getElementById("zhuce15").innerHTML="";
			return false;
		}else{
			document.getElementById("zhuce15").innerHTML="";
			document.getElementById("zhuce5").innerHTML="";
		}
		
		//技术领域
		var jsly=document.getElementById("jsly");
		if(jsly.value==null||jsly.value==""){
			document.getElementById("zhuce6").innerHTML="此项不能为空";
			document.getElementById("zhuce16").innerHTML="";
			return false;
		}else{
			document.getElementById("zhuce16").innerHTML="";
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
        	document.getElementById("zhuce17").innerHTML="";
			document.getElementById("zhuce7").innerHTML="";
        }
		//电子邮箱
		var email=document.getElementById("email").value;
		var myReg =/^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$/;
		if(!(myReg.test(email))){  
            //emailSpan.innerText = "不是电子邮箱";
            document.getElementById("zhuce8").innerHTML="不是电子邮箱";
			document.getElementById("zhuce18").innerHTML="";
           return false;  
        } else{
        	document.getElementById("zhuce18").innerHTML="";
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
															document.getElementById("zhuce11").innerHTML="";
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
															document.getElementById("zhuce12").innerHTML="";
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
															document.getElementById("zhuce13").innerHTML="";
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
															document.getElementById("zhuce14").innerHTML="";
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
															document.getElementById("zhuce15").innerHTML="";
															document.getElementById("zhuce5").innerHTML="";
														}
														
															
													}
													function Fjsly(){
														var jsly=document.getElementById("jsly");
														if(jsly.value==null||jsly.value==""){
															document.getElementById("zhuce6").innerHTML="此项不能为空";
															document.getElementById("zhuce16").innerHTML="";
														}else{
															document.getElementById("zhuce16").innerHTML="";
															document.getElementById("zhuce6").innerHTML="";
														}
													}
													function Fjsly(){
														var jsly=document.getElementById("jsly");
														if(jsly.value==null||jsly.value==""){
															document.getElementById("zhuce6").innerHTML="此项不能为空";
															document.getElementById("zhuce16").innerHTML="";
														}else{
															document.getElementById("zhuce16").innerHTML="";
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
												        	document.getElementById("zhuce17").innerHTML="";
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
												            document.getElementById("zhuce8").innerHTML="不是电子邮箱";
															document.getElementById("zhuce18").innerHTML=""; 
												        } else{
												        	document.getElementById("zhuce18").innerHTML="";
															document.getElementById("zhuce8").innerHTML="";
												        }
														
													}
	
	


</script>
    
    
    <div class="loginbm"></div>
</body>
</html>
