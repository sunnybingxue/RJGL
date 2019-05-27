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
<style type='text/css'> 
    #code{ 
      font-family:Arial,宋体; 
      font-style:italic; 
      color:green; 
      border:0; 
      padding:2px 3px; 
      letter-spacing:3px; 
      font-weight:bolder; 
    } 
    </style> 
<script type='text/javascript' src='jquery-1.7.2.js'></script> 
    <script type='text/javascript'> 
    var code ; //在全局定义验证码  
       
    function createCode(){ 
       code = "";  
       var codeLength = 4;//验证码的长度  
       var checkCode = document.getElementById("code");  
       var random = new Array(0,1,2,3,4,5,6,7,8,9,'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R',  
       'S','T','U','V','W','X','Y','Z');//随机数  
       for(var i = 0; i < codeLength; i++) {//循环操作  
        var index = Math.floor(Math.random()*36);//取得随机数的索引（0~35）  
        code += random[index];//根据索引取得随机数加到code上  
      }  
      checkCode.value = code;//把code值赋给验证码  
    } 
    //校验验证码  
    function validate(){  
      var inputCode = document.getElementById("input").value.toUpperCase(); //取得输入的验证码并转化为大写     
      if(inputCode.length <= 0) { //若输入的验证码长度为0  
        alert("请输入验证码！"); //则弹出请输入验证码  
      }else if(inputCode != code ) { //若输入的验证码与产生的验证码不一致时  
        alert("验证码输入错误！@_@"); //则弹出验证码输入错误  
        createCode();//刷新验证码  
        document.getElementById("input").value = "";//清空文本框  
      }else { //输入正确时  
        alert("合格！^-^"); 
      } 
    } 
    </script> 
</head>

<body    onload='createCode()' style="background-color:#1c77ac; background-image:url(images/light.png); background-repeat:no-repeat; background-position:center top; overflow:hidden;">


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
      <form action="<%=request.getContextPath() %>/ZhuceServlet" method = "post">
	    <div class="loginbox">
	    
	    <ul style="position:absolute;left:-2.5cm;">
	    <li><input id="username" name="username" type="text" class="loginuser" placeholder="用户名" onkeyup="Fkong(this.id)" /><span id="username1" style="color:red"></span><span id="username11"></span></li>
	    <li><input id="password" name="password" type="password" class="loginpwd" placeholder="密码" onkeyup="Fkong(this.id)" /><span id="password1" style="color:red"></span><span id="password11"></span></li>
	    <li>
				<div>验证码：
			      <input type = "text" id = "input" placeholder="验证码" style="width:80px;height:25px;font-size:20px;border:1px solid #378888"/>  
			      <input type="button" id="code" onclick="createCode()"  style="width:80px;height:25px;font-size:20px" title='点击更换验证码' /> 
<!-- 			      <input type = "button" value = "验证" onclick = "validate()"/>  -->
			    </div>  
	    
	    </li>
	    <li><input id="butn"name="caozuo" type="submit" class="loginbtn" value="登录"  onclick = "return Fjiancha()"  /><label><input name="" type="checkbox" value="" checked="checked" />记住密码</label><label><a href="#">忘记密码？</a></label><label><a href="zhuce.jsp">注册</a></label></li>
	    </ul>
    
    
   		 </div>
    </form>
    </div>
    
    
    
    <div class="loginbm"></div>
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
			
			var inputCode = document.getElementById("input").value.toUpperCase(); //取得输入的验证码并转化为大写     
		      if(inputCode.length <= 0) { //若输入的验证码长度为0  
		        alert("请输入验证码！"); //则弹出请输入验证码  
		        return false;
		      }else if(inputCode != code ) { //若输入的验证码与产生的验证码不一致时  
		        alert("验证码输入错误！@_@"); //则弹出验证码输入错误  
		        createCode();//刷新验证码  
		        document.getElementById("input").value = "";//清空文本框  
		        return false;
		      }else { //输入正确时  
		        //alert("合格！^-^"); 
		      } 
			
		}

</script>
</body>
</html>
