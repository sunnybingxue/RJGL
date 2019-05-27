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
	jibenxxs=jibenDao.loadfl(chaxunlb, "企业");
	int value1=jibenxxs.size();
	jibenxxs=jibenDao.loadfl(chaxunlb, "科研机构");
	int value2=jibenxxs.size();
	jibenxxs=jibenDao.loadfl(chaxunlb, "高等院校");
	int value3=jibenxxs.size();
	jibenxxs=jibenDao.loadfl(chaxunlb, "检测机构");
	int value4=jibenxxs.size();
	jibenxxs=jibenDao.loadfl(chaxunlb, "医疗机构");
	int value5=jibenxxs.size();
	jibenxxs=jibenDao.loadfl(chaxunlb, "政府机构");
	int value6=jibenxxs.size();
	jibenxxs=jibenDao.loadfl(chaxunlb, "社团组织");
	int value7=jibenxxs.size();
	jibenxxs=jibenDao.loadfl(chaxunlb, "其他");
	int value8=jibenxxs.size();


	
%>
<div id="tbSecond" style="width: 500px;height: 400px;"></div>
<div id="tbSecond1" style="width: 500px;height: 400px;"></div>
<script type="text/javascript">
var tbSecond = echarts.init(document.getElementById("tbSecond"));
// alert(tbSecond);
var pieOption = {
        title:{
            text:"饼状图"
        },
        series : [
            {
                name: '访问来源',
                type: 'pie',
                radius: '80%',
                data:[
                    {value:<%=value1%>, name:'企业'},
                    {value:<%=value2%>, name:'科研机构'},
                    {value:<%=value3%>, name:'高等院校'},
                    {value:<%=value4%>, name:'检测机构'},
                    {value:<%=value5%>, name:'医疗机构'},
                    {value:<%=value6%>, name:'政府机构'},
                    {value:<%=value7%>, name:'社团组织'},
                    {value:<%=value8%>, name:'其他'},

                ]
            }
        ]
    };
// alert(pieOption);
	tbSecond.on('click', function(param) {
                	var name = param.name;
                	//alert(name);
                	 //window.location.href = "http://www.accpweb.com";
                	 window.location.href = '${pageContext.request.contextPath}/aguanli/fenleicx.jsp?chaxunlb=yituolx&neirong='+name;
                	}); 
tbSecond.setOption(pieOption);


</script>




</body>
</html>