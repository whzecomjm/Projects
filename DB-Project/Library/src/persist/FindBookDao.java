package persist;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import common.JdbcUtil;

import domain.Books;

public class FindBookDao {
	public Books findBookById(String bookId){
		Books book=null;
		Connection conn=JdbcUtil.getConnection();
		try{
			PreparedStatement ps=conn.prepareStatement("select * from books where bookId=?");
			ps.setString(1, bookId);
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				book=new Books();
				book.setBookId(rs.getString("bookId"));
				book.setBookName(rs.getString("bookName"));
				book.setAuthor(rs.getString("author"));
				book.setPress(rs.getString("press"));
				book.setPressDate(rs.getString("pressDate"));
				book.setPrice(rs.getDouble("price"));
				book.setPosition(rs.getString("position"));
				book.setISBN(rs.getString("ISBN"));
				book.setState(rs.getString("states"));
				book.setTypes(rs.getString("typeId"));
			}
		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			JdbcUtil.closeConnection(conn);
		}
		return book;
	}
	public List<Books> findBookList(Books b){
		List<Books> list=new ArrayList<Books>();
		Connection conn=JdbcUtil.getConnection();
		try{
			PreparedStatement ps=conn.prepareStatement(this.getSQL(b));
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				Books book=new Books();
				book.setBookId(rs.getString("bookId"));
				book.setBookName(rs.getString("bookName"));
				book.setAuthor(rs.getString("author"));
				book.setPress(rs.getString("press"));
				book.setPressDate(rs.getString("pressDate"));
				book.setPrice(rs.getDouble("price"));
				book.setPosition(rs.getString("position"));
				book.setISBN(rs.getString("ISBN"));
				book.setState(rs.getString("states"));
				book.setTypes(rs.getString("typeId"));
				list.add(book);
			}
		}catch(SQLException e){
			e.printStackTrace();
		}finally{
			JdbcUtil.closeConnection(conn);
		}
		return list;
	}
	public String getSQL(Books b){
		StringBuffer sb=new StringBuffer("select * from books where 1=1");
		if(b.getBookName()!=null&&b.getBookName().length()>0)
			sb.append(" and bookName like '%").append(b.getBookName()).append("%'");
		if(b.getAuthor()!=null&&b.getAuthor().length()>0)
			sb.append(" and author like '%").append(b.getAuthor()).append("%'");
		if(b.getISBN()!=null&&b.getISBN().length()>0)
			sb.append(" and ISBN='").append(b.getISBN()).append("'");
		if(b.getTypes()!=null&&b.getTypes().length()>0)
			sb.append(" and typeId='").append(b.getTypes()).append("'");
		return sb.toString();
	}
}
