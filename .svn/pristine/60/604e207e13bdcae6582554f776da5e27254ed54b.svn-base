package com.bjwz.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bjwz.dao.UserInfoDao;
import com.bjwz.model.UserInfo;

public class UserInfoSearchById extends HttpServlet {

	public UserInfoSearchById() {
		super();
	}

	public void destroy() {
		super.destroy(); 
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String id = request.getParameter("id");
		int StuId = Integer.parseInt(id);
		UserInfoDao uido = new UserInfoDao();
		UserInfo user = new UserInfo();
		user = uido.searchById(StuId);
		request.setAttribute("user",user);
		request.getRequestDispatcher("updateStudent.jsp").forward(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request,response);
	}

	public void init() throws ServletException {
		
	}

}
