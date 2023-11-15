package com.multi.mvc03;

public class MovieVO {
	private String title;
	private int price;

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	@Override
	public String toString() {
		return "movieVO [title=" + title + ", price=" + price + "]";
	}
}
