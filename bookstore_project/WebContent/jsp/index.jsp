<%@page import="java.util.ArrayList"%>
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
        <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->

        <!-- Add your site or application content here -->
        <!-- Breadcrumbs Area Start -->
        <div class="breadcrumbs-area">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
					    <div class="breadcrumbs">
					       <h2>SHOP LEFT SIDEBAR</h2> 
					       <ul class="breadcrumbs-list">
						        <li>
						            <a title="Return to Home" href="BookController">Home</a>
						        </li>
						        <li>SHOP LEFT SIDEBAR</li>
						    </ul>
					    </div>
					</div>
				</div>
			</div>
		</div> 
		<!-- Breadcrumbs Area Start --> 
        <!-- Shop Area Start -->
        <div class="shopping-area section-padding">
            <div class="container">
                <div class="row">
                    <div class="col-md-9 col-sm-9 col-xs-12">
                        <div class="shop-tab-area">
                            <div class="shop-tab-list">
                                <div class="shop-tab-pill pull-left">
                                    <ul>
                                        <li class="active" id="left"><a data-toggle="pill" href="#home"><i class="fa fa-th"></i><span>Grid</span></a></li>
                                        <li><a data-toggle="pill" href="#menu1"><i class="fa fa-th-list"></i><span>List</span></a></li>
                                    </ul>
                                </div>
                                <div class="shop-tab-pill pull-right">
                                    <ul>
                                        <li class="product-size-deatils">
                                            <div class="show-label">
                                            <a href="bookRegist.do">상품등록</a>
                                                <label><i class="fa fa-sort-amount-asc"></i>Sort by : </label>
                                                <select>
                                                    <option value="position" selected="selected">Position</option>
                                                    <option value="Name">Name</option>
                                                    <option value="Price">Price</option>
                                                </select>
                                            </div>
                                        </li>	
                                        <li class="shop-pagination"><a href="#">1</a></li>
                                        <li class="shop-pagination"><a href="#">2</a></li>
                                        <li class="shop-pagination"><a href="#"><i class="fa fa-caret-right"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="tab-content">
                                <div class="row tab-pane fade in active" id="home">
                                    <div class="shop-single-product-area">                                    
                                     <c:forEach items="${blist }" var="mvo">
                                        <div class="col-md-4 col-sm-6">
											<div class="single-banner">
												<div class="product-wrapper">
													<a href="#" class="single-banner-image-wrapper">
														<img alt="" src="${path }${mvo.bookImgPath }">
														<div class="price"><span>$</span>${mvo.bookPrice }</div>
													</a>
													<%-- <a href="#" onclick="updateMember('${mvo.bookNum }');">수정</a> / --%> 
													<a class="banner-bottom-title" href="${path }/BookDeleteController?bookNum=${mvo.bookNum }">삭제</a>
													<div class="product-description">
														<div class="functional-buttons">
															<a href="InsertCart?bookNum=${mvo.bookNum }" title="Add to Cart">
																<i class="fa fa-shopping-cart"></i>
															</a>
															<a href="#" title="Add to Wishlist">
																<i class="fa fa-heart-o"></i>
															</a>
														</div>
													</div>
												</div>
												<div class="banner-bottom text-center">
													<div class="banner-bottom-title">
														<a href="#">${mvo.bookName }</a>
														<input type="hidden" name="bookNum" value="${mvo.bookNum }">
													</div>
													<div class="rating-icon">
														<i class="fa fa-star icolor"></i>
														<i class="fa fa-star icolor"></i>
														<i class="fa fa-star icolor"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
													</div>
												</div>
											</div>
                                        </div>
                                        </c:forEach>
                                        
                                      
                                    </div>
                                </div>
                                <div id="menu1" class="tab-pane fade">
                                    <div class="row">
                                    
                                    <c:forEach items="${blist }" var="mvo">
                                        <div class="single-shop-product">
                                            <div class="col-xs-12 col-sm-5 col-md-4">
                                                <div class="left-item">
                                                    <a href="${path }/single-product.do" title="자바의정석">
                                                        <img src="${path }${mvo.bookImgPath }" alt="">
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="col-xs-12 col-sm-7 col-md-8">
                                                <div class="deal-product-content">
                                                    <h4>
                                                        <a href="${path }/single-product.do" title="자바의정석">${mvo.bookName }</a>
                                                    </h4>
                                                    <div class="product-price">
                                                        <span class="new-price">$ ${mvo.bookPrice }</span>
                                                    </div>
                                                    <a class="banner-bottom-title" href="${path }/BookDeleteController?bookNum=${mvo.bookNum }">삭제</a>
                                                    <div class="list-rating-icon">
                                                        <i class="fa fa-star icolor"></i>
                                                        <i class="fa fa-star icolor"></i>
                                                        <i class="fa fa-star icolor"></i>
                                                        <i class="fa fa-star"></i>
                                                        <i class="fa fa-star"></i>
                                                    </div>
                                                    <p>${mvo.bookDescription }</p>
                                                    <div class="availability">
                                                        <span><a href="cart.jsp">Add to cart</a></span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        </c:forEach>
                                      
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Shop Area End -->
        
		<!-- Footer Area Start -->
		<%@ include file= "../includes/footer.jsp" %>
		
		<!-- Footer Area End -->        
		<!-- all js here -->
		<!-- jquery latest version -->
        <script src="${path }/js/vendor/jquery-1.12.0.min.js"></script>
		<!-- bootstrap js -->
        <script src="${path }/js/bootstrap.min.js"></script>
		<!-- owl.carousel js -->
        <script src="${path }/js/owl.carousel.min.js"></script>
		<!-- jquery-ui js -->
        <script src="${path }/js/jquery-ui.min.js"></script>
		<!-- jquery Counterup js -->
        <script src="${path }/js/jquery.counterup.min.js"></script>
        <script src="${path }/js/waypoints.min.js"></script>	
		<!-- jquery countdown js -->
        <script src="${path }/js/jquery.countdown.min.js"></script>
		<!-- jquery countdown js -->
        <script type="text/javascript" src="${path }/venobox/venobox.min.js"></script>
		<!-- jquery Meanmenu js -->
        <script src="${path }/js/jquery.meanmenu.js"></script>
		<!-- wow js -->
        <script src="${path }/js/wow.min.js"></script>	
		<script>
			new WOW().init();
		</script>
		<!-- scrollUp JS -->		
        <script src="${path }/js/jquery.scrollUp.min.js"></script>
		<!-- plugins js -->
        <script src="${path }/js/plugins.js"></script>
		<!-- Nivo slider js -->
		<script src="${path }/lib/js/jquery.nivo.slider.js" type="text/javascript"></script>
		<script src="${path }/lib/home.js" type="text/javascript"></script>
		<!-- main js -->
        <script src="${path }/js/main.js"></script>
    </body>
</html>