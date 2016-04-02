package com.bjwz.dao;

import com.bjwz.model.Album;
import com.bjwz.util.DB;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

/**
 * 相册daoCRUD
 * @author zxy
 * 2015-03-05
 */
public class AlbumDao {
	
	public void Insert(Album a) {
		Connection con = DB.getConn();
		String sql = "insert into album values (?, ?, ?, ?, ?)";
		PreparedStatement pstmt = DB.prepare(con, sql);
		try {
			pstmt.setInt(1, a.getPhotoId());
			pstmt.setString(2, a.getPhotoDesc());
			pstmt.setDate(3, new java.sql.Date(a.getPhotoDate().getTime()));
			pstmt.setString(4, a.getPhotoName());
			pstmt.setString(5, a.getPhotoUrl());
			
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		finally {
			DB.close(con);
			DB.close(pstmt);
		}
	}
	
	public void Delete (int id) {
		Connection con = DB.getConn();
		String sql = "delete from album where id =" + id + "";
		PreparedStatement pstmt = DB.prepare(con, sql);
		try {
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		finally {
			DB.close(pstmt);
			DB.close(con);
		}
	}
	
	public ArrayList<Album> Check () {
		Connection con = DB.getConn();
		Statement stmt = DB.getStatement(con);
		String sql = "select * from album";
		ResultSet rs = DB.getResultSet(stmt, sql);
		ArrayList<Album> album = new ArrayList<Album>();
		try {
			while (rs.next()) {
				Album a = new Album();
				a.setPhotoId(rs.getInt("PhotoId"));
				a.setPhotoDesc(rs.getString("PhotoDesc"));
				a.setPhotoDate(rs.getDate("PhotoDate"));
				a.setPhotoName(rs.getString("PhotoName"));
				a.setPhotoUrl(rs.getString("PhotoUrl"));
				
				album.add(a);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		finally {
			DB.close(con);
			DB.close(rs);
			DB.close(stmt);
		}
		return album;
	}
}
