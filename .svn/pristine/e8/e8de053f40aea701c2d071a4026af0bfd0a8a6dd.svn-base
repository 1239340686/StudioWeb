package com.bjwz.controller;

import java.awt.List;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.bjwz.model.UserInfo;
import com.bjwz.dao.UserInfoDao;

public class MPerson extends HttpServlet {

	public MPerson() {
		super();
	}

	public void destroy() {
		super.destroy();
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ArrayList<UserInfo> user = new ArrayList<UserInfo>();
		UserInfoDao uid = new UserInfoDao();
		user = uid.getUserInfo();
		request.setAttribute("list",user);
	    request.getRequestDispatcher("mPerson.jsp").forward(request, response);
	    response.setCharacterEncoding("utf-8");
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
        doGet(request,response);
	}

	public void init() throws ServletException {
		
	}

}
