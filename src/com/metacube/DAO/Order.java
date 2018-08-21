package com.metacube.DAO;

import java.util.Date;

public class Order {
	private int shopperId;
	private int orderNumber;
	private String status;
	private Date dateOrder;
	Order(int shopperId,int orderNumber,String status,Date dateOrder){
		this.shopperId=shopperId;
		this.orderNumber=orderNumber;
		this.status=status;
		this.dateOrder=dateOrder;
	}
	public Order(int orderNumber, Date date) {
		this.orderNumber=orderNumber;
		this.dateOrder=date;
	}
	/**
	 * @return the shopperId
	 */
	public int getShopperId() {
		return shopperId;
	}
	/**
	 * @param shopperId the shopperId to set
	 */
	public void setShopperId(int shopperId) {
		this.shopperId = shopperId;
	}
	/**
	 * @return the orderNumber
	 */
	public int getOrderNumber() {
		return orderNumber;
	}
	/**
	 * @param orderNumber the orderNumber to set
	 */
	public void setOrderNumber(int orderNumber) {
		this.orderNumber = orderNumber;
	}
	/**
	 * @return the status
	 */
	public String getStatus() {
		return status;
	}
	/**
	 * @param status the status to set
	 */
	public void setStatus(String status) {
		this.status = status;
	}
	/**
	 * @return the dateOrder
	 */
	public Date getDateOrder() {
		return dateOrder;
	}
	/**
	 * @param dateOrder the dateOrder to set
	 */
	public void setDateOrder(Date dateOrder) {
		this.dateOrder = dateOrder;
	}
	
}
