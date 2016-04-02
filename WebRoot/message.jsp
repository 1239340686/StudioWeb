<%@ page language="java" import="java.util.*,com.bjwz.model.Message" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head><base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>留言板</title>
<link href="css/M_demo.css" type="text/css"  rel="stylesheet"/>
<link href="css/HeadNav.css" type="text/css" rel="stylesheet"  />
<script src="js/HeadSpan.js" language="javascript" ></script>
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

<div id="M_main">
	<h3>	留言板</h3>
	<hr color = "#33CC66">
	<form action = "MessageInsertServlet">
	<%
	 ArrayList<Message> message = (ArrayList<Message>)request.getAttribute("message");
	 Iterator<Message> it1 =  message.iterator();
	 while(it1.hasNext()){
		Message m = (Message)it1.next();
	%>	
	<center>
	<p>标题：<%=m.getMessageTitle() %></p>
	第<%=m.getMessageId() %>条留言:<%=m.getMessageContent() %>
	<p>留言者：<%=m.getMessageAuthor() %></p>
	<p>日期：<%=m.getMessageDate() %></p>
	<hr color = "#33CC66">
	</center>
	<%} %>
			第<input type="text" name="id" >个来访者 <br/>
			标题：<input type="text" name="title"><br/>
			内容：<textarea name="content"></textarea><br/>
	     	 留言者：<input type="text" name="author"><br/>
        	<input type="submit" value="我要留言">
    </form>
    </div>
 <div id="M_foot">
    <div id="M_friendLink">
    <a href="#">关于我们</a>
    <a href="#">联系我们</a>
    <a href="#"></a>
    <a href="#">关于我们</a>
    <a href="#">关于我们</a>
    </div>
</div>
</body>
</html>
