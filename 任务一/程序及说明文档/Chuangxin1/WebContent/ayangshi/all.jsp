<%@page import="Model.Jibenxx"%>
<%@page import="java.util.List"%>
<%@page import="Bean.JibenDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="fenye/css/font-awesome.min.css">
<link rel="stylesheet" href="fenye/css/jquery.paginate.css" />
<link rel="stylesheet" href="fenye/css/jquery.yhhDataTable.css" />

<script type="text/javascript" src="fenye/js/jquery.min.js"></script>
<script type="text/javascript" src="fenye/js/jquery.paginate.js" ></script>
<script type="text/javascript" src="fenye/js/jquery.yhhDataTable.js" ></script>
<script type="text/javascript" src="fenye/js/index.js" ></script>

</head>
<body>

<%
	JibenDao jibenDao=new JibenDao();
	List<Jibenxx> jibenxxs=jibenDao.loadall();
	
%>
<table id="testtable2" >
		<thead>
			<tr>
				<th>平台名称</th>
				<th>平台编号</th>
				<th>批准年月</th>
				<th>批准文号</th>
				<th>技术领域</th>
				<th>状态</th>
				<th>修改</th>
			</tr>
		</thead>
		<tbody>
		<%
		
				for(Jibenxx jibenxx : jibenxxs){
					
					
 		%>
		<tr>
			<td><%=jibenxx.getPingtaimc() %></td>
			<td><%=jibenxx.getPingtaibh() %></td>
			<td><%=jibenxx.getPizhunny() %></td>
			<td><%=jibenxx.getPizhunwh() %></td>
			<td><%=jibenxx.getJsly() %></td>
			<%
 				if(jibenxx.getType()==1){
			%>
			<td><span style="color:green">已确认</span></td>
			<td><a href="xiugai.jsp?id=<%=jibenxx.getId()%>">查看</a></td>
			<%
 				}else{
			%>
				<td><span style="color:red">暂时保存</span></td>
				<td><a href="xiugai.jsp?id=<%=jibenxx.getId()%>">修改或查看</a></td>
			<%
 				}
			%>
			
		</tr>
<%
 			}
%>

		</tbody>
	</table>
</body>
</html>