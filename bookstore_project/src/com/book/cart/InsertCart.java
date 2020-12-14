package com.book.cart;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.book.cart.vo.CartVO;
import com.book.dao.BookDAO;
import com.book.vo.BookVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("/InsertCart")
public class InsertCart extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//	MultipartRequest multi = null;
//	String folder = "";
//	int maxSize = 1024*1024*10;
//	String charset="utf-8";
	System.out.println("I am InsertCart class.");
	BookDAO bdao = BookDAO.getInstance();
	CartVO cvo = new CartVO();
	BookVO bvo = bdao.selectBook(Integer.parseInt(request.getParameter("bookNum")));
	
	HttpSession session = request.getSession();
	
	cvo.setMemberId((String)session.getAttribute("id"));
	cvo.setBookNum(Integer.parseInt(request.getParameter("bookNum")));
	cvo.setBookImgPath(bvo.getBookImgPath());
	cvo.setBookName(bvo.getBookName());
	cvo.setBookPrice(bvo.getBookPrice());
	
	bdao.insertCart(cvo);
	
	int result = bdao.insertCart(cvo);
	response.sendRedirect("BookController");
	
	
//	RequestDispatcher rd = request.getRequestDispatcher("cart.do");
//	rd.forward(request, response);
	

//	try {
//		
//		multi = new MultipartRequest(request, folder, maxSize,charset,
//				new DefaultFileRenamePolicy());
//		
//		int bookNum = Integer.parseInt(multi.getParameter("bookNum"));
//		String bookImgPath = "";
//		String bookName = multi.getParameter("bookName");
//		int bookPrice = Integer.parseInt(multi.getParameter("bookPrice"));
//		
//		Enumeration files = multi.getFileNames();
//		
//		while(files.hasMoreElements()) {
//			String filename = (String)files.nextElement();
//			File file = multi.getFile(filename);
//			bookImgPath = "productImgFolder\\"+file.getName();
//			}
//		BookDAO dao = BookDAO.getInstance();
//		BookVO bvo = new BookVO();
//		bvo.setBookNum(bookNum);
//		bvo.setBookImgPath(bookImgPath);
//		bvo.setBookName(bookName);
//		bvo.setBookPrice(bookPrice);
//		
//		int result = dao.insertCart(cvo);
//		
//		if(result == 0 ) {
//			response.sendRedirect("index.do");
//		}else {
//			response.sendRedirect("cart.do");
//		}
//		
//		
//	} catch (Exception e) {
//		// TODO: handle exception
//	}
//	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
