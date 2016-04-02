package com.bjwz.model;

import java.util.Date;

public class Album {
	
	private int photoId;
	private String photoDesc;
	private Date photoDate;
    private String photoName;
    private String photoUrl;
    
	public String getPhotoUrl() {
		return photoUrl;
	}
	public void setPhotoUrl(String photoUrl) {
		this.photoUrl = photoUrl;
	}
	public int getPhotoId() {
		return photoId;
	}
	public void setPhotoId(int PhotoId) {
		this.photoId = PhotoId;
	}
	public String getPhotoDesc() {
		return photoDesc;
	}
	public void setPhotoDesc(String PhotoDesc) {
		this.photoDesc = PhotoDesc;
	}
	public Date getPhotoDate() {
		return photoDate;
	}
	public void setPhotoDate(Date PhotoDate) {
		this.photoDate = PhotoDate;
	}
	public String getPhotoName() {
		return photoName;
	}
	public void setPhotoName(String PhotoName) {
		this.photoName = PhotoName;
	}
    
	
}
