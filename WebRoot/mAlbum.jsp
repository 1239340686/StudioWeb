<%@ page language="java" import="java.util.*,com.bjwz.model.Album" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>相册管理</title>
    
    <link href="css/M_demo.css" type="text/css"  rel="stylesheet"/>
	<script src="js/H_tool.js" language="javascript" ></script>
	<script src="js/H_deleteM.js" language="javascript" ></script>

  </head>
  
  <body>
    <table>
    <%
    	ArrayList<Album> a = (ArrayList<Album>) request.getAttribute("album");
    	Iterator it = a.iterator();
    	
    %>
    	<tr>
    		<td>图片编号</td>
    		<td>图片描述</td>
    		<td>图片上传日期</td>
    		<td>图片名字</td>
    		<td>图片原路径</td>
    		<td>图片</td>
    	</tr>
    	
    	<%
    		while(it.hasNext()){
    			Album album = (Album) it.next();

    	%>
    	<tr>
    		<td width="80"><%=album.getPhotoId() %></td>
    		<td width="100"><%=album.getPhotoDesc() %></td>
    		<td width="120"><%=album.getPhotoDate() %></td>
    		<td width="120"><%=album.getPhotoName() %></td>
    		<td width="150"><%=album.getPhotoUrl() %></td>
    		<td width="300"><img src = "image/<%=album.getPhotoName() %>" /></td>
    		<td><a href="#">设置</a>
    	</tr>
    	    <%	} %>	
    </table>
    <br>
    <br>
    <a href="addAlbum.jsp">添加照片</a>
  </body>
</html>
