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
<!--                 <input id="searchTree" type="text" class="span2" data-autofocus="autofocus" x-webkit-speech="" lang="zh-CN" x-webkit-grammar="builtin:translate" onwebkitspeechchange="$('#searchTreeBtn').trigger('click')"/> -->
<!--                 <a id="searchTreeClose" title="清除条件" class="treeclosebtn hide"><i class="myicons iconfont icon-close tree-close"></i></a> <a id="searchTreeBtn" title="搜索菜单" class="treesearchbtn"><i class="myicons iconfont icon-search tree-search"></i>搜索</a> </div> -->
              <div id="searchMenuBar" style="line-height: 30px"> 
<!--               <a title="折叠全部" onClick="$('ul.tree').colExpAll({clickType:'expAll'})" id="expandBtn" class="treebar">折叠<i class="myicons iconfont icon-zhedie collapse-all"></i></a>  -->
<!--               <a title="展开全部" onClick="$('ul.tree').colExpAll({clickType:'colAll'})" id="collapseBtn" class="treebar">展开<i class="myicons iconfont icon-1 expand-all"></i></a> </div> -->
            </div>
          </div>
          <div class="accordion" fillSpace="sidebar">
            <div class="accordionContent">
              <ul id="a" class="tree treeFolder collapse">
                <li><a autobypy="bz" dataType="topmenu" childMneu="bzmenus" keyboard="A">分类查询</a>
                  <ul id="bzmenus" class="bzmenus_sub">
                    <li><a autobypy="tyhs"><span class="font_pos"><i class="external_small"></i></span>平台级别</a>
                      <ul>
                        <li><a autobypy="cjbg" href="fenleicx.jsp?chaxunlb=pingtaijb&neirong=国家级" target="right"><span class="font_pos"><i class="external_small"></i></span>国家级</a></li>
                        <li><a autobypy="ybtj" href="fenleicx.jsp?chaxunlb=pingtaijb&neirong=省级" target="right"><span class="font_pos" target="right"><i class="external_small"></i></span>省级</a></li>
                      </ul>
                    </li>
                    <li><a autobypy="bg"><span class="font_pos"><i class="external_small"></i></span>平台组织形态</a>
                      <ul>
                        <li><a autobypy="jbbg" href="fenleicx.jsp?chaxunlb=zuzhi&neirong=内设机构相对独立" target="right"><span class="font_pos"><i class="external_small"></i></span>内设机构相对独立</a></li>
                        <li><a autobypy="jbbg" href="fenleicx.jsp?chaxunlb=faren&neirong=企业法人" target="right"><span class="font_pos"><i class="external_small"></i></span>企业法人</a></li>
                        <li><a autobypy="jbbg" href="fenleicx.jsp?chaxunlb=faren&neirong=事业法人" target="right"><span class="font_pos"><i class="external_small"></i></span>事业法人</a></li>
                        <li><a autobypy="jbbg" href="fenleicx.jsp?chaxunlb=faren&neirong=社团法人" target="right"><span class="font_pos"><i class="external_small"></i></span>社团法人</a></li>

                      </ul>
                    </li>
                    <!--  <li><a autobypy="ck|dhk"><span class="font_pos"><i class="external_small"></i></span>京津冀共建</a>
                      <ul>
                        <li class="windowmode"><a autobypy="ck|dhk" href="fenleicx.jsp?chaxunlb=gongjian&neirong=是" target="right"><span class="font_pos"><i class="external_small"></i></span>是</a></li>
                        <li class="windowmode"><a autobypy="ck|dhk" href="fenleicx.jsp?chaxunlb=gongjian&neirong=否" target="right"><span class="font_pos"><i class="external_small"></i></span>否</a></li>
                      </ul>
                    </li>-->
                    <li><a autobypy="bd" href=""><span class="font_pos"><i class="external_small"></i></span>依托单位类型</a>
                      <ul>
                        <li class="dateinput"><a autobypy="sjsrk" href="fenleicx.jsp?chaxunlb=yituolx&neirong=企业" target="right"><span class="font_pos"><i class="external_small"></i></span>企业</a></li>
                        <li class="uicombox"><a autobypy="combox" href="fenleicx.jsp?chaxunlb=yituolx&neirong=科研机构" target="right"><span class="font_pos"><i class="external_small"></i></span>科研机构</a></li>
                        <li class="autocombox"><a autobypy="zdwc" href="fenleicx.jsp?chaxunlb=yituolx&neirong=高等院校" target="right"><span class="font_pos"><i class="external_small"></i></span>高等院校</a></li>
                        <li class="jlcombox"><a autobypy="jl" href="fenleicx.jsp?chaxunlb=yituolx&neirong=检测机构" target="right"><span class="font_pos"><i class="external_small"></i></span>检测机构</a></li>
                        <li class="formValid"><a autobypy="khdyz" href="fenleicx.jsp?chaxunlb=yituolx&neirong=医疗机构" target="right"><span class="font_pos"><i class="external_small"></i></span>医疗机构</a></li>
                        <li class="formValid"><a autobypy="khdyz" href="fenleicx.jsp?chaxunlb=yituolx&neirong=政府机构" target="right"><span class="font_pos"><i class="external_small"></i></span>政府机构</a></li>
                         <li class="formValid"><a autobypy="khdyz" href="fenleicx.jsp?chaxunlb=yituolx&neirong=社团组织" target="right"><span class="font_pos"><i class="external_small"></i></span>社团组织</a></li>
                          <li class="formValid"><a autobypy="khdyz" href="fenleicx.jsp?chaxunlb=yituolx&neirong=其他" target="right"><span class="font_pos"><i class="external_small"></i></span>其他</a></li>

                      </ul>
                    </li>
                    <!--  <li><a autobypy="bd" href=""><span class="font_pos"><i class="external_small"></i></span>数据分析</a>
                      <ul>
                        <li><a autobypy="jbbg" href="tubiao/map.jsp" target="right"><span class="font_pos"><i class="external_small"></i></span>图表分析</a></li>
                      </ul>
                    </li>-->

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