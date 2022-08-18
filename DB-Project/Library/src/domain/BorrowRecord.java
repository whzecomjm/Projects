package domain;

import java.io.Serializable;

public class BorrowRecord implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String borrowId;
	private String bookId;
	private String cardId;
	private String borrowDate;
	private String shouldReturnDate;
	private int total;
	public String getBorrowId() {
		return borrowId;
	}
	public void setBorrowId(String borrowId) {
		this.borrowId = borrowId;
	}
	public String getBookId() {
		return bookId;
	}
	public void setBookId(String bookId) {
		this.bookId = bookId;
	}
	public String getCardId() {
		return cardId;
	}
	public void setCardId(String cardId) {
		this.cardId = cardId;
	}
	public String getBorrowDate() {
		return borrowDate;
	}
	public void setBorrowDate(String borrowDate) {
		this.borrowDate = borrowDate;
	}
	public String getShouldReturnDate() {
		return shouldReturnDate;
	}
	public void setShouldReturnDate(String shouldReturnDate) {
		this.shouldReturnDate = shouldReturnDate;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	public static long getSerialVersionUID() {
		return serialVersionUID;
	}
}
