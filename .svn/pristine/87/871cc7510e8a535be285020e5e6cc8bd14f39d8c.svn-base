package com.bjwz.controller;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bjwz.dao.NewsDao;
import com.bjwz.model.News;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;
public class NDoAdd extends HttpServlet {
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		request.setCharacterEncoding("gb2312");
		//获得表单中文本框里的内容
		SimpleDateFormat matter= new SimpleDateFormat("yyyy-MM-dd");
		int newsId =Integer.parseInt(request.getParameter("newsId")) ;
		String newsTitle = request.getParameter("newsTitle");
		String newsCreator = request.getParameter("newsCreator");
		String newsCreateTime = request.getParameter("newsCreateTime");
		String newsPhotoUrl = request.getParameter("newsPhotoUrl");
		News news = new News();
		news.setNewsId(newsId);
		news.setNewsTitle(newsTitle);
		news.setNewsCreator(newsCreator);
		try {
			news.setNewsCreateTime(matter.parse(newsCreateTime));
		} catch (ParseException e) {
			e.printStackTrace();
		}
		news.setNewsPhotoUrl(newsPhotoUrl);
		NewsDao.add(news);
		//实现页面跳转，跳转回NIndex.jsp页面
		response.sendRedirect("NIndex.jsp");
	}


	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		
	}

}
