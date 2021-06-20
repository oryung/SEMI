<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원_나의활동</title>
<script src="js/popper.min.js"></script>
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap-4.3.1.js"></script>
<link href="css/bootstrap-4.3.1.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
	<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
<style>

/*마이페이지-나의쇼핑관련스타일*/
/*th색상변경*/
.table th[scope="col"] {
	background: rgb(17, 187, 255);
	color: white;
}

/*페이지번호매기는거*/
.page-link {
  color: #11BBFF;
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
			<div onclick="location.href='<%= request.getContextPath() %>/mySettingForm.me';"
					class="col-2" style="text-align: center; cursor: pointer; font-size: 20px; font-weight: bold;">
					설정</div>
			<!-- 상단 카테고리 여백 -->
			<div class="col-3"></div>
		</div>
		
		
		<!-- 행 사이 빈공간-->
		<div class="row" style="margin-top: 40px;"></div>
		
			<!-- 댓글 내역 제목 -->
			<div class="row">
				<!-- 여백 -->
				<div class="col"></div>
				<!-- 댓글 내역 -->
				<div class="col"
					style="text-align: center;font-size: 23px; font-weight: bold; color: #11BBFF;">댓글 내역</div>
				<!-- 여백 -->
				<div class="col"></div>
			</div>
			<!-- 행 사이 빈공간-->
			<div class="row" style="margin-top: 20px;"></div>


			<!-- 주문 내역 -->
			<div class="row">
				<form>
				<table class="table" style="width: 720px; margin-left: 220px;text-align: center;">
					<thead>
						<tr>
							<th scope="col"><input type="checkbox" id="all"
									name="agree" onclick="selectAll();"></th>
							<th scope="col">댓글</th>
							<th scope="col" class="board">게시판</th>
							<th scope="col">작성일</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><input type="checkbox" class="check" name="agree" onclick="selectOne();"></td>
							<td class="reply" onclick="location.href='스토어.html';" style="cursor:pointer;">맛이나요맛이나캔디</td>
							<td>스토어</td>
							<td>2021-05-29</td>
						</tr>
						<tr>
							<td><input type="checkbox" class="check" name="agree" onclick="selectOne();"></td>
							<td class="reply" onclick="location.href='스토어.html';" style="cursor:pointer;">맛이나요맛이나캔디</td>
							<td>스토어</td>
							<td>2021-05-29</td>
						</tr>
						<tr>
						<td><input type="checkbox" class="check" name="agree" onclick="selectOne();"></td>
							<td class="reply" onclick="location.href='스토어.html';" style="cursor:pointer;">맛이나요맛이나캔디</td>
							<td>스토어</td>
							<td>2021-05-29</td>
						</tr>
						<tr>
							<td><input type="checkbox" class="check" name="agree" onclick="selectOne();"></td>
							<td class="reply" onclick="location.href='스토어.html';" style="cursor:pointer;">맛이나요맛이나캔디</td>
							<td>스토어</td>
							<td>2021-05-29</td>
						</tr>
						<tr>
							<td><input type="checkbox" class="check" name="agree" onclick="selectOne();"></td>
							<td class="reply" onclick="location.href='스토어.html';" style="cursor:pointer;">맛이나요맛이나캔디</td>
							<td>스토어</td>
							<td>2021-05-29</td>
						</tr>
						<tr>
							<td><input type="checkbox" class="check" name="agree" onclick="selectOne();"></td>
							<td class="reply" onclick="location.href='스토어.html';" style="cursor:pointer;">맛이나요맛이나캔디</td>
							<td>스토어</td>
							<td>2021-05-29</td>
						</tr>
						<tr>
							<td><input type="checkbox" class="check" name="agree" onclick="selectOne();"></td>
							<td class="reply" onclick="location.href='스토어.html';" style="cursor:pointer;">맛이나요맛이나캔디</td>
							<td>스토어</td>
							<td>2021-05-29</td>
						</tr>
						<tr>
							<td><input type="checkbox" class="check" name="agree" onclick="selectOne();"></td>
							<td class="reply" onclick="location.href='스토어.html';" style="cursor:pointer;">맛이나요맛이나캔디</td>
							<td>스토어</td>
							<td>2021-05-29</td>
						</tr>
						<tr>
							<td><input type="checkbox" class="check" name="agree" onclick="selectOne();"></td>
							<td class="reply" onclick="location.href='스토어.html';" style="cursor:pointer;">맛이나요맛이나캔디</td>
							<td>스토어</td>
							<td>2021-05-29</td>
						</tr>
						<tr>
							<td><input type="checkbox" class="check" name="agree" onclick="selectOne();"></td>
							<td class="reply" onclick="location.href='스토어.html';" style="cursor:pointer;">맛이나요맛이나캔디</td>
							<td>스토어</td>
							<td>2021-05-29</td>
						</tr>
					</tbody>
				</table>
				</form>			
			</div>
			
			<!-- 버튼 -->
			<div class="row">
				<div class="col-4"></div>
				<div class="col-4" style="margin-left: 53px;">
				<nav aria-label="Page navigation example">
					<ul class="pagination">
						<li class="page-item"><a class="page-link" href="#"
							aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
						</a></li>
						<li class="page-item"><a class="page-link" href="#">1</a></li>
						<li class="page-item"><a class="page-link" href="#">2</a></li>
						<li class="page-item"><a class="page-link" href="#">3</a></li>
						<li class="page-item"><a class="page-link" href="#">4</a></li>
						<li class="page-item"><a class="page-link" href="#">5</a></li>
						<li class="page-item"><a class="page-link" href="#"
							aria-label="Next"> <span aria-hidden="true">&raquo;</span>
						</a></li>
					</ul>
				</nav>
				</div>
				<div class="col-2"><form><button type="submit" class="button1" id="delete">삭제</button></form></div>
				<div class="col-2"></div>
			</div>
			<!-- 페이지 -->
			
			
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
	//댓글제목에 호버시 밑줄
	$(function() {
		$('.reply').hover(function() {
			$(this).css('text-decoration', 'underline');
		}, function() {
			$(this).css('text-decoration', 'none');
		});
	});
	// 삭제 버튼
	$(function(){
		$('#delete').click(function(){
			if(confirm('정말 삭제하시겠습니까?')){
				// 데이터 삭제 서블릿 + 목록 서블릿 요청 후 화면 뿌리기
			} else {
				// 옥록으로 돌아가기
			}
		});
	});	
	/* 체크박스 선택방식 메소드 */
	function selectAll() {
		var agree = document.getElementsByName("agree");
		var all = document.getElementById("all");
		
		if(document.getElementById("all").checked) {
			for(var i = 0 ; i < agree.length ; i++ ) {
				agree[i].checked = true;
			}
		} else {
			for(var i = 0 ; i < agree.length ; i++ ) {
				agree[i].checked = false;
			}
		}
	}
	
	function selectOne() {
		var agree = document.getElementsByName("agree");
		var all = document.getElementById("all");
		
		var count = 0;
			
		for(var i = 1 ; i < agree.length ; i++) {
			if(agree[i].checked) {
				count++;		
			}
		}
			
		if(count != 10)  {
			all.checked = false;
		} else {
			all.checked = true;
		}		
	}
	</script>
	
</body>
</html>
