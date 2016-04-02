<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>首页</title>
<link href="css/HeadNav.css" type="text/css" rel="stylesheet"  />
<link href="css/H_demo.css" type="text/css" rel="stylesheet">
<script src="js/H_tool.js" language="javascript" ></script>
<script src="js/H_base.js" language="javascript" ></script>
</head>

<body>
           <!--导航-->
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

<div id="H_main">
	<div id="H_leftmain">
    	<div id="H_login">
        	<h5>
             <span id="H_userLogin">用户登录</span>
             <span id="H_managerLogin">管理员登录</span>
            </h5>
          	    <!--用户登录-->
            <div id="H_userF">
            <form name="H_f1" action  ="LoginServlet">
            	<div class="H_loginInput"><span class="H_loginIcon">用户名</span><input  name="username" type="text"/></div>
             		  <p> (用户名为学号)</p>
                <div class="H_loginInput"><span class="H_loginIcon">密码</span><input  name="password" type="text"/></div>
                	<p> (密码为身份证后六位)</p><input type="hidden"  name="user" value="user" >
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit"  value="登陆" ><br>
                <% 
               String err = (String) request.getAttribute("err");
                if(err != null) {
                	
                out.println(err);
                }
                %>
            </form>
            </div>
                <!--管理员登录-->
            <div id="H_managerF">
              <form name="H_f2" action="LoginServlet">
            	<div class="H_loginInput"><span class="H_loginIcon">管理员名</span><input  name="username" type="text"/></div>
                <div class="H_loginInput"><span class="H_loginIcon">密码</span><input  name="password" type="text"/></div>
                <input type="hidden"  name="user" value="dao" >
                <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit"   value="登陆" ><br>
                 <% 
                String err2 = (String)request.getAttribute("err");
                 if(err != null) {
                out.println(err2);
                 }
                %>
            </form>
            </div>
        </div>
       
        <div id="H_introduce">
        	<h4>班级简介</h4>
                  <p>&nbsp;&nbsp;&nbsp;共同的目标让我们走到一起；温馨的友谊让我们亲如一家；执着的追求让我们快乐出发。紧握青春妙笔，谱写理想诗篇；展
                  示激情人生，迎接风雨考验；张扬自信风帆，抵达成功彼岸。意气风发，永不言败，是成长道路上我们不变的风采；团结奋进，共创辉煌，是奋斗
                  历程中我们豪迈的誓言………………</p>
                   <div class="H_more"><a href="introduce.jsp"> more &lt;&lt;</a></div>
           </div>
               
        
     </div> 
	
    <div id="H_centermain">
    		<div id="H_searchWrap">
            		<div id="H_newsHL"><img src="image/H_newsC.png" / height="40"><span id="H_leap">new!</span></div>
    			<div id="H_search">
        		    <input type="text" name="Hsearch" value="输入你要查找的内容"/><div id="H_searchIcon"></div>
            	</div>
            </div>
            
           <div id="H_centerTop">
                  <div id="H_news">
                        <ul class="H_newsUl">
                        	<li><a href="#">学校召开校院两级教育教学督导工作总结会</a><span class="H_date">2013/1/1</span></li>
                            <li><a href="#">国家自然科学基金项目专题培训会举行</a><span class="H_date">2013/1/1</span></li>
                            <li><a href="#">《西方哲学智慧》课程入选全国大学素质教育优秀通选课</a><span class="H_date">2013/1/1</span></li>
                            <li><a href="#">2015年教工篮协嘉年华活动举行</a><span class="H_date">2013/1/1</span></li>
                            <li><a href="#">校级领导班子和领导干部2014年度考核述职测评会举行</a><span class="H_date">2013/1/1</span></li>
                        </ul>
                    	<div class="H_more" id="H_nM"><a href="#"> more &lt;&lt;</a></div>
                   </div>	
            </div>
            <div id="H_centerCenter">
          		 <h4>相册</h4>
            	 <div id="H_albumWrap">
             			<ul class="H_album">
                			<li><img src="image/album1.jpg" width="156" height="171"></li>
                			<li><img src="image/album2.jpg" width="156" height="171"></li>
                   			<li><img src="image/album3.jpg" width="156" height="171"></li>
                   		    <li><img src="image/album3.jpg" width="156" height="171"></li>
              			</ul>
              	 </div>
            </div>
            <div id="H_centerBottom">
             	<div id="H_message">
                     <div id="H_mleft"><img src="image/H_message.png" /></div>
                        <div id="H_mright">
                          <ul>
                              <li>
                                  <span class="M_name">宁静</span>
                                  <span class="M_num">第1条</span>
                                  <span class="M_time">2013-03-28</span>
                                  <p>那片笑声让我想起我的那些花儿</p> 
                              </li>
                              <li>
                                  <span class="M_name">等待</span>
                                  <span class="M_num">第2条</span>
                                  <span class="M_time">2013-02-22</span>
                                  <p>在我生命每个角落静静为我开着</p>
                              </li>
                               <li>
                                  <span class="M_name">守候</span>
                                  <span class="M_num">第3条</span>
                                  <span class="M_time">2013-05-21</span>
                                  <p>在我生命每个角落静静为我开着</p>
                              </li>
                               <li>
                                  <span class="M_name">看看</span>
                                  <span class="M_num">第4条</span>
                                  <span class="M_time">2013-03-30</span>
                                  <p>在我生命每个角落静静为我开着</p>
                              </li>
                               <li>
                                  <span class="M_name">希望</span>
                                  <span class="M_num">第5条</span>
                                  <span class="M_time">2013-04-22</span>
                                  <p>在我生命每个角落静静为我开着</p>
                              </li>
                          </ul>
                         </div>
                         <div class="H_more"><a href="MessageCheckServlet"> more &lt;&lt;</a></div>
                    </div>
      		</div>
    </div>
</div>
<div id="H_foot">
	<div id="H_friendLink">
        <a href="#">关于我们</a>
        <a href="#">联系我们</a>
        <a href="#"></a> 
        <a href="#">关于我们</a>
        <a href="#">关于我们</a>
    </div>
</div>
</body>
</html>
