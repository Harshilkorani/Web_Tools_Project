package com.me.sportscontrollers;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.me.dao.CustomerDAO;
import com.me.dao.ProductDAO;
import com.me.model.Customer;
import com.me.model.Product;

@Controller
public class CustomerController {
	
	
	@Autowired
	private CustomerDAO customerDAO;
	
	@Autowired
	private ProductDAO productDAO;
	
	private List<Product> productList;
	
	@RequestMapping(value="/customerProfile.htm",method=RequestMethod.POST)
	public String returnSupplierProfileAfterSignUp(HttpServletRequest req,@ModelAttribute("Product") Product product,BindingResult result,Model model) throws Exception
	{
		
		String email_id = req.getParameter("email_id");
		String firstName = req.getParameter("firstName");
		String lastName = req.getParameter("lastName");
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		
		boolean b = false;
        ArrayList<Customer> cList = customerDAO.getAllCustomers();
        for(Customer c:cList)
        {
        	if(c.getUsername().equalsIgnoreCase(username))
        	{
        		b= true;
        		return "registerCustomer";
        	}
        	
        }
		
		
		Customer customer = customerDAO.createCustomer(email_id, firstName, lastName, username, password);
		
		productList = productDAO.getAllProducts();
		
		HttpSession session = req.getSession();
		session.setAttribute("userName", customer.getEmail_id());
		model.addAttribute("customer",customer);
		model.addAttribute("Product",product);
		model.addAttribute("productList",productList);
	
		return "customerProfile";
	}
	
	
	
	@RequestMapping(value="/customerProfile1.htm",method=RequestMethod.POST)
	public String returnProfileAfterCorrectLogin(HttpServletRequest req,@ModelAttribute("Product") Product product,BindingResult result,Model model)
	{ 
		try
		{
			String userName = req.getParameter("email_id");
			String password = req.getParameter("password");	
			System.out.println(userName);
			System.out.println(password);
			
			Customer customer = customerDAO.getCustomerByUsernameAndPassword(userName, password);
			System.out.println(customer);
					
			if(customer!=null)
			{
				productList =productDAO.getAllProducts();
				
				HttpSession session = req.getSession();
				session.setAttribute("userName", customer.getEmail_id());
				session.setAttribute("customer", customer);
				model.addAttribute("customer",customer);
				model.addAttribute("Product",product);
				model.addAttribute("productList",productList);
				
				return "customerProfile";
			}
		
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return "customerLogin";
			
	}
	
	
	/*
	@RequestMapping(value="/RegisterCustomer.htm")
	public String returnRegisterCustomer(Model model)
	{
		return "registerCustomer";
	}
	
	*/
	
	
	
	@RequestMapping(value="/Cricket.htm")
	public String returnCricketPage(HttpServletRequest req,@ModelAttribute("Product") Product product,BindingResult result,Model model)
	{ 
		try
		{
				String cat_type = "Cricket";
				productList =productDAO.getAllCricketProducts(cat_type);	
				HttpSession session = req.getSession();
				model.addAttribute("Product",product);
				model.addAttribute("productList",productList);
				
				return "cricket";
			
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return "customerProfile";
			
	}
	
	
	
	
	@RequestMapping(value="/Tennis.htm")
	public String returnTennisPage(HttpServletRequest req,@ModelAttribute("Product") Product product,BindingResult result,Model model)
	{ 
		try
		{
				String cat_type = "Tennis";
				productList =productDAO.getAllTennisProducts(cat_type);		
				HttpSession session = req.getSession();
				model.addAttribute("Product",product);
				model.addAttribute("productList",productList);
				return "tennis";
		
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return "customerProfile";
			
	}
	
	
	@RequestMapping(value="/Soccer.htm")
	public String returnSoccerPage(HttpServletRequest req,@ModelAttribute("Product") Product product,BindingResult result,Model model)
	{ 
		try
		{
			
				String cat_type = "Soccer";
				productList =productDAO.getAllSoccerProducts(cat_type);
				HttpSession session = req.getSession();
				model.addAttribute("Product",product);
				model.addAttribute("productList",productList);
				
				return "soccer";
			
		
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return "customerProfile";
			
	}
	
	
	
	@RequestMapping(value="/Baseball.htm")
	public String returnBaseballPage(HttpServletRequest req,@ModelAttribute("Product") Product product,BindingResult result,Model model)
	{ 
		try
		{
				String cat_type = "Baseball";
				productList =productDAO.getAllBaseballProducts(cat_type);
				
				HttpSession session = req.getSession();
				model.addAttribute("Product",product);
				model.addAttribute("productList",productList);
				
				return "baseball";
			
		
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return "customerProfile";
			
	}
	
	
	
	
	@RequestMapping(value="/BasketBall.htm")
	public String returnBasketballPage(HttpServletRequest req,@ModelAttribute("Product") Product product,BindingResult result,Model model)
	{ 
		try
		{
				String cat_type = "Basketball";
				productList =productDAO.getAllBasketballProducts(cat_type);
					
				HttpSession session = req.getSession();
				model.addAttribute("Product",product);
				model.addAttribute("productList",productList);
				
				return "basketball";
			
		
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return "customerProfile";
			
	}
	
	
	
	@RequestMapping(value="/Volleyball.htm")
	public String returnVolleyballPage(HttpServletRequest req,@ModelAttribute("Product") Product product,BindingResult result,Model model)
	{ 
		try
		{
				String cat_type = "Volleyball";
				productList =productDAO.getAllVolleyballProducts(cat_type);
								
				HttpSession session = req.getSession();
				model.addAttribute("Product",product);
				model.addAttribute("productList",productList);
				
				return "volleyball";
			
		
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return "customerProfile";
			
	}
	
	
	@RequestMapping(value="/Payment.htm")
	public String returnPayment(HttpServletRequest req,Model model)
	{ 
		return "payment";
			
	}
	
	
	@RequestMapping(value="/CreditCardPayment.htm")
	public String returnCreditCardPayment(HttpServletRequest req,Model model)
	{ 
		return "creditCardPayment";
			
	}
	
	
	
}
