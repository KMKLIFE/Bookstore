<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <style type="text/css">
 h1 {
  	text-align: center;
 }
 #shop_footer{
 	margin-left: 50px;
 }
 </style>

 <%
 	String id = (String)session.getAttribute("id");
 	
 %>

 <header>
  <h1 id ="shop_title">Shopping</h1>
  <div style="text-align: right; padding-right: 10px;">
  <% 
  	if(id!=null){
  %>
	 <%=id %> 님 환영합니다.<br>
	 <a href="LogoutController">logout</a> 	
  <%		
  	}else{
  	  out.print("<a href='login.do'>login</a> ");	
  	}
  %>
  	
  	
  </div>
  <nav id="nav-1">
   <a class="link-1" href="${path }/main.do">Home</a>
   <%
   	if(id!=null && id.equals("admin")){
   %>
   <a class="link-1" href="${path }/MembersSelectAllController">Members</a>
   <%
   }
   %>
   <a class="link-1" href="${path }/ShopSelectAllController">Shop</a>
  </nav>
 </header>