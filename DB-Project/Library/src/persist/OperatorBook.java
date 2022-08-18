package persist;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Date;

import common.DateFormat;
import common.JdbcUtil;

import domain.Books;

public class OperatorBook {
	public void addBook(Books book){
		Connection conn=JdbcUtil.getConnection();
		try {
			conn.setAutoCommit(false);
			PreparedStatement ps=conn.prepareStatement("insert into books values(?,?,?,?,?,?,?,?,?,?)");
			ps.setString(1, book.getBookId());
			ps.setString(2, book.getBookName());
			ps.setString(3, book.getAuthor());
			ps.setString(4, book.getPress());
			Date date=DateFormat.stringToDate(book.getPressDate(), "yyyy-MM-DD");
			ps.setDate(5, new java.sql.Date(date.getTime()));
			ps.setDouble(6, book.getPrice());
			ps.setString(7, book.getPosition());
			ps.setString(8, book.getISBN());
			ps.setString(9, "0");
			ps.setString(10, book.getTypes());
			ps.execute();
			conn.commit();
		} catch (SQLException e) {
			JdbcUtil.rollbackConnection(conn);
			e.printStackTrace();
		}finally{
			JdbcUtil.closeConnection(conn);
		}
	}
	public void deleteBook(String bookId){
		Connection conn=JdbcUtil.getConnection();
		try {
			conn.setAutoCommit(false);
			PreparedStatement ps1=conn.prepareStatement("delete borrow where bookId=?");
			ps1.setString(1, bookId);
			ps1.execute();
			PreparedStatement ps2=conn.prepareStatement("delete fineRecord where bookId=?");
			ps2.setString(1, bookId);
			ps2.execute();
			PreparedStatement ps3=conn.prepareStatement("delete returnRecord where bookId=?");
			ps3.setString(1, bookId);
			ps3.execute();
			PreparedStatement ps4=conn.prepareStatement("delete books where bookId=?");
			ps4.setString(1, bookId);
			ps4.execute();
			conn.commit();
		} catch (SQLException e) {
			JdbcUtil.rollbackConnection(conn);
			e.printStackTrace();
		}finally{
			JdbcUtil.closeConnection(conn);
		}
	}
	public void updateBook(Books book){
		Connection conn=JdbcUtil.getConnection();
		try {
			conn.setAutoCommit(false);
			PreparedStatement ps=conn.prepareStatement(this.getSQL(book));
			ps.execute();
			conn.commit();
		} catch (SQLException e) {
			JdbcUtil.rollbackConnection(conn);
			e.printStackTrace();
		}finally{
			JdbcUtil.closeConnection(conn);
		}
		
	}
	public String getSQL(Books book){
		StringBuffer sb=new StringBuffer("update books set ");
		if(book.getBookName()!=null&&book.getBookName().length()>0){
			sb.append("bookName='").append(book.getBookName()).append("',");
		}
		if(book.getAuthor()!=null&&book.getAuthor().length()>0)
			sb.append("author='").append(book.getAuthor()).append("',");
		if(book.getPress()!=null&&book.getPress().length()>0)
			sb.append("press='").append(book.getPress()).append("',");
		if(book.getPressDate()!=null&&book.getPressDate().length()>0)
			sb.append("pressDate='").append(book.getPressDate()).append("',");
		if(book.getPrice()>0)
			sb.append("price=").append(book.getPrice()).append(",");
		if(book.getPosition()!=null&&book.getPosition().length()>0)
			sb.append("position='").append(book.getPosition()).append("',");
		if(book.getISBN()!=null&&book.getISBN().length()>0)
			sb.append("ISBN='").append(book.getISBN()).append("',");
		if(book.getTypes()!=null&&book.getTypes().length()>0)
			sb.append("typeId='").append(book.getTypes()).append("',");
		sb.append("bookId='").append(book.getBookId().trim()).append("' where bookId='").append(book.getBookId().trim()).append("'");
		return sb.toString();
	}
}
