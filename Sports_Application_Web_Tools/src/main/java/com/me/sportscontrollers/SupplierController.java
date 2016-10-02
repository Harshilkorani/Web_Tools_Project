package com.me.sportscontrollers;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.me.dao.SupplierDAO;
import com.me.model.Customer;
import com.me.model.Product;
import com.me.model.Supplier;





@Controller
public class SupplierController {
	
	@Autowired
	private SupplierDAO supplierDAO;
	
	@RequestMapping(value="/supplierProfile.htm",method=RequestMethod.POST)
	public String returnSupplierProfileAfterSignUp(HttpServletRequest req,@ModelAttribute("Product") Product product,BindingResult result,Model model) throws Exception
	{
		
		String email_id = req.getParameter("email_id");
		String firstName = req.getParameter("firstName");
		String lastName = req.getParameter("lastName");
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		
		boolean b = false;
        ArrayList<Supplier> cList = supplierDAO.getAllSuppliers();
        for(Supplier s:cList)
        {
        	if(s.getUsername().equalsIgnoreCase(username))
        	{
        		b= true;
        		return "registerSupplier";
        	}
        	
        }
		
		
		
		Supplier supplier = supplierDAO.createSupplier(email_id, firstName, lastName, username, password);
		
		
		HttpSession session = req.getSession();
		session.setAttribute("userName", supplier.getEmail_id());
		model.addAttribute("supplier",supplier);
		model.addAttribute("Product",product);
		
	
		return "supplierProfile";
	}
	
	
	@RequestMapping(value="/supplierProfile1.htm",method=RequestMethod.POST)
	public String returnProfileAfterCorrectLogin(HttpServletRequest req,@ModelAttribute("Product") Product product,BindingResult result,Model model)
	{ 
		try
		{
			String userName = req.getParameter("email_id");
			String password = req.getParameter("password");	
			System.out.println(userName);
			System.out.println(password);
			
			Supplier supplier = supplierDAO.getSupplierByUsernameAndPassword(userName, password);
			System.out.println(supplier);
			
			if(supplier!=null)
			{
				HttpSession session = req.getSession();
				session.setAttribute("userName", supplier.getEmail_id());
				session.setAttribute("supplier", supplier);
				model.addAttribute("supplier",supplier);
				model.addAttribute("Product",product);
				return "supplierProfile";
			}
		
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return "supplierLogin";
			
	}
	
}
