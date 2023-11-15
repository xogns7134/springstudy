package com.multi.mvc03;

public class TestDTO {
	private String fruit;
	private String travel;
	public String getFruit() {
		return fruit;
	}
	public void setFruit(String fruit) {
		this.fruit = fruit;
	}
	public String getTravel() {
		return travel;
	}
	public void setTravel(String travel) {
		this.travel = travel;
	}
	@Override
	public String toString() {
		return "TestDTO [fruit=" + fruit + ", travel=" + travel + "]";
	}
}
