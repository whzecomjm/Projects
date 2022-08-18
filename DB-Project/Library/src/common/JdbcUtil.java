package common;

import java.sql.Connection;
import java.sql.SQLException;

import java.sql.*;



public class JdbcUtil {
	//获取数据库连接
	public static Connection getConnection(){
		Connection conn = null;
		//加载驱动
		try {
			Class.forName(Constants.DB_DRIVER);
			conn = DriverManager.getConnection(Constants.DB_URL,"test","123");
		} catch (Exception e) {
			e.printStackTrace();
		}
	return  conn;
	}
	//关闭连接
	public static void closeConnection(Connection conn){
		if(conn != null){
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	//回滚操作
	public static void rollbackConnection(Connection conn){
		if(conn != null){
			try {
				conn.rollback();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
}
