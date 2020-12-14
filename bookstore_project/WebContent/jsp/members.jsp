<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<%@include file="../includes/css.jsp" %>
</head>
<body>
	<%@include file="../includes/header.jsp" %>
 <section>
      <div class="table_wrapper">
         <div class="table">

      <!--         //   ID   VARCHAR2(30 BYTE)
            //   PWD   VARCHAR2(30 BYTE)
            //   EMAIL   VARCHAR2(50 BYTE)
            //   GENDER   CHAR(1 BYTE)
            //   JOINDATE   DATE
            //   PHONENUM   VARCHAR2(20 BYTE)
 -->
                <div class="row header">
                  <div class="cell">
                    ID
                  </div>
                  <div class="cell">
                    PWD
                  </div>
                  <div class="cell">
                    EMAIL
                  </div>
                  <div class="cell">
                    GENDER
                  </div>
                  <div class="cell">
                    PHONENUM
                  </div>
                  <div class="cell">
                    JOINDATE
                  </div>
                  <div class="cell">
                    UPDATA/DELETE
                  </div>
                </div>
            <%-- <%
       ArrayList<MemberVO> mlist = (ArrayList<MemberVO>)request.getAttribute("mlist");
       for(int i=0; i < mlist.size() ; i++){
          
       
    %> --%>
            <jsp:useBean id="member" class="com.book.member.vo.MemberVO" />
            <c:forEach items="${mlist }" var="mvo">
               <div class="row" id="row_${mvo.id }">
                  <div class="cell" id="id">${mvo.id }</div>
                  <div class="cell" id="pwd">${mvo.pwd }</div>
                  <div class="cell" id="email">${mvo.email }</div>
                  <div class="cell" id="gender">${mvo.gender }</div>
                  <div class="cell" id="phonenum">${mvo.phonenum }</div>
                  <div class="cell" id="joindate">${mvo.joindate}</div>
                  <div class="cell"></div>
               </div>
            </c:forEach>
         </div>
      </div>
   </section>

	<%@include file="../includes/footer.jsp" %>
</body>
</html>