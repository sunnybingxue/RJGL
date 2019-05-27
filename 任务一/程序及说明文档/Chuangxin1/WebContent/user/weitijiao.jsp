<%@page import="java.util.List"%>
<%@page import="Bean.JibenDao"%>
<%@page import="Model.Jibenxx"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<%
	JibenDao jibenDao=new JibenDao();
	List<Jibenxx> jibenxxs=jibenDao.loadall();
	
%>
<body>
	<table align="center" border="1" width="500">
		<tr>
			<td>平台名称</td>
			<td>平台编号</td>
			<td>批准年月</td>
			<td>批准文号</td>
			<td>技术领域</td>
			<td>修改</td>
		</tr>
		<%
		
				for(Jibenxx jibenxx : jibenxxs){
					if(jibenxx.getType()==1)
						continue;
		%>
		<tr>
			<td><%=jibenxx.getPingtaimc() %></td>
			<td><%=jibenxx.getPingtaibh() %></td>
			<td><%=jibenxx.getPizhunny() %></td>
			<td><%=jibenxx.getPizhunwh() %></td>
			<td><%=jibenxx.getJsly() %></td>
			<td><a href="xiugai.jsp?id=<%=jibenxx.getId()%>">修改</a></td>
		</tr>
<%
			}
%>

	
	<table>
</body>
</html>