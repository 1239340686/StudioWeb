package com.bjwz.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bjwz.dao.UserInfoDao;
import com.bjwz.util.DB;

public class UserInfoDeleteServlet extends HttpServlet {
	
	public UserInfoDeleteServlet() {
		super();
	}

	public void destroy() {
		super.destroy();

	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String id = request.getParameter("Id");
		int StuId = Integer.parseInt(id);
		UserInfoDao uido = new UserInfoDao();
		uido.deleteUserinfo(StuId);
		request.getRequestDispatcher("MPerson").forward(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request,response);
	}
	
	public void init() throws ServletException {

	}

}
