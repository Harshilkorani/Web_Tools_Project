package com.me.sportscontrollers;

import java.io.File;

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

import com.me.dao.ProductDAO;
import com.me.model.Category;
import com.me.model.Product;
import com.me.model.Supplier;


@Controller
public class ProductController {
	
	@Autowired
	ProductDAO productDAO;
	
	
	@RequestMapping(value="/ProductSuccess", method=RequestMethod.POST) 
	public String redirectPropertyList(HttpServletRequest req,@ModelAttribute("Product") Product product,@ModelAttribute("category")Category category,@RequestParam("uploadFile")MultipartFile file,BindingResult result,Model model) throws Exception
	{
		HttpSession session = req.getSession();
		Supplier supplier = (Supplier)session.getAttribute("supplier");
		
		
		System.out.println(supplier);
	
		category.setCategory_type(req.getParameter("Category.category_type"));
		product.setCategory(category);
		
    	String description = req.getParameter("description");
    	String product_name = req.getParameter("product_name");
    	
    	String product_img = file.getOriginalFilename();
    	System.out.println(product_img);
    	int product_price = Integer.parseInt(req.getParameter("product_price")); 
    
    	File productImageFile = new File("C:\\Users\\Harshil\\Documents\\workspace-sts-3.6.4.RELEASE\\FinalProject\\src\\main\\webapp\\resources\\productImages",file.getOriginalFilename());
    	file.transferTo(productImageFile);
        String product_image = productImageFile.getAbsolutePath();
        productDAO.createProduct(product,category,product_image,description,product_price,product_name,supplier);
           
		return "productSuccess";
	
	}
	

}
