package mybean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class UserDAO {

	public User login(String username,String password) {
		Connection conn = JDBC.getConnection();
		String sql = "select * from tbl_user where username='"+username+"'";
		//System.out.println(sql);
		
		Statement stmt=null;
		ResultSet rs=null;   //结果集
		User user=null;
		try {
			stmt=conn.createStatement();
			rs=stmt.executeQuery(sql);     //执行查询语句
			if(rs.next()) {
				if(password.equals(rs.getString("password"))) {
					user= new User();
					user.setUsername(rs.getString("username"));
				}
			}
		}catch(SQLException e) {
			e.printStackTrace();
		}
			return user;
	}
	
	public boolean register(User user) {
		boolean flag=false;
		Connection conn=JDBC.getConnection();
		PreparedStatement ps = null;
		String sql="insert into tbl_user"+"(username,password,sex,email) values(?,?,?,?)";
		try {
			ps=conn.prepareStatement(sql);
			ps.setString(1, user.getUsername());
			ps.setString(2, user.getPassword());
			ps.setString(3, user.getSex());
			ps.setString(4, user.getEmail());
			ps.executeUpdate();   //执行更新
			flag=true;
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		return flag;
	}
}

