package com.book.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.book.cart.vo.CartVO;
import com.book.dbconn.DBConn;
import com.book.vo.BookVO;

public class BookDAO {

	
	private static BookDAO dao= null;
	
	private BookDAO() {}
	
	//singleton 패턴
	public static BookDAO getInstance() {
		if(dao==null) {
			dao = new BookDAO();
		}
		return dao;
	}
	
//	 bookNum number,
//	    bookName varchar2(20),
//	    bookPrice number,
//	    bookDescription varchar2(4000),
//	    bookImgPath varchar2(1000),
	
	
	public ArrayList<BookVO> selectAll() {
		Connection conn = null; //connection 媛앹껜 �깮�꽦
		Statement stmt = null;  //SQL �벑濡�, �떎�뻾
		ResultSet rs = null;    //DB 寃곌낵媛� 諛쏆쓣 怨듦컙 , select �뒗 臾댁“嫄� Resultset
		ArrayList<BookVO> list = new ArrayList<BookVO>();
		try {
			conn = DBConn.getConnection();
			stmt = conn.createStatement(); //stmt �궗�슜以�鍮� 
											//sql �궗�슜以�鍮�
			String sql = "select * from book";
			rs = stmt.executeQuery(sql); //sql�쓣 �떎�뻾�븳 媛믪쓣 
										//rs�뿉 �떞�븘以�
			while(rs.next()) {
				BookVO vo = new BookVO();
				vo.setBookNum(rs.getInt("bookNum"));
				vo.setBookName(rs.getString("bookName"));
				vo.setBookPrice(rs.getInt("bookPrice"));
				vo.setBookDescription(rs.getString("bookDescription"));
				vo.setBookImgPath(rs.getString("bookImgPath"));
				list.add(vo);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			close(stmt, rs, conn);
		}
		
		return list;
	}
	
	public int insertCart(CartVO cvo) {
		Connection conn = null; //connection 媛앹껜 �깮�꽦
		PreparedStatement pstmt = null;  //SQL �벑濡�, �떎�뻾
		int result=0;
		try {
			conn = DBConn.getConnection();
											//sql �궗�슜以�鍮�
			String sql = "insert into cart(cartid, memberId, booknum, bookimgpath, bookname, bookprice) values (cartid_seq.nextval,?,?,?,?,?) ";
			System.out.println(sql);
				pstmt = conn.prepareStatement(sql); //stmt �궗�슜以�鍮� 
				pstmt.setString(1, cvo.getMemberId());
				pstmt.setInt(2, cvo.getBookNum());
				pstmt.setString(3, cvo.getBookImgPath());
				pstmt.setString(4, cvo.getBookName());
				pstmt.setInt(5, cvo.getBookPrice());
				
				result = pstmt.executeUpdate();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			close(pstmt, null, conn);
		}
		
		return result;
	}
	
	public BookVO selectBook(int bookNum) {
		Connection conn = null; 
		PreparedStatement pstmt = null; 
		BookVO bvo = new BookVO();
		ResultSet rs = null;
		try {
			conn = DBConn.getConnection();
											//sql �궗�슜以�鍮�
			String sql = "select bookimgpath, bookname, bookprice from book where booknum = ? ";
			
			
				pstmt = conn.prepareStatement(sql);  
				pstmt.setInt(1, bookNum);
				
				rs = pstmt.executeQuery();
				
				while(rs.next()) {
					bvo.setBookImgPath(rs.getString("bookImgPath"));
					bvo.setBookName(rs.getString("bookName"));
					bvo.setBookPrice(rs.getInt("bookPrice"));
					
				}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			close(pstmt, null, conn);
		}
		
		return bvo;
	}
	
	public void close(Statement stmt, ResultSet rs, Connection conn) {
		try {
			if(stmt!=null) {
				stmt.close();
			}
			if(rs !=null) {
				rs.close();
			}
			if(conn !=null) {
				conn.close();
			}
			
		} catch (Exception e2) {
			// TODO: handle exception
			e2.printStackTrace();
		}
	}
	
	public void close(PreparedStatement pstmt, ResultSet rs, Connection conn) {
		try {
			if(pstmt!=null) {
				pstmt.close();
			}
			if(rs !=null) {
				rs.close();
			}
			if(conn !=null) {
				conn.close();
			}
			
		} catch (Exception e2) {
			// TODO: handle exception
			e2.printStackTrace();
		}
	}

	public int bookInsert(BookVO bvo) {
		Connection conn = null; 
		PreparedStatement pstmt = null;  
		int result = 0;
		
		try {
			conn = DBConn.getConnection();
			String sql = "insert into book "
					+ "(bookNum, bookName, bookPrice, bookDescription, bookImgPath)"
					+ "values(bookNum_seq.nextval, ?, ?, ?, ?)";
			System.out.println(sql);
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, bvo.getBookName());
			pstmt.setInt(2, bvo.getBookPrice());
			pstmt.setString(3, bvo.getBookDescription());
			pstmt.setString(4, bvo.getBookImgPath());
			
			
			result = pstmt.executeUpdate(); 
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			close(pstmt, null, conn);
		}
		
		return result;
	}
	
	public int deleteMember(String bookNum) {
		Connection conn = null; 
		PreparedStatement pstmt = null;  
		ResultSet rs = null;    
		int result=0;
		try {
			conn = DBConn.getConnection();

			String sql = "delete from book "
					+ "where bookNum = ?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, bookNum);
			result = pstmt.executeUpdate(); 
						
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			close(pstmt, rs, conn);
		}
		
		return result;
		
	}
	
	
}

