<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="member.model.vo.Member"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자_주문관리</title>
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

		<!-- 중단 카테고리(상품관리페이지) -->	
		<%@ include file="../common/adminMiddleCategory.jsp" %>	
		<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! 본문(주문 리스트) !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!-->
		<div class="row" style="padding: 10px;">
			<div class="col" style="padding: 0px;">
				<div
					style="font-weight: bold; font-size: 25px; text-align: center; color: rgb(17, 187, 255);"
					class="">주문 리스트</div>
			</div>
		</div>
		
		<!-- 테이블 -->
		<div class="row" style="height: 580px;">
			<form>
            <table class="table" style="width: 720px; margin-left: 220px; margin-top: 10px; text-align: center;">
				<thead>
					<tr>
						<th scope="col"><input type="checkbox" id="all" name="agree" onclick="selectAll();"></th>
						<th scope="col">주문번호</th>
						<th scope="col">주문일자</th>
						<th scope="col">구매자ID</th>
						<th scope="col">구매자명</th>
						<th scope="col">주문상태</th>
						<th scope="col">상세보기</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th scope="row"><input type="checkbox" class="check" name="agree" onclick="selectOne();"></th>
						<td>10101010</td>
						<td>2021-05-19</td>
						<td>healthy1</td>
						<td>강건강</td>
						<td>결제완료</td>
						<td onclick="location.href='주문 관리_상세 정보.html';" style="cursor:pointer;"><i class="bi bi-search"></i></td>
					</tr>
					<tr>
						<th scope="row"><input type="checkbox" class="check" name="agree" onclick="selectOne();"></th>
						<td>9999999</td>
						<td>2021-05-19</td>
						<td>healthy1</td>
						<td>강건강</td>
						<td>배송 완료</td>
						<td onclick="location.href='주문 관리_상세 정보.html';" style="cursor:pointer;"><i class="bi bi-search"></i></td>
					</tr>
					<tr>
						<th scope="row"><input type="checkbox" class="check" name="agree" onclick="selectOne();"></th>
						<td>8888888</td>
						<td>2021-05-19</td>
						<td>healthy1</td>
						<td>강건강</td>
						<td>결제완료</td>
						<td onclick="location.href='주문 관리_상세 정보.html';" style="cursor:pointer;"><i class="bi bi-search"></i></td>
					</tr>
					<tr>
						<th scope="row"><input type="checkbox" class="check" name="agree" onclick="selectOne();"></th>
						<td>7777777</td>
						<td>2021-05-19</td>
						<td>healthy1</td>
						<td>강건강</td>
						<td>결제완료</td>
						<td onclick="location.href='주문 관리_상세 정보.html';" style="cursor:pointer;"><i class="bi bi-search"></i></td>
					</tr>
					<tr>
						<th scope="row"><input type="checkbox" class="check" name="agree" onclick="selectOne();"></th>
						<td>6666666</td>
						<td>2021-05-19</td>
						<td>healthy1</td>
						<td>강건강</td>
						<td>결제완료</td>
						<td onclick="location.href='주문 관리_상세 정보.html';" style="cursor:pointer;"><i class="bi bi-search"></i></td>
					</tr>
					<tr>
						<th scope="row"><input type="checkbox" class="check" name="agree" onclick="selectOne();"></th>
						<td>5555555</td>
						<td>2021-05-19</td>
						<td>healthy1</td>
						<td>강건강</td>
						<td>결제완료</td>
						<td onclick="location.href='주문 관리_상세 정보.html';" style="cursor:pointer;"><i class="bi bi-search"></i></td>
					</tr>
					<tr>
						<th scope="row"><input type="checkbox" class="check" name="agree" onclick="selectOne();"></th>
						<td>4444444</td>
						<td>2021-05-19</td>
						<td>healthy1</td>
						<td>강건강</td>
						<td>결제완료</td>
						<td onclick="location.href='주문 관리_상세 정보.html';" style="cursor:pointer;"><i class="bi bi-search"></i></td>
					</tr>
					<tr>
						<th scope="row"><input type="checkbox" class="check" name="agree" onclick="selectOne();"></th>
						<td>3333333</td>
						<td>2021-05-19</td>
						<td>healthy1</td>
						<td>강건강</td>
						<td>결제완료</td>
						<td onclick="location.href='주문 관리_상세 정보.html';" style="cursor:pointer;"><i class="bi bi-search"></i></td>
					</tr>
					<tr>
						<th scope="row"><input type="checkbox" class="check" name="agree" onclick="selectOne();"></th>
						<td>2222222</td>
						<td>2021-05-19</td>
						<td>healthy1</td>
						<td>강건강</td>
						<td>결제완료</td>
						<td onclick="location.href='주문 관리_상세 정보.html';" style="cursor:pointer;"><i class="bi bi-search"></i></td>
					</tr>
					<tr>
						<th scope="row"><input type="checkbox" class="check" name="agree" onclick="selectOne();"></th>
						<td>1111111</td>
						<td>2021-05-19</td>
						<td>healthy1</td>
						<td>강건강</td>
						<td>결제완료</td>
						<td onclick="location.href='주문 관리_상세 정보.html';" style="cursor:pointer;"><i class="bi bi-search"></i></td>
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
			<div class="col" style="left: 30%; width: 70%;">
				<select class="form-control" name="주문상태" style="width: 160px;">
					<option selected disabled>-- 상태 변경 --</option>
					<option value="교환 요청">교환 요청</option>
					<option value="교환 반려">교환 반려</option>
					<option value="반품 요청">반품 요청</option>
					<option value="반품 반려">반품 반려</option>
					<option value="결제 완료">결제 완료</option>
					<option value="주문 완료">주문 완료</option>
					<option value="주문 취소">주문 취소</option>
					<option value="배송 중">배송 중</option>
					<option value="배송 완료">배송 완료</option>
					<option value="구매 확정">구매 확정</option>
				</select>
			</div>
			<div class="col" style="left: 9%; width: 70%;">
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
	</script>
	
</body>
</html>