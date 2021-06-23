<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="member.model.vo.Member" %>
<%
	String userId = ((Member)request.getAttribute("member")).getId();
	String userPwd = ((Member)request.getAttribute("member")).getPwd();
	
	System.out.println(userId);
	System.out.println(userPwd);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원_탈퇴</title>
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
		
		<!-- 회원탈퇴 제목 -->
			<div class="row">
				<!-- 여백 -->
				<div class="col"></div>
				<!-- 회원탈퇴 -->
				<div class="col"
					style="text-align: center; font-size: 25px; font-weight: bold; color: #11BBFF;">회원탈퇴</div>
				<!-- 여백 -->
				<div class="col"></div>
			</div>
			<!-- 행 사이 빈공간-->
			<div class="row" style="margin-top: 10px;"></div>	
		
		<!-- 안내 문구 -->
		<div class="row">
			<div class="col"></div>
			<div class="col" style="text-align:center; font-size:13px;">회원 탈퇴를 위해<br>아래 정보를 한 번 더 기입해주세요</div>
			<div class="col"></div>
		</div>
		<!-- 행 사이 빈공간-->
			<div class="row" style="margin-top: 20px;"></div>
		
		
		
		
			<!-- 정보기입 -->
			<form action="<%= request.getContextPath() %>/delete.me" id ="myForm" method="post" onsubmit="return deleteCheck();">
			<div class="row">
				<!-- 여백 -->
				<div class="col-4"></div>
				<!-- 기입칸-->
				<div class="col-5"
					style="font-size: 18px; font-weight: bold;">
					
					<label class="form-label">아이디</label><br>
					<input class="form-control" type="text" id="id" name="id" placeholder="아이디"
						style="color: rgb(94, 94, 94); font-size: 14px; line-height: 200%; width: 70%;"><br>
					<label class="form-label">비밀번호</label><br>
					<input class="form-control" type="password" id="pwd" name="pwd" placeholder="비밀번호"
						style="color: rgb(94, 94, 94); font-size: 14px; line-height: 200%; width: 70%;"><br>
						<button type="button" class="button1" onclick="location.href='<%= request.getContextPath() %>/mySettingForm.me';" style="width: 100px; margin-left:20px;">돌아가기</button>
						<button type="submit" class="button1" id="withdraw" style="width: 100px; margin-left:60px;">탈퇴하기</button>					
					
				</div>
				<div class="col-3"></div>
			</div>
			<!-- 행 사이 빈공간-->
			<div class="row" style="margin-top: 20px;"></div>
			</form>

			
		
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
		// 탈퇴 버튼
		<%-- $(function(){
			var id = $('#id').val();
			var pwd = $('#pwd').val();
			
			console.log(id);
			console.log(pwd);
			console.log('<%= userId %>');
			console.log('<%= userPwd %>');
			
			
			$('#withdraw').on('click', function(){
				if('<%=userId%>' == id && '<%=userPwd%>' == pwd){
					var bool = confirm('정말 탈퇴하시겠습니까?');
					
					if(bool){
						$('#myForm').attr('action', '<%=request.getContextPath()%>/delete.me');
						$('#myForm').submit();
					}
				} else {
					alert('입력하신 아이디와 비밀번호가 잘못됐습니다.');
				}
		}); --%>

		
		function deleteCheck() {

			var id = document.getElementById("id").value;
			var pwd = document.getElementById("pwd").value;
			 
			if (id == '' || id.length == 0) {
		            alert('아이디를 입력해주세요.');
		             document.getElementById('id').focus();
		             return false;
		    } else if (pwd == '' || pwd.length == 0) {
		             alert('비밀번호를 입력해주세요.');
		             document.getElementById('pwd').focus();
		             return false;
	        } else if ('<%= userId %>' != id | '<%= userPwd %>' != pwd) {
				alert('입력하신 아이디와 비밀번호가 잘못됐습니다.');
				document.getElementById("id").value = '';
				document.getElementById("pwd").value= '';
				document.getElementById("id").focus();
				return false;	
			} else if ('<%= userId %>' == id && '<%= userPwd %>' == pwd) {
				var bool = confirm('정말 탈퇴하시겠습니까?');
				if(bool){
					alert('탈퇴되었습니다.');
					return true;	
				} else {
					document.getElementById("id").value = '';
					document.getElementById("pwd").value= '';
					document.getElementById("id").focus();
					return false;
				}
			}
	}

	</script>
	
</body>
</html>
