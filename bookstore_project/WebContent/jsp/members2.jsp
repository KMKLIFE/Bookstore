<%@page import="com.book.member.vo.MemberVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="head.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">

function updateMember(id){
	
	$.ajax({
		url: "${path}/MemberSelectOneController",
		type: "post",
		contentType : "application/x-www-form-urlencoded; charset=utf-8",
		datatype:"json",
		data: {"id" : id},
		error:function(request,status,error){
	        alert("code = "+ request.status + " message = " + request.responseText + " error = " + error); // 실패 시 처리
	    },

		success: function(data){
			var wrap = "<form action='${path}/MemberUpdateController' method='post' name='update_form'></form>";
// 			var $form="<form action='${path}/MemberUpdateController' method='post' name='update_form'></form>";
// 			var $form = $('<form></form>');
// 		     $form.attr('action', '${path}/MemberUpdateController');
// 		     $form.attr('method', 'post');
// 		     $form.appendTo("#row_"+data.id);

			var tag =
				"<input type='hidden' name='id' value='"+data.id+"'>"+
			    "<div class='cell' id='id'>"+data.id+"</div>"+
			    "<div class='cell' id='pwd'><input type='text' name='pwd' value='"+data.pwd+"'></div>"+
			    "<div class='cell' id='email'><input type='text' name='email' value='"+data.email+"'></div>"+
			    "<div class='cell' id='gender'><input type='radio' id='gender_m' name='gender' value='M'>남"+
			    "<input type='radio' id='gender_f' name='gender' value='F'>여"+
			    "</div>"+
			    "<div class='cell' id='pwd'><input type='text' name='phonenum' value='"+data.phonenum+"'></div>"+
			    "<div class='cell' id='joindate'>"+data.joindate+"</div>"+
			    "<div class='cell' id='joindate'>"+
			    "<a href='#' onclick='updateComplete();'>수정완료</a> / "+
			    "<a href='${path}/MembersSelectAllController'>취소</a>" +
		        "</div>";
		    $(".table").wrap(wrap);
			$("#row_"+data.id).html(tag);	
			
			
// 			alert("aaa");
// 			$form.html(tag)
			
			if(data.gender=="M"){
				$("#row_"+id+" #gender_m").attr('checked',true);
				$("#row_"+id+" #gender_f").attr('checked',false);
			}else{
				$("#row_"+id+" #gender_m").attr('checked',false);
				$("#row_"+id+" #gender_f").attr('checked',true);
				
			}
			
		}
		
	});
}
function updateComplete(){
	document.update_form.submit();
}

function deleteMember(id){
	document.location.href=""
	
}
</script>

</head>
<body>
<%@ include file="header.jsp" %>
<section>
  <div class="table_wrapper">
  <div class="table">
  
<!--   //	ID	VARCHAR2(30 BYTE) -->
<!-- //	PWD	VARCHAR2(30 BYTE) -->
<!-- //	EMAIL	VARCHAR2(50 BYTE) -->
<!-- //	GENDER	CHAR(1 BYTE) -->
<!-- //	JOINDATE	DATE -->
<!-- //	PHONENUM	VARCHAR2(20 BYTE) -->

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
    <jsp:useBean id="member" class="com.book.member.vo.MemberVO"/>
    <c:forEach items="${mlist }" var="mvo">
    <div class="row" id="row_${mvo.id }">
      <div class="cell" id="id">
         ${mvo.id }
      </div>
      <div class="cell" id="pwd">
         ${mvo.pwd }
      </div>
      <div class="cell" id="email">
         ${mvo.email }
      </div>
      <div class="cell" id="gender">
         ${mvo.gender }
      </div>
      <div class="cell" id="phonenum">
        ${mvo.phonenum }
      </div>
      <div class="cell" id="joindate">
         ${mvo.joindate}
      </div>
      <div class="cell" >
      	<c:if test="${mvo.id ne 'admin' }">
         <a href="#" onclick="updateMember('${mvo.id }');">수정</a> / 
         <a href="${path }/MemberDeleteController?id=${mvo.id }">삭제</a>
        </c:if>
      </div>
    </div>
    </c:forEach>
  	</div>
  </div>
 </section>
 <%@ include file="footer.jsp" %>
</body>
</html>