package com.me.dao;



import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.criterion.Restrictions;

import com.me.model.Category;
import com.me.model.Customer;
import com.me.model.Product;
import com.me.model.Supplier;



public class ProductDAO extends DAO{
	
		
	public Product createProduct(Product product,Category category,String product_image,String description,int product_price,String product_name,Supplier supplier)
	{
		
		Session session = getSession();
		Transaction tx = session.beginTransaction();
		
		System.out.println(supplier);
		
		product.setProduct_image(product_image);
		product.setDescription(description);
		product.setProduct_name(product_name);
		product.setProduct_price(product_price);
		
		product.setSupplier(supplier);
		
		Query query = session.createQuery("from Category where category_type=:c");
		query.setString("c",category.getCategory_type());
		Category returnedCategory = (Category)query.uniqueResult();
		
		if(returnedCategory==null)
		{
		session.persist(category);
		product.setCategory(category);
		}
		else
		{
		product.setCategory(returnedCategory);
		}
		session.persist(product);
		
		tx.commit();
		session.close();
		
		System.out.println("Successfully inserted");
		return product;
	}
	
	
	
	public List<Product> getAllProducts()
	{
		List<Product> productList;
		Criteria c = getSession().createCriteria(Product.class);
		System.out.println("Hi there");
		productList  = c.list();
		 
		return productList;
			
	}
	
	
	private List<Product> cricketProductList;
	private List<Product> tennisProductList;
	private List<Product> soccerProductList;
	private List<Product> basketballProductList;
	private List<Product> baseballProductList;
	private List<Product> volleyballProductList;
	
	public List<Product> getAllCricketProducts(String category_type)
	{
		
		Session sess = getSession();	
		Query q = getSession().createQuery("from Category where category_type=:category_type");
		q.setString("category_type",category_type);
		Category category = (Category)q.uniqueResult();
		
		Criteria productCriteria = sess.createCriteria(Product.class,"product");
		productCriteria.add(Restrictions.eq("category",category));
		
	    cricketProductList = productCriteria.list();
		
		for(Product product:cricketProductList)
			System.out.println("Product"+product.getProduct_name());
		
		   sess.close();
		
		return cricketProductList;
		
	}
	
	
	
	public List<Product> getAllTennisProducts(String category_type)
	{
		
		Session sess = getSession();	
		Query q = getSession().createQuery("from Category where category_type=:category_type");
		q.setString("category_type",category_type);
		Category category = (Category)q.uniqueResult();
		
		Criteria productCriteria = sess.createCriteria(Product.class,"product");
		
		
		productCriteria.add(Restrictions.eq("category",category));
		
	    tennisProductList = productCriteria.list();
		
		for(Product product:tennisProductList)
			System.out.println("Product"+product.getProduct_name());
		
		   sess.close();
		
		return tennisProductList;
		
		
		
	}
	
	
	public List<Product> getAllSoccerProducts(String category_type)
	{
		Session sess = getSession();	
		Query q = getSession().createQuery("from Category where category_type=:category_type");
		q.setString("category_type",category_type);
		Category category = (Category)q.uniqueResult();
		
		Criteria productCriteria = sess.createCriteria(Product.class,"product");
		
		productCriteria.add(Restrictions.eq("category",category));
		soccerProductList = productCriteria.list();
		
		for(Product product:soccerProductList)
			System.out.println("Product"+product.getProduct_name());
		
		   sess.close();
		
		return soccerProductList;
		
	}
	
	
	
	public List<Product> getAllBasketballProducts(String category_type)
	{
		Session sess = getSession();	
		Query q = getSession().createQuery("from Category where category_type=:category_type");
		q.setString("category_type",category_type);
		Category category = (Category)q.uniqueResult();
		
		Criteria productCriteria = sess.createCriteria(Product.class,"product");
		
		productCriteria.add(Restrictions.eq("category",category));
		basketballProductList = productCriteria.list();
		
		for(Product product:basketballProductList)
			System.out.println("Product"+product.getProduct_name());
		
		   sess.close();
		
		return basketballProductList;
		
	}
	
	
	
	public List<Product> getAllBaseballProducts(String category_type)
	{
		Session sess = getSession();	
		Query q = getSession().createQuery("from Category where category_type=:category_type");
		q.setString("category_type",category_type);
		Category category = (Category)q.uniqueResult();
		
		Criteria productCriteria = sess.createCriteria(Product.class,"product");
		productCriteria.add(Restrictions.eq("category",category));
		baseballProductList = productCriteria.list();
		
		for(Product product:baseballProductList)
			System.out.println("Product"+product.getProduct_name());
		
		   sess.close();
		
		return baseballProductList;
		
	}
	
	
	
	public List<Product> getAllVolleyballProducts(String category_type)
	{
		Session sess = getSession();	
		Query q = getSession().createQuery("from Category where category_type=:category_type");
		q.setString("category_type",category_type);
		Category category = (Category)q.uniqueResult();
		
		Criteria productCriteria = sess.createCriteria(Product.class,"product");
		productCriteria.add(Restrictions.eq("category",category));
		volleyballProductList = productCriteria.list();
		
		for(Product product:volleyballProductList)
			System.out.println("Product"+product.getProduct_name());
		
		   sess.close();
		
		return volleyballProductList;
		
	}
	
	

}