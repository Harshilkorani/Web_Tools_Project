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

import org.springframework.web.multipart.commons.CommonsMultipartFile;

@Entity
@Table(name="PRODUCT")
public class Product {
	
	public Product(){}
		
	@Id
	@GeneratedValue
	@Column(name="product_id")
	private int product_id;
	
	@Column(name="product_name")
	private String product_name;
	
	private CommonsMultipartFile product_img;
	
	@Column(name="product_image")
	private String product_image;
	
	@Column(name="product_price")
	private int product_price;
	
	@Column(name="description")
	private String description;
	
	
	@ManyToOne
	@JoinColumn(name="category_id")
	private Category category;
	
	@ManyToOne
    @JoinColumn(name="user_id")
    private Supplier supplier;
	
	/*
	@OneToOne(mappedBy="product",cascade=CascadeType.ALL)
    @PrimaryKeyJoinColumn
    private OrderItems orderitems;
	*/
	
	public CommonsMultipartFile getProduct_img() {
		return product_img;
	}
	public void setProduct_img(CommonsMultipartFile product_img) {
		this.product_img = product_img;
	}
	public Supplier getSupplier() {
		return supplier;
	}
	public void setSupplier(Supplier supplier) {
		this.supplier = supplier;
	}
	
	/*
	public OrderItems getOrderitems() {
		return orderitems;
	}
	public void setOrderitems(OrderItems orderitems) {
		this.orderitems = orderitems;
	}
	
	*/
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	public int getProduct_id() {
		return product_id;
	}
	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}
	public String getProduct_name() {
		return product_name;
	}
	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}
	
	
	public String getProduct_image() {
		return product_image;
	}
	public void setProduct_image(String product_image) {
		this.product_image = product_image;
	}
	public int getProduct_price() {
		return product_price;
	}
	public void setProduct_price(int product_price) {
		this.product_price = product_price;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	
}