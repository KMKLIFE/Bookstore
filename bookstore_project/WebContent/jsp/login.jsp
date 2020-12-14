<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html class="no-js" lang="">
<%@include file="../includes/css.jsp"%>
<head>
<meta charset="utf-8">
</head>
<body>
   <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->

   <!-- Add your site or application content here -->

   <!--Header Area Start-->
   <%@include file="../includes/header.jsp"%>
   <!--Header Area End-->

   <!-- Mobile Menu Start -->
   <div class="mobile-menu-area">
      <div class="container">
         <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12">
               <div class="mobile-menu">
                  <nav id="dropdown">
                     <ul>
                        <li><a href="index.html">HOME</a></li>
                        <li><a href="shop.html">FEATURED</a></li>
                        <li><a href="shop.html">REVIEW BOOK</a></li>
                        <li><a href="about.html">ABOUT AUTHOR</a></li>
                        <li><a href="#">pages</a>
                           <ul>
                              <li><a href="about.html">About Us</a></li>
                              <li><a href="cart.html">Cart Page</a></li>
                              <li><a href="checkout.html">Check Out</a></li>
                              <li><a href="contact.html">Contact</a></li>
                              <li><a href="login.html">Login</a></li>
                              <li><a href="my-account.html">My Account</a></li>
                              <li><a href="shop.html">Shopping Page</a></li>
                              <li><a href="single-product.html">Single Shop Page</a></li>
                              <li><a href="wishlist.html">Wishlist Page</a></li>
                              <li><a href="404.html">404 Page</a></li>
                           </ul></li>
                        <li><a href="contact.html">CONTACT</a></li>
                     </ul>
                  </nav>
               </div>
            </div>
         </div>
      </div>
   </div>
   <!-- Mobile Menu End -->
   <!-- Breadcrumbs Area Start -->
   <div class="breadcrumbs-area">
      <div class="container">
         <div class="row">
            <div class="col-md-12">
               <div class="breadcrumbs">
                  <h2>LOGIN/REGISTER</h2>
                  <ul class="breadcrumbs-list">
                     <li><a title="Return to Home" href="index.html">Home</a></li>
                     <li>Login</li>
                  </ul>
               </div>
            </div>
         </div>
      </div>
   </div>
   <!-- Breadcrumbs Area Start -->

   <!-- Loging Area Start -->
   <div class="login-account section-padding">
      <div class="container">
         <div class="row">
            <div class="col-md-6 col-sm-6">
               <form action="<%=request.getContextPath()%>/CreateidController"
                  class="create-account-form" method="post">
                  <h2 class="heading-title">CREATE AN ACCOUNT</h2>
                  <p class="form-row">
                     <input type="text" name="id" placeholder="ID">
                  </p>
                  <div class="submit">
                     <button name="submitcreate" id="submitcreate" type="submit"
                        class="btn-default">
                        <span> <i class="fa fa-user left"></i> Create an account
                        </span>
                     </button>
                     <div style="color: blue;">${msg2} </div>
                     
                  </div>
               </form>
            </div>
            <div class="col-md-6 col-sm-6">
               <form action="<%=request.getContextPath()%>/LoginController"
                  class="create-account-form" method="post">
                  <h2 class="heading-title">ALREADY RESIGTERED?</h2>
                  <p class="form-row">
                     <input type="text" name="id" placeholder="ID">
                  </p>
                  <p class="form-row">
                     <input type="password" name="pwd" placeholder="Password">
                  </p>
                  <br>
                  <%
                     String msg = (String) request.getAttribute("msg");
                     if (msg != null) {
                  %>
                  <div style="color: blue;"><%=msg%></div>
                  <%
                     }
                  %>

                  <p class="lost-password form-group">
                     <a href="#" rel="nofollow">Forgot your password?</a>
                  </p>
                  <div class="submit">
                     <button name="submitcreate" id="submitcreate" type="submit"
                        class="btn-default">
                        <span> <i class="fa fa-user left"></i> SING IN
                        </span>
                     </button>
                  </div>
               </form>
            </div>
         </div>
      </div>
   </div>
   <!-- Loging Area End -->

   <!-- Footer Area Start -->
   <footer>
      <%@ include file="../includes/footer.jsp"%>
   </footer>
   <!-- Footer Area End -->
   <!-- all js here -->
   <!-- jquery latest version -->
   <script src="js/vendor/jquery-1.12.0.min.js"></script>
   <!-- bootstrap js -->
   <script src="js/bootstrap.min.js"></script>
   <!-- owl.carousel js -->
   <script src="js/owl.carousel.min.js"></script>
   <!-- jquery-ui js -->
   <script src="js/jquery-ui.min.js"></script>
   <!-- jquery Counterup js -->
   <script src="js/jquery.counterup.min.js"></script>
   <script src="js/waypoints.min.js"></script>
   <!-- jquery countdown js -->
   <script src="js/jquery.countdown.min.js"></script>
   <!-- jquery countdown js -->
   <script type="text/javascript" src="venobox/venobox.min.js"></script>
   <!-- jquery Meanmenu js -->
   <script src="js/jquery.meanmenu.js"></script>
   <!-- wow js -->
   <script src="js/wow.min.js"></script>
   <script>
      new WOW().init();
   </script>
   <!-- scrollUp JS -->
   <script src="js/jquery.scrollUp.min.js"></script>
   <!-- plugins js -->
   <script src="js/plugins.js"></script>
   <!-- Nivo slider js -->
   <script src="lib/js/jquery.nivo.slider.js" type="text/javascript"></script>
   <script src="lib/home.js" type="text/javascript"></script>
   <!-- main js -->
   <script src="js/main.js"></script>
</body>
</html>