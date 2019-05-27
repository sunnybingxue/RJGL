<%@page import="Model.Jibenxx"%>
<%@page import="java.util.List"%>
<%@page import="Bean.JibenDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="../js/echarts.js"></script>
<title>Insert title here</title>
</head>
<body>
<%
	//String chaxunlb=request.getParameter("chaxunlb");
	
%>
<%
	JibenDao jibenDao=new JibenDao();
	List<Jibenxx> jibenxxs=null;
	request.setCharacterEncoding("UTF-8");
	String chaxunlb=request.getParameter("chaxunlb");
	String neirong;
	jibenxxs=jibenDao.loadfl(chaxunlb, "国家级");
	int value1=jibenxxs.size();
	jibenxxs=jibenDao.loadfl(chaxunlb, "省级");
	int value2=jibenxxs.size();
	

	
%>
<div id="tbSecond" style="width: 500px;height: 400px;"></div>
<script type="text/javascript">
var tbSecond = echarts.init(document.getElementById("tbSecond"));


    
    
    
var pieOption = {
	    title : {
	        text: '平台级别分布',
	        //subtext: '纯属虚构',
	        x:'center'
	    },
	    tooltip : {\
	        trigger: 'item',
	        formatter: "{a} <br/>{b} : {c} ({d}%)"
	    },
	    legend: {
	        orient: 'vertical',
	        left: 'left',
	        data: ['国家级','省级']
	    },
	    series : [
	        {
	            //name: '访问来源',
	            type: 'pie',
	            radius : '70%',
	            center: ['50%', '60%'],
	            data:[
	            	{value:<%=value1%>, name:'国家级'},
	            	{value:<%=value2%>, name:'省级'}
	            ],
	            
	        }
	    ]
	};
// alert(pieOption);
	tbSecond.on('click', function(param) {
                	var name = param.name;
                	//alert(name);
                	 //window.location.href = "http://www.accpweb.com";
                	 window.location.href = '${pageContext.request.contextPath}/aguanli/fenleicx.jsp?chaxunlb=pingtaijb&neirong='+name;
                	
                	

                	}); 
tbSecond.setOption(pieOption);



</script>
</body>
</html>