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
	jibenxxs=jibenDao.loadfl(chaxunlb, "内设机构相对独立");
	int value1=jibenxxs.size();
	jibenxxs=jibenDao.loadfl(chaxunlb, "企业法人");
	int value2=jibenxxs.size();
	jibenxxs=jibenDao.loadfl(chaxunlb, "事业法人");
	int value3=jibenxxs.size();
	jibenxxs=jibenDao.loadfl(chaxunlb, "社团法人");
	int value4=jibenxxs.size();


	
%>
<div id="tbSecond" style="width: 500px;height: 400px;"></div>
<script type="text/javascript">
var tbSecond = echarts.init(document.getElementById("tbSecond"));


// alert(pieOption);
var pieOption = {
	    title : {
	        text: '平台组织形态',
	        //subtext: '纯属虚构',
	        x:'center'
	    },
	    tooltip : {
	        trigger: 'item',
	        formatter: "{a} <br/>{b} : {c} ({d}%)"
	    },
	    legend: {
	        orient: 'vertical',
	        left: 'left',
	        data: ['内设机构相对独立','企业法人','事业法人','社团法人']
	    },
	    series : [
	        {
	            //name: '访问来源',
	            type: 'pie',
	            radius : '70%',
	            center: ['50%', '60%'],
	            data:[
	            	{value:<%=value1%>, name:'内设机构相对独立'},
                    {value:<%=value2%>, name:'企业法人'},
                    {value:<%=value3%>, name:'事业法人'},
                    {value:<%=value4%>, name:'社团法人'}
	            ],
	            itemStyle: {
	                emphasis: {
	                    shadowBlur: 10,
	                    shadowOffsetX: 0,
	                    shadowColor: 'rgba(0, 0, 0, 0.5)'
	                }
	            }
	        }
	    ]
	};
tbSecond.on('click', function(param) {
	var name = param.name;
	//alert(name);
	 //window.location.href = "http://www.accpweb.com";
	 window.location.href = '${pageContext.request.contextPath}/aguanli/fenleicx.jsp?chaxunlb=faren&neirong='+name;
	
	

	}); 
tbSecond.setOption(pieOption);



</script>
</body>
</html>