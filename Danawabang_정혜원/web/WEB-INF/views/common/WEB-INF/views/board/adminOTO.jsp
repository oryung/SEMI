<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1대1 게시글 리스트</title>
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

		<!-- 중단 카테고리 -->	
		<%@ include file="../common/adminMiddleCategory.jsp" %>
		
		<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! 본문(1대1 게시글 리스트) !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!-->
		<div class="row">
			<div class="col">
				<div style="font-weight: bold; font-size: 25px; text-align: center; color: rgb(17, 187, 255);"
					class="">1대1 게시글 리스트</div>
			</div>
		</div>

		<!-- 행 사이 빈공간-->
		<div class="row" style="margin-top: 10px;"></div>

		<!-- 테이블  -->
		<div class="row" style="height: 580px;">
			<form>
				<table class="table" style="width: 720px; margin-left: 220px; margin-top: 10px; text-align: center;">
							<thead>
								<tr >
									<th scope="col" style="width: 100px;">글번호</th>
									<th scope="col" style="width: 600px;">제목</th>
									<th scope="col" style="width: 150px;">작성자ID</th>
									<th scope="col" style="width: 150px;">작성일</th>
								</tr>
							</thead>
							<tbody>
							<tr>
								<td>10</td>
								<td><span>주문 관련 문의 드립니다.</span><span>(1)</span></td>
								<td>healthy1</td>
								<td>2021-05-21</td>
							</tr>
							<tr>
								<td>10</td>
								<td><span>주문 관련 문의 드립니다.</span><span>(1)</span></td>
								<td>healthy1</td>
								<td>2021-05-21</td>
							</tr>
							<tr>
								<td>10</td>
								<td><span>주문 관련 문의 드립니다.</span><span>(1)</span></td>
								<td>healthy1</td>
								<td>2021-05-21</td>
							</tr>
							<tr>
								<td>10</td>
								<td><span>주문 관련 문의 드립니다.</span><span>(1)</span></td>
								<td>healthy1</td>
								<td>2021-05-21</td>
							</tr>
							<tr>
								<td>10</td>
								<td><span>주문 관련 문의 드립니다.</span><span>(1)</span></td>
								<td>healthy1</td>
								<td>2021-05-21</td>
							</tr>
							<tr>
								<td>10</td>
								<td><span>주문 관련 문의 드립니다.</span><span>(1)</span></td>
								<td>healthy1</td>
								<td>2021-05-21</td>
							</tr>
							<tr>
								<td>10</td>
								<td><span>주문 관련 문의 드립니다.</span><span>(1)</span></td>
								<td>healthy1</td>
								<td>2021-05-21</td>
							</tr>
							<tr>
								<td>10</td>
								<td><span>주문 관련 문의 드립니다.</span><span>(1)</span></td>
								<td>healthy1</td>
								<td>2021-05-21</td>
							</tr>
							<tr>
								<td>10</td>
								<td><span>주문 관련 문의 드립니다.</span><span>(1)</span></td>
								<td>healthy1</td>
								<td>2021-05-21</td>
							</tr>
							<tr>
								<td>10</td>
								<td><span>주문 관련 문의 드립니다.</span><span>(1)</span></td>
								<td>healthy1</td>
								<td>2021-05-21</td>
							</tr>
						</tbody>
				</table>
			</form>	
		</div>
		<!-- 행 사이 빈공간-->
		<div class="row" style="margin-top: 30px;"></div>
		
		<div class="row" style="height: 50px;">
			<!-- 검색창  -->
			<div class="col-3" style="left: 20%;">
				<div class="input-group mb-3">
					<input type="text" class="form-control form-control-research"
						placeholder="검색어를 입력해주세요" aria-label="Recipient's username"
						aria-describedby="button-addon2"
						style="font-size: 13px; border-color: #11BBFF;">
					<button class="btn btn-outline-secondary" type="submit"
						id="main-search" style="font-size: 13px;">검색</button>
				</div>
			</div>
			
			<!-- 버튼 -->
			<div class="col" style="left: 37%; width: 70%;">
				<!-- 활성화 버튼 -->
				<button class="button1">활성화</button>
				<!-- 삭제 버튼 -->
				<button class="button1" id="delete">삭제</button>
			</div>
		</div>

		<!-- 행 사이 빈공간-->
		<div class="row" style="margin-top: 40px;"></div>

		<!-- 페이지수 표시 -->
		<nav aria-label="Page navigation example">
			<ul class="pagination justify-content-center" style="fill: pink;">
				<li class="page-item"><a class="page-link" href="#"><span
						aria-hidden="true">&laquo;</span></a></li>
				<li class="page-item"><a class="page-link" href="#">1</a></li>
				<li class="page-item"><a class="page-link" href="#">2</a></li>
				<li class="page-item"><a class="page-link" href="#">3</a></li>
				<li class="page-item"><a class="page-link" href="#">4</a></li>
				<li class="page-item"><a class="page-link" href="#">5</a></li>

				<li class="page-item"><a class="page-link" href="#"><span
						aria-hidden="true">&raquo;</span></a></li>
			</ul>
		</nav>
		<!-- 행 사이 빈공간-->
		<div class="row" style="margin-top: 160px;"></div>

<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!하단!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
		<%@ include file="../common/bottom.jsp" %>
	</div>

	<!-- 상단 스크립트 -->
	<script>
		// 삭제 버튼
		$(function(){
			$('#delete').click(function(){
				if(prompt('정말 삭제하시겠습니까? 삭제하시려면 관리자 코드를 입력하십시오')){
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
		// 테이블 행 누르먄 긱 행에 해당하는 게시글 페이지로 이동
	</script>
	
</body>
</html>
	
