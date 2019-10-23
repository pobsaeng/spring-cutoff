package com.app.model;
import java.math.BigDecimal;
import java.util.Date;
@SuppressWarnings("serial")
public class Book implements java.io.Serializable {
	private String isbn;
	private String title;
	private String author;
	private String publisher;
	private String yearPublisher;
	private int page;
	private BigDecimal price;
	private float weight;
	private int stock;
	private Date createUpdate;
	private Date createDate;

	public Book() {
	}

	public Book(String isbn, String title, String author, String publisher, String yearPublisher, int page,
			BigDecimal price, float weight, int stock, Date createUpdate, Date createDate) {
		this.isbn = isbn;
		this.title = title;
		this.author = author;
		this.publisher = publisher;
		this.yearPublisher = yearPublisher;
		this.page = page;
		this.price = price;
		this.weight = weight;
		this.stock = stock;
		this.createUpdate = createUpdate;
		this.createDate = createDate;
	}

	public String getIsbn() {
		return this.isbn;
	}

	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getAuthor() {
		return this.author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getPublisher() {
		return this.publisher;
	}

	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}

	public String getYearPublisher() {
		return this.yearPublisher;
	}

	public void setYearPublisher(String yearPublisher) {
		this.yearPublisher = yearPublisher;
	}

	public int getPage() {
		return this.page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public BigDecimal getPrice() {
		return this.price;
	}

	public void setPrice(BigDecimal price) {
		this.price = price;
	}

	public float getWeight() {
		return this.weight;
	}

	public void setWeight(float weight) {
		this.weight = weight;
	}

	public int getStock() {
		return this.stock;
	}

	public void setStock(int stock) {
		this.stock = stock;
	}

	public Date getCreateUpdate() {
		return this.createUpdate;
	}

	public void setCreateUpdate(Date createUpdate) {
		this.createUpdate = createUpdate;
	}

	public Date getCreateDate() {
		return this.createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	@Override
	public String toString() {
		return "Book [isbn=" + isbn + ", title=" + title + ", author=" + author + ", publisher=" + publisher
				+ ", yearPublisher=" + yearPublisher + ", page=" + page + ", price=" + price + ", weight=" + weight
				+ ", stock=" + stock + ", createUpdate=" + createUpdate + ", createDate=" + createDate + "]";
	}
	
	
}
