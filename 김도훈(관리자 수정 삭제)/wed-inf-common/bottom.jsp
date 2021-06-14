<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!하단!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
		<!-- 행 사이 빈공간-->
		<div class="row" style="margin-top: 40px;"></div>

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
			<div class="col-1" onclick="location.href='<%= request.getContextPath() %>/introduction.me';"
				style="color: black; line-height: 20px; font-size: 13px; font-weight: bold; cursor: pointer;">회사소개</div>
			<div class="col-1" onclick="location.href='<%= request.getContextPath() %>/accessTerms.me';"
				style="color: black; line-height: 20px; font-size: 13px; font-weight: bold; cursor: pointer;">이용약관</div>
			<div class="col-2" onclick="location.href='<%= request.getContextPath() %>/privacyPolicy.me';"
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
	<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!하단 끝 !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
</body>
</html>