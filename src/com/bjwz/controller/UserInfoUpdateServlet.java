package com.bjwz.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bjwz.dao.UserInfoDao;
import com.bjwz.model.UserInfo;
import com.bjwz.util.Change;

public class UserInfoUpdateServlet extends HttpServlet {

	public UserInfoUpdateServlet() {
		super();
	}

	public void destroy() {
		super.destroy();
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String id = request.getParameter("id");

		int StuId = Integer.parseInt(id);
		String StuName = request.getParameter("name");
		String StuSex = request.getParameter("sex");
		String age = request.getParameter("age");
		int StuAge = Integer.parseInt(age);
		String StuAddress = request.getParameter("address");
		String StuPhone = request.getParameter("phone");
		String StuHome = request.getParameter("home");
		String birthday = request.getParameter("birthday");
		SimpleDateFormat sim = new SimpleDateFormat("yyyy-MM-dd");
		Date StuBirthday = null;
		try {
			StuBirthday = sim.parse(birthday);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		String password = request.getParameter("password");
		int StuPassword = Integer.parseInt(password);

		UserInfo usero = new UserInfo();
		usero.setStuId(StuId);
		usero.setStuName(Change.getString(StuName));
		usero.setStuSex(Change.getString(StuSex));
		usero.setStuAge(StuAge);
		usero.setStuAddress(StuAddress);
		usero.setStuPhone(StuPhone);
		usero.setStuHome(Change.getString(StuHome));
		usero.setStuBirthday(StuBirthday);
		usero.setStuPassword(StuPassword);

		UserInfoDao uidt = new UserInfoDao();
		uidt.update(StuId, usero);
		request.getRequestDispatcher("MPerson").forward(request, response);
		request.setCharacterEncoding("UTF-8");

	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

	public void init() throws ServletException {
	}

}
