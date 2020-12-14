package com.book.controller;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.book.dao.BookDAO;
import com.book.vo.BookVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("/BookRegistController")
public class BookRegistController extends HttpServlet {

	
	
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		MultipartRequest multi = null;
		String folder = request.getRealPath("/img/featured");
		
		int maxSize=1024*1024*10; //10M
		String charset="utf-8";

		try {
//			System.out.println("출력");
			multi = new MultipartRequest
					(request, folder, maxSize,
					charset, new DefaultFileRenamePolicy());
//			private int bookNum;
//			private String bookName;
//			private int bookPrice;
//			private String bookDescription;
//			private String bookImgPath;
			
			String bookName = multi.getParameter("bookName");
			int bookPrice = Integer.parseInt(multi.getParameter("bookPrice"));
			String bookDescription = multi.getParameter("bookDescription");
			String bookImgPath = "";
			
			Enumeration files = multi.getFileNames();
			File file = null;
			while(files.hasMoreElements()) {
				String filename = (String) files.nextElement();
				file = multi.getFile(filename);
				bookImgPath = "/img/featured/"+file.getName();
			}
			// String copyFolder="C:\\javaparogram\\workspace_web\\bookstore\\WebContent\\img\\featured";
			String copyFolderTomcat = System.getProperty("catalina.base") + "\\wtpwebapps\\bookstore\\img\\featured";
			FileInputStream fis = new FileInputStream(file.getAbsolutePath());
			FileOutputStream fos = new FileOutputStream(copyFolderTomcat+"/"+file.getName());
			BufferedInputStream bis = new BufferedInputStream(fis);
			BufferedOutputStream bos = new BufferedOutputStream(fos);
			byte[] data = new byte[1024];
			int len=0;
			while((len=bis.read(data)) != -1){
				bos.write(data, 0, len);
			}
					
			BookDAO dao = BookDAO.getInstance();
			BookVO bvo = new BookVO();
			bvo.setBookName(bookName);
			bvo.setBookPrice(bookPrice);
			bvo.setBookDescription(bookDescription);
			bvo.setBookImgPath(bookImgPath);
			
			int result = dao.bookInsert(bvo);
			if(result == 0) {
				response.sendRedirect("bookRegist.do");
			} else {
				response.sendRedirect("BookController");
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
