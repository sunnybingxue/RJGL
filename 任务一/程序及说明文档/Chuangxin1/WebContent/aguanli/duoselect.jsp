<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="//apps.bdimg.com/libs/jqueryui/1.10.4/css/jquery-ui.min.css">
  <script src="//apps.bdimg.com/libs/jquery/1.10.2/jquery.min.js"></script>
  <script src="//apps.bdimg.com/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
    <script>
  $(function() {
    $( "#pizhunny" ).datepicker();
  });
  
  </script>
<style>
	input[type=submit]{  
    width: 100px;  
    height: 30px;  
    background-color: rgb(244,244,244);  
}  

</style>
<body>
	<div align="center">
		<form action="duo.jsp" method="post">
		
			<table frame="box">
					<tr>
						<td colspan="5" align="center"><span style="font-size:40px;color:red">多条件查询</span></td>
					</tr>
					<tr>
						<td colspan="4">
						
					</tr>
					<tr>
							<td></br></td>
					</tr>
					<tr>
						<td>平台名称</td>
						<td><input type="text" name="pingtaimc"></td>
						<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>

						<td>平台编号</td>
						<td><input type="text" name="pingtaibh"></td>
					</tr>
					
					<tr>
						<td>技术领域</td>
						<td><input type="text" name="jsly"></td>
						<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>

						<td>平台级别</td>
						<td><input type="text" name="pingtaijb"></td>
					</tr>
					<tr>
						<td>依托单位名称</td>
						<td><input type="text" name="yituomc"></td>
						<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
						<td>依托法人</td>
						<td><input type="text" name="yituofr"></td>
					</tr>
					<tr>
						<td colspan="5" align="center"><input type="submit" value="查询"></td>
					</tr>
			</table>
		
		</form>
		</div>
</body>
</html>