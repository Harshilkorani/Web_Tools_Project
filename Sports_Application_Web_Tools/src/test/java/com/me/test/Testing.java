package com.me.test;

import org.hibernate.Session;
import org.hibernate.Transaction;

import com.me.dao.DAO;
import com.me.dao.HibernateUtil;
import com.me.model.Category;
import com.me.model.Customer;
import com.me.model.Order;
import com.me.model.OrderItems;
import com.me.model.Product;
import com.me.model.Supplier;
import com.me.model.User;




public class Testing {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		/*
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction t = session.beginTransaction();
		
		
		
		//User u1 = new User();
		
		
		Customer c1= new Customer();
		c1.setFirst_name("Vivek");
		c1.setLast_name("Korani");
		c1.setEmail_id("korani.v@husky.neu.edu");
		c1.setUsername("vivek");
		c1.setPassword("vivek");
		c1.setRole("Customer");
		
		
		Supplier s1= new Supplier();
		s1.setFirst_name("Bhavesh");
		s1.setLast_name("Korani");
		s1.setEmail_id("korani.b@husky.neu.edu");
		s1.setUsername("bhavesh");
		s1.setPassword("bhavesh");
		s1.setRole("Supplier");
		
		
		//Order o1 = new Order();
		//o1.setOrderDate("1010191919");
	    //o1.setCustomer(c1);
		
	   //System.out.println("Order customer"+o1.getCustomer().getFirst_name());
		
		OrderItems oi1 = new OrderItems();
		oi1.setPrice(100);
		oi1.setQuantity(2);
		//oi1.setOrder(o1);
		
		
		Product p1 = new Product();
		p1.setDescription("Cricket bat");
		//p1.setProduct_image("batjpeg");
		p1.setProduct_name("bat");
		p1.setProduct_price(100);
		p1.setSupplier(s1);
		p1.setOrderitems(oi1);
		
		oi1.setProduct(p1);
		
		
		
		Category cat1 = new Category();
		cat1.setCategory_type("Cricket");
		
		
		
		p1.setCategory(cat1);
		
		
		//session.persist(u1);
		session.persist(c1);
		session.persist(s1);
		
		session.persist(oi1);
		session.persist(p1);
		session.persist(cat1);
		//session.persist(o1);
		
		
		t.commit();
		session.close();
		System.out.println("success");
		
		*/

	}

}
