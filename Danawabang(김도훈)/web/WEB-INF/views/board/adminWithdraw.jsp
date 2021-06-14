<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="member.model.vo.Member"%>
    
<%
	String adminId = ((Member)request.getAttribute("member")).getId();
	String adminPwd = ((Member)request.getAttribute("member")).getPwd();
	String adminCode = ((Member)request.getAttribute("member")).getAdminCode();
	
	

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 탈퇴</title>
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

		<!-- 중단 카테고리 -->	
		<div class="row" id="middleCategories">
			<!-- 중단 카테고리 여백 -->
			<div class="col"></div>
			<!-- 회원 관리, 상품 관리, 주문 관리, 게시판 관리, 설정 중단카테고리 -->
			<div onclick="location.href='회원 관리.html';" class="col"
				style="text-align: center; vertical-align: middle; text-decoration: none; cursor: pointer; font-size: 20px; font-weight: bold;">
				회원 관리</div>
			<div onclick="location.href='상품 관리.html';" class="col"
				style="text-align: center; vertical-align: middle; text-decoration: none; cursor: pointer; font-size: 20px; font-weight: bold;">
				상품 관리</div>
			<div onclick="location.href='주문 관리.html';" class="col"
				style="text-align: center; vertical-align: middle; text-decoration: none; cursor: pointer; font-size: 20px; font-weight: bold;">
				주문 관리</div>
			<div  class="col">
				<div onclick="location.href='#';" class="dropdown" data-toggle="dropdown"
					style="text-align: center; vertical-align: middle; text-decoration: none; cursor: pointer; font-size: 20px; font-weight: bold;">
					게시판 관리
					<div class="dropdown-menu">
						<a class="dropdown-item" onclick="location.href='관리자_게시판관리_스토어(AdminBoardStore).html'">스토어</a>
						<a class="dropdown-item" onclick="location.href='관리자_게시판관리_셀프가이드(AdminBoardSelfGuide).html'">셀프가이드</a>
						<a class="dropdown-item" onclick="location.href='관리자_게시판관리_프로모션(AdminBoardPromotion).html'">프로모션</a>
						<a class="dropdown-item" onclick="location.href='관리자_게시판관리_공지사항(AdminBoardNotice).html'">공지사항</a>
						<a class="dropdown-item" onclick="location.href='관리자_게시판관리_FAQ(AdminBoardFaq).html'">FAQ</a>
						<a class="dropdown-item" onclick="location.href='관리자_게시판관리_일대일(AdminBoardOtO).html'">1:1게시판</a>
					</div>
				</div>
			</div>
			<div class="col">
				<div onclick="location.href='#';"  class="dropdown" data-toggle="dropdown"
					style="text-align: center; vertical-align: middle; text-decoration: none; cursor: pointer; font-size: 20px; font-weight: bold;">
					설정
					<div class="dropdown-menu">
						<a class="dropdown-item" onclick="location.href='<%= request.getContextPath() %>/adminSetting.me';">관리자정보수정</a>
						<a class="dropdown-item" onclick="location.href='<%= request.getContextPath() %>/adminDeleteForm.me';">관리자탈퇴</a>
					</div>
				</div>
			</div>
				
			<!-- 중단 카테고리 여백 -->
			<div class="col" style="margin-top: 40px;"></div>
		</div>
		<br>


			<!-- 행 사이 빈공간-->
			<div class="row" style="margin-top: 40px;"></div>
		
			<!-- 관리자탈퇴 -->
			<div class="row">
				<!-- 여백 -->
				<div class="col"></div>
				<!-- 관리자탈퇴 -->
				<div class="col"
					style="text-align: center; vertical-align: middle; text-decoration: none; font-size: 25px; font-weight: bold; color: rgb(17, 187, 255);">관리자탈퇴</div>
				<!-- 여백 -->
				<div class="col"></div>
			</div>
			<!-- 행 사이 빈공간-->
			<div class="row" style="margin-top: 10px;"></div>	
		
		<!-- 안내 문구 -->
		<div class="row">
			<div class="col"></div>
			<div class="col" style="text-align:center; font-size:13px;">관리자 탈퇴를 위해<br>아래 정보를 한 번 더 기입해주세요</div>
			<div class="col"></div>
		</div>
		<!-- 행 사이 빈공간-->
			<div class="row" style="margin-top: 10px;"></div>
		
		
		
		
			<!-- 정보기입 -->
			<div class="row">
				<!-- 여백 -->
				<div class="col-4"></div>
				<!-- 기입칸-->
				<div class="col-5"
					style="font-size: 18px; font-weight: bold;">
					<form action="<%= request.getContextPath() %>/adminDelete.me" id ="adminForm" method="post" onsubmit="return deleteCheck();">
					<label class="form-label">아이디</label><br>
					<input class="form-control" type="text" id="id" name="id" placeholder="아이디"
						style="color: rgb(94, 94, 94); font-size: 14px; line-height: 200%; width: 70%;"><br>
					<label class="form-label">비밀번호</label><br>
					<input class="form-control" type="password" id="pw1" name="pw1" placeholder="비밀번호"
						style="color: rgb(94, 94, 94); font-size: 14px; line-height: 200%; width: 70%;"><br>
					<label class="form-label">관리자코드</label><br>
					<input class="form-control" type="password" id="adCode" name="adCode" placeholder="관리자코드"
						style="color: rgb(94, 94, 94); font-size: 14px; line-height: 200%; width: 70%;"><br>
						<button type="button" class="button1" onclick="location.href='<%= request.getContextPath() %>/adminSetting.me';" style="width: 100px; margin-left:20px;">돌아가기</button>
						<button type="submit" class="button1" id="withdraw" style="width: 100px; margin-left:60px;">탈퇴하기</button>					
					</form>
				</div>
				<div class="col-3"></div>
			</div>
			<!-- 행 사이 빈공간-->
			<div class="row" style="margin-top: 20px;"></div>

	
		
		<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!하단!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
		<%@ include file="../common/bottom.jsp" %>
	</div>
	<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!하단 끝 !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->


	<!-- 상단 스크립트 -->
	<script>
		
		//중단 카테고리 색변환
		$(function() {
			$('#middleCategories').children().hover(function() {
				$(this).css('color', '#11BBFF');
			}, function() {
				$(this).css('color', 'black');
			});
		});
		
		
		function deleteCheck() {

			var id = document.getElementById("id").value;
			var pw1 = document.getElementById("pw1").value;
			var adCode = document.getElementById("adCode").value;
			 
			if (id == '' || id.length == 0) {
		            alert('아이디를 입력해주세요.');
		             document.getElementById('id').focus();
		             return false;
		    } else if (pw1 == '' || pw1.length == 0) {
		             alert('비밀번호를 입력해주세요.');
		             document.getElementById('pw1').focus();
		             return false;
		    } else if (adCode == '' || adCode.length == 0) {
		             alert('관리자코드를 입력해주세요.');
		             document.getElementById('adCode').focus();
		             return false;
	        } else if ('<%= adminId %>' != id | '<%= adminPwd %>' != pw1) {
				alert('입력하신 아이디와 비밀번호가 잘못됐습니다.');
				document.getElementById("id").value = '';
				document.getElementById("pw1").value= '';
				document.getElementById("id").focus();
				return false;	
	        } else if ('<%= adminCode %>' != adCode ) {
				alert('입력하신 관리자코드가 잘못됐습니다.');
				document.getElementById("adCode").value = '';
				document.getElementById("adCode").focus();
				return false;	
			} else if ('<%= adminId %>' == id && '<%= adminPwd %>' == pw1 && '<%= adminCode %>') {
				var bool = confirm('정말 탈퇴하시겠습니까?');
				if(bool){
					alert('탈퇴되었습니다.');
					return true;	
				} else {
					document.getElementById("id").value = '';
					document.getElementById("pw1").value= '';
					document.getElementById("adCode").value= '';
					document.getElementById("id").focus();
					return false;
				}
			}
		}
	</script>
	
</body>
</html>

