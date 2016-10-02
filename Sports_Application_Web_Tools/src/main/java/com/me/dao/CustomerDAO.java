package com.me.dao;

import java.util.ArrayList;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.me.model.Customer;
import com.me.model.User;

public class CustomerDAO extends DAO {
	
	
	public Customer createCustomer(String emailAddress, String firstName,String lastName, String userName, String password)
	{
		String role="Customer";
		Session session = getSession();
		Transaction tx = session.beginTransaction();
		
		Customer customer = new Customer();
		customer.setEmail_id(emailAddress);
		customer.setFirst_name(firstName);
		customer.setLast_name(lastName);
		customer.setUsername(userName);
		customer.setPassword(password);
		customer.setRole(role);
		
		session.persist(customer);
		tx.commit();
		session.close();
	    
		return customer;
		
	}
	
	
	public ArrayList<Customer> getAllCustomers()
            throws Exception {
		try {
			//      begin();
            Query q = getSession().createQuery("from Customer");
//            q.setString("username", name);
//            q.setString("password", password);
            ArrayList<Customer> customerList = (ArrayList<Customer>) q.list();
            
          
            //       commit();
            
            close();
            return customerList;
            
		} catch (HibernateException e) {
			//       rollback();
            throw new Exception("Could not get customer " +  e);
		}
    }
	
	
	
	public Customer getCustomerByUsernameAndPassword(String email_id,String password) throws Exception
	{
		try
		{
		
		
		Query q = getSession().createQuery("from User where email_id = :email_id and password=:password");
		q.setString("email_id",email_id);
		q.setString("password",password);
		
		User user = (User)q.uniqueResult();
		Customer customer = (Customer)user;
		
		
		return customer;
		}
		
		catch(Exception e)
		{
			System.out.println("Inside exception");
			 throw new Exception("Could not get customer "+e);
		}
		
		
	}
	
	

}
