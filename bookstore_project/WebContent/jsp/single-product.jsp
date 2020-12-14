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
        <!-- Mobile Menu Start -->
      <div class="mobile-menu-area">
         <div class="container">
            <div class="row">
               <div class="col-lg-12 col-md-12 col-sm-12">
                  <div class="mobile-menu">
                     <nav id="dropdown">
                        <ul>
                                    <li><a href="index.html">HOME</a></li>
                                    <li><a href="shop.html">BOOK LIST</a></li>
                                    <li><a href="#">pages</a>
                                        <ul>
                                            <li><a href="contact.jsp">Contact</a></li>
                                            <li><a href="login.jsp">Login</a></li>
                                            <li><a href="single-product.html">Single Shop Page</a></li>
                                            <li><a href="wishlist.html">Wishlist Page</a></li>
                                            <li><a href="404.html">404 Page</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="contact.jsp">CONTACT</a></li>
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
                      <h2>PRODUCT DETAILS</h2> 
                      <ul class="breadcrumbs-list">
                          <li>
                              <a title="Return to Home" href="index.html">Home</a>
                          </li>
                          <li>Product Details</li>
                      </ul>
                   </div>
               </div>
            </div>
         </div>
      </div> 
      <!-- Breadcrumbs Area Start --> 
        <!-- Single Product Area Start -->
        <div class="single-product-area section-padding">  
            <div class="container">
                <div class="row">
                    <div class="col-md-6 col-sm-7">  
                        <div class="single-product-image-inner">
                            <!-- Tab panes -->
                            <div class="tab-content">
                                <div role="tabpanel" class="tab-pane active" id="one">
                                    <a class="venobox" href="${path }/img/큰자바의 정석.png" data-gall="gallery" title="자바의정석">
                                        <img src="${path }/img/큰자바의정석.png" alt="">  
                                    </a>
                                </div>
                                <div role="tabpanel" class="tab-pane" id="two">
                                    <a class="venobox" href="img/single-product/bg-2.jpg" data-gall="gallery" title="">
                                        <img src="../img/featured/혼공씨.png" alt="">
                                    </a>
                                </div>
                                <div role="tabpanel" class="tab-pane" id="three">
                                    <a class="venobox" href="img/single-product/bg-3.jpg" data-gall="gallery" title="">
                                        <img src="img/single-product/bg-3.jpg" alt="">
                                    </a>
                                </div>
                            </div>
                            <!-- Nav tabs -->
                            <ul class="product-tabs" role="tablist">
                                <li role="presentation" class="active"><a href="#one" aria-controls="one" role="tab" data-toggle="tab"><img src="img/single-product/1.jpg" alt=""></a></li>
                                <li role="presentation"><a href="#two" aria-controls="two" role="tab" data-toggle="tab"><img src="img/single-product/2.jpg" alt=""></a></li>
                                <li role="presentation"><a href="#three" aria-controls="three" role="tab" data-toggle="tab"><img src="img/single-product/3.jpg" alt=""></a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-md-6 col-sm-5">
                        <div class="single-product-details">
                            <div class="list-pro-rating">
                                <i class="fa fa-star icolor"></i>
                                <i class="fa fa-star icolor"></i>
                                <i class="fa fa-star icolor"></i>
                                <i class="fa fa-star icolor"></i>
                                <i class="fa fa-star"></i>
                            </div>
                            <h2>JAVA의 정석</h2>
                            <p>jAVA의 3edition 최신판, 개념부터 유형까지 초보자도 이해할 수 있는 완벽한 구성!</p>
                            <div class="single-product-price">
                                <h2>$160</h2>
                            </div>
                            <div class="product-attributes clearfix">
                                <span class="pull-left" id="quantity-wanted-p">
                           <span class="dec qtybutton">-</span>
                           <input type="text" value="1" class="cart-plus-minus-box">
                           <span class="inc qtybutton">+</span>   
                        </span>
                               <span>
                                    <a class="cart-btn btn-default" href="InsertCart?bookNum=${mvo.bookNum }">
                                        <i class="flaticon-shop"></i>
                                        Add to cart
                                    </a>
                               </span>
                            </div>
                            <div class="add-to-wishlist">
                                <a class="wish-btn" href="cart.html">
                                    <i class="fa fa-heart-o"></i>
                                    ADD TO WISHLIST
                                </a>
                            </div>
                            <div class="single-product-categories">
                               <label>Categories:</label>
                                <span>e-book, IT service, business</span>
                            </div>
                            <div class="social-share">
                                <label>Share: </label>
                                <ul class="social-share-icon">
                                    <li><a href="#"><i class="flaticon-social"></i></a></li>
                                    <li><a href="#"><i class="flaticon-social-1"></i></a></li>
                                    <li><a href="#"><i class="flaticon-social-2"></i></a></li>
                                </ul> 
                            </div>
                            <div id="product-comments-block-extra">
                        <ul class="comments-advices">
                           <li>
                              <a href="#" class="open-comment-form">Write a review</a>
                           </li>
                        </ul>
                     </div>
                        </div>
                    </div>
                </div>
                <div class="row">
               <div class="col-md-9">
                        <div class="p-details-tab-content">
                            <div class="p-details-tab">
                                <ul class="p-details-nav-tab" role="tablist">
                                    <li role="presentation" class="active"><a href="#more-info" aria-controls="more-info" role="tab" data-toggle="tab">Description</a></li>
                                    <li role="presentation"><a href="#data" aria-controls="data" role="tab" data-toggle="tab">Review</a></li>
                                    <li role="presentation"><a href="#reviews" aria-controls="reviews" role="tab" data-toggle="tab">Tab</a></li>
                                </ul>
                            </div>
                            <div class="clearfix"></div>
                            <div class="tab-content review">
                                <div role="tabpanel" class="tab-pane active" id="more-info">
                                    <p>최근 7년동안 자바 분야의 베스트 셀러 1위를 지켜온 '자바의 정석'의 최신판. 저자가 카페에서 12년간 직접 독자들에게 답변을 해오면서 초보자가 어려워하는 부분을 잘 파악하고 쓴 책. 뿐만 아니라 기존의 경력자들을 위해 자바의 최신기능(람다와 스트림)을 자세하면서도 깊이있게 설명하고 있다. 저자가 2002년부터 꾸준히 집필해온 책으로 깊이와 세밀함 그리고 저자의 정성과 노력이 돋보이는 책이다. 12년간 저자가 카페에서 손수 답변해줬다는 사실은 이 책에 대한 신뢰를 갖게 한다.</p>
                                </div>
                                <div role="tabpanel" class="tab-pane" id="data">
                                    <table class="table-data-sheet">
                                        <tbody>
                                            <tr class="odd">
                                                <td>Compositions</td>
                                                <td>Cotton</td>
                                            </tr>
                                            <tr class="even">
                                                <td>Styles</td>
                                                <td>Casual</td>
                                            </tr>
                                            <tr class="odd">
                                                <td>Properties</td>
                                                <td>Short Sleeve</td>
                                            </tr>
                                        </tbody>
                                   </table>
                                </div>
                                <div role="tabpanel" class="tab-pane" id="reviews">
                                    <div id="product-comments-block-tab">
                                        <a href="#" class="comment-btn"><span>Be the first to write your review!</span></a>
                                    </div>
                                </div>
                            </div>
                        </div>
               </div>
            </div>  
            </div>
        </div>
        <!-- Single Product Area End -->
        <!-- Related Product Area Start -->
        <div class="related-product-area">
            <h2 class="section-title">RELATED PRODUCTS</h2>
            <div class="container">
                <div class="row">
                    <div class="related-product indicator-style">
                        <div class="col-md-3">
                            <div class="single-banner">
                                <div class="product-wrapper">
                                    <a href="#" class="single-banner-image-wrapper">
                                        <img alt="" src="${path }/img/featured/혼공씨.png">
                                        <div class="price"><span>$</span>160</div>
                                        <div class="rating-icon">
                                            <i class="fa fa-star icolor"></i>
                                            <i class="fa fa-star icolor"></i>
                                            <i class="fa fa-star icolor"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                        </div>
                                    </a>
                                    <div class="product-description">
                                        <div class="functional-buttons">
                                            <a href="#" title="Add to Cart">
                                                <i class="fa fa-shopping-cart"></i>
                                            </a>
                                            <a href="#" title="Add to Wishlist">
                                                <i class="fa fa-heart-o"></i>
                                            </a>
                                            <a href="#" title="Quick View">
                                                <i class="fa fa-compress"></i>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="banner-bottom text-center">
                                    <a href="#">혼자 공부하는 C언어</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="single-banner">
                                <div class="product-wrapper">
                                    <a href="#" class="single-banner-image-wrapper">
                                        <img alt="" src="${path }/img/featured/혼공자.png">
                                        <div class="price"><span>$</span>160</div>
                                        <div class="rating-icon">
                                            <i class="fa fa-star icolor"></i>
                                            <i class="fa fa-star icolor"></i>
                                            <i class="fa fa-star icolor"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                        </div>
                                    </a>
                                    <div class="product-description">
                                        <div class="functional-buttons">
                                            <a href="#" title="Add to Cart">
                                                <i class="fa fa-shopping-cart"></i>
                                            </a>
                                            <a href="#" title="Add to Wishlist">
                                                <i class="fa fa-heart-o"></i>
                                            </a>
                                            <a href="#" title="Quick view" data-toggle="modal" data-target="#productModal">
                                                <i class="fa fa-compress"></i>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="banner-bottom text-center">
                                    <a href="#">혼자 공부하는 자바</a>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="single-banner">
                                <div class="product-wrapper">
                                    <a href="#" class="single-banner-image-wrapper">
                                        <img alt="" src="${path }/img/featured/자바성능 튜닝 이야기.png">
                                        <div class="price"><span>$</span>160</div>
                                        <div class="rating-icon">
                                            <i class="fa fa-star icolor"></i>
                                            <i class="fa fa-star icolor"></i>
                                            <i class="fa fa-star icolor"></i>
                                            <i class="fa fa-star"></i>
                                            <i class="fa fa-star"></i>
                                        </div>
                                    </a>
                                    <div class="product-description">
                                        <div class="functional-buttons">
                                            <a href="#" title="Add to Cart">
                                                <i class="fa fa-shopping-cart"></i>
                                            </a>
                                            <a href="#" title="Add to Wishlist">
                                                <i class="fa fa-heart-o"></i>
                                            </a>
                                            <a href="#" title="Quick view" data-toggle="modal" data-target="#productModal">
                                                <i class="fa fa-compress"></i>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="banner-bottom text-center">
                                    <a href="#">자바성능 튜닝 이야기</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Related Product Area End -->
<%@ include file = "../includes/footer.jsp" %>
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
</body>
</html>