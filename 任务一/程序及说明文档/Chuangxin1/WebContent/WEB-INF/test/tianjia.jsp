<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<script language="javascript">
	var num=0;
</script>
<body>
共建单位

		<input type="button" name="addinputtext" value="增加一行" onClick="AddInputText(document.all.mydiv.innerHTML)"/>

		<input type="button" name="delinputtext" value="减少一行" onClick="DelInputText(document.all.mydiv.innerHTML)"/>
		<span id="show"></span>
		<span id="show1"></span>
		<div id="mydiv"></div>
	<script language="javascript">
  function AddInputText(innerHTML)
  {
	  num=num+1;
	 var gong='gongjiandw'+num;
	 alert(gong);
    document.all.mydiv.innerHTML = innerHTML + "<input type='text' name='gongjiandw' id='gongjiandw"+num+"' value='"+num+"'>"+"&nbsp;";
    document.getElementById("show"+num).innerHTML=document.getElementById(gong).id;
    
  }

  function DelInputText(innerHTML)
  {
    var endPos = innerHTML.lastIndexOf("<");
    innerHTML = innerHTML.substr(0,endPos);
    document.all.mydiv.innerHTML = innerHTML;
  }

</script>
</body>
</html>