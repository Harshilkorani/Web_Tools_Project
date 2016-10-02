package com.me.model;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

@Entity
@Table(name="ORDERITEMS")
public class OrderItems {
	
	public OrderItems()
	{
		
	}
	@Id
	@GeneratedValue
	@Column(name="id")
	private int id;
	
	@Column(name="quantity")
	private int quantity;

	@Column(name="price")
	private int price;
	
	/*
	@OneToOne( cascade=CascadeType.ALL)
    @PrimaryKeyJoinColumn
	private Product product;
	*/

	
	@ManyToOne
    @JoinColumn(name="order_id")
    private Order order;

	

	public int getQuantity() {
		return quantity;
	}


	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}


	public int getPrice() {
		return price;
	}


	public void setPrice(int price) {
		this.price = price;
	}

	/*

	public Product getProduct() {
		return product;
	}


	public void setProduct(Product product) {
		this.product = product;
	}

	*/

	public Order getOrder() {
		return order;
	}


	public void setOrder(Order order) {
		this.order = order;
	}
	
	
	
	

}
