<%@ page language="java" import="java.util.*,com.bjwz.dao.NewsDao,com.bjwz.model.News" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

    <base href="<%=basePath%>">  
    <% 	
	List list = NewsDao.getList();
	//循环列表，并获得列表中的对象。注意数据类型转换
    	for(int i=0;i<list.size();i++){
    		News news = (News)list.get(i);
     %>
      <tr>
        <td><%=news.getNewsId()%></td>
        <td><%=news.getNewsTitle() %></td>
        <td><%=news.getNewsCreator() %></td>
        <td><%=news.getNewsCreateTime() %></td>
        <td ><a href="NDelete.jsp?id=<%=news.getNewsId()%>">删除</a></td>
        <td ><a href="NUpdate.jsp?id=<%=news.getNewsId()%>">修改</a></td>
      </tr>
      <%
    }
     %>