package mybean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DataformDAO {

	public boolean submitform(Dataform dataform, String username) {
		boolean flag=false;
		Connection conn=JDBC.getConnection();
		PreparedStatement ps = null;
		String sql="insert into reportdata"+"(username,week,benzhoushixiang,gongzuomiaoshu,yudingriqi,zongheshuoming) values(?,?,?,?,?,?)";
		try {
			ps=conn.prepareStatement(sql);
			ps.setString(1, username);
			ps.setInt(2, dataform.getWeek());
			ps.setString(3, dataform.getBenzhoushixiang());
			ps.setString(4, dataform.getGongzuomiaoshu());
			ps.setString(5, dataform.getYudingriqi());
			ps.setString(6, dataform.getZongheshuoming());
			ps.executeUpdate();   //执行更新
			flag=true;
		}catch(SQLException e) {
			e.printStackTrace();
		}	
		return flag;
	}
	
}
