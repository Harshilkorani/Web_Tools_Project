package com.me.filter;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;


public class RequestWrapper extends HttpServletRequestWrapper{

    public RequestWrapper(HttpServletRequest servletRequest) {
        super(servletRequest);
    } 
    
     @Override
    public String[] getParameterValues(String field) {
        String[] inputs = super.getParameterValues(field);
        int count = (inputs==null) ? 0 : inputs.length;
        String[] values = new String[count];
        for (int i = 0; i < count; i++) {
            values[i] = sanitize(inputs[i]);
         }
        return values;
    }
 
    @Override
    public String getParameter(String field) {
        String input = super.getParameter(field);
        return sanitize(input);
    }
 
    private String sanitize(String value) {
        value = (value==null)?"":value.replaceAll("[-+^:,<>]", "");
        return value;
    }
}
