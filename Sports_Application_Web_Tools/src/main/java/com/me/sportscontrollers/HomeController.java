package com.me.sportscontrollers;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.me.model.Product;


/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale); 
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
	
	@RequestMapping(value="/CustomerLogin.htm")
	public String returnLogin()
	{
		return "customerLogin";
	}
	
	@RequestMapping(value="/SupplierLogin.htm")
	public String returnSignUp(Model model)
	{
		Product p = new Product();
		model.addAttribute("Product",p);
		return "supplierLogin";
	}
	
	@RequestMapping(value="/RegisterSupplier.htm")
	public String returnRegisterSupplier(Model model)
	{
		return "registerSupplier";
	}
	
	@RequestMapping(value="/RegisterCustomer.htm")
	public String returnRegisterCustomer(Model model)
	{
		return "registerCustomer";
	}
	
	
	@RequestMapping(value="/Success")
	public String returnSuccess(Model model)
	{
	
		return "success";
	}
	
	
	@RequestMapping(value="/Events.htm")
	public String returnEvents()
	{
		return "events";
	}
	
	
	@RequestMapping(value="/News.htm")
	public String returnNews()
	{
		return "news";
	}
	
	
	@RequestMapping(value = "/Logout.htm")
	 public ModelAndView logout(HttpSession session){
		  session.removeAttribute("userName");
	      session.invalidate();
	      return new ModelAndView("/home"); //if you have two differenet web pages for login and logout else you can redirect to login.jsp
	 }
	
	
	
}
