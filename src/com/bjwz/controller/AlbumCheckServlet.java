package com.bjwz.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bjwz.dao.AlbumDao;
import com.bjwz.model.Album;

/*
 * 展示相册
 * @author zxy
 * 2015-03-05
 */
public class AlbumCheckServlet extends HttpServlet {

	public AlbumCheckServlet() {
		super();
	}

	
	public void destroy() {
		super.destroy(); 
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=utf-8");
		AlbumDao ad = new AlbumDao();
		ArrayList <Album> album = new ArrayList();
		album = ad.Check();
		request.setAttribute("album", album);
		request.getRequestDispatcher("mAlbum.jsp").forward(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request,response);
	}

		public void init() throws ServletException {
		// Put your code here
	}

}
