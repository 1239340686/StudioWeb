<%@ page language="java"
	import="java.util.*,com.bjwz.controller.UserInfoCheckServlet,com.bjwz.model.UserInfo"
	pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>个人信息管理</title>

<link href="css/mPerson.css" type="text/css" rel="stylesheet">
<script src="js/H_tool.js" langguage="javascript"></script>

</head>

<body>
	<table>
		<%
			ArrayList<UserInfo> user = (ArrayList<UserInfo>) request.getAttribute("list");
			Iterator it1 = user.iterator();
		%>
		<tr>
			<td>学号
			<td>姓名
			<td>性别
			<td>年龄
			<td>学校住址
			<td>电话号码
			<td>家庭住址
			<td>出生日期
			<td>密码
			<td>刪除
			<td>更新
		</tr>
		<%
				while (it1.hasNext()) {
					UserInfo u = (UserInfo) it1.next();
					
			%>
		<tr>
			<td><%=u.getStuId() %></td>
			<td><%=u.getStuName() %></td>
			<td><%=u.getStuSex() %></td>
			<td><%=u.getStuAge() %></td>
			<td><%=u.getStuAddress() %></td>
			<td><%=u.getStuPhone() %></td>
			<td><%=u.getStuHome() %></td>
			<td><%=u.getStuBirthday() %></td>
			<td><%=u.getStuPassword() %></td>
			<td><a name="pDelete"
				href="UserInfoDeleteServlet?Id=<%=u.getStuId()%>">删除</a></td>
			<td><a name="pDelete"
				href="UserInfoSearchById?id=<%=u.getStuId()%>">更新</a></td>
		</tr>
		<% }%>
	</table>
	<br>
	<br />
	<br />
	<a href="addStudent.jsp">增加学生信息</a>
</body>
</html>
