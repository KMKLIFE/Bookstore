<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!--Header Area Start-->
<meta charset="utf-8">
<%
   String id = (String) session.getAttribute("id");
%>
<script type="text/javascript">
function btnClick(path){
   document.location.href =path;
}


</script>
<style>
.header-right li {
	padding: 5px 4px;
}
</style>


<header>
	<div class="header-area">
		<div class="container">
			<div class="row">
				<div class="col-md-2 col-sm-6 col-xs-6">
					<div class="header-logo">
						<a href="${path }/BookController"> <img
							src="${path }/img/logo.PNG" alt="">
						</a>
					</div>
				</div>
				<div class="col-md-1 col-sm-6 visible-sm  col-xs-6">
					<div class="header-right">


						<ul>
							<li><a href="${path }/account.do"><i
									class="flaticon-people"></i></a></li>
							<li><button
									href="<%=request.getContextPath() %>/LogoutController"
									name="submitcreate" id="submitcreate" type="submit"
									class="flaticon-people">LOGOUT</li>
							<li class="shoping-cart"><a href="${path }/cart.do"> <i
									class="flaticon-shop"></i> <span>2</span>
							</a></li>
						</ul>
					</div>
				</div>
				<div class="col-md-9 col-sm-12 hidden-xs">
					<div class="mainmenu text-center">
						<nav>
							<ul id="nav">
								<li><a href="${path }/BookController">HOME</a></li>
								<li><a href="${path }/MembersSelectAllController">MEMBERS</a></li>
								<li><a href="${path }/contact.do">CONTACT</a></li>
							</ul>

						</nav>
					</div>
				</div>

				<div class="col-md-1 hidden-sm">
					<div class="header-right">
						<ul>
							<li><a href="${path }/my-account.do"><i
									class="flaticon-people"></i></a>
							<li class="shoping-cart"><a href="${path }/cart.do"> <i
									class="flaticon-shop"></i> <span>2</span>
							</a></li>
							<li>
								<%
                     if (id != null) {
                  %> <%=id%> 님 환영합니다.<br>
								<button name="submitcreate" id="submitcreate" type="submit"
									class="btn-default"
									onclick="btnClick('<%=request.getContextPath() %>/LogoutController');">
									<span> <i class="fa fa-user left"> LOGOUT</i>
									</span>
								</button> <%
                     } else {
                  %> <%--                   <a href="<%=request.getContextPath() %>/LoginController"> --%>
								<button name="submitcreate" id="submitcreate" type="submit"
									class="btn-default"
									onclick="btnClick('<%=request.getContextPath() %>/LoginController');">
									<span> <i class="fa fa-user left"> LOGIN</i>
									</span>
								</button> <!--                   </a> --> <%} %>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--Header Area End-->
</header>