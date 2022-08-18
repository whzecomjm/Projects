package persist;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import common.JdbcUtil;

import domain.Admin;

public class LoginDao {
	public Admin login(String userName){
		Connection conn=JdbcUtil.getConnection();
		Admin admin=null;
		try {
			PreparedStatement ps=conn.prepareStatement("select * from admin where adminId=?");
			ps.setString(1, userName);
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				admin=new Admin();
				admin.setAdminId(userName);
				admin.setAdminName(rs.getString("adminname"));
				admin.setPassword(rs.getString("password"));
				admin.setTelephone(rs.getString("telephone"));
				admin.setSex(rs.getString("sex"));
				admin.setLevel(rs.getString("adminlevel"));
			}
		} catch (SQLException e) {
			JdbcUtil.closeConnection(conn);
			e.printStackTrace();
		}finally{
			JdbcUtil.closeConnection(conn);
		}
		return admin;
	}
}
