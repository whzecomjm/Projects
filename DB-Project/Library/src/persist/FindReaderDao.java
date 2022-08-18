package persist;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.sun.corba.se.spi.orbutil.fsm.Guard.Result;

import common.JdbcUtil;

import domain.Reader;

public class FindReaderDao {
	public Reader findReaderById(String id){
		Connection conn=JdbcUtil.getConnection();
		Reader r=null;
		try {
			PreparedStatement ps=conn.prepareStatement("select * from reader where cardId=?");
			ps.setString(1, id);
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				r=new Reader();
				r.setCardId(rs.getString("cardId"));
				r.setName(rs.getString("name"));
				r.setDepartment(rs.getString("department"));
				r.setFlag(rs.getString("flag"));
				r.setSex(rs.getString("sex"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			JdbcUtil.closeConnection(conn);
		}
		return r;
	}
	public List<Reader> findReaders(Reader r){
		Connection conn=JdbcUtil.getConnection();
		List<Reader> list=new ArrayList<Reader>();
		StringBuffer sql=new StringBuffer("select * from reader where 1=1");
		if(r.getName()!=null&&r.getName().length()>0)
			sql.append(" and name like '%").append(r.getName()).append("%'");
		if(r.getDepartment()!=null&&r.getDepartment().length()>0)
			sql.append(" and department like '%").append(r.getDepartment()).append("%'");
		try {
			PreparedStatement ps=conn.prepareStatement(sql.toString());
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				Reader rr=new Reader();
				rr.setCardId(rs.getString(1));
				rr.setName(rs.getString(2));
				rr.setDepartment(rs.getString(3));
				rr.setFlag(rs.getString(4));
				rr.setSex(rs.getString(5));
				list.add(rr);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			JdbcUtil.closeConnection(conn);
		}
		return list;
	}
}
