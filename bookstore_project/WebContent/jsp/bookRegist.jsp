<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%@include file="../includes/css.jsp" %>
<body>
<!--     productName varchar2(20), -->
<!--     productPrice number, -->
<!--     ProductDescription varchar2(4000), -->
<!--     ProductImgPath varchar2(1000), -->
<%@ include file="../includes/header.jsp" %>
 <form action="<%=request.getContextPath() %>/BookRegistController" method="post" enctype="Multipart/form-data">
 <h1>상품등록</h1>
 <div>
    <table>
       <tr>
        <td>상품명</td>
        <td><input type="text" name="bookName"></td>
       </tr>
       <tr>
        <td>가격</td>
        <td><input type="text" name="bookPrice"></td>
       </tr>
       <tr>
        <td>상품설명</td>
        <td><textarea rows="5" cols="20" name="bookDescription"></textarea></td>
       </tr>
       <tr>
        <td>상품이미지</td>
        <td><input type="file" name="bookImgPath"></td>
       </tr>
       <tr>
          <td colspan="2"><input type="submit" value="등록"></td>
       </tr>
    </table>
 </div>
 </form>
  <%@ include file="../includes/footer.jsp" %>
</body>
</html>