<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1대1 게시판 글쓰기</title>
<script src="js/popper.min.js"></script>
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap-4.3.1.js"></script>
<link href="css/bootstrap-4.3.1.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap"
	rel="stylesheet">
<style>


table {
	border: 1px solid #DEEAF4;
}

.table th[scope="col"] {
	background: rgb(17, 187, 255);
	color: white;
	width: 60px;
}



#middleCategories {
	text-align: center;
	cursor: pointer;
	font-size: 20px;
	font-weight: bold;
}
</style>
</head>
<body style="font-family: 'Nanum Gothic', sans-serif;">
	<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!상단!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
	<div id="main-container" class="container">
		<%@ include file="../common/top.jsp" %>

		<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!상단 끝!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->


		<!-- 고객센터 카테고리 -->
		<div class="row" id="middleCategories">
			<div class="col-3"></div>
			<div onclick="location.href='<%= request.getContextPath() %>/boardNotice.bo';" class="col">공지사항</div>
			<div onclick="location.href='#';" class="col">1:1 게시판</div>
			<div onclick="location.href='<%= request.getContextPath() %>/boardFaq.bo';" class="col">FAQ</div>
			<div class="col-3"></div>
		</div>

		<!-- 행 사이 빈공간-->
		<div class="row" style="margin-top: 40px;"></div>

		<!------ 본문 -------->
		<!-- 선택된 카테고리 -->
		<div class="row">
			<div class="col">
				<div style="font-weight: bold; font-size: 25px; text-align: center; color: rgb(17, 187, 255);"
					class="">1:1 문의 게시판</div>
			</div>
		</div>

		<!-- 행 사이 빈공간-->
		<div class="row" style="margin-top: 20px;"></div>

		<form onsubmit="return enroll();">

			<div class="row">
				<table class="table"
					style="margin-left: 230px; width: 720px; text-align: center;">
					<tbody>
						<tr>
							<th scope="col">제목</th>
							<td><input type="text" id="title" size="35px" class="form-control"></td>
							<th scope="col">사진첨부</th>
							<td><input type="file" style="margin-top: 7px; width: 250px;"></td>
						</tr>
						<tr>
							<th scope="col" id="ie">내용</th>
							<td colspan="3"><textarea class="form-control" id="content"
									style="height: 500px; resize: none;"></textarea></td>
						</tr>
					</tbody>
				</table>
			</div>

			<br>
			<!-- 버튼 -->
			<div class='row'>
				<div class="col-3"></div>
				<div class="col-1" style="margin-left: 25px;">
					<button type="button" class="button1" onclick="history.back(); return false;">돌아가기</button>
				</div>
				<div class='col-4'></div>
				<div class='col'>
					<button type="submit" class="button1">등록</button>
				</div>
				<div class="col"></div>
			</div>

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

		/* 내용 누락 확인 부분 */
		function enroll() {
			var title = document.getElementById("title").value;
			var content = document.getElementById("content").value;

			if (title == '' || title.length == 0) {
				alert("제목을 입력해주세요.");
				document.getElementById("title").focus();
				return false;
			} else if (content == '' || content.length == 0) {
				alert("내용을 입력해주세요.");
				document.getElementById("content").focus();
				return false;
			} else {
				alert("문의글을 등록하였습니다");
				return true;
			}
		}
	</script>

	
</body>
</html>
