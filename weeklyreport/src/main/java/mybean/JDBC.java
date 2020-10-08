package mybean;

import java.sql.Connection;
import java.sql.DriverManager; 

public class JDBC{
	public static Connection getConnection(){
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url="jdbc:mysql://localhost:3306/weeklyreport?useSSL=false&serverTimezone=UTC&characterEncoding=UTF-8";
			String uid="root";
			String pwd="123456";
			Connection conn=null;
			conn=DriverManager.getConnection(url,uid,pwd);
			//System.out.println("link ok");
			return conn;
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}
