<%@page import="Model.Jibenxx"%>
<%@page import="Bean.JibenDao"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="Model.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="//apps.bdimg.com/libs/jqueryui/1.10.4/css/jquery-ui.min.css">
  <script src="//apps.bdimg.com/libs/jquery/1.10.2/jquery.min.js"></script>
  <script src="//apps.bdimg.com/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
  <link rel="stylesheet" href="jqueryui/style.css">
  <script>
  $(function() {
    $( "#pizhunny" ).datepicker();
  });
  
  $(function() {
	    $( "#zrchusheng" ).datepicker();
	  });
  </script>
  
 <script type="text/javascript" src="../addjs/address.js"></script> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<style>
	 span{
		color:red;
	}

</style>
<%
		User user=new User();
		user=(User)session.getAttribute("user");
		if(user==null){
%>
			<jsp:forward page="login.jsp"></jsp:forward>
<% 
		}
	%>
<% 	
		int id=Integer.parseInt(request.getParameter("id"));
		JibenDao jibenDao=new JibenDao();
		Jibenxx jibenxx=new Jibenxx();
		jibenxx=jibenDao.load(id);
		
%>
<body>

<form  id="jiben" action="<%=request.getContextPath() %>/BaocunServlet" method="post">
<table  frame="box" width="1500px">
	<tr>
		<td><a href="all.jsp"><span>返回</span></a></td>
	</tr>
	<tr>
<!-- 		<td>平台名称</td> -->
<!-- 		<td><input type="text" readonly="true" value="123"/></td> -->
<!-- 		<td>平台编号</td> -->
<!-- 		<td><input type="text" readonly="true" value="456"/></td> -->
		<td colspan="10">
		<div>
			</br>
			平台名称 <span>*</span><input id="pingtaimc" name="pingtaimc" type="text" readonly="true" value="<%=jibenxx.getPingtaimc()%>"/>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			平台编号 <span>*</span><input id="pingtaibh" name="pingtaibh" type="text" readonly="true" value="<%=jibenxx.getPingtaibh()%>"/>
			</br>
			</br>
			<hr>
		</div>
		</td>
		
	</tr>
	<tr>

		<td colspan="10">
			<div >
				</br>
				批准年月 <span>*</span><input id="pizhunny" name="pizhunny" type="text" onchange="bukong(this.id)" value="<%=jibenxx.getPizhunny()%>"/><span id="pizhunny1"></span><span id="pizhunny11"></span>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<%
				Date date=new Date();

				int s=jibenDao.suma()+1;
				SimpleDateFormat sim=new SimpleDateFormat("YYYYMMdd");
				String day=sim.format(date);
				String wenhao=day+s;
					
				%>
				批准文号 <span>*</span><input id="pizhunwh" name="pizhunwh" type="text" readonly="true" value="<%=jibenxx.getPizhunwh() %>"/>
				
				</br>
				</br>
				<hr>
			</div>
		</td>
		
	</tr>
	<tr >
							<!-- 		<td>技术领域</td> -->
							<!-- 		<td colspan="3"><input type="text" readonly="true" value="领域"/></td> -->
		<td colspan="10">
			<div >
				</br>
				技术领域 <span>*</span><input id="jsly" name="jsly" type="text" readonly="true" value="<%=jibenxx.getJsly()%>"/>
				</br>
				</br>
				<hr>
			</div>
		</td>
		
	</tr>
	<tr >
									<!-- 		<td>平台级别</td> -->
									<!-- 		<td ><input id="jibie" name="jibie" type="checkbox" value="国家级">国家级</input><input  id="jibie" name="jibie"type="checkbox" value="省级"/>省级</input></td> -->
									<!-- 		<td>所在市县区</td> -->
									<!-- 		<td> -->
									<!-- 			<select id="cmbProvince" name="cmbProvince"></select>     -->
									<!-- 			<select id="cmbCity" name="cmbCity"></select>     -->
									<!-- 			<select id="cmbArea" name="cmbArea"></select>     -->
									  
									<!--     		<script type="text/javascript" src="../js/jquery-1.7.2.min.js"></script> -->
									<!-- 			<script type="text/javascript">     -->
<!-- 									// 				addressInit('cmbProvince', 'cmbCity', 'cmbArea');     -->
									<!-- 			</script>    -->
									<!-- 		</td> -->
		
		<td colspan="10">
			<div >
				</br>
				平台级别<span>*</span><input id="pingtaijb" name="pingtaijb" type="checkbox" value="国家级">国家级</input><input  id="pingtaijb" name="pingtaijb" type="checkbox" value="省级"/>省级</input>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				所在市县区
				<span>*</span>
					<select id="cmbProvince" name="cmbProvince"></select>    
					<select id="cmbCity" name="cmbCity"></select>    
					<select id="cmbArea" name="cmbArea"></select>    
					<span id="nian1"></span><span id="nian11"></span>
  
    		<script type="text/javascript" src="../js/jquery-1.7.2.min.js"></script>
			<script type="text/javascript">    
				addressInit('cmbProvince', 'cmbCity', 'cmbArea');    
			</script>   
				</br>
				</br>
				<hr>
			</div>
		</td>
		
		
	</tr>

	<tr>
		<td rowspan="3"> 平台组织形式</td>
		<td rowspan="3">
			<div>
				<input id="zuzhi" name="zuzhi" type="checkbox" value="内设机构相对独立" onchange="checks()">内设机构</br>相对独立(无法人资格)
			</div>
		</td>
		<td rowspan="3">	
				 	<div>
				 		<input id="zuzhi2" name="zuzhi2" type="checkbox" value="独立法人" onchange="checks1()">独立法人
				 	</div>
		</td>
		
		<td rowspan="3">
		
				 	<input id="zuzhi1" name="zuzhi1" type="radio" value="企业法人" >企业法人</br>
				 	<input id="zuzhi1" name="zuzhi1" type="radio" value="事业法人">事业法人</br>
				 	<input id="zuzhi1" name="zuzhi1" type="radio" value="社团法人">社团法人</br>
				 	
		</td>

	</tr>
	<script>
	function checks() {   
		 var flag = document.getElementById("zuzhi").checked;
		 var cks = document.getElementsByName("zuzhi1");
		 var c=document.getElementsByName("zuzhi2");
		 if (flag) {
			 c[0].disabled=true;
			   for ( var i = 0; i < cks.length; i++) {
			 
			    cks[i].disabled = true;
			 
			   }
			 
			  } else {
				  c[0].disabled=false;
			   for ( var i = 0; i < cks.length; i++) {
				 
			    cks[i].disable = false;
			 
			   }
			 
			  }
	}  
	
	function checks1() {   
		 var flag = document.getElementById("zuzhi2").checked;
		 var cks = document.getElementsByName("zuzhi1");
		 var c = document.getElementsByName("zuzhi");
		 
		 if (flag) {
			 	c[0].disabled=true;
			   for ( var i = 0; i < cks.length; i++) {
			 
			    cks[i].disabled = false;
			 
			   }
			 
			  } else {
				  c[0].disabled=false;
			   for ( var i = 0; i < cks.length; i++) {
			 	
			    cks[i].disable = true;
			 
			   }
			 
			  }
	}  
	</script>
	
	<tr>
		<td colspan="4"> 
		<input id="jianshe" name="jianshe" type="checkbox" value="多单位联合共建">多单位联合共建</br>
		<input id="jianshe" name="jianshe" type="checkbox" value="依托单位独立建设">依托单位独立建设</br>
		<hr>
		</td>
	</tr>
	
	<tr>
		<td >京津冀共建 </td>
		<div>
		
		</div>
		<td > 
		<input id="gongjian" name="gongjian" type="radio"  checked value="是"> 是
		<input id="gongjian" name="gongjian" type="radio" value="否"> 否
		
		</td>
		
	</tr>
	<div>
	<tr>
		<td colspan="10">
			
			<hr>
			服务的主要国民经济行业
			<input id="fuwuhangye1" name="fuwuhangye1" type="text" onchange="sanji(this.id)" value="<%=jibenxx.getZhuyaohy1()%>"></input>
			<input id="fuwuhangye11" name="fuwuhangye11" type="text" disabled="true" onchange="sanji(this.id)" value="<%=jibenxx.getZhuyaohy11()%>"></input>
			<input id="fuwuhangye111" name="fuwuhangye111" type="text" disabled="true" value="<%=jibenxx.getZhuyaohy111()%>"></input>
			<hr>
		</td>
		
		<script>
			function sanji(id){
				var inputid=id;
				var id1=document.getElementById(inputid).value;
				var id2=inputid+''+"1";
				var cks = document.getElementById(id2);
				if(id1==""||id1==null){
					cks.disabled="true";
				}
				else{
					
					cks.removeAttribute('disabled');
				}
			}
		</script>
	</tr>
	</div>
	<tr>
		<td colspan="10">
			
			所属主要学科&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input id="suoshuxk1" name="suoshuxk1" type="text" onchange="sanji1(this.id)" value="<%=jibenxx.getZhuyaoxk1()%>"></input>
			<input id="suoshuxk11" name="suoshuxk11" type="text" disabled="true" onchange="sanji1(this.id)" <%=jibenxx.getZhuyaoxk1()%>></input>
			<input id="suoshuxk111" name="suoshuxk111" type="text" disabled="true" <%=jibenxx.getZhuyaoxk1()%>></input>
			<hr>
		</td>
	</tr>
		<script>
			function sanji1(id){
				var inputid=id;
				var id1=document.getElementById(inputid).value;
				var id2=inputid+''+"1";
				var cks = document.getElementById(id2);
				if(id1==""||id1==null){
					cks.disabled="true";
				}
				else{
					
					cks.removeAttribute('disabled');
				}
			}
		</script>
		
	<tr>
		<td>依托单位名称</td>
		<td><input id="yituomc" name="yituomc" type="text" onchange="zhongwen(this.id)" value="<%= jibenxx.getYituomc()%>"/>&nbsp;&nbsp;<span id="yituomc1"></span><span id="yituomc11"></span></td>
		<td>依托单位组织机构代码</td>
		<td><input id="yituodm" name="yituodm" type="text" onchange="bukong(this.id)" value="<%= jibenxx.getYituodm()%>"/><span id="yituodm1"></span><span id="yituodm11"></span></td>
	</tr>
	<tr>
			<td colspan="10">
				<hr>
			</td>
	</tr>
	<tr>
		<td>依托单位法人代表姓名</td>
		<td><input id="yituofr" name="yituofr" type="text" onchange="zhongwen(this.id)" value="<%=jibenxx.getYituofr()%>"/><span id="yituofr1" ></span><span id="yituofr11"></span></td>
		<td>办公电话</td>
		<td><input id="yituodh" name="yituodh" type="text" onchange="dianhua(this.id)" value="<%= jibenxx.getYituodh()%>"/><span id="yituodh1"></span><span id="yituodh11"></span></td>
	</tr>
	<tr>
			<td colspan="10">
				<hr>
			</td>
	</tr>
	<tr>
		<td>依托单位类型</td>
		<td colspan="4">
			<input id="" name="yituolx" value="企业" type="radio" checked/>企业&nbsp;&nbsp;
			<input id="" name="yituolx" value="科研机构" type="radio"/>科研机构
			<input id="" name="yituolx" value="高等院校" type="radio"/>高等院校
			<input id="" name="yituolx" value="检测机构" type="radio"/>检测机构
			</br>
			<input id="" name="yituolx" value="医疗机构" type="radio"/>医疗机构
			<input id="" name="yituolx" value="政府机构" type="radio"/>政府机构
			<input id="" name="yituolx" value="社团组织" type="radio"/>社团组织
			<input id="" name="yituolx" value="其他" type="radio"/>其他
		</td>
	</tr>
	<tr>
			<td colspan="10">
				<hr>
			</td>
	</tr>
	<tr>
		<td>共建单位</td>
		<td colspan="4">
		<input type="button" name="addinputtext" value="增加一行" onClick="AddInputText(document.all.mydiv.innerHTML)"/>

		<input type="button" name="delinputtext" value="减少一行" onClick="DelInputText(document.all.mydiv.innerHTML)"/>
		<input type="text" name="gongjiandw" id="gongjiandw" value="<%=jibenxx.getGongjiandw()%>">
		<div id="mydiv"></div>
		</td>

	</tr>
	<script language="javascript">
	
  function AddInputText(innerHTML)
  {
	 
    document.all.mydiv.innerHTML = innerHTML + "<input type='text' name='gongjiandw' id='gongjiandw' value=''>"+"&nbsp;";
  }

  function DelInputText(innerHTML)
  {
    var endPos = innerHTML.lastIndexOf("<");
    innerHTML = innerHTML.substr(0,endPos);
    document.all.mydiv.innerHTML = innerHTML;
  }

</script>
	<tr>
			<td colspan="10">
				<hr>
			</td>
	</tr>
	<tr >
		<td rowspan="5">平台主任</td>
		<td>
			姓名<input id="zrxingming" name="zrxingming" type="text" onchange="zhongwen(this.id)" value="<%= jibenxx.getZrxingming()%>"/>
			<span id="zrxingming1"></span><span id="zrxingming11"></span>
		</td>
		<td></td>
		<td>性别<input id="zrxingbie" name="zrxingbie" type="radio" value="男" checked/> 男<input id="zrxingbie" name="zrxingbie" type="radio"value="女" />女</td>
		<td></td>
		<td>出生年月<input id="zrchusheng" name="zrchusheng" type="text" value="<%= jibenxx.getZrchusheng()%>"/></td>
		<td></td>
		<td>职称<input id="zrzhicheng" name="zrzhicheng" type="text" onchange="zhongwen(this.id)" value="<%= jibenxx.getZrzhicheng()%>"/>
				<span id="zrzhicheng1"></span><span id="zrzhicheng11"></span>
		</td>
		<td></td>
		<td colspan="10">
				<hr>
			</td>
	</tr>
	<tr>
			<td colspan="10">
				<hr>
			</td>
	</tr>
	<tr>
		<td>所学专业<input id="zrzhuanye" name="zrzhuanye" type="text" onchange="zhongwen(this.id)" value="<%= jibenxx.getZrzhuanye()%>"/><span id="zrzhuanye1"></span><span id="zrzhuanye11"></span></td>
		<td></td>
		<td>学历<input id="zrxueli" name="zrxueli" type="text" onchange="zhongwen(this.id)" value="<%= jibenxx.getZrxueli()%>"/><span id="zrxueli1"></span><span id="zrxueli11"></span></td>
		<td></td>
		<td>学位<input id="zrxuewei" name="zrxuewei" type="text" onchange="zhongwen(this.id)" value="<%= jibenxx.getZrxuewei()%>"/><span id="zrxuewei1"></span><span id="zrxuewei11"></span></td>
		<td></td>
		
	</tr>
	<tr>
			<td colspan="10">
				<hr>
			</td>
	</tr>
	<tr>
		<td>办公电话<input id="zrdianhua" name="zrdianhua" type="text" onchange="dianhua(this.id)" value="<%= jibenxx.getZrdianhua()%>"/><span id="zrdianhua1"></span><span id="zrdianhua11"></span></td>
		<td></td>
		<td>手机<input id="zrshouji" name="zrshouji" type="text" onchange="shouji(this.id)" maxlength="11" value="<%= jibenxx.getZrshouji()%>"/><span id="zrshouji1"></span><span id="zrshouji11"></span></td>
		<td></td>
		<td>E-mail<input id="zremail" name="zremail" type="text" onchange="email(this.id)"/><span id="zremail1" value="<%= jibenxx.getZremail()%>"></span><span id="zremail11"></span></td>
		<td></td>
	
	
		
	</tr>
	<tr>
		<td colspan="10">
		<hr>
		</td>
	</tr>
	<tr>
		<td>平台网站名称<input id="wangzhanmc" name="wangzhanmc" type="text" onchange="bukong(this.id)" value="<%= jibenxx.getPingtaimc()%>"/><span id="wangzhanmc1"></span><span id="wangzhanmc11"></span></td>
		<td></td>
		<td>网址<input id="pingtaiwz" name="pingtaiwz" type="text" onchange="wangzhi(this.id)"/> <span id="pingtaiwz1" value="<%= jibenxx.getPingtaiwz()%>"></span><span id="pingtaiwz11"></span></td>
		<td></td>
		
		
	</tr>
	<tr>
			<td colspan="10">
				<hr>
			</td>
	</tr>
	<tr>
		<td>平台通讯地址<input id="pingtaitx" name="pingtaitx" type="text" onchange="bukong(this.id)" value="<%= jibenxx.getPingtaitx()%>"/> <span id="pingtaitx1"></span><span id="pingtaitx11"></span></td>
		<td></td>
		<td>邮编<input id="pingtaiyb" name="pingtaiyb" type="text" onchange="youbian(this.id)" value="<%= jibenxx.getPingtaiyb()%>"/> <span id="pingtaiyb1"></span><span id="pingtaiyb11"></span></td>
		<td></td>
	</tr>
	<tr>
	<td> <input name="caozuo" type="submit" value="暂时保存"><input name="caozuo"type="submit" value="提交"  onclick = "return jiancha()"> </td>
	</tr>
</table>
</form>
<%
	
%>
<script>
		function zhongwen(id){
			var inputid=id;
			
			var guize=/^[\u4e00-\u9fa5],{0,}$/;
			guize.lastIndex = 0; 
			var neirong=document.getElementById(inputid).value;
			if(!guize.test(neirong)){
				document.getElementById(inputid+''+1).innerHTML="";
				document.getElementById(inputid+''+11).innerHTML="必须为中文";
			}else
				{
				document.getElementById(inputid+''+1).innerHTML="";
				document.getElementById(inputid+''+11).innerHTML="";
				}
			
			
		}
		
		function bukong(id){
			var inputid=id;
			var neirong=document.getElementById(inputid).value;
			if(neirong==null||neirong==""){
				document.getElementById(inputid+''+1).innerHTML="";
				document.getElementById(inputid+''+11).innerHTML="不能为空";
			}else
				{
				document.getElementById(inputid+''+1).innerHTML="";
				document.getElementById(inputid+''+11).innerHTML="";
				}
		}
				
		function dianhua(id){
			var inputid=id;
			var neirong=document.getElementById(inputid).value;
			var guize=/^(\(\d{3,4}\)|\d{3,4}-|\s)?\d{7,14}$/; 
			guize.lastIndex = 0;
			if(!guize.test(neirong)){
				document.getElementById(inputid+''+1).innerHTML="";
				document.getElementById(inputid+''+11).innerHTML="电话为8位";
			}else
				{
				document.getElementById(inputid+''+1).innerHTML="";
				document.getElementById(inputid+''+11).innerHTML="";
			}
		}
		
		//手机
		function shouji(id){
			var inputid=id;
			var neirong=document.getElementById(inputid).value;
			var guize=/^13[0-9]{9}$/; 
			//guize.lastIndex = 0;
			if(!guize.test(neirong)){
				document.getElementById(inputid+''+1).innerHTML="";
				document.getElementById(inputid+''+11).innerHTML="请输入11位手机号";
			}else
				{
				document.getElementById(inputid+''+1).innerHTML="";
				document.getElementById(inputid+''+11).innerHTML="";
			}
		}
		//email
		function email(id){
			var inputid=id;
			var neirong=document.getElementById(inputid).value;
			var guize=/^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$/; 
			//guize.lastIndex = 0;
			if(!guize.test(neirong)){
				document.getElementById(inputid+''+1).innerHTML="";
				document.getElementById(inputid+''+11).innerHTML="格式错误";
			}else
				{
				document.getElementById(inputid+''+1).innerHTML="";
				document.getElementById(inputid+''+11).innerHTML="";
			}
		}
		
				
		function wangzhi(id){
			var inputid=id;
			var str="^((https|http|ftp|rtsp|mms)?://)"
				   + "?(([0-9a-z_!~*'().&=+$%-]+: )?[0-9a-z_!~*'().&=+$%-]+@)?" //ftp的user@ 
				      + "(([0-9]{1,3}\.){3}[0-9]{1,3}" // IP形式的URL- 199.194.52.184 
				      + "|" // 允许IP和DOMAIN（域名）
				      + "([0-9a-z_!~*'()-]+\.)*" // 域名- www. 
				      + "([0-9a-z][0-9a-z-]{0,61})?[0-9a-z]\." // 二级域名 
				      + "[a-z]{2,6})" // first level domain- .com or .museum 
				      + "(:[0-9]{1,4})?" // 端口- :80 
				      + "((/?)|" // a slash isn't required if there is no file name 
				      + "(/[0-9a-z_!~*'().;?:@&=+$,%#-]+)+/?)$"
			var guize=new RegExp(str); 
			var neirong=document.getElementById(inputid).value;
			//var guize=/(http|ftp|https):\/\/[\w\-_]+(\.[\w\-_]+)+([\w\-\.,@?^=%&:/~\+#]*[\w\-\@?^=%&/~\+#])?/; 
			//guize.lastIndex = 0;
			if(!guize.test(neirong)){
				document.getElementById(inputid+''+1).innerHTML="";
				document.getElementById(inputid+''+11).innerHTML="格式错误";
			}else
				{
				document.getElementById(inputid+''+1).innerHTML="";
				document.getElementById(inputid+''+11).innerHTML="";
			}
		}
		
		 
		 //邮编
		function youbian(id){
			var inputid=id;
			var neirong=document.getElementById(inputid).value;
			var guize=/^[0-9][0-9]{5}$/; 
			//guize.lastIndex = 0;
			if(!guize.test(neirong)){
				document.getElementById(inputid+''+1).innerHTML="";
				document.getElementById(inputid+''+11).innerHTML="格式错误";
			}else
				{
				document.getElementById(inputid+''+1).innerHTML="";
				document.getElementById(inputid+''+11).innerHTML="";
			}
		}
		
</script>
<script>
		function jiancha(){
// 			var pizhunny=document.getElementById("pizhunny").value;
// 			var flag = 0 ;
// 			if(pizhunny==null||pizhunny=="")
// 				flag=1;
// 			var pingtaijb=document.getElementById("pingtaijb").value;
// 			if(pingtaijb==null||pingtaijb=="")
// 				flag=1;
			var sheng=document.getElementById("cmbProvince").value;
			var shi=document.getElementById("cmbCity").value;
			var xian=document.getElementById("cmbArea").value;
 			if(sheng!="请选择省份"||shi!="请选择城市"||xian!="请选择区县"){
 				alert("");
 			}
 				
// 					document.getElementById("nian").innerHTML="";
// 					document.getElementById("nian1").innerHTML="必须为中文";
// 					flag=1;
// 				}else
// 					{
// 					document.getElementById("nian").innerHTML="";
// 					document.getElementById("nian1").innerHTML="";
// 			}

			
			var ids=new Array();
			ids[0]="yituomc";
			ids[1]="yituofr";
			ids[2]="zrxingming";
			ids[3]="zrzhicheng";
			ids[4]="zrzhuanye";
			ids[5]="zrxueli";
			ids[6]="zrxuewei";
			ids[7]="wangzhanmc";
			ids[8]="pingtaitx";
			for(var i=0;i<=8;i++){
				var inputid=ids[i];
				var guize=/^[\u4e00-\u9fa5],{0,}$/;
				guize.lastIndex = 0; 
				var neirong=document.getElementById(inputid).value;
				if(!guize.test(neirong)){
					document.getElementById(inputid+''+1).innerHTML="";
					document.getElementById(inputid+''+11).innerHTML="必须为中文";
					flag=1;
				}else
					{
					document.getElementById(inputid+''+1).innerHTML="";
					document.getElementById(inputid+''+11).innerHTML="";
					}
			}
			
			var idss=new Array();
			idss[0]="yituodm";
			idss[1]="wangzhanmc";
			idss[2]="pingtaitx";
			idss[3]="pizhunny";
			for(var i=0;i<=3;i++){
				var inputid=idss[i];
				var neirong=document.getElementById(inputid).value;
				if(neirong==null||neirong==""){
					document.getElementById(inputid+''+1).innerHTML="";
					document.getElementById(inputid+''+11).innerHTML="不能为空";
					flag=1;
				}else
					{
					document.getElementById(inputid+''+1).innerHTML="";
					document.getElementById(inputid+''+11).innerHTML="";
					}
			}
			
				var inputid="zrdianhua";
				var neirong=document.getElementById(inputid).value;
				var guize=/^(\(\d{3,4}\)|\d{3,4}-|\s)?\d{7,14}$/; 
				guize.lastIndex = 0;
				if(!guize.test(neirong)){
					document.getElementById(inputid+''+1).innerHTML="";
					document.getElementById(inputid+''+11).innerHTML="电话为8位";
					flag=1;
				}else
					{
					document.getElementById(inputid+''+1).innerHTML="";
					document.getElementById(inputid+''+11).innerHTML="";
				}
				
				var inputid="yituodh";
				var neirong=document.getElementById(inputid).value;
				var guize=/^(\(\d{3,4}\)|\d{3,4}-|\s)?\d{7,14}$/; 
				guize.lastIndex = 0;
				if(!guize.test(neirong)){
					document.getElementById(inputid+''+1).innerHTML="";
					document.getElementById(inputid+''+11).innerHTML="电话为8位";
					flag=1;
				}else
					{
					document.getElementById(inputid+''+1).innerHTML="";
					document.getElementById(inputid+''+11).innerHTML="";
				}
			
			//手机
				var inputid="zrshouji";
				var neirong=document.getElementById(inputid).value;
				var guize=/^13[0-9]{9}$/; 
				//guize.lastIndex = 0;
				if(!guize.test(neirong)){
					document.getElementById(inputid+''+1).innerHTML="";
					document.getElementById(inputid+''+11).innerHTML="请输入11位手机号";
					flag=1;
				}else
					{
					document.getElementById(inputid+''+1).innerHTML="";
					document.getElementById(inputid+''+11).innerHTML="";
				}

			//email
				var inputid="zremail";
				var neirong=document.getElementById(inputid).value;
				var guize=/^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$/; 
				//guize.lastIndex = 0;
				if(!guize.test(neirong)){
					document.getElementById(inputid+''+1).innerHTML="";
					document.getElementById(inputid+''+11).innerHTML="格式错误";
					flag=1;
				}else
					{
					document.getElementById(inputid+''+1).innerHTML="";
					document.getElementById(inputid+''+11).innerHTML="";
				}

			
					

				var inputid="pingtaiwz";
				var str="^((https|http|ftp|rtsp|mms)?://)"
					   + "?(([0-9a-z_!~*'().&=+$%-]+: )?[0-9a-z_!~*'().&=+$%-]+@)?" //ftp的user@ 
					      + "(([0-9]{1,3}\.){3}[0-9]{1,3}" // IP形式的URL- 199.194.52.184 
					      + "|" // 允许IP和DOMAIN（域名）
					      + "([0-9a-z_!~*'()-]+\.)*" // 域名- www. 
					      + "([0-9a-z][0-9a-z-]{0,61})?[0-9a-z]\." // 二级域名 
					      + "[a-z]{2,6})" // first level domain- .com or .museum 
					      + "(:[0-9]{1,4})?" // 端口- :80 
					      + "((/?)|" // a slash isn't required if there is no file name 
					      + "(/[0-9a-z_!~*'().;?:@&=+$,%#-]+)+/?)$"
				var guize=new RegExp(str); 
				var neirong=document.getElementById(inputid).value;
				//var guize=/(http|ftp|https):\/\/[\w\-_]+(\.[\w\-_]+)+([\w\-\.,@?^=%&:/~\+#]*[\w\-\@?^=%&/~\+#])?/; 
				//guize.lastIndex = 0;
				if(!guize.test(neirong)){
					document.getElementById(inputid+''+1).innerHTML="";
					document.getElementById(inputid+''+11).innerHTML="格式错误";
					flag=1;
				}else
					{
					document.getElementById(inputid+''+1).innerHTML="";
					document.getElementById(inputid+''+11).innerHTML="";
				}

			
			 
			 //邮编
				var inputid="pingtaiyb";
				var neirong=document.getElementById(inputid).value;
				var guize=/^[0-9][0-9]{5}$/; 
				//guize.lastIndex = 0;
				if(!guize.test(neirong)){
					document.getElementById(inputid+''+1).innerHTML="";
					document.getElementById(inputid+''+11).innerHTML="格式错误";
					flag=1;
				}else
					{
					document.getElementById(inputid+''+1).innerHTML="";
					document.getElementById(inputid+''+11).innerHTML="";
				}

			
			if(flag==1){
			return false;
			}
			
		}
</script>
<script>
onload=function (){
	var cks = document.getElementsByName("pingtaijb");
	 if (<%=jibenxx.pingtaijb%>=="国家级") {
		 
		    cks[0].checked = true;
		 
		   }
	 if (<%=jibenxx.pingtaijb%>=="省级") {
		 
		    cks[1].checked = true;
		 
		   }
	 if (<%=jibenxx.pingtaijb%>=="国家级省级") {
		 	cks[0].checked = true;
		    cks[1].checked = true;
		 
		   }
}

</script>

</body>
</html>