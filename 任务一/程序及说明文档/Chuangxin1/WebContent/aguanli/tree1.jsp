<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<title></title>

<link rel="stylesheet" type="text/css" href="all.css">

<script type="text/javascript" src="Treejs/jquery.min.js"></script>
<script type="text/javascript" src="Treejs/jtree.js"></script>
<script type="text/javascript" src="Treejs/uitool.js"></script>
<script type="text/javascript" src="Treejs/index.js"></script>

</head>
<body>

<div class="navTab-panel tabsPageContent layoutBox" style="padding-top:20px;padding-left: 20px">
  <div class="page unitBox">
    <div class="pageFormContent">
      <div id="leftside"> 
        <!-- jtree模板 -->
        <div id="sidebar">
          <div class="toggleCollapse">
            <div class="navigationbar">
              <div id="searchMenu">

              <div id="searchMenuBar" style="line-height: 30px"> 

            </div>
          </div>
          <div class="accordion" fillSpace="sidebar">
            <div class="accordionContent">
              <ul id="a" class="tree treeFolder collapse">
                <li><a autobypy="bz" dataType="topmenu" childMneu="bzmenus" keyboard="A">图表分类</a>
                  <ul id="bzmenus" class="bzmenus_sub">
                    <!--  <li><a autobypy="tyhs"><span class="font_pos"><i class="external_small"></i></span>平台级别</a>
                      <ul>
                        
                      	<li><a autobypy="ybtj" href="tubiao/tubiao1.jsp?chaxunlb=pingtaijb" target="right"><span class="font_pos" target="right"><i class="external_small"></i></span>图表分析</a></li>
                      </ul>
                    </li>-->
                   <li><a autobypy="bg"><span class="font_pos"><i class="external_small"></i></span>平台组织形态</a>
                      <ul>

                        <li><a autobypy="jbbg" href="tubiao/tubiao2.jsp?chaxunlb=faren" target="right"><span class="font_pos"><i class="external_small"></i></span>图表分析</a></li>
                      </ul>
                    </li>
                  
                    <!-- <li><a autobypy="bd" href=""><span class="font_pos"><i class="external_small"></i></span>依托单位类型</a>
                      <ul>
            

                        <li><a autobypy="jbbg" href="tubiao/tubiao3.jsp?chaxunlb=yituolx" target="right"><span class="font_pos"><i class="external_small"></i></span>图表分析</a></li>
                      </ul>
                    </li> -->
             
                  </ul>
                </li>
              </ul>

            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
</body>