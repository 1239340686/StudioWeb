package com.bjwz.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bjwz.dao.UserInfoDao;
import com.bjwz.model.UserInfo;

public class LoginServlet extends HttpServlet {

	public LoginServlet() {
		super();
	}

	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String err = "";
		String id = request.getParameter("username");
		String password = request.getParameter("password");
		String user = request.getParameter("user");
		int StuId = Integer.parseInt(id);
		int StuPassword = Integer.parseInt(password);	
		UserInfoDao uid = new UserInfoDao();
		UserInfo ui = new UserInfo();
		ui = uid.searchById(StuId);
		if(user != null && user.equals("user")) {
			
			if(ui.getStuPassword()==StuPassword) {
				HttpSession session = request.getSession(true);
				session.setAttribute("id", StuId);	
				err = "welcome！";
				request.setAttribute("err", err);
				request.getRequestDispatcher("home.jsp")
				.forward(request, response);
			}else{
				err = "请重新输入用户名和密码！";
				request.setAttribute("err", err);
				request.getRequestDispatcher("home.jsp")
				.forward(request, response);
			}
		}
		if(user != null && user.equals("dao")) {
			if(ui.getStuPassword()==StuPassword && StuId == 2013210955) {
				HttpSession session = request.getSession(true);
				session.setAttribute("id", StuId);		
				request.getRequestDispatcher("manage.jsp")
				.forward(request, response);	
			}else{
				err = "请重新输入用户名和密码！";
				request.setAttribute("err", err);
				request.getRequestDispatcher("home.jsp")
				.forward(request, response);
			}
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request,response);
	}

	public void init() throws ServletException {
		// Put your code here
	}

}
