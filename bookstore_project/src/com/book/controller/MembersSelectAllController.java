package com.book.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.book.member.dao.MemberDAO;
import com.book.member.vo.MemberVO;

//@WebServlet("/MembersSelectAllController")
public class MembersSelectAllController extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MemberDAO dao = MemberDAO.getInstance();
		ArrayList<MemberVO> list = dao.selectAll();
		System.out.println(list);
		
		request.setAttribute("mlist", list);
		
		RequestDispatcher rd = request.getRequestDispatcher("members.do");
		rd.forward(request, response);				
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
}
