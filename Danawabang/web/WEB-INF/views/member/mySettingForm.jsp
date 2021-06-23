<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="member.model.vo.Member"%>
    
<% Member member = (Member)request.getAttribute("member");
   String userName = member.getName();
   String userId = member.getId();
   String userPwd = member.getPwd();
   String email = member.getEmail();
   String phone = member.getPhone() == null ? "" : member.getPhone();   
   String address = member.getAddress() == null ? "//" : member.getAddress();
   
   
   String[] splitStr = address.split("/");
   
%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원_설정</title>
<script src="js/popper.min.js"></script>
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap-4.3.1.js"></script>
<link href="css/bootstrap-4.3.1.css" rel="stylesheet">
<link rel="stylesheet"
   href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
   <link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
<style>

</style>
</head>
<body style="font-family: 'Nanum Gothic', sans-serif;">
   <!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!상단!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
   <div id="main-container" class="container">
      <%@ include file="../common/top.jsp" %>

      <!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!상단 끝!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->


      <!--!!!!!!!!!!!!!!!!!!!!!!!!! 마이 페이지 카테고리 !!!!!!!!!!!!!!!!!!!!!!!!!!-->
      <!-- 중단 카테고리 -->   
      <div class="row" id="middleCategories">
         <!-- 중단 카테고리 여백 -->
         <div class="col-3"></div>
         <!-- 나의쇼핑, 나의활동, 설정 중단카테고리 -->
         <div onclick="location.href='마이페이지-나의 쇼핑.html';"
               class="col-2" style="text-align: center; cursor: pointer; font-size: 20px; font-weight: bold; padding-right:10px;">
               나의 쇼핑</div>
         <div onclick="location.href='마이페이지-나의 활동.html';"
               class="col-2" style="text-align: center; cursor: pointer; font-size: 20px; font-weight: bold; padding-right:20px;">
               나의 활동</div>
         <div onclick="location.href='마이페이지-설정-회원정보수정.html';"
               class="col-2" style="text-align: center; cursor: pointer; font-size: 20px; font-weight: bold;">
               설정</div>
         <!-- 상단 카테고리 여백 -->
         <div class="col-3"></div>
      </div>
      
      <!-- 행 사이 빈공간-->
      <div class="row" style="margin-top: 40px;"></div>

         <!-- 회원정보수정 제목 -->
         <div class="row">
            <!-- 여백 -->
            <div class="col"></div>
            <!-- 회원정보수정 제목-->
            <div class="col"
               style="text-align: center; font-size: 23px; font-weight: bold; color: #11BBFF;">회원정보수정</div>
            <!-- 여백 -->
            <div class="col"></div>
         </div>
         <!-- 행 사이 빈공간-->
         <div class="row" style="margin-top: 20px;"></div>

         <!-- 정보기입 -->
         <div class="row">
            <!-- 여백 -->
            <div class="col-4"></div>
            <!-- 기입칸-->
         <div class="col-5" style="font-size: 18px; font-weight: bold;">
            <form action="<%=request.getContextPath() %>/mySetting.me" method="post" id="myForm">
            	<button type="button" onclick="withdraw();" style="text-decoration: underline; font-weight: normal; border-style: none; background-color: #fff; color: rgb(127, 127, 127); cursor: pointer; font-size: 12px; margin-left: 350px;">탈퇴하기</button>
               <label class="form-label">이름</label>
               <br><span class="form-control" style="color: rgb(94, 94, 94); width: 60%; font-weight: normal;"> <%=userName%> </span>
               <input class="form-control" type="hidden" id="name" name="name" value="<%=userName%>"
                  style="color: rgb(94, 94, 94); font-size: 14px; line-height: 200%; width: 60%;"><br>
               <label class="form-label">아이디</label><br><span class="form-control" style="color: rgb(94, 94, 94); width: 60%; font-weight: normal;"><%=userId%></span>
			<input class="form-control" type="hidden" id="id" name="id" 
                  value="<%=userId%>"
                  style="color: rgb(94, 94, 94); font-size: 14px; line-height: 200%; width: 60%;"><br><input type="hidden" id="pwd" name="pwd" value="<%=userPwd%>">
             <label class="form-label">이메일</label><br><span class="form-control" style="color: rgb(94, 94, 94); width: 80%; font-weight: normal;"><%=email%></span><input
                  class="form-control" type="hidden" id="email" name="email"
                  value="<%=email%>"
                  style="color: rgb(94, 94, 94); font-size: 14px; line-height: 200%; width: 80%;"><br>
               <label class="form-label">연락처</label><br><span class="form-control" style="color: rgb(94, 94, 94); width: 70%; font-weight: normal;"><%=phone%></span><input
                  class="form-control" type="hidden" id="phone" name="phone"
                  value="<%=phone%>"
                  style="color: rgb(94, 94, 94); font-size: 14px; line-height: 200%; width: 70%;"><br>
               <label class="form-label">주소</label><br><span class="form-control" style="color: rgb(94, 94, 94); width: 40%; font-weight: normal;"><%=splitStr[0]%></span><input
                  class="form-control" type="hidden" id="post" name="post"
                  value="<%=splitStr[0]%>"
                  style="color: rgb(94, 94, 94); font-size: 14px; line-height: 200%; width: 40%;"><br><span class="form-control" style="color: rgb(94, 94, 94); width: 80%; font-weight: normal;"><%=splitStr[1]%></span>
               <input class="form-control" type="hidden" id="add1" name="add1"
                  value="<%=splitStr[1]%>"
                  style="color: rgb(94, 94, 94); font-size: 14px; line-height: 200%; width: 80%; margin-top: -13px;"><br>
			<span class="form-control" style="color: rgb(94, 94, 94); width: 80%; font-weight: normal;"><%=splitStr[2]%></span>
               <input class="form-control" type="hidden" id="add2" name="add2"
                  value="<%=splitStr[2]%>"
                  style="color: rgb(94, 94, 94); font-size: 14px; line-height: 200%; width: 80%; margin-top: -13px;"><br>
               <button type="submit" id="update"
                  class="button1" style="width: 150px; margin-left: 80px;">회원정보수정</button>
            </form>
         </div>
            <!-- 여백 -->
            <div class="col-3"></div>
         </div>

      

         <!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!하단!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
      <%@ include file="../common/bottom.jsp" %>
   </div>
   <!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!하단 끝 !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->


   <!-- 상단 스크립트 -->
   <script>
   $(function() {
		$('#middleCategories').children().hover(function() {
			$(this).css('color', '#11BBFF');
		}, function() {
			$(this).css('color', 'black');
		});
	});
      function withdraw() {
    	 $('#myForm').attr('action', '<%=request.getContextPath()%>/deleteForm.me');
    	 $('#myForm').submit();
       }
        <%-- /* 회원가입시 빠진 항목 확인 메소드 */
      function enroll() {
          var userName = document.getElementById('name').value;
          var userPw1 = document.getElementById('pw1').value;
          var userPw2 = document.getElementById('pw2').value;
         var email = document.getElementById('email').value;

          if (userName == '' || userName.length == 0) {
            alert('이름을 입력해주세요.');
             document.getElementById('name').focus();
             return false;
          } else if (userPw1 == '' || userPw1.length == 0) {
             alert('비밀번호를 입력해주세요.');
             document.getElementById('pw1').focus();
             return false;
          } else if (userPw2 == '' || userPw2.length == 0) {
             alert('비밀번호 확인을 입력해주세요.');
             document.getElementById('pw2').focus();
             return false;
          } else if (document.getElementById('check').style.color == 'red') {
             alert('비밀번호가 일치하지 않습니다.');
             document.getElementById('pw2').value = '';
             document.getElementById('pw2').focus();
             return false;
          } else if (email == '' || email.length == 0) {
             alert('이메일을 입력해주세요.');
             document.getElementById('email').focus();
             return false;
          } else if(userPw1 != '<%= userPwd %>'){
          // 회원정보수정 버튼 눌렀을 때, 비밀번호가 이전 비밀번호와 일치하지 않으면 뜨는 경고창
             var bool = confirm('이전 비밀번호와 다릅니다. 이대로 진행하시겠습니까?');
            if(bool){
               alert(userName + "님, 정보 수정이 성공적으로 완료되었습니다.");
                return true;
            } else {
               $('#pw1').val('').focus();
               $('#pw2').val('');
               return false;
            }   
          } else {
             alert(userName + "님, 정보 수정이 성공적으로 완료되었습니다.");
             return true;
          }
       }
      /* 비밀번호 확인하는 메소드 */
      function checkPw() {
          var pw1 = document.getElementById('pw1').value;
          var pw2 = document.getElementById('pw2').value;
          var check = document.getElementById('check');

          if (pw2 == '' || pw2.length == 0) {
             check.innerHTML = '';
          } else if (pw1 != pw2) {
             check.style.color = 'red';
             check.innerHTML = '비밀번호가 일치하지 않습니다.';
          } else {
             check.style.color = 'green';
             check.innerHTML = '비밀번호가 일치합니다.';
          }
       } --%>
   </script>
   
   
</body>
</html>
