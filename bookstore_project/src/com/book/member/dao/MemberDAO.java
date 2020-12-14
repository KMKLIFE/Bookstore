package com.book.member.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.book.dbconn.DBConn;
import com.book.member.vo.MemberVO;

public class MemberDAO {
	
	private static MemberDAO dao = null;
	
	private MemberDAO() {}
	
	//singleton pattern(객체를 새로 생성해도 하나의 객체만 반환)
	public static MemberDAO getInstance() {
		if(dao==null) {
			dao = new MemberDAO();
		}
		return dao;
	}
	
	public String selectLogin(String id, String pwd) {
		Connection conn = null; //connection 
		Statement stmt = null;  //정적인 내용
		ResultSet rs = null;    //결과값을 담을 객체
		String result = "";     //쿼리문 
		
		try {
			conn = DBConn.getConnection();
			stmt = conn.createStatement(); //stmt �궗�슜以�鍮� 
											//sql �궗�슜以�鍮�
			String sql = "select id from member "
					+ "where id = '"+id+"' "
					+ "and pwd = '"+pwd+"'";
			rs = stmt.executeQuery(sql); //sql�쓣 �떎�뻾�븳 媛믪쓣 
										//rs�뿉 �떞�븘以�
			while(rs.next()) {
				result = rs.getString("id");
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			close(stmt, rs, conn);
		}
		
		return result;		
	}
		
	public String selectLoginId(String id) {
		Connection conn = null; //데이터베이스와의 연결을 위한 객체
		Statement stmt = null;  //SQL문을 데이터베이스에 보내기 위한 객체
		ResultSet rs = null;    //SQL질이에 의해 생성된 테이블을 저장하는 객체
		String result = "";
		
		try {
			conn = DBConn.getConnection();
			stmt = conn.createStatement(); //stmt �궗�슜以�鍮� 
											//sql �궗�슜以�鍮�
			String sql = "select id from member "
					+ "where id = '"+id+"' ";
					
			rs = stmt.executeQuery(sql); //sql�쓣 �떎�뻾�븳 媛믪쓣 
										//rs�뿉 �떞�븘以�
			while(rs.next()) {
				result = rs.getString("id");
			}
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			close(stmt, rs, conn);
		}
		
		return result;		
	}
	
	
	
	public int memberInsert(MemberVO mvo) {
		Connection conn = null; //connection 媛앹껜 �깮�꽦
		PreparedStatement pstmt = null;  //SQL �벑濡�, �떎�뻾
		int result = 0;
		
		try {
			conn = DBConn.getConnection();
		
			String sql = "insert into member "
					+ "(id, pwd, email, gender, joindate, phonenum, no) "
					+ "values (?, ?, ?, ?, sysdate, ?, NO_seq.nextval)";
			
			pstmt = conn.prepareStatement(sql); //pstmt �궗�슜以�鍮� 
			pstmt.setString(1, mvo.getId());
			pstmt.setString(2, mvo.getPwd());
			pstmt.setString(3, mvo.getEmail());
			pstmt.setString(4, mvo.getGender());
			pstmt.setString(5, mvo.getPhonenum());		
			
			result = pstmt.executeUpdate(); //sql�쓣 �떎�뻾�븳 媛믪쓣 
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			close(pstmt, null, conn);
		}
		
		return result;
		
	}	
	
	public ArrayList<MemberVO> selectAll() {
		Connection conn = null; //connection 媛앹껜 �깮�꽦
		Statement stmt = null;  //SQL �벑濡�, �떎�뻾
		ResultSet rs = null;    //DB 寃곌낵媛� 諛쏆쓣 怨듦컙
		ArrayList<MemberVO> list = new ArrayList<MemberVO>();
		try {
			conn = DBConn.getConnection();
			stmt = conn.createStatement(); //stmt �궗�슜以�鍮� 
											//sql �궗�슜以�鍮�
			String sql = "select * from member";
			rs = stmt.executeQuery(sql); //sql�쓣 �떎�뻾�븳 媛믪쓣 
										//rs�뿉 �떞�븘以�
			while(rs.next()) {
				MemberVO vo = new MemberVO();
				vo.setId(rs.getString("id"));
				vo.setPwd(rs.getString("pwd"));
				vo.setEmail(rs.getString("email"));
				vo.setGender(rs.getString("gender"));
				vo.setPhonenum(rs.getString("phonenum"));
				vo.setJoindate(rs.getString("joindate"));
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
	
}
