<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1대1 게시판 내용</title>
<script src="js/popper.min.js"></script>
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap-4.3.1.js"></script>
<link href="css/bootstrap-4.3.1.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
<style>


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
		
		<div class="row">
			<div class="col">
				<div style="font-weight: bold; font-size: 25px; text-align: center; color: rgb(17, 187, 255);"
					class="">1:1 문의 게시판</div>
			</div>
		</div>

		<!-- 행 사이 빈공간-->
		<div class="row" style="margin-top: 20px;"></div>
	
		<!-- 가이드 작성 내용-->
		<div class="row">
			<div class="col-1"></div>
			<div class="col-8" style=" font-size: 30px; font-weight: bold;">물건이 1주일 넘게 안와요..	</div>
			<div class="col-3"></div>
		</div>
		<div class="row">
			<div class="col-1"></div>
			<div class="col-3" style=" font-size: 17px; font-weight: bold;">작성자 : 아무개</div>
			<div class="col-8"></div>
		</div>
		<div class="row">
			<div class="col-1"></div>
			<div class="col-3" style=" font-size: 17px; font-weight: bold;">작성일자 : 2021/05/21</div>
			<div class="col-8"></div>
		</div>
		<div class="row">
			<div class="col-1"></div>
			<div class="col-9">
				<div style="margin-top: 10px;">
					<br>
					<span> 주문한지가 벌써 1주일이 넘었는데 물건이 오지를 않습니다. 배송확인 좀 해주시고 아직 안보내셨다면 구매 취소 하고 싶어요. 
					제 물건 어떤 상황인지 알려주세요
					</span>
					<br>
				</div>
			</div>
			<div class="col-2"></div>
		</div>

		<!-- 행 사이 빈공간-->
		<div class="row" style="margin-top: 60px;"></div>

		<!-- 댓글 -->
		<div class="row">
			<div class="col"></div>
			<div class="col-10">
				<span style="font-weight: bold; font-size: 18px;">댓글</span>
				<div style="border-top: 1px solid lightgray; border-bottom: 1px solid lightgray; width: 900px; height: 100px;">
					<div class="row" style="margin: 5px;">
						<div class="col">
							<span style="font-weight: bold">운영자</span><span>&nbsp;&nbsp;2021-05-20</span><br>
							<span>배송이 밀려 2일후에 받아보실 수 있습니다.</span>
						</div>
					</div>
				</div>
			</div>
			<div class="col"></div>
		</div>
		
		<br>

		<div class="row">
			<div class="col"></div>
			<div class="col-10">
				<div class="row">
					<div class="col-10" style="margin-left:10px;">
					<textarea rows="3" cols="107" class="form-control" style="resize: none; border-color: lightgray;" placeholder="댓글을 입력하세요."></textarea>
					</div>
					<div class="col">
						<button type="button" class="button1" style="margin-top: 20px;">댓글달기</button>
					</div>
				</div>
			</div>
			<div class="col"></div>
		</div>
		
		<!-- 행 사이 빈공간-->
		<div class="row" style="margin-top: 40px;"></div>

		<!-- 버튼 -->
		<form>
			<div class='row'>
				<div class="col"></div>
				<div class='col'>
					<button type="button" class="button1" onclick="history.back(); return false;">돌아가기</button>
				</div>
				<div class='col-5'></div>
				<div class='col'>
					<button type="button" class="button1" onclick="updateContent();">수정</button>					
				</div>
				<div class='col'>
					<button type="button" style="margin-left: 50px;"class="button1" onclick="deleteContent();">삭제</button>
				</div>
				<div class='col'></div>
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
		
		function deleteContent() {
			var result = window.confirm("문의글을 삭제하시겠습니까?");
			/* 삭제코드 쓰기 */
		}

		function updateContent() {
			var result = window.confirm("문의글을 수정하시겠습니까?");
			/* 수정코드 쓰기 */
		}
	</script>
	
	
</body>
</html>

