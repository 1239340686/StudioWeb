package com.bjwz.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bjwz.model.UserInfo;
import com.bjwz.util.Change;
import com.bjwz.dao.UserInfoDao;

public class UserInfoInsertServlet extends HttpServlet {

	public UserInfoInsertServlet() {
		super();
	}

	public void destroy() {
		super.destroy(); 
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		int StuId = Integer.parseInt(request.getParameter("id").trim());
		String StuName = request.getParameter("name");
		String StuSex = request.getParameter("sex");
		String age = request.getParameter("age").trim();
		int StuAge = Integer.parseInt(age);
		String StuAddress = request.getParameter("address");
		String StuPhone = request.getParameter("phone");
		String StuHome = request.getParameter("home");
		String birthday = request.getParameter("birthday");
		DateFormat sim =new SimpleDateFormat("yyyy-MM-dd"); 
		Date StuBirthday = new Date();
		try {
			StuBirthday = sim.parse(birthday);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		String password = request.getParameter("password").trim();
		int StuPassword = Integer.parseInt(password);
		UserInfo user = new UserInfo();
		user.setStuId(StuId);
		user.setStuName(Change.getString(StuName));
		user.setStuSex(Change.getString(StuSex));
		user.setStuAge(StuAge);
		user.setStuAddress(StuAddress);
		user.setStuPhone(StuPhone);
		user.setStuHome(Change.getString(StuHome));
		user.setStuBirthday(StuBirthday);
		user.setStuPassword(StuPassword);
		 
		UserInfoDao uid = new UserInfoDao();
		uid.insertUserInfo(user);
		request.getRequestDispatcher("MPerson").forward(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
	}

	public void init() throws ServletException {

	}

}
