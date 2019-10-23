package com.app.util;

import java.math.BigDecimal;

public class Item{
    private String id;
    private String title;
    private int amount;
    private BigDecimal price;
    private int stock;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public BigDecimal getPrice() {
		return price;
	}

	public void setPrice(BigDecimal price) {
		this.price = price;
	}

	public int getStock() {
		return stock;
	}

	public void setStock(int stock) {
		this.stock = stock;
	}

	@Override
	public String toString() {
		return "Item [id=" + id + ", title=" + title + ", amount=" + amount
				+ ", price=" + price + ", stock=" + stock + "]";
	}
}