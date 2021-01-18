package com.ecommerce.utils;

import com.ecommerce.model.User;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

public class SessionUtil {
    private static SessionUtil sessionUtil = null;

    public static SessionUtil getInstance(){
        if(sessionUtil ==null)
            sessionUtil = new SessionUtil();
        return sessionUtil;
    }
    public void putValue(HttpServletRequest req, String key, Object value){
        req.getSession().setAttribute(key,value);
    }
    public void removeValue(HttpServletRequest req, String key){
        req.getSession().removeAttribute(key);
    }
    public Object getValue(HttpServletRequest req, String key){
        return req.getAttribute(key);
    }
}
