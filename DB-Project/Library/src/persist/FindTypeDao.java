package persist;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLClientInfoException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import common.JdbcUtil;

import domain.Type;

public class FindTypeDao {
	public List<Type> findAllType(){
		List<Type> list=new ArrayList<Type>();
		Connection conn=JdbcUtil.getConnection();
		try{
			PreparedStatement ps=conn.prepareStatement("select * from types");
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				Type t=new Type();
				t.setTypeId(rs.getString(1));
				t.setTypeName(rs.getString(2));
				list.add(t);
			}
		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			JdbcUtil.closeConnection(conn);
		}
		return list;
	}
}
