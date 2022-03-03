package yong.db;

import java.sql.*;
import javax.sql.*;
import javax.naming.*;

public class YongDB { //클래스를 이용한 모듈화 기법.

	static DataSource ds;
	
	static {
		try {
			Context initContext = new InitialContext();
			Context envContext  = (Context)initContext.lookup("java:/comp/env");
			ds = (DataSource)envContext.lookup("jdbc/myoracle");			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
	}
	
	public static Connection getConn() throws Exception{

		return ds.getConnection();
	}
	
}
