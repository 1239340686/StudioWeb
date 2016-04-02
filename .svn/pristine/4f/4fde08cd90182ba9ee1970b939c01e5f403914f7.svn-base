<%@ page language="java" import="java.util.*,com.bjwz.controller.UserInfoCheckServlet,com.bjwz.model.UserInfo" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>更新个人信息</title>
<style>
.text{
	width:200px;	
	height:22px;
	}
label{
	float:left;
	width:80px;
	text-align:right;}
#M_form
{
	margin:0 auto;
	height:900px;
	width:600px;}
</style>
</head>

<body>
<div id="M_form">
<%
			UserInfo user = (UserInfo) request.getAttribute("user");
		%>
<form action  ="UserInfoUpdateServlet" >
    <label>学号：</label><input type="text" value="<%=user.getStuId() %>" name="id" readonly class="M_text" >(亲，学号不可以修改哟！)<br> <br> 
	<label>姓名：</label><input type="text" value="<%=user.getStuName() %>" name="name" class="M_text" ><br> <br>  
    <label>性别：</label>	<input type="text" value="<%=user.getStuSex() %>" name="sex" class="M_text" > <br> <br>
    <label>年龄：</label><input type="text" value="<%=user.getStuAge() %>" name="age" class="M_text" ><br> <br> 
    <label> 学校住址：</label><input type="text" value="<%=user.getStuAddress() %>" name="address" class="M_text" ><br> <br> 
    <label>电话号码：</label><input type="text" value="<%=user.getStuPhone() %>" name="phone" class="M_text" ><br> <br> 
    <label>家庭住址：</label><input type="text" value="<%=user.getStuHome() %>" name="home" class="M_text" ><br> <br> 
    <label>出生日期：</label><input type="text" value="<%=user.getStuBirthday() %>" name="birthday" class="M_text" ><br> <br> 
    <label>密码：</label><input type="text" value="<%=user.getStuPassword() %>" name="password" class="M_text" ><br> <br> 
    &nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="提交" name="M_submit" class="M_button" > &nbsp;&nbsp;&nbsp; 
    <input type="reset" value="重置" name"M_reset" class="M_button">
</form>
</div>
</body>
</html>
