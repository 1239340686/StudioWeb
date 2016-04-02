<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>班级相册</title>
<link rel="stylesheet" href="css/A_css.css" />
<link href="css/M_demo.css" type="text/css"  rel="stylesheet"/>
<link href="css/HeadNav.css" type="text/css" rel="stylesheet"  />
<script src="js/HeadSpan.js" language="javascript" ></script>
<script src="js/A_albumjs.js" language="javascript"></script>
<script src="js/H_tool.js" language="javascript" ></script>
<script src="js/H_base.js" language="javascript" ></script>
</head>
<body>
  <div id="H_head">
  <div id="H_nav">
        <ul>
        	<li><a href="home.jsp">首页</a></li>
            <li><a href="introduce.jsp">班级介绍</a></li>
            <li><a href="news.jsp">班级新闻</a></li>
            <li><a href="album.jsp">相册</a></li>
            <li><a href="MessageCheckServlet">留言板</a></li>
            <li><a href="UserInfoCheckServlet">个人信息</a></li>
        </ul>
            <!--绿色横条-->
        <span id="H_green"></span>
    </div>
</div>
   
   <!--四个主相册-->
   <div id="A_Contenter">
   		<div class="A_ContenterFont">
          生活足迹
        </div>
        <div id="A_Picture"> 
            <a href="html/A_interestGroup.html" >
            	<img class="A_Pimage1" id="A_Pimage1" src="image/A_album1.jpg" title="兴趣小组">
         	   		<div class="A_pimage1Introuduce1" id="A_pimageIntrouduce1" title="兴趣小组">
                   		搭建兴趣小组，找到我们共同的家
               		</div>
            </a>
            <a href="html/A_sport.html" >
           		 <img class="A_Pimage2"  id="A_Pimage2" src="image/A_yundonghui1.jpg" title="运动会"/>
            		<div class="A_pimage1Introuduce2" id="A_pimageIntrouduce2" title="运动会">
                  		 运动场上，我们风姿飒爽
            		</div>
             </a>
             <a href="html/A_activity.html" >
            	<img class="A_Pimage3" id="A_Pimage3" src="image/A_album3.jpg" title="我们的活动"/>
           			<div class="A_pimage1Introuduce3" id="A_pimageIntrouduce3" title="我们的活动">
                   		策划活动，我们各显才能
            		</div>
             </a>
             <a href="html/A_smallLife.html">
           	 	<img class="A_Pimage4"  id="A_Pimage4" src="image/A_album4.jpg" title="小生活" />
                	<div class="A_pimage1Introuduce4" id="A_pimageIntrouduce4" title="小生活">
                   		生活动中，我们恬淡安逸
            		</div>
             </a> 
        </div>
        
   </div>
   
   
   
   
   
   <div id="foot"></div><!--脚部--></h1>

</body>
</html>
