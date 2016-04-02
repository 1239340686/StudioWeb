package com.bjwz.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bjwz.dao.MessageDao;

public class MessageDeleteServlet extends HttpServlet {
	
	public MessageDeleteServlet() {
		super();
	}

	public void destroy() {
		super.destroy(); // Just puts "destroy" string in log
		// Put your code here
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String Id = request.getParameter("Id");
		int MessageId = Integer.parseInt(Id);
		MessageDao md = new MessageDao();
		md.deleteMessage(MessageId);
		request.getRequestDispatcher("mMessage").forward(request, response);
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request,response);
	}

	public void init() throws ServletException {
		// Put your code here
	}

}
