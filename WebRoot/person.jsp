<%@ page language="java" import="java.util.*,com.bjwz.controller.UserInfoCheckServlet,com.bjwz.model.UserInfo" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>个人信息</title>
<link href="css/HeadNav.css" type="text/css" rel="stylesheet"  />
<link href="css/P_table.css" type="text/css" rel="stylesheet"  />
<script src="js/HeadSpan.js" type="text/javascript" ></script>
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
<div id="P_main">
		<%
			ArrayList<UserInfo> user = (ArrayList<UserInfo>) request.getAttribute("list");
			Iterator<UserInfo> it1 = user.iterator();
		%>
		<table>
			
			<tr><td>学号<td>姓名<td>性别<td>年龄<td>学校住址<td>电话号码<td>家庭住址<td>出生日期</tr>
			<%
				while (it1.hasNext()) {
					UserInfo u = (UserInfo) it1.next();
			%>
        <tr><td><%=u.getStuId() %></td>
        <td><%=u.getStuName() %></td>
        <td><%=u.getStuSex() %></td>
        <td><%=u.getStuAge() %></td>
        <td><%=u.getStuAddress() %></td>
        <td><%=u.getStuPhone() %></td>
        <td><%=u.getStuHome() %></td>
        <td><%=u.getStuBirthday() %></td>
        </tr>
        <% }%>
    </table>
    　
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
