package com.me.dao;

import java.util.ArrayList;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.me.model.Customer;
import com.me.model.Supplier;
import com.me.model.User;



public class SupplierDAO extends DAO{
	
	
	public Supplier createSupplier(String emailAddress, String firstName,String lastName, String userName, String password)
	{
		String role="Supplier";
		Session session = getSession();
		Transaction tx = session.beginTransaction();
		
		Supplier supplier = new Supplier();
		supplier.setEmail_id(emailAddress);
		supplier.setFirst_name(firstName);
		supplier.setLast_name(lastName);
		supplier.setUsername(userName);
		supplier.setPassword(password);
		supplier.setRole(role);
		
		session.persist(supplier);
		tx.commit();
		session.close();
	    
		return supplier;
		
	}
	
	
	public ArrayList<Supplier> getAllSuppliers()
            throws Exception {
		try {
			//      begin();
            Query q = getSession().createQuery("from Supplier");
//            q.setString("username", name);
//            q.setString("password", password);
            ArrayList<Supplier> supplierList = (ArrayList<Supplier>) q.list();
            
          
            //       commit();
            
            close();
            return supplierList;
            
		} catch (HibernateException e) {
			//       rollback();
            throw new Exception("Could not get supplier " +  e);
		}
    }
	
	
	
	public Supplier getSupplierByUsernameAndPassword(String email_id,String password) throws Exception
	{
		try
		{
		
		
		Query q = getSession().createQuery("from User where email_id = :email_id and password=:password");
		q.setString("email_id",email_id);
		q.setString("password",password);
		
		User user = (User)q.uniqueResult();
		Supplier supplier = (Supplier)user;
		
		
		return supplier;
		}
		
		catch(Exception e)
		{
			System.out.println("Inside exception");
			 throw new Exception("Could not get supplier "+e);
		}
		
		
	}
	
	
	
	

}
