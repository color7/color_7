/**
 * Copyright (c) 2005-2010 springside.org.cn
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * 
 * $Id: Struts2Utils.java 1211 2010-09-10 16:20:45Z calvinxiu $
 */
package com.color.common.utils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

/**
 * Struts2工具类.
 * 
 * 
 * 
 * @author Zohar
 */
public class Struts2Utils {

	// -- Content Type 定义 --//
	public static final String TEXT_TYPE = "text/plain";
	public static final String JSON_TYPE = "application/json";
	public static final String XML_TYPE = "text/xml";
	public static final String HTML_TYPE = "text/html";
	public static final String JS_TYPE = "text/javascript";

	// -- 取得Request/Response/Session的简化方法 --//
	/**
	 * 取得HttpSession的简化方法.
	 */
	public static HttpSession getSession() {
		return ServletActionContext.getRequest().getSession();
	}

	/**
	 * 取得HttpSession的简化方法.
	 */
	public static HttpSession getSession(boolean isNew) {
		HttpSession req = null;
		try {
			req = ServletActionContext.getRequest().getSession(isNew);
		} catch (RuntimeException e) {
			System.out.println("ServletActionContext is not ready");
		}
		return req;
	}

	/**
	 * 取得HttpSession中Attribute的简化方法.
	 */
	public static Object getSessionAttribute(String name) {
		HttpSession session = getSession(false);
		return (session != null ? session.getAttribute(name) : null);
	}

	/**
	 * 取得HttpRequest的简化方法.
	 */
	public static HttpServletRequest getRequest() {
		return ServletActionContext.getRequest();
	}

	/**
	 * 取得HttpRequest中Parameter的简化方法.
	 */
	public static String getParameter(String name) {
		return getRequest().getParameter(name);
	}

	/**
	 * 取得HttpResponse的简化方法.
	 */
	public static HttpServletResponse getResponse() {
		return ServletActionContext.getResponse();
	}

}
