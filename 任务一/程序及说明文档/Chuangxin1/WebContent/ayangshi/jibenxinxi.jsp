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
<!--   <link href="css/style.css" rel="stylesheet" type="text/css" /> -->
  <script>
  $(function() {
    $( "#pizhunny" ).datepicker();
  });
  
  $(function() {
	    $( "#zrchusheng" ).datepicker();
	  });
  </script>
 <script type="text/javascript" src="./js/address.js"></script> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<style>
	 span{
		color:red;
	}
	input[type=submit]{  
    width: 100px;  
    height: 30px;  
    background-color: rgb(244,244,244);  
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
<body>

<form  id="jiben" action="<%=request.getContextPath() %>/TianjiaServlet" method="post">
<table  frame="box" width="1500px">
	<!--  <tr>
		<td colspan="10" align="center"><span>基本信息表<span></td>
	</tr>-->
	<tr>
		<td colspan="10">
		<div>
			</br>
			平台名称 <span></span><input id="pingtaimc" name="pingtaimc" type="text" readonly="true" value="<%=user.getPingtaimc()%>"/>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			平台编号 <span></span><input id="pingtaibh" name="pingtaibh" type="text" readonly="true" value="<%=user.getPingtaibh()%>"/>

		</div>
		</td>
		
	</tr>
	<tr>

		<td colspan="10">
			<div >

				批准年月 <span></span><input id="pizhunny" name="pizhunny" type="text" onchange="bukong(this.id)" /><span id="pizhunny1"></span><span id="pizhunny11"></span>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<%
				Date date=new Date();
				JibenDao jibenDao=new JibenDao();
				int s=jibenDao.suma()+1;
				SimpleDateFormat sim=new SimpleDateFormat("YYYYMMdd");
				String day=sim.format(date);
				String wenhao=day+s;
					
				%>
				批准文号 <span></span><input id="pizhunwh" name="pizhunwh" type="text" readonly="true" value="<%=wenhao %>"/>

			</div>
		</td>
		
	</tr>
	<tr >
		<td colspan="10">
			<div >

				技术领域 <span></span><input id="jsly" name="jsly" type="text" readonly="true" value="<%=user.getJsly()%>"/>

				<hr>
			</div>
		</td>
		
	</tr>
	<tr >
		
		<td colspan="10">
			<div >

				平台级别<span></span><input id="pingtaijb" name="pingtaijb" type="checkbox" value="国家级">国家级</input><input  id="pingtaijb" name="pingtaijb" type="checkbox" value="省级"/>省级</input>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				所在市县区
				<span></span>
					<select id="cmbProvince" name="cmbProvince"></select>    
					<select id="cmbCity" name="cmbCity"></select>    
					<select id="cmbArea" name="cmbArea"></select>    
					<span id="nian1"></span><span id="nian11"></span>
  
    		<script type="text/javascript" src="../js/jquery-1.7.2.min.js"></script>
			<script type="text/javascript">    
				addressInit('cmbProvince', 'cmbCity', 'cmbArea');    
			</script>   

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
  
    		<select id="fuwuhangye1" name="fuwuhangye1"> 
                  <option>--一级行业--</option> 
                  <option>农、林、牧、渔业</option><option>采矿业</option><option>制造业</option><option>电力、热力、燃气及水生产和供应业</option><option>建筑业</option><option>批发和零售业</option> </option><option>交通运输、仓储和邮政业</option>  
            </select> 
            <select id="fuwuhangye11" name="fuwuhangye11"> 
                   <option>--二级行业--</option> 
            </select> 
            <select id="fuwuhangye111" name="fuwuhangye111"> 
                    <option>--三级行业--</option> 
			</select> 
			<hr>
		</td>
		<script>
		  var myclass = [ 
		      [['农业'],['林业'],['畜牧业'],['渔业'],['农、林、牧、渔服务业']], 
		      [['煤炭开采和洗选业'],['石油和天然气开采业'],['黑色金属矿采选业'],['有色金属矿采选业'],['非金属矿采选业'],['开采辅助活动'],['其他采矿业']], 
		      [['农副食品加工业'],['食品制造业'],['酒、饮料和精制茶制造业'],['烟草制品业'],['纺织业'],['纺织服装、服饰业'],['皮革、毛皮、羽毛及其制品和制鞋业']], 
		      [['电力、热力生产及供应业'],['燃气生产和供应业'],['水的生产和供应业']], 
		      [['房屋建筑业'],['土木工程建筑业'],['建筑安装业'],['建筑装饰和其他建筑业']], 
		      [['批发业'],['零售业']],
		      [['铁路运输业'],['道路运输业'],['水上运输业'],['航空运输业'],['管道运输业']]
		  ]; 
		  var mystudy= [ 
			    [ //第一维代表专业 ， 第二维代表该专业的班级 ，第三维代表该班级的学生 
			      [['谷物种植'],['豆类、油料和薯类种植'],['棉、麻、糖和烟草种植'],['蔬菜、食用菌和园艺作物种植'],['水果种植'],['坚果，含油果、香料和饮料作物种植'],['中药材种植'],['其他农业']], 
			      [['林木育种和育苗'],['造林和更新'],['森林经营和管护'],['木材和竹材采运'],['林产品采集']], 
			      [['牲畜饲养'],['家禽饲养'],['狩猎和捕捉动物'],['其他畜牧业']],
			      [['水产养殖'],['水产捕捞']],
			      [['农业服务业'],['林业服务业'],['畜牧服务业'],['渔业服务业']]
			    ], 
			    [ 
			      [['烟煤和无烟煤开采洗选'],['褐煤开采洗选'],['其他煤炭洗选']], 
			      [['石油开采'],['天然气开采']], 
			      [['铁矿采选'],['锰矿、铬矿采选'],['其他黑色金属矿采选']],
			      [['常用有色金属矿采选'],['贵金属矿采选'],['稀有稀土金属矿采选']], 
			      [['土砂石开采'],['化学矿开采'],['采盐'],['石棉及其他非金属矿开采']], 
			      [['煤炭开采和洗选辅助活动'],['石油和天然气开采辅助活动'],['其他开采辅助活动']],
			      [['其他采矿业']]
			    ], 
			    [ 
			      [['谷物磨制'],['饲料加工'],['植物油加工'],['制糖业'],['屠宰及肉类加工'],['水产品加工']], 
			      [['烘焙食品制造'],['糖果巧克力及蜜饯制造'],['方便食品制造'],['乳制品制造']], 
			      [['酒的制造'],['饮料的制造'],['精制茶加工']],
			      [['烟叶复烤'],['卷烟制造'],['其他烟草制品制造']],
			      [['棉纺织及印染精加工'],['毛纺织及染整精加工'],['麻纺织及染整精加工'],['丝绢纺织及染整精加工']],
			      [['机织服装制造'],['针织或钩针编织服装制造'],['服饰制造']], 
			      [['皮革制品制造'],['羽毛加工及制品制造'],['制鞋业']]
			    ],
			    [ 
			        [['电力生产'],['电力供应'],['热力生产及供应']], 
			        [['燃气生产和供应业']], 
			        [['自来水的生产和供应'],['污水处理及其再生产利用'],['其他水的处理和应用']]     
			    ],
			    [ 
			        [['房屋建筑业']], 
			        [['铁路隧道桥梁工程建筑'],['海洋工程建筑'],['工况工程建筑'],['其他土木工程建筑']], 
			        [['电气安装'],['管道和设备安装'],['其他建筑安装业']],
			        [['建筑装饰业'],['工程准备活动'],['提供施工设备服务'],['其他未列明建筑业']] 
			    ],
			    [ 
			        [['农林牧产品批发'],['食品饮料及烟草制品批发'],['纺织服装及家庭用品批发']], 
			        [['综合零售'],['食品饮料和烟草制品零售'],['纺织服饰用品零售'],['医药及医疗器械零售']]
			    ],
			    [ 
			        [['铁路旅客运输'],['铁路货物运输'],['铁路运输辅助活动']], 
			        [['城市公共交通运输'],['公路旅客运输'],['道路货物运输'],['道路运输辅助活动']],
			        [['水上旅客运输'],['水上货物运输'],['水上运输辅助活动']], 
			        [['航空客货运输'],['通用航空服务'],['航空运输辅助活动']],
			        [['管道运输业']]
			    ] 
			  ]; 
		  document.getElementById("fuwuhangye1").onchange = function(){ 
			  //获取选择的选项的索引值（从1开始的，没有返回-1） 
			  var selectNum = this.selectedIndex; 
			  //清空原来的选项 
			  document.getElementById("fuwuhangye11").length=1; 
			  document.getElementById("fuwuhangye111").length=1; 
			  //循环添加子节点 
			  for(var i=0;i<myclass[selectNum-1].length;i++){ 
			    //创建元素节点 
			    var node =document.createElement("OPTION"); 
			    //创建文本节点 
			    var text = document.createTextNode(myclass[selectNum-1][i]); 
			     node.appendChild(text); 
			    document.getElementById("fuwuhangye11").appendChild(node); 
			  } 
			}; 
			  document.getElementById("fuwuhangye11").onchange = function(){ 
			    document.getElementById("fuwuhangye111").length=1; 
			    var selectStudentNum = this.selectedIndex; 
			    var selectClassNum = document.getElementById("fuwuhangye1").selectedIndex; 
			    for(var i=0;i<mystudy[selectClassNum-1][selectStudentNum-1].length;i++){ 
			      var node =document.createElement("OPTION"); 
			      var text = document.createTextNode(mystudy[selectClassNum-1][selectStudentNum-1][i]); 
			      node.appendChild(text); 
			      document.getElementById("fuwuhangye111").appendChild(node); 
			    } 
			  } 
		</script>
		
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
			<select id="suoshuxk1" name="suoshuxk1"> 
  				<option>--请选择一级--</option> 
  				<option>哲学</option><option>经济学</option><option>法学</option><option>教育学</option><option>文学</option><option>理学</option><option>工学</option>
  			</select> 
			<select id="suoshuxk11" name="suoshuxk11"> 
  				<option>--请选择二级--</option> 
			</select> 
			<select id="suoshuxk111" name="suoshuxk111"> 
  				<option>--请选择三级--</option> 
			</select> 
			<hr>
		</td>
	</tr>
	<script> 
  var myXueke2 = [ 
      [['哲学类']], 
      [['经济学类'],['财政学类'],['金融学类'],['经济与贸易类']], 
      [['法学类'],['政治学类'],['社会学类'],['民族学类'],['马克思主义民主类'],['公安学类']],
      [['教育学类'],['体育学类'],['中国语言文学类'],['外国语言文学类'],['新闻传播学类']],
      [['数学类'],['物理学类'],['化学类'],['天文学类'],['地理科学类'],['大气科学类']],
      [['力学类'],['机械类'],['仪器类'],['材料类'],['能源动力类']]
  ]; 
  var myXueke3= [ 
    [ //第一维代表专业 ， 第二维代表该专业的班级 ，第三维代表该班级的学生 
      [['哲学'],['逻辑学'],['宗教学'],['伦理学'],['经济学'],['经济统计学']]    
    ], 
    [ 
      [['国民经济管理'],['资源与环境经济学'],['商务经济学'],['能源经济']], 
      [['财政学'],['税收学'],['金融学']], 
      [['投资学'],['金融数学'],['信用管理'],['经济与经融']],
      [['国际金融与贸易'],['贸易经济']] 
    ], 
    [ 
      [['法学'],['知识产权'],['监狱学']], 
      [['政治与行政学'],['国际政治'],['外交学'],['国际事务与国际关系']], 
      [['社会工作'],['人类学'],['女性学'],['家政学']],
      [['民族学'],['科学社会主义']],
      [['中国共产党历史'],['思想政治教育']],
      [['警犬技术'],['经济犯罪侦查'],['边防指挥']],
    ], 
    [ 
        [['教育技术学'],['艺术教育'],['学前教育']], 
        [['运动人体科学'],['运动健康'],['休闲体育']], 
        [['汉语言文学'],['汉语言'],['汉语言国际教育'],['古典文献学']],
        [['英语'],['俄语'],['德语'],['法语']],
        [['广告学'],['广播电视学'],['传播学'],['编辑出版学']]
    ],
    [ 
        [['数学应用学'],['信息与计算科学']], 
        [['物理学'],['应用物理学'],['核物理']], 
        [['应用化学'],['化学生物学'],['分子科学与工程']],
        [['天文学']],
        [['地理科学与环境资源'],['人文地理与城乡规划'],['地理信息科学']],
        [['大气科学'],['应用气象学']]
    ],
    [ 
        [['理论与应用力学'],['工程力学'],['机械工程']], 
        [['车辆工程'],['汽车服务工程'],['机械工艺技术']], 
        [['测控技术与仪器']],
        [['冶金工程'],['材料科学与工程'],['材料物理'],['材料化学']],
        [['新能源科学工程'],['能源与环境系统工程'],['能源与动力工程']]
    ]  
  ]; 
document.getElementById("suoshuxk1").onchange = function(){ 
  //获取选择的选项的索引值（从1开始的，没有返回-1） 
  var selectNum = this.selectedIndex; 
  //清空原来的选项 
  document.getElementById("suoshuxk11").length=1; 
  document.getElementById("suoshuxk111").length=1; 
  //循环添加子节点 
  for(var i=0;i<myXueke2[selectNum-1].length;i++){ 
    //创建元素节点 
    var node =document.createElement("OPTION"); 
    //创建文本节点 
    var text = document.createTextNode(myXueke2[selectNum-1][i]); 
     node.appendChild(text); 
    document.getElementById("suoshuxk11").appendChild(node); 
  } 
}; 
  document.getElementById("suoshuxk11").onchange = function(){ 
    document.getElementById("suoshuxk111").length=1; 
    var selectStudentNum = this.selectedIndex; 
    var selectClassNum = document.getElementById("suoshuxk1").selectedIndex; 
    for(var i=0;i<myXueke3[selectClassNum-1][selectStudentNum-1].length;i++){ 
      var node =document.createElement("OPTION"); 
      var text = document.createTextNode(myXueke3[selectClassNum-1][selectStudentNum-1][i]); 
      node.appendChild(text); 
      document.getElementById("suoshuxk111").appendChild(node); 
    } 
  } 
</script> 
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
		<td><input id="yituomc" name="yituomc" type="text" onchange="zhongwen(this.id)"/>&nbsp;&nbsp;<span id="yituomc1"></span><span id="yituomc11"></span></td>
		<td>依托单位组织机构代码</td>
		<td><input id="yituodm" name="yituodm" type="text" onchange="bukong(this.id)"/><span id="yituodm1"></span><span id="yituodm11"></span></td>
	</tr>
	<tr>
			<td colspan="10">
				<hr>
			</td>
	</tr>
	<tr>
		<td>依托单位法人代表姓名</td>
		<td><input id="yituofr" name="yituofr" type="text" onchange="zhongwen(this.id)"/><span id="yituofr1"></span><span id="yituofr11"></span></td>
		<td>办公电话</td>
		<td><input id="yituodh" name="yituodh" type="text" onchange="dianhua(this.id)"/><span id="yituodh1"></span><span id="yituodh11"></span></td>
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
			姓名<input id="zrxingming" name="zrxingming" type="text" onchange="zhongwen(this.id)"/>
			<span id="zrxingming1"></span><span id="zrxingming11"></span>
		</td>
		<td></td>
		<td>性别<input id="zrxingbie" name="zrxingbie" type="radio" value="男" checked/> 男<input id="zrxingbie" name="zrxingbie" type="radio"value="女" />女</td>
		<td></td>
		<td>出生年月<input id="zrchusheng" name="zrchusheng" type="text" /></td>
		<td></td>
		<td>职称<input id="zrzhicheng" name="zrzhicheng" type="text" onchange="zhongwen(this.id)"/>
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
		<td>所学专业<input id="zrzhuanye" name="zrzhuanye" type="text" onchange="zhongwen(this.id)"/><span id="zrzhuanye1"></span><span id="zrzhuanye11"></span></td>
		<td></td>
		<td>学历<input id="zrxueli" name="zrxueli" type="text" onchange="zhongwen(this.id)"/><span id="zrxueli1"></span><span id="zrxueli11"></span></td>
		<td></td>
		<td>学位<input id="zrxuewei" name="zrxuewei" type="text" onchange="zhongwen(this.id)"/><span id="zrxuewei1"></span><span id="zrxuewei11"></span></td>
		<td></td>
		
	</tr>
	<tr>
			<td colspan="10">
				<hr>
			</td>
	</tr>
	<tr>
		<td>办公电话<input id="zrdianhua" name="zrdianhua" type="text" onchange="dianhua(this.id)"/><span id="zrdianhua1"></span><span id="zrdianhua11"></span></td>
		<td></td>
		<td>手机<input id="zrshouji" name="zrshouji" type="text" onchange="shouji(this.id)" maxlength="11" /><span id="zrshouji1"></span><span id="zrshouji11"></span></td>
		<td></td>
		<td>E-mail<input id="zremail" name="zremail" type="text" onchange="email(this.id)"/><span id="zremail1"></span><span id="zremail11"></span></td>
		<td></td>
	
	
		
	</tr>
	<tr>
		<td colspan="10">
		<hr>
		</td>
	</tr>
	<tr>
		<td>平台网站名称<input id="wangzhanmc" name="wangzhanmc" type="text" onchange="bukong(this.id)"/><span id="wangzhanmc1"></span><span id="wangzhanmc11"></span></td>
		<td></td>
		<td>网址<input id="pingtaiwz" name="pingtaiwz" type="text" onchange="wangzhi(this.id)"/> <span id="pingtaiwz1"></span><span id="pingtaiwz11"></span></td>
		<td></td>
		
		
	</tr>
	<tr>
			<td colspan="10">
				<hr>
			</td>
	</tr>
	<tr>
		<td>平台通讯地址<input id="pingtaitx" name="pingtaitx" type="text" onchange="bukong(this.id)"/> <span id="pingtaitx1"></span><span id="pingtaitx11"></span></td>
		<td></td>
		<td>邮编<input id="pingtaiyb" name="pingtaiyb" type="text" onchange="youbian(this.id)"/> <span id="pingtaiyb1"></span><span id="pingtaiyb11"></span></td>
		<td></td>
	</tr>
	
	<tr>
	<td style="position:absolute;left:14cm"><br><br> <input name="caozuo" type="submit" value="暂时保存"><input type="submit" value="提交"  name="caozuo" onclick = "return jiancha()"> </td>
	</tr>
</table>
</form>
<%
	
%>
<script>
		function zhongwen(id){
			var inputid=id;
			
			var guize=/^[\u4e00-\u9fa5]*$/;
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
 			var flag = 0 ;
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
				var guize=/^[\u4e00-\u9fa5]*$/;
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


</body>
</html>