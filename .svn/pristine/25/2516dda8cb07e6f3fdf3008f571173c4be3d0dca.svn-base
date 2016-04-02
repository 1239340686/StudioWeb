<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>添加照片</title>

	<link href="css/M_demo.css" type="text/css"  rel="stylesheet"/>
	<script src="js/H_tool.js" language="javascript" ></script>
	<script src="js/H_deleteM.js" language="javascript" ></script>

  </head>
  
  <body>
  	<form action="AlbumAddServlet"  enctype="multipart/form-data" method="post">
  		id：<input type="text" name="id"></input><br>
  		描述：<input type="text" name="desc"></input><br>
  		名字：<input type="text" name="name"></input>(名字为：id-文件名)<br>
  		选择上传：<input type="file" name="file"></input><br>
  		<input type="submit" value="上传">
  	</form>
  </body>
</html>
