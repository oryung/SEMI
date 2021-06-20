<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>
<script src="js/popper.min.js"></script>
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap-4.3.1.js"></script>
<link href="css/bootstrap-4.3.1.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap"
	rel="stylesheet">
<style>

.logins {
	color: black;
}

.logins:hover {
	color: #11BBFF;
}

.info {
	width: 260px;
	font-size: 16px;
	margin-left: 93px;
}
</style>
</head>
<body style="font-family: 'Nanum Gothic', sans-serif;">
	<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!상단!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
	<div id="main-container" class="container">
		<%@ include file="../common/top.jsp" %>

		<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!상단 끝!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->


		<!-- 행 사이 빈공간-->
		<div class="row" style="margin-top: 40px;"></div>

		<div class="row" style="text-align: center;">
			<div class="col"></div>
			<div class="col-5">
				<div class="row">
					<div class="col">
						<div
							style="font-weight: bold; font-size: 25px; text-align: center; color: rgb(17, 187, 255);"
							class="">로그인</div>
					</div>
				</div>

				<!-- 행 사이 빈공간-->
				<div class="row" style="margin-top: 20px;"></div>


				<!-- 아이디와 비밀번호 입력 -->
				<form action="<%= request.getContextPath() %>/login.me" method="post" onsubmit="return login();">
					<input type="text" class="info form-control" name="id" id="id" placeholder="아이디"><br> <input type="password"
						class="info form-control" name="pass" id="pass" placeholder="비밀번호"><br>

					<!-- 입력오류시 나타내줄 알림 영역 -->
					<div id="check" style="color: red;">&nbsp;</div>
					<br>
					<button type="submit" class="button1">로그인</button>
				</form>

				<hr>

				<!-- 행 사이 빈공간-->
				<div class="row" style="margin-top: 25px;"></div>

				<div class="row" style="font-weight: bold; font-size: 16px;">
					<div class="col">
						<a style="text-decoration: none;" class="logins" href="<%= request.getContextPath() %>/signUpForm.me">회원가입</a>
					</div>
					<div class="col">
						<a style="text-decoration: none;" class="logins" href="#">아이디찾기</a>
					</div>
					<div class="col">
						<a style="text-decoration: none;" class="logins" href="#">비밀번호찾기</a>
					</div>
				</div>

				<!-- 행 사이 빈공간-->
				<div class="row" style="margin-top: 30px;"></div>

				<div class="row">
					<div class="col" style="color: gray; font-size: 16px;">
						SNS계정으로 간편 로그인 / 회원가입</div>
				</div>

				<!-- 행 사이 빈공간-->
				<div class="row" style="margin-top: 30px;"></div>

				<div class="row" style="">
					<div class="col"></div>
					<div class="col"></div>
					<div class="col">
						<a href=""><input type="image" style="width: 40px;"
							src="images/카카오.jpg"></a>
					</div>
					<div class="col">
						<a href=""><input type="image" style="width: 40px;"
							src="images/네이버.png"></a>
					</div>
					<div class="col"></div>
					<div class="col"></div>
				</div>
			</div>
			<div class="col"></div>
		</div>

		<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!하단!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
		<%@ include file="../common/bottom.jsp" %>
	</div>
	<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!하단 끝 !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->

	<!-- 상단 스크립트 -->
	<script>
		

		//아이디/비밀번호 입력 확인
		function login() {

			var id = document.getElementById("id").value;
			var pass = document.getElementById("pass").value;

			if (id == "" || id.length == 0 || pass == "" || pass.length == 0) {
				document.getElementById("check").innerText = "아이디/비밀번호를 입력해주세요";
				return false;
			} else {
				return true;
			}
		}
	</script>


	
</body>
</html>
