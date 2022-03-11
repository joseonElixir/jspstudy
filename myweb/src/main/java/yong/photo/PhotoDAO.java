package yong.photo;

import java.sql.*;
import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.websocket.Session;

import com.oreilly.servlet.*;

import yong.db.YongDB;


public class PhotoDAO {

	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;
	
	public PhotoDAO() {
		// TODO Auto-generated constructor stub
	}
	
	/**사진정보 등록관련 메소드*/
	public int photoInsert(String sid, String filename1, String filename2) {
		try {
			conn= yong.db.YongDB.getConn();
			String sql="insert into userphoto values("
					+ "userphoto_idx.nextval,?,?,?,sysdate)";
			ps=conn.prepareStatement(sql);
			ps.setString(1, sid);
			ps.setString(2, filename1);
			ps.setString(3, filename2);
			int res = ps.executeUpdate();
			System.out.println("res :" +res);
			return res;
			
		} catch (Exception e) {
			return -1;
			
		}finally {
			try {
				ps.close();
				conn.close();
			} catch (Exception e2) {
				
			}
		}
		
	}
	
	/**이미지리스트관련메소드*/
	public ArrayList<PhotoDTO> photoList(){
		try {
			System.out.println("photoList 메소드 접속.");
			conn= yong.db.YongDB.getConn();
			String sql="select * from userphoto order by idx desc";
			ps=conn.prepareStatement(sql);
			rs=ps.executeQuery();
			ArrayList<PhotoDTO> arr = new ArrayList<PhotoDTO>();
			while(rs.next()) {
				int idx=rs.getInt("idx");
				System.out.println("idx : "+idx);
				String id  = rs.getString("id");
				String filename1 = rs.getString("filename1");
				String filename2 = rs.getString("filename2");
				java.sql.Date uploaddate = rs.getDate("uploaddate");
				PhotoDTO dto = new PhotoDTO(idx, id, filename1, filename2, uploaddate);
				arr.add(dto);
			}
			return arr;
		} catch (Exception e) {
			return null;
		}finally {
			try {
				
			} catch (Exception e2) {
				
			}
		}
	}
	
}
