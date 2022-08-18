package domain;

import java.io.Serializable;

public class FineRecord implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String fineId;
	private String bookId;
	private String cardId;
	private double sum;
	private String date;
	public String getFineId() {
		return fineId;
	}
	public void setFineId(String fineId) {
		this.fineId = fineId;
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
	public double getSum() {
		return sum;
	}
	public void setSum(double sum) {
		this.sum = sum;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public static long getSerialVersionUID() {
		return serialVersionUID;
	}
}
