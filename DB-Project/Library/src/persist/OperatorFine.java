package persist; 

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

import common.DateFormat;
import common.JdbcUtil;

import domain.FineRecord;
import domain.ReturnRecord;

public class OperatorFine {
	public void addFineRecord(FineRecord fr,ReturnRecord rr){
		Connection conn=JdbcUtil.getConnection();
		try {
			conn.setAutoCommit(false);
			PreparedStatement ps=conn.prepareStatement("select max(fineId) from fineRecord");
			ResultSet rs=ps.executeQuery();
			rs.next();
			int max=rs.getInt(1);
			PreparedStatement ps1=conn.prepareStatement("insert into fineRecord values(?,?,?,?,?)");
			ps1.setInt(1, max+1);
			ps1.setString(2, fr.getBookId());
			ps1.setString(3, fr.getCardId());
			ps1.setDouble(4, fr.getSum());
			Date date=DateFormat.stringToDate(fr.getDate(), "yyyy-MM-DD");
			ps1.setDate(5, new java.sql.Date(date.getTime()));
			ps1.execute();
			ps=conn.prepareStatement("select max(returnId) from returnRecord");
			rs=ps.executeQuery();
			rs.next();
			max=rs.getInt(1);
			PreparedStatement ps2=conn.prepareStatement("insert into returnRecord values(?,?,?,?,?)");
			ps2.setInt(1, max+1);
			ps2.setString(2, rr.getBookId());
			ps2.setString(3, rr.getCardId());
			ps2.setDate(4, new java.sql.Date(date.getTime()));
			if(rr.getProblem()!=null&&rr.getProblem().length()>0)
				ps2.setString(5, rr.getProblem());
			else
				ps2.setString(5, "");
			ps2.execute();
			OperatorReturnRecord orr=new OperatorReturnRecord();
			orr.updateBorrow(rr.getCardId(), conn);
			conn.commit();
		} catch (SQLException e) {
			JdbcUtil.rollbackConnection(conn);
			e.printStackTrace();
		}finally{
			JdbcUtil.closeConnection(conn);
		}
	}
}
