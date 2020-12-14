package com.book.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.book.member.dao.MemberDAO;

//@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		MemberDAO dao = MemberDAO.getInstance();
		
		String resultId = dao.selectLogin(id, pwd);
		String path="";
		String msg="";
		HttpSession session = request.getSession();
		
		if(resultId.equals("")) { 
			if(id == null || pwd == null) {
				msg=null;
			}else {
				msg="아이디 또는 패스워드가 일치하지 않습니다.";
			}
			
			path="login.do";
			request.setAttribute("msg", msg);
			RequestDispatcher rd = request.getRequestDispatcher(path);
			rd.forward(request, response);
			
		} else { 
			path="BookController";
			session.setAttribute("id", id);
			response.sendRedirect(path);
			return;
		}				
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
}
