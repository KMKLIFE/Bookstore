package com.book.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.book.member.dao.MemberDAO;
import com.book.member.vo.MemberVO;


//@WebServlet("/SignupController")
public class SignupController extends HttpServlet {


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
			
				
		MemberDAO dao = MemberDAO.getInstance();
		MemberVO mvo = new MemberVO();
		
				
		mvo.setId(id);
		mvo.setPwd(request.getParameter("pwd"));
		mvo.setEmail(request.getParameter("email"));
		mvo.setGender(request.getParameter("gender"));
		mvo.setPhonenum(request.getParameter("phonenum"));
		
		dao.memberInsert(mvo);
	
		int result = dao.memberInsert(mvo);
		if(result == 0 ) {
			response.sendRedirect("login.do");
		}else {
			response.sendRedirect("signup.do");
		}
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
}

