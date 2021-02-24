package com.ecomm.model;


import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class Cart {

	@Id
	int cartItemId;
	int productId;
	String productName;
	int qnty;
	double totalPrice;
	String username;
	String paid;
	String txdate;
	String payment;
	
	public String getPayment() {
		return payment;
	}
	public void setPayment(String payment) {
		this.payment = payment;
	}
	public int getCartItemId() {
		return cartItemId;
	}
	public void setCartItemId(int cartItemId) {
		this.cartItemId = cartItemId;
	}
	public int getProductId() {
		return productId;
	}
	public void setProductId(int productId) {
		this.productId = productId;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public int getQnty() {
		return qnty;
	}
	public void setQnty(int qnty) {
		this.qnty = qnty;
	}
	
	public double getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPaid() {
		return paid;
	}
	public void setPaid(String paid) {
		this.paid = paid;
	}
	

	public String getTxdate() {
		return txdate;
	}
	public void setTxdate(String txdate) {
		this.txdate = txdate;
	}
	@Override
	public String toString() {
		return "Cart [cartItemId=" + cartItemId + ", productId=" + productId + ", productName=" + productName
				+ ", qnty=" + qnty + ", totalPrice=" + totalPrice + ", username=" + username + ", paid=" + paid
				+ ", txdate=" + txdate + ", payment=" + payment + "]";
	}
	
	
	
	
	
}
