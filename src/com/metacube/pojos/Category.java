package com.metacube.pojos;

public class Category {
	private int countOfChild;
	private String categoryType;
	public Category(int countOfChild,String categoryType){
		this.setCountOfChild(countOfChild);
		this.setCategoryType(categoryType);
	}
	public int getCountOfChild() {
		return countOfChild;
	}
	public void setCountOfChild(int countOfChild) {
		this.countOfChild = countOfChild;
	}
	public String getCategoryType() {
		return categoryType;
	}
	public void setCategoryType(String categoryType) {
		this.categoryType = categoryType;
	}
}
