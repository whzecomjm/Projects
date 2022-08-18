package persist;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import common.JdbcUtil;

import domain.Reader;

public class OperatorReader {
	public void addReader(Reader r){
		Connection conn=JdbcUtil.getConnection();
		try {
			conn.setAutoCommit(false);
			PreparedStatement ps=conn.prepareStatement("insert into reader values(?,?,?,?,?)");
			ps.setString(1, r.getCardId());
			ps.setString(2, r.getName());
			ps.setString(3, r.getDepartment());
			ps.setString(4, r.getFlag());
			ps.setString(5, r.getSex());
			ps.execute();
			conn.commit();
		} catch (SQLException e) {
			JdbcUtil.rollbackConnection(conn);
			e.printStackTrace();
		}finally{
			JdbcUtil.closeConnection(conn);
		}
	}
	public void deleteReader(String cardId){
		Connection conn=JdbcUtil.getConnection();
		try {
			conn.setAutoCommit(false);
			PreparedStatement ps1=conn.prepareStatement("delete borrow where cardId=?");
			ps1.setString(1, cardId);
			ps1.execute();
			PreparedStatement ps2=conn.prepareStatement("delete fineRecord where cardId=?");
			ps2.setString(1, cardId);
			ps2.execute();
			PreparedStatement ps3=conn.prepareStatement("delete returnRecord where cardId=?");
			ps3.setString(1, cardId);
			ps3.execute();
			PreparedStatement ps4=conn.prepareStatement("delete reader where cardId=?");
			ps4.setString(1, cardId);
			ps4.execute();
			conn.commit();
		} catch (SQLException e) {
			JdbcUtil.rollbackConnection(conn);
			e.printStackTrace();
		}finally{
			JdbcUtil.closeConnection(conn);
		}
	}
	public void updateReader(Reader r){
		Connection conn=JdbcUtil.getConnection();
		try {
			conn.setAutoCommit(false);
			PreparedStatement ps=conn.prepareStatement(this.getSQL(r));
			ps.execute();
			conn.commit();
		} catch (SQLException e) {
			JdbcUtil.rollbackConnection(conn);
			e.printStackTrace();
		}finally{
			JdbcUtil.closeConnection(conn);
		}
	}
	private String getSQL(Reader r){
		StringBuffer sb=new StringBuffer("update reader set ");
		if(r.getName()!=null&&r.getName().length()>0)
			sb.append("name='").append(r.getName()).append("',");
		if(r.getDepartment()!=null&&r.getDepartment().length()>0)
			sb.append("department='").append(r.getDepartment()).append("',");
		if(r.getFlag()!=null&&r.getFlag().length()>0)
			sb.append("flag='").append(r.getFlag()).append("',");
		if(r.getSex()!=null&&r.getSex().length()>0)
			sb.append("sex='").append(r.getSex()).append("',");
		sb.append("cardId='").append(r.getCardId()).append("' where cardId='").append(r.getCardId()).append("'");
		return sb.toString();
	}
}
