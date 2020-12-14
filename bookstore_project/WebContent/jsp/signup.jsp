<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="../includes/css.jsp"%>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="../includes/header.jsp"%>
</head>
<body>
	<form action="<%=request.getContextPath()%>/SignupController"
		class="create-account-form" method="post">
		<h2 class="heading-title">SIGN UP PAGE</h2>
		<p class="form-row">
			<input type="text" name="id" placeholder="ID" value="${id}">
			
		</p>
		
		<p class="form-row">
			<input type="password" name="pwd" placeholder="Password">
		</p>

		<p class="form-row">
			<input type="text" name="email" placeholder="Email">
		</p>
		<p class="form-row">
			<input type="text" name="gender" placeholder="Gender">
		</p>
		<p class="form-row">
			<input type="text" name="phonenum" placeholder="Phonenumber">
		</p>
		<p class="lost-password form-group">
		
		</p>
		<div class="submit">
			<button name="submitcreate" id="submitcreate" type="submit"
				class="btn-default">
				<span> <i class="fa fa-user left"></i> SING UP
				</span>
			</button>
		</div>
	</form>

</body>
<%@ include file="../includes/footer.jsp"%>
</html>