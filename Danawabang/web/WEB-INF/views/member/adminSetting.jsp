<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="member.model.vo.Member"%>

<% Member member = (Member)request.getAttribute("member");
   String userName = member.getName();
   String userId = member.getId();
   String userPwd = member.getPwd();
   String email = member.getEmail();
   String adminCode = member.getAdminCode();
   String phone = member.getPhone().equals("null") ? "" : member.getPhone();
   String address = member.getAddress().equals("null") ? "" : member.getAddress();
   
   String[] splitStr = address.split("/");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 설정</title>
<script src="js/popper.min.js"></script>
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap-4.3.1.js"></script>
<link href="css/bootstrap-4.3.1.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">	
<style>



.table th[scope="col"] {
	background: rgb(17, 187, 255);
	color: white;
	width: 60px;
}

.page-link{
	color: #11bbff;
}



/*검색창 색상*/
.bi-search{
 color: #11BBFF;
}
</style>
</head>
<body style="font-family: 'Nanum Gothic', sans-serif;">
<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!상단!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
	<div id="main-container" class="container">
		<%@ include file="../common/top.jsp" %>
		
		<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!상단 끝!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->

		<%@ include file="../common/adminMiddleCategory.jsp" %>
		<!-- ----------------------------------------------------------------------------- -->
			<!-- 행 사이 빈공간-->
			<div class="row" style="margin-top: 40px;"></div>

			<!-- 관리자 정보 수정 제목-->
			<div class="row">
				<!-- 여백 -->
				<div class="col"></div>
				<!-- 관리자정보수정 -->
				<div class="col"
					style="text-align: center; font-size: 25px; font-weight: bold; color: rgb(17, 187, 255);">관리자정보수정</div>
				<!-- 여백 -->
				<div class="col"></div>
			</div>
			<!-- 행 사이 빈공간-->
			<div class="row" style="margin-top: 10px;"></div>

			 <!-- 정보기입 -->
         <div class="row">
            <!-- 여백 -->
            <div class="col-4"></div>
            <!-- 기입칸-->
         <div class="col-5" style="font-size: 18px; font-weight: bold;">
            <form action="<%= request.getContextPath() %>/adminSettingForm.me" method="post" id="adminForm">
            	<button type="button" onclick="withdraw();" style="text-decoration: underline; font-weight: normal; border-style: none; background-color: #fff; color: rgb(127, 127, 127); cursor: pointer; font-size: 12px; margin-left: 350px;">탈퇴하기</button>
				<label class="form-label">이름</label><br>
					<input class="form-control" type="text" value="<%=userName%>" readonly
						style="color: rgb(94, 94, 94); font-size: 14px; line-height: 200%; width: 60%;">
					 <input class="form-control" type="hidden" id="name" name="name" value="<%=userName%>"><br>
			 	
			 	<label class="form-label">아이디</label><br>
			 		<input class="form-control" type="text" value="<%=userId%>" readonly
			 		style="color: rgb(94, 94, 94); font-size: 14px; line-height: 200%; width: 60%;">
			 		<input class="form-control" type="hidden" id="id" name="id" value="<%=userId%>"><br>
               
               
                <input class="form-control" type="hidden" id="pw1" name="pwd" value="<%=userPwd%>">
				
				<label class="form-label">이메일</label><br>
				 <input class="form-control" type="email" value="<%=email%>" readonly
                  style="color: rgb(94, 94, 94); font-size: 14px; line-height: 200%; width: 80%;"><br>
               	 <input class="form-control" type="hidden" id="email" name="email" value="<%=email%>">	
               		
               <label class="form-label">연락처</label><br>
                <input class="form-control" type="text" value="<%=phone%>" readonly
                  style="color: rgb(94, 94, 94); font-size: 14px; line-height: 200%; width: 70%;"><br>
               	<input class="form-control" type="hidden" id="phone" name="phone" value="<%=phone%>">
               
               <label class="form-label">주소</label><br>
                <input class="form-control" type="text" placeholder="우편번호" value="<%=splitStr[0]%>" readonly
                  style="color: rgb(94, 94, 94); font-size: 14px; line-height: 200%; width: 40%;"><br>
                <input class="form-control" type="hidden" id="post" name="post" value="<%=splitStr[0]%>">
                
                <input class="form-control" type="text" placeholder="주소" value="<%=splitStr[1]%>" readonly
                  style="color: rgb(94, 94, 94); font-size: 14px; line-height: 200%; width: 80%; margin-top: -13px;"><br>
                <input class="form-control" type="hidden" id="add1" name="add1" value="<%=splitStr[1]%>">
                  
                <input class="form-control" type="text" placeholder="상세주소" value="<%=splitStr[2]%>" readonly
                  style="color: rgb(94, 94, 94); font-size: 14px; line-height: 200%; width: 80%; margin-top: -13px;"><br>
                <input class="form-control" type="hidden" id="add2" name="add2" value="<%=splitStr[2]%>"> 
							
			    
			    <input class="form-control" type="hidden" id="adCode" name="adCode" placeholder="관리자코드" value="<%=adminCode %>">
				  
				<button type="submit" id="update" class="button1" style="width: 150px; margin-left:80px;">관리자정보수정</button>
			</form>
				</div>
				<!-- 여백 -->
				<div class="col-3"></div>
			</div>
			
			
			<!-- 행 사이 빈공간-->
			<div class="row" style="margin-top: 100px;"></div>
				
			
			
			<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!하단!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
			<%@ include file="../common/bottom.jsp" %>
		</div>
	<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!하단 끝 !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->


	<!-- 상단 스크립트 -->
	<script>
		
		function withdraw() {
	    	 $('#adminForm').attr('action', '<%=request.getContextPath()%>/adminDeleteForm.me');
	    	 $('#adminForm').submit();
	       }
	</script>
	
	
</body>
</html>