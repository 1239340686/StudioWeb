<%@ page language="java" import="java.util.*,com.bjwz.model.Message" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head><base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>留言板管理</title>

<link href="css/M_demo.css" type="text/css"  rel="stylesheet"/>
<script src="js/H_tool.js" language="javascript" ></script>
<script src="js/H_deleteM.js" language="javascript" ></script>

</head>

<body>

<div id="M_main">
	<h3>留言板</h3>
	<%
	 ArrayList<Message> message = (ArrayList<Message>)request.getAttribute("message");
	 Iterator it1 =  message.iterator();
	 while(it1.hasNext()){
		Message m = (Message)it1.next();
	%>	
	<ul>
    	<li>
        	
            <span class="M_num"><%=m.getMessageId() %></span>
            <span class="M_time"><%=m.getMessageDate() %></span>
           <span class="M_ title">标题：<%=m.getMessageTitle() %></span>
            <span class="mDelete" name="mDelete"><a 
				href="MessageDeleteServlet?Id=<%=m.getMessageId()%>">删除</a></span>
             <span class="M_name"><%=m.getMessageAuthor() %></span> 
             <p><%=m.getMessageContent() %></p>
        </li>
    </ul>
    <%} %>
    </div>
</body>
</html>
