package com.me.model;

import java.util.*;
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
@Table(name="SUPPLIER")
@PrimaryKeyJoinColumn(name="USER_ID")
public class Supplier extends User{
	
	public Supplier(){}
	
	
	@OneToMany(cascade={CascadeType.ALL})
	@JoinColumn(name="USER_ID")
	@IndexColumn(name="idx")
	private Set<Product> productList=new HashSet<Product>();


	public Set<Product> getProductList() {
		return productList;
	}


	public void setProductList(Set<Product> productList) {
		this.productList = productList;
	}

	
	
	
}
