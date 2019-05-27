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
</head>
<body>
<%
		request.setCharacterEncoding("UTF-8");
		String pingtaimc=request.getParameter("pingtaimc");
		String pingtaibh=request.getParameter("pingtaibh");
		String pizhunny=request.getParameter("pizhunny");
		String pizhunwh=request.getParameter("pizhunwh");
		String jsly=request.getParameter("jsly");
		String pingtaijb=request.getParameter("pingtaijb");
		String yituomc=request.getParameter("yituomc");
		String yituofr=request.getParameter("yituofr");
		String zrxingming=request.getParameter("zrxingming");
		String name[]=new String[10];
		String neirong[]=new String[10];
		name[0]="pingtaimc";
		name[1]="pingtaibh";
		name[2]="pizhunny";
		name[3]="pizhunwh";
		name[4]="jsly";
		name[5]="pingtaijb";
		name[6]="yituomc";
		name[7]="yituofr";
		name[8]="zrxingming";
		
		neirong[0]=pingtaimc;
		neirong[1]=pingtaibh;
		neirong[2]=pizhunny;
		neirong[3]=pizhunwh;
		neirong[4]=jsly;
		neirong[5]=pingtaijb;
		neirong[6]=yituomc;
		neirong[7]=yituofr;
		neirong[8]=zrxingming;
		
		for(int i=0;i<9;i++){
			out.println(name[i]+"和"+neirong[i]);
		}
		JibenDao jibenDao=new JibenDao();
		List<Jibenxx> jibenxxs=jibenDao.loadfduo(name, neirong);
		session.setAttribute("jibenxxs", jibenxxs);
		response.sendRedirect("duojieguo.jsp");
		
		
		
%>
</body>
</html>