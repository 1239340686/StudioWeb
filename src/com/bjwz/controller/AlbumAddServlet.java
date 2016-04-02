package com.bjwz.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.bjwz.dao.AlbumDao;
import com.bjwz.model.Album;
import com.bjwz.util.Change;

/*
 * 上传相册
 * @author zxy
 * 2015-03-05
 */
@WebServlet(name="AlbumAddServlet" , urlPatterns={"/AlbumAddServlet"})  
@MultipartConfig  


public class AlbumAddServlet extends HttpServlet {

	public AlbumAddServlet() {
		super();
	}
	
	public void destroy() {
		super.destroy(); 
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8"); 
		request.setCharacterEncoding("utf-8");
		
		String id = request.getParameter("id");
		int PhotoId = Integer.parseInt(id);
		String desc = request.getParameter("desc");
		String name = request.getParameter("name");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String date = sdf.format(new Date());
		Date PhotoDate = new Date();
		try {
			PhotoDate = sdf.parse(date);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Part part = request.getPart("file");
		String fileNameInfo = part.getHeader("content-disposition");
		String PhotoUrl = fileNameInfo.substring(fileNameInfo.indexOf("filename=\"") + 10 , fileNameInfo.length() - 1);
		String type = PhotoUrl.substring(PhotoUrl.indexOf("."));
		String PhotoName = name + type;
		//part.write(getServletContext().getRealPath("../../../../studentweb/WebRoot/image") + "/" + PhotoName);
		part.write(getServletContext().getRealPath("/image") + "/" + PhotoName);
		Album a = new Album();
		a.setPhotoId(PhotoId);
		a.setPhotoDesc(desc);
		a.setPhotoDate(PhotoDate);
		a.setPhotoName(PhotoName);
		a.setPhotoUrl(PhotoUrl);
		AlbumDao ad = new AlbumDao();
		ad.Insert(a);
		request.getRequestDispatcher("AlbumCheckServlet").forward(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request,response);
	}

	
	public void init() throws ServletException {
		// Put your code here
	}

}
