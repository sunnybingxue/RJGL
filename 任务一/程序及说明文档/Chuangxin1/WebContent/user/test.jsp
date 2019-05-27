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
// 		String [] pingtaijb=request.getParameterValues("pingtaijb");
// 		for(int i=0;i<pingtaijb.length;i++){
// 			out.println(pingtaijb[i]);
// 		}
// 		String sheng=request.getParameter("cmbProvince");
// 		String shi=request.getParameter("cmbCity");
// 		String xian=request.getParameter("cmbArea");
// 		out.println(sheng+""+shi+""+xian);
	
// 		String [] test=request.getParameterValues("gongjian");
// 		for(int i=0;i<test.length;i++){
//  			out.println(test[i]);
//  		}

		String n=request.getParameter("baocun");
		out.println(n);
%>
</body>
</html>