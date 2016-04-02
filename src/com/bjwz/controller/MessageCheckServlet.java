package com.bjwz.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bjwz.dao.MessageDao;
import com.bjwz.model.Message;

public class MessageCheckServlet extends HttpServlet {

	public MessageCheckServlet() {
		super();
	}

	public void destroy() {
		super.destroy();

	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ArrayList<Message> message = new ArrayList<Message>();
		MessageDao mdao = new MessageDao();
		message = mdao.getMessage();
		request.setAttribute("message",message);
	    request.getRequestDispatcher("message.jsp").forward(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request,response);
	}

	public void init() throws ServletException {
	}

}
