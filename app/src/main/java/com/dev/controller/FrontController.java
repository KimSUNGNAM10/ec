package com.dev.controller;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet(name = "front", urlPatterns = "*.do", InitParams = {
//
//		@WebInitParam(name = "charset", value = "UTF-8") }) // .do 가 있으면 앞에 / 있으면 안됨




public class FrontController extends HttpServlet {

	private static final long serialVersionUID = 1L;

	String charset = null;	
	HashMap<String, Controller> list = null;
	
	@Override
	public void init(ServletConfig config) throws ServletException { //메모리 로딩 1번만 - init() url<->sub controller 매핑 (초기화)
		charset = config.getInitParameter("charset");
		list = new HashMap<String, Controller>();
		list.put("/memberInsert.do", new MemberInsertController());
		list.put("/memberUpdate.do", new MemberUpdateController());
		list.put("/memberSearch.do", new MemberSearchController());
		list.put("/memberDelete.do", new MemberDeleteController());
		list.put("/memberList.do", new MemberListController());
	}
	
	protected void service(HttpServletRequest request, HttpServletResponse response) //요청시마다 실행
			throws ServletException, IOException {
		request.setCharacterEncoding(charset);
		String uri = request.getRequestURI();     			 //    frontWeb/memberInsert.do 부터
		String contextPath = request.getContextPath();       //    frontWeb
		String path = uri.substring(contextPath.length());   //    memberInsert.do
		Controller subController = list.get(path); 			  
		subController.execute(request, response);
	}


}
