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
		String sname=request.getParameter("sname");
		String sname1=request.getParameter("sname1");
		String sname2=request.getParameter("sname2");
		String sname3=request.getParameter("sname3");
		String sname4=request.getParameter("sname4");
		String tiaojian1=request.getParameter("tiaojian1");
		String tiaojian2=request.getParameter("tiaojian2");
		String tiaojian3=request.getParameter("tiaojian3");
		String tiaojian4=request.getParameter("tiaojian4");
		String neirong=request.getParameter("neirong");
		String neirong1=request.getParameter("neirong1");
		String neirong2=request.getParameter("neirong2");
		String neirong3=request.getParameter("neirong3");
		String neirong4=request.getParameter("neirong4");
		String cx=request.getParameter("cx");
		String cx1=request.getParameter("cx1");
		String cx2=request.getParameter("cx2");
		String cx3=request.getParameter("cx3");
		String cx4=request.getParameter("cx4");
		String[] snames=new String[5];
		String[] tiaojians=new String[5];
		String[] neirongs=new String[5];
		String[] cxs=new String[5];
		snames[0]=sname;snames[1]=sname1;snames[2]=sname2;snames[3]=sname3;snames[4]=sname4;	
		neirongs[0]=neirong;neirongs[1]=neirong1;neirongs[2]=neirong2;neirongs[3]=neirong3;neirongs[4]=neirong4;
		tiaojians[0]="where";tiaojians[1]=tiaojian1;tiaojians[2]=tiaojian2;tiaojians[3]=tiaojian3;tiaojians[4]=tiaojian4;
		cxs[0]=cx;cxs[1]=cx1;cxs[2]=cx2;cxs[3]=cx3;cxs[4]=cx4;
		String	sql="select * from t_jibenxx where "+sname+" "+cxs[0]+" '%"+neirong+"%' ";
		
		String[] sqls= new String [5];
		//或者存到最后，且和不含放到开始
		int stat=1;
		int end=4;
		for(int i=1;i<5;i++){
				if(tiaojians[i]==null){
					continue;
				}
				if(tiaojians[i].equals("and"))
				{
					if(neirongs[i]==null||"".equals(neirongs[i].trim()))
					{
						sqls[stat]=" ";
					}else{
						sqls[stat]=" and "+snames[i]+" "+cxs[i]+" '%"+neirongs[i]+"%' ";
					}
					stat+=1;
				}
				if(tiaojians[i].equals("not"))
				{
					if(neirongs[i]==null||"".equals(neirongs[i].trim()))
					{
						sqls[stat]=" ";
					}else{
						if(cxs[i].equals("like")){
							sqls[stat]=" and "+snames[i]+" not like '%"+neirongs[i]+"%' ";
						}else{
							sqls[stat]=" and "+snames[i]+" <> '"+neirongs[i]+"' ";
						}
					}
					stat+=1;
				}
				if(tiaojians[i].equals("or"))
				{
					if(neirongs[i]==null||"".equals(neirongs[i].trim()))
					{
						sqls[end]=" ";
					}else{
					sqls[end]=" or "+snames[i]+" "+cxs[i]+" '%"+neirongs[i]+"%' ";
					}
					end-=1;
				}
			
		}
		sqls[0]=sql;
		for(int i=0;i<5;i++){
			out.print(sqls[i]+"   ");
		}
		JibenDao jibenDao=new JibenDao();
		List<Jibenxx> jibenxxs=jibenDao.loadzonghe(sqls);
		session.setAttribute("jibenxxs", jibenxxs);

%>
</body>
</html>