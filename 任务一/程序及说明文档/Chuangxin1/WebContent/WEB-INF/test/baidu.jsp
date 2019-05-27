<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<style>

body {

    margin-left: 0px;

    margin-top: 0px;

    margin-right: 0px;

    margin-bottom: 0px;

}

.auto_hidden {

    width:204px;border-top: 1px solid #333;

    border-bottom: 1px solid #333;

    border-left: 1px solid #333;

    border-right: 1px solid #333;

    position:absolute;

    display:none;

}

.auto_show {

    width:204px;

    border-top: 1px solid #333;

    border-bottom: 1px solid #333;

    border-left: 1px solid #333;

    border-right: 1px solid #333;

    position:absolute;

    z-index:9999; /* 设置对象的层叠顺序 */

    display:block;

}

.auto_onmouseover{

    color:#ffffff;

    background-color:highlight;

    width:100%;

}

.auto_onmouseout{

    color:#000000;

    width:100%;

    background-color:#ffffff;

}

</style>

<script language="javascript">



</script>

<body>

    <div align="center" style="padding-top:50px">

<!--         <input type="text" style="width:300px;height:20px;font-size:14pt;" placeholder="请输入a或b模拟效果" id="o" onkeyup="autoComplete.start(event)"> -->
		<input type="text" style="width:300px;height:20px;font-size:14pt;" placeholder="请输入a或b模拟效果" id="o" onkeyup="test1()">
    </div>

    <div class="auto_hidden" id="auto"><!--自动完成 DIV--></div>
<%
	String[] n={"a","ac","bc"};
%>
<script>
		
    var autoComplete=new AutoComplete('o','auto',[
    	<%
    		for(int i=0;i<3;i++){
    	%>
    	
    	'<%=n[i]%>',
    	
    	
    	<%
    		}
    	%>
    	]);
    
    
    function test1(){
    	  var autoComplete=new AutoComplete('o','auto',[
    	    	<%
    	    		for(int i=0;i<3;i++){
    	    	%>
    	    	
    	    	'<%=n[i]%>',
    	    	
    	    	
    	    	<%
    	    		}
    	    	%>
    	    	]);
    	  autoComplete.start(event);
    	
    }

</script>
</body>

</html>
