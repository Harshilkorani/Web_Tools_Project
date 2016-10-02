package com.me.model;


import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.IndexColumn;

@Entity
@Table(name="ORDER")
public class Order {
	
	public Order(){}
	
	
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="order_id")
	private int order_id;
	
	
	@ManyToOne
    @JoinColumn(name="USER_ID")
    private Customer customer;

	@Column(name="orderDate")
	private String orderDate;
	
	

	public String getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}

	@OneToMany(mappedBy="order")
	private Set<OrderItems> orderItemsList=new HashSet<OrderItems>();

	
	public int getOrder_id() {
		return order_id;
	}

	public void setOrder_id(int order_id) {
		this.order_id = order_id;
	}

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}


	
	public Set<OrderItems> getOrderItemsList() {
		return orderItemsList;
	}

	public void setOrderItemsList(Set<OrderItems> orderItemsList) {
		this.orderItemsList = orderItemsList;
	}	
	
	
}
