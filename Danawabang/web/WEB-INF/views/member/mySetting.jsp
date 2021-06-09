<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="member.model.vo.Member"%>
    
<% Member member = (Member)request.getAttribute("member");
   String userName = member.getName();
   String userId = member.getId();
   String userPwd = member.getPwd();
   String email = member.getEmail();
   String phone = member.getPhone().equals("null") ? "" : member.getPhone();
   String address = member.getAddress().equals("null") ? "" : member.getAddress();
   
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
/*상단 관련 스타일*/
/*검색창*/
.btn-outline-secondary {
   color: #fff;
   border-color: #11BBFF;
   background-color: #11BBFF;
   font-weight: bold;
}

.btn-outline-secondary:hover {
   color: #fff;
   background-color: #FBA481;
   border-color: #FBA481;
}

.btn-outline-secondary:focus, .btn-outline-secondary.focus {
   box-shadow: 0 0 0 0 rgba(251, 164, 129, 0);
}

.btn-outline-secondary:not (:disabled ):not (.disabled ):active,
   .btn-outline-secondary:not (:disabled ):not (.disabled ).active, .show>.btn-outline-secondary.dropdown-toggle
   {
   color: #fff;
   background-color: #11BBFF;
   border-color: #11BBFF;
}

.btn-outline-secondary:not (:disabled ):not (.disabled ):active:focus,
   .btn-outline-secondary:not (:disabled ):not (.disabled ).active:focus,
   .show>.btn-outline-secondary.dropdown-toggle:focus {
   box-shadow: 0 0 0 0 rgba(251, 164, 129, 0);
}
/*아이콘 색변경*/
.i-plain {
   color: #11BBFF;
}

.i-plain:hover {
   color: #FBA481;
}
/*메뉴버튼*/
.dropdown-menu {
   position: absolute;
   top: 100%;
   left: 0;
   z-index: 1000;
   display: none;
   float: left;
   min-width: 250px;
   padding: 0;
   margin: 0;
   font-size: 18px;
   color: black;
   text-align: left;
   list-style: none;
   background-color: #fff;
   background-clip: padding-box;
   border: 2px solid rgba(17, 187, 255, 1);
   border-radius: 0.25rem;
}
.dropdown-item:hover {
   color: #11BBFF;
}
/*마이페이지-버튼색*/
.button1 {
   border: 1px solid rgb(17, 187, 255);
   background-color: rgb(17, 187, 255);
   color: white;
   border-radius: 4px;
   width: 100px;
   height: 40px;
}
</style>
</head>
<body style="font-family: 'Nanum Gothic', sans-serif;">
   <!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!상단!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
   <div id="main-container" class="container">
      <!-- 1행 -->
      <div class="row">
         <!-- 상단 광고 -->
         <div class="col-12" id="top-bar" onclick="location.href='프로모션.html';"
            style="background: #11BBFF; text-align: center; cursor: pointer; line-height: 30px; font-size: 14px; font-weight: bold; color: white;">
            더운 여름을 시원하게! 여름 맞이 프로모션으로 함께 떠나요!</div>
      </div>

      <!-- 2행 -->
      <div class="row" id="secondRow">
         <!-- 로고  -->
         <div class="col-3">
            <div id="logo" onclick="location.href='메인페이지.html';"
               style="color: #11BBFF; font-size: 32px; text-align: center; vertical-align: middle; margin-top: 16px; font-weight: bold; cursor: pointer; color: #11BBFF;">
               <i class="bi bi-house" style="font-size: 37px;"></i>다나와방
            </div>
         </div>

         <!-- 검색창  -->
         <div class="col-3">
            <!-- 검색 아이콘  -->
            <div style="margin-top: 30px;">
               <input type="text" class="form-control" placeholder="검색어를 입력해주세요"
                  style="font-size: 13px; border-color: #11BBFF; margin-left: 30px;">
            </div>
         </div>
         <div class="col-1">
            <button class="btn btn-outline-secondary" type="submit"
               id="main-search" style="font-size: 14px; margin-top: 30px;">검색</button>
         </div>
         <!-- 로그인/회원가입 아이콘 -->
         <div class="col-2">
            <div id="login" onclick="location.href='로그인 페이지.html';"
               style="width: 140px; margin-left: 10px; font-size: 15px; margin-top: 37px; border-radius: 15px 15px 15px 15px; border-width: 2px 2px 2px 2px; border-style: solid; border-color: #11BBFF; background-color: #11BBFF; color: white; text-align: center; cursor: pointer; font-weight: bold;">로그인/회원가입</div>
         </div>
         <!-- 마이페이지 아이콘  -->
         <div class="col-1" onclick="location.href='마이페이지-나의 쇼핑.html';"
            style="margin-top: 18px; cursor: pointer;">
            <i class="bi bi-person i-plain" style="font-size: 42px;"></i>
         </div>
         <!-- 장바구니 아이콘 -->
         <div class="col-1" onclick="location.href='장바구니.html';"
            style="margin-top: 18px; cursor: pointer;">
            <i class="bi bi-cart2 i-plain" style="font-size: 38px;"></i>
         </div>
         <!-- 고객센터 아이콘  -->
         <div class="col-1" onclick="location.href='고객센터.html';"
            style="margin-top: 20px; cursor: pointer;">
            <i class="bi bi-headset i-plain" style="font-size: 37px;"></i>
         </div>
      </div>



      <!-- 3행 -->
      <!-- 메뉴아이콘 -->
      <div class="row" id="thirdRow"
         style="text-align: center; margin-top: 15px;">
         <div class="col-1">
            <div class="dropdown" style="margin-top: -10px;">
               <a class="btn-group-vertical" href="#" role="button"
                  id="dropdownMenuLink" data-bs-toggle="dropdown"
                  aria-expanded="false"><i class="bi bi-list i-plain"
                  style="font-size: 35px;"></i></a>
               <ul class="dropdown-menu" aria-labelledby="dropdownMenuLink"
                  style="text-align: center; font-weight: bold;">
                  <li class="dropdown-item" style="font-weight: bold;">6평<a
                     class="dropdown-item" href="스토어페이지.html"><img
                        src="images/6평.png"></a></li>
                  <li class="dropdown-item" style="font-weight: bold;">8평<a
                     class="dropdown-item" href="스토어페이지.html"><img
                        src="images/8평.png"></a></li>
                  <li class="dropdown-item" style="font-weight: bold;">10평<a
                     class="dropdown-item" href="스토어페이지.html"><img
                        src="images/10평.png"></a></li>
                  <li class="dropdown-item" style="font-weight: bold;">12평<a
                     class="dropdown-item" href="스토어페이지.html"><img
                        src="images/12평.png"></a></li>
                  <li class="dropdown-item" style="font-weight: bold;">14평<a
                     class="dropdown-item" href="스토어페이지.html"><img
                        src="images/14평.png"></a></li>
               </ul>
            </div>
         </div>
         <!-- 스토어 카테고리 -->
         <div class="col-2" onclick="location.href='스토어페이지.html';"
            style="font-size: 23px; color: #11BBFF; font-weight: bold; cursor: pointer">스토어</div>
         <!-- 셀프가이드 카테고리 -->
         <div class="col-2" onclick="location.href='셀프가이드페이지.html';"
            style="text-align: center; font-size: 23px; color: #11BBFF; font-weight: bold; cursor: pointer">셀프가이드</div>
         <!-- 프로모션 카테고리 -->
         <div class="col-2" onclick="location.href='프로모션페이지.html';"
            style="text-align: center; font-size: 23px; color: #11BBFF; font-weight: bold; cursor: pointer">프로모션</div>
         <div class="col-5"></div>
      </div>

      <!-- 구분선 -->
      <div
         style="margin-top: 20px; width: 100%; border-bottom: 2px solid #11BBFF"></div>

      <!-- 행 사이 빈공간-->
      <div class="row" style="margin-top: 15px;"></div>

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
            <form action="<%= request.getContextPath() %>/update.me" method="post">
               <label class="form-label">이름</label>
               <br> <input
                  class="form-control" type="text" id="name" name="name"
                  value="<%=userName%>"
                  style="color: rgb(94, 94, 94); font-size: 14px; line-height: 200%; width: 60%;"><br>
               <label class="form-label">아이디</label><br> <input
                  class="form-control" type="text" id="id" name="id" 
                  value="<%=userId%>"
                  style="color: rgb(94, 94, 94); font-size: 14px; line-height: 200%; width: 60%;"><br>
               <label class="form-label">비밀번호</label><br> <input
                  class="form-control" type="password" id="pw1" name="pwd"
                  style="color: rgb(94, 94, 94); font-size: 14px; line-height: 200%; width: 60%;"><br>
				<label class="form-label">이메일</label><br> <input
                  class="form-control" type="email" id="email" name="email"
                  value="<%=email%>"
                  style="color: rgb(94, 94, 94); font-size: 14px; line-height: 200%; width: 80%;"><br>
               <label class="form-label">연락처</label><br> <input
                  class="form-control" type="text" id="phone" name="phone"
                  value="<%=phone%>"
                  style="color: rgb(94, 94, 94); font-size: 14px; line-height: 200%; width: 70%;"><br>
               <label class="form-label">주소</label><br> <input
                  class="form-control" type="text" id="post" name="post" placeholder="우편번호"
                  value="<%=splitStr[0]%>"
                  style="color: rgb(94, 94, 94); font-size: 14px; line-height: 200%; width: 40%;"><br>
               <input class="form-control" type="text" id="add1" name="add1" placeholder="주소"
                  value="<%=splitStr[1]%>"
                  style="color: rgb(94, 94, 94); font-size: 14px; line-height: 200%; width: 80%; margin-top: -13px;"><br>
               <input class="form-control" type="text" id="add2" name="add2" placeholder="상세주소"
                  value="<%=splitStr[2]%>"
                  style="color: rgb(94, 94, 94); font-size: 14px; line-height: 200%; width: 80%; margin-top: -13px;"><br>
               <button type="submit" id="update" onclick="return enroll();"
                  class="button1" style="width: 150px; margin-left: 80px;">회원정보수정</button>
            </form>
         </div>
            <!-- 여백 -->
            <div class="col-3"></div>
         </div>

      

         <!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!하단!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
      <!-- 행 사이 빈공간-->
      <div class="row" style="margin-top: 120px;"></div>

      <!-- 하단 -->
      <div class="row">
         <div class="col-12" onclick="location.href='고객센터.html';"
            style="color: black; line-height: 30px; font-size: 22px; font-weight: bold; cursor: pointer;">
            고객센터 : 1555-5551</div>
      </div>
      <div class="row">
         <div class="col-12" style="color: black; font-size: 13px;">평일
            09:00 ~ 18:00 (주말 & 공휴일 제외)</div>
      </div>
      <!-- 행 사이 빈공간-->
      <div class="row" style="margin-top: 20px;"></div>
      <div class="row" style="text-align: center;">
         <div class="col-1" onclick="location.href='회사소개.html';"
            style="color: black; line-height: 20px; font-size: 13px; font-weight: bold; cursor: pointer;">회사소개</div>
         <div class="col-1" onclick="location.href='이용약관.html';"
            style="color: black; line-height: 20px; font-size: 13px; font-weight: bold; cursor: pointer;">이용약관</div>
         <div class="col-2" onclick="location.href='개인정보처리방침.html';"
            style="color: black; line-height: 20px; font-size: 13px; font-weight: bold; cursor: pointer;">개인정보처리방침</div>
         <div class="col-1" onclick="location.href='공지사항.html';"
            style="color: black; line-height: 20px; font-size: 13px; font-weight: bold; cursor: pointer;">공지사항</div>
         <div class="col-1" onclick="location.href='고객센터.html';"
            style="color: black; line-height: 20px; font-size: 13px; font-weight: bold; cursor: pointer;">고객센터</div>
         <div class="col-6"></div>
      </div>
      <!-- 행 사이 빈공간-->
      <div class="row" style="margin-top: 10px;"></div>
      <div class="row">
         <div class="col-12" style="font-size: 12px;">
            <p>
               상호명 : (주)다나와방 / 이메일 : danawabang@danawabang.com / 대표이사 : 박신우 /
               사업자등록번호 : 999-88-77777 / 통신판매업신고번호 : 제2021-서울역삼-0215호<br> 주소 :
               서울 역삼구 역삼대로56길 6 타워팰리스타워 31층 <br> Copyright 2021. danawabang,
               Co., Ltd. All rights reserved
            </p>
         </div>

      </div>
   </div>
   <!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!하단 끝 !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->


   <!-- 상단 스크립트 -->
   <script>
      //2행 로고
      $(function() {
         $('#logo').hover(function() {
            $(this).css('font-size', '34px');
         }, function() {
            $(this).css('font-size', '32px');
         });
      //2행 로그인
         $('#login').hover(function() {
            $(this).css({
               'background-color' : '#FBA481',
               'border-color' : '#FBA481'
            });
         }, function() {
            $(this).css({
               'background-color' : '#11BBFF',
               'border-color' : '#11BBFF'
            });
         });
      
      //3행
         $('#thirdRow').children().hover(function() {
            $(this).css('color', '#FBA481');
         }, function() {
            $(this).css('color', '#11BBFF');
         });
      
      //중단 카테고리 색변환
         $('#middleCategories').children().hover(function() {
            $(this).css('color', '#11BBFF');
         }, function() {
            $(this).css('color', 'black');
         });
      });
      /* 회원가입시 빠진 항목 확인 메소드 */
      function enroll() {
          var userName = document.getElementById('name').value;
          var userId = document.getElementById('id').value;
    	  var userPw1 = document.getElementById('pw1').value;
          var email = document.getElementById('email').value;
          var post = document.getElementById('post').value;
          var add1 = document.getElementById('add1').value;
          var add2 = document.getElementById('add2').value;
         var regExpEmail = /^[0-9a-zA-Z_\-]+@[.0-9a-zA-Z_\-]+$/;
         var regExpPhone = /^\d{3}-\d{4}-\d{4}$/;
         var regExpPost = /^\d{5}$/;
         var regExpPass = /^[A-Za-z0-9]{8,15}$/;
          var phone = document.getElementById('phone').value;
          
          if (userName == '' || userName.length == 0) {
            alert('이름을 입력해주세요.');
             document.getElementById('name').focus();
             return false;
          } else if(userId != '<%= userId %>') {
        	  alert('아이디는 수정하실 수 없습니다.');
        	  document.getElementById('id').value = '<%= userId %>';
        	  document.getElementById('id').focus();
          	  return false;
          } else if (userPw1 == '' || userPw1.length == 0) {
             alert('비밀번호를 입력해주세요.');
             document.getElementById('pw1').focus();
             return false;
          }  else if (!regExpPass.test(userPw1)) {
				alert('비밀번호가 조건에 맞지 않습니다.\n(8~15자리 영문/숫자)');
				document.getElementById('pw1').value = '';
				document.getElementById('pw1').focus();
				return false;
			} else if (email == '' || email.length == 0) {
             alert('이메일을 입력해주세요.');
             document.getElementById('email').focus();
             return false;
          } else if (!regExpEmail.test(email)){
        	alert('이메일이 조건에 맞지않습니다.\n(영문,숫자@영문,숫자)');
        	document.getElementById('email').value = '';
        	document.getElementById('email').focus();
            return false; 
          } else if (phone == '' || phone.length == 0) {
              alert('연락처를 입력해주세요.');
              document.getElementById('email').focus();
              return false;
           } else if (!regExpPhone.test(phone)){
          		alert('연락처가 조건에 맞지 않습니다.\n(000-0000-0000)');
          		document.getElementById('phone').value = '';
    				document.getElementById('phone').focus();
    				return false;
  		 } else if (post == '' || post.length == 0) {
             alert('우편번호를 입력해주세요.');
             document.getElementById('post').focus();
             return false;
          } else if (!regExpPost.test(post)){
         		alert('우편번호가 조건에 맞지 않습니다.\n(00000)');
         		document.getElementById('post').value = '';
   				document.getElementById('post').focus();
   				return false;
 		 } else if (add1 == '' || add1.length == 0) {
             alert('주소를 입력해주세요.');
             document.getElementById('add1').focus();
             return false;
          } else if (add2 == '' || add2.length == 0) {
              alert('상세주소를 입력해주세요.');
              document.getElementById('add2').focus();
              return false;
           } else if(userPw1 != '<%= userPwd %>'){
              // 회원정보수정 버튼 눌렀을 때, 비밀번호가 이전 비밀번호와 일치하지 않으면 뜨는 경고창
              var bool = confirm('이전 비밀번호와 다릅니다. 이대로 진행하시겠습니까?');
             if(bool){
                alert(userName + "님, 정보 수정이 성공적으로 완료되었습니다.");
                 return true;
             } else {
                document.getElementById('pw1').value = '';
                document.getElementById('pw1').focus();
                return false;
             }   
           } else {
             alert(userName + "님, 정보 수정이 성공적으로 완료되었습니다.");
             return true;
          }
       }
      <%-- function enroll() {
    	  var post = document.getElementById('post').value;
          var add1 = document.getElementById('add1').value;
          var add2 = document.getElementById('add2').value;
          var phone = document.getElementById('phone').value;
          var bool = confirm('이전 비밀번호와 다릅니다. 이대로 진행하시겠습니까?');
          var regExp = /^[A-Za-z0-9]{8,15}$/;
           var regExp2 = /^01(?:0|1[6-9])\-(?:d{3}|d{4})\-d{4}/$;
          var regExp3 = /^[0-9a-zA-Z_\-]+@[.0-9a-zA-Z_\-]+/$;
          

          if (userName == '' || userName.length == 0) {
           	 alert('이름을 입력해주세요.');
           	document.getElementById('name').focus();
           	return false;
          } else if(userId != '<%= userId %>') {
        	  alert('아이디는 수정하실 수 없습니다.');
        	  document.getElementById('id').value = '<%= userId %>';
        	  document.getElementById('id').focus();
          	return false;
          }	else if (userPw1 == '' || userPw1.length == 0) {
             alert('비밀번호를 입력해주세요.');
             document.getElementById('pw1').focus();
             return false;
          } else if (!regExp.test(userPw1)) {
				alert('비밀번호가 조건에 맞지 않습니다');
				document.getElementById('pw1').focus();
				return false;
		} else if (email == '' || email.length == 0) {
             alert('이메일을 입력해주세요.');
             document.getElementById('email').focus();
             return false;
          } else if(userPw1 != '<%= userPwd %>') {
          // 회원정보수정 버튼 눌렀을 때, 비밀번호가 이전 비밀번호와 일치하지 않으면 뜨는 경고창
			if(bool){
               alert(userName + "님, 정보 수정이 성공적으로 완료되었습니다.");
               return true;
            } 
          } else {
             alert(userName + "님, 정보 수정이 성공적으로 완료되었습니다.");
             return true;
          }
       } --%>
   </script>
   
   <!-- 필요한 외부 script -->
   <script
      src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
      integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
      crossorigin="anonymous"></script>
   <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js"
      integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT"
      crossorigin="anonymous"></script>
</body>
</html>
