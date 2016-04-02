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
<title>管理目录</title>
<style>
a{
	text-decoration:none;
    color:#00C;
	font-size:16px;}
ul{
	list-style:none;}
ul li{
	line-height:100px;
	}
</style>
</head>

<body>
	<ul>
    	<li><a href="mMessage" target="Mright">留言板</a></li>
    	<li><a href="AlbumCheckServlet"  target="Mright">相册</a></li>
        <li><a href="mNews.html"  target="Mright">新闻</a></li>
        <li><a href="MPerson"  target="Mright">个人信息</a></li>
    </ul>
</body>
</html>
