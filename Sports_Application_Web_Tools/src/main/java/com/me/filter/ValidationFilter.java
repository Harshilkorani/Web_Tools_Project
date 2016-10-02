package com.me.filter;

import java.io.IOException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class ValidationFilter implements Filter {
	private FilterConfig filterConfig;
    
    public ValidationFilter() {
    }  

    /**
     *
     * @param request The servlet request we are processing
     * @param response The servlet response we are creating
     * @param chain The filter chain we are processing
     *
     * @exception IOException if an input/output error occurs
     * @exception ServletException if a servlet error occurs
     */
    @Override
    public void doFilter(ServletRequest request, ServletResponse response,
    FilterChain chain)
            throws IOException, ServletException {
        //sanitize
        HttpServletRequest req = new RequestWrapper((HttpServletRequest) request);
        HttpSession session = req.getSession();
//        if(session != null){
        	chain.doFilter(req, response);
//        }
    }
    
    @Override
    public void init(FilterConfig fc) throws ServletException {
    	this.filterConfig = fc;
    }

    @Override
    public void destroy() {
       
    }

    public static boolean verifyAlphanumeric(String text) {
        boolean result;
        String data = text.trim();
        Pattern p = Pattern.compile("(^[0-9a-zA-Z]+$|^[a-zA-Z0-9][\\s\\w0-9]+$)");
        Matcher m = p.matcher(data);
        if (m.matches()) {
            result = true;
        } else {
            result = false;
        }
        return result;
    }
    
     public static boolean verifyNumber(String text) {
        boolean result = true;
        String data = text.trim();
        Pattern p = Pattern.compile("(^[1-9]+[0-9]*$)|^[0]+[1-9]+[0-9]*$");
        Matcher m = p.matcher(data);
        if (m.matches()) {
            result = true;
        } else {
            result = false;
        }
        return result;
    }
}
