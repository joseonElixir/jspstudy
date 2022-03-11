package yong.photo;

import java.sql.*;

public class PhotoDTO {
	
	private int idx;
	private String id;
	private String filename1;
	private String filename2;
	private Date date;
	
	public PhotoDTO() {
		// TODO Auto-generated constructor stub
	}
	
	public PhotoDTO(int idx, String id, String filename1, String filename2, Date date) {
		super();
		this.idx = idx;
		this.id = id;
		this.filename1 = filename1;
		this.filename2 = filename2;
		this.date = date;
	}
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getFilename1() {
		return filename1;
	}
	public void setFilename1(String filename1) {
		this.filename1 = filename1;
	}
	public String getFilename2() {
		return filename2;
	}
	public void setFilename2(String filename2) {
		this.filename2 = filename2;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	
}
