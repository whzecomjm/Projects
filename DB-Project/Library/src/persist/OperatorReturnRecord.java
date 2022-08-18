package persist;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

import common.DateFormat;
import common.JdbcUtil;

import domain.ReturnRecord;

public class OperatorReturnRecord {
	public void addReturnRecord(ReturnRecord rr){
		Connection conn=JdbcUtil.getConnection();
		try {
			conn.setAutoCommit(false);
			PreparedStatement ps1=conn.prepareStatement("select max(returnId) from returnRecord");
			ResultSet rs=ps1.executeQuery();
			rs.next();
			int total=rs.getInt(1);
			PreparedStatement ps=conn.prepareStatement("insert into returnRecord values(?,?,?,?,?)");
			ps.setInt(1, total+1);
			ps.setString(2, rr.getBookId());
			ps.setString(3, rr.getCardId());
			Date date=DateFormat.stringToDate(rr.getReturnDate(), "yyyy-MM-DD");
			ps.setDate(4, new java.sql.Date(date.getTime()));
			if(rr.getProblem()!=null&&rr.getProblem().length()>0)
				ps.setString(5, rr.getProblem());
			else
				ps.setString(5, "");
			ps.execute();
			this.updateBorrow(rr.getCardId(), conn);
			conn.commit();
		} catch (SQLException e) {
			JdbcUtil.rollbackConnection(conn);
			e.printStackTrace();
		}finally{
			JdbcUtil.closeConnection(conn);
		}
	}
	public void updateBorrow(String cardId,Connection conn) throws SQLException{
		PreparedStatement ps=conn.prepareStatement("select max(total) from borrow where cardId=?");
		ps.setString(1, cardId);
		ResultSet rs=ps.executeQuery();
		int total = 0;
		while(rs.next()){
			total=rs.getInt(1);
		}
	}
}