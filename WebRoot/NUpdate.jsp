<%@ page language="java" import="java.util.*,com.bjwz.dao.NewsDao,com.bjwz.model.News" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
<body>
  <%
  	int id = Integer.parseInt(request.getParameter("id"));
  	News news = NewsDao.getModel(id);
   %>
	<form name="form1" method="post" action="NDoUpdate.java">
	   	  <label>用户名：
	     	<input type="text" name="newsId" id="newsId" value=<%=news.getNewsId() %>>
	      </label>
	      <label>新闻标题：
	        <input type="text" name="newsTitle" id="newsTitle" value=<%=news.getNewsTitle() %>>
	      </label>
	      <label>创建者：
	      	<input type="text" name="newsCreator" id="newsCreator" value=<%=news.getNewsCreator() %>>
	      </label>
	      <label>创建时间：
	        <input type="text" name="newsCreateTime" id="newsCreateTime" value=<%=news.getNewsCreateTime() %>>
		  </label>
	        <input type="submit" name="button" id="button" value="修    改">
	        <input type="reset" name="button2" id="button2" value="取    消">

	</form>
</body>
</html>
