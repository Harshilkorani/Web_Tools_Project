package com.me.model;


import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

import org.hibernate.annotations.IndexColumn;

@Entity
@Table(name="CUSTOMER")
@PrimaryKeyJoinColumn(name="USER_ID")
public class Customer extends User{
	public Customer(){}
	
	
	
	@OneToMany(mappedBy="customer")
	private Set<Order> customerOrderList=new HashSet<Order>();



	public Set<Order> getCustomerOrderList() {
		return customerOrderList;
	}



	public void setCustomerOrderList(Set<Order> customerOrderList) {
		this.customerOrderList = customerOrderList;
	}

	
	
}
