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

import com.bjwz.dao.MessageDao;
import com.bjwz.model.Message;
import com.bjwz.util.Change;

public class MessageInsertServlet extends HttpServlet {

	public MessageInsertServlet() {
		super();
	}

	public void destroy() {
		super.destroy();
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String MessageAuthor = request.getParameter("author");
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String date = df.format(new Date());
		Date MessageDate = new Date();
		try {
			MessageDate = df.parse(date);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		String id = request.getParameter("id").trim();
		int MessageId = Integer.parseInt(id);
		String MessageTitle = request.getParameter("title");
		String MessageContent = request.getParameter("content");
		Message m = new Message();
		m.setMessageId(MessageId);
		m.setMessageAuthor(Change.getString(MessageAuthor));
		m.setMessageDate(MessageDate);
		m.setMessageTitle(Change.getString(MessageTitle));
		m.setMessageContent(Change.getString(MessageContent));
		MessageDao md = new MessageDao();
		md.insertMessage(m);
		request.getRequestDispatcher("MessageCheckServlet").forward(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

	public void init() throws ServletException {

	}

}
