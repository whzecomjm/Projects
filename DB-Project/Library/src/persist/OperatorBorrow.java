package persist;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

import common.DateFormat;
import common.JdbcUtil;

import domain.BorrowRecord;

public class OperatorBorrow {
	public void createBorrowRecord(BorrowRecord br){
		Connection conn=JdbcUtil.getConnection();
		try {
			conn.setAutoCommit(false);
			PreparedStatement ps1=conn.prepareStatement("select max(borrowId) from borrow");
			ResultSet rs1=ps1.executeQuery();
			rs1.next();
			int max = rs1.getInt(1);
			PreparedStatement ps2=conn.prepareStatement("select max(total) from borrow where cardId=?");
			ps2.setString(1, br.getCardId());
			ResultSet rs2=ps2.executeQuery();
			rs2.next();
			int total = rs2.getInt(1);
			String sql="insert into borrow(borrowId,bookId,cardId,borrowDate,shouldReturnDate,total) values(?,?,?,?,?,?)";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setInt(1, max+1);
			ps.setString(2, br.getBookId());
			ps.setString(3, br.getCardId());
			Date date1=DateFormat.stringToDate(br.getBorrowDate(), "yyyy-MM-DD");
			Date date2=DateFormat.stringToDate(br.getShouldReturnDate(), "yyyy-MM-DD");
			ps.setDate(4, new java.sql.Date(date1.getTime()));
			ps.setDate(5, new java.sql.Date(date2.getTime()));
			ps.setInt(6, total);
			ps.execute();
			conn.commit();
		} catch (SQLException e) {
			JdbcUtil.rollbackConnection(conn);
			e.printStackTrace();
		}finally{
			JdbcUtil.closeConnection(conn);
		}
	}
	public BorrowRecord findBorrowRecord(String bookId,String cardId){
		Connection conn=JdbcUtil.getConnection();
		BorrowRecord br=null;
		try {
			String sql="select * from borrow where bookId=? and cardId=?";
			PreparedStatement ps=conn.prepareStatement(sql);
			ps.setString(1, bookId);
			ps.setString(2, cardId);
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				br=new BorrowRecord();
				br.setBorrowId(rs.getString(1));
				br.setBookId(rs.getString(2));
				br.setCardId(rs.getString(3));
				br.setBorrowDate(rs.getString(4));
				br.setShouldReturnDate(rs.getString(5));
				br.setTotal(rs.getInt(6));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			JdbcUtil.closeConnection(conn);
		}
		return br;
	}
}
