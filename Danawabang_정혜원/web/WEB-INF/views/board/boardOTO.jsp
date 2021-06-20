<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>1대1 게시판</title>
<script src="js/popper.min.js"></script>
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap-4.3.1.js"></script>
<link href="css/bootstrap-4.3.1.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
	<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
<style>


/*th색상변경*/
.table th[scope="col"] {
	background: rgb(17, 187, 255);
	color: white;
}
/*페이지번호매기는거*/
.pagination {
  display: -ms-flexbox;
  display: flex;
  padding-left: 0;
  list-style: none;
  border-radius: 0.25rem;
  color: #11BBFF;
}

.page-link{
	color: #11bbff;
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

		<!-- 본문 -->
		<div class="row">
			<div class="col">
				<div style="font-weight: bold; font-size: 25px; text-align: center; color: rgb(17, 187, 255);"
					class="">1대1 게시판</div>
			</div>
		</div>

		<!-- 행 사이 빈공간-->
		<div class="row" style="margin-top: 20px;"></div>

		<div class="row">
			<div class="col"></div>
			<div class="col"></div>
			<div class="col-8">
				<form>
					<div class="row">
					<table class="table" style="text-align: center; width: 750px;">
						<thead>
							<tr>
								<th scope="col" style="width: 80px;">글번호</th>
								<th scope="col" style="width: 500px;">제목</th>
								<th scope="col" style="width: 120px;">작성자ID</th>
								<th scope="col" style="width: 120px;">작성일</th>
							</tr>
						</thead>
						<tbody>
						<tr>
							<td>10</td>
							<td onclick="location.href='';" style="cursor:pointer;">안녕하세요 물건 주문 했는데 1주일이 지나도 오지 않아요..</td>
							<td>healthy1</td>
							<td>2021-05-21</td>
						</tr>
						<tr>
							<td>10</td>
							<td onclick="location.href='';" style="cursor:pointer;">안녕하세요 물건 주문 했는데 1주일이 지나도 오지 않아요..</td>
							<td>healthy1</td>
							<td>2021-05-21</td>
						</tr>
						<tr>
							<td>10</td>
							<td onclick="location.href='';" style="cursor:pointer;">안녕하세요 물건 주문 했는데 1주일이 지나도 오지 않아요..<span>(1)</span></td>
							<td>healthy1</td>
							<td>2021-05-21</td>
						</tr>
						<tr>
							<td>10</td>
							<td onclick="location.href='';" style="cursor:pointer;">안녕하세요 물건 주문 했는데 1주일이 지나도 오지 않아요..<span>(1)</span></td>
							<td>healthy1</td>
							<td>2021-05-21</td>
						</tr>
						<tr>
							<td>10</td>
							<td onclick="location.href='';" style="cursor:pointer;">안녕하세요 물건 주문 했는데 1주일이 지나도 오지 않아요..<span>(1)</span></td>
							<td>healthy1</td>
							<td>2021-05-21</td>
						</tr>
						<tr>
							<td>10</td>
							<td onclick="location.href='';" style="cursor:pointer;">안녕하세요 물건 주문 했는데 1주일이 지나도 오지 않아요..<span>(1)</span></td>
							<td>healthy1</td>
							<td>2021-05-21</td>
						</tr>
						<tr>
							<td>10</td>
							<td onclick="location.href='';" style="cursor:pointer;">안녕하세요 물건 주문 했는데 1주일이 지나도 오지 않아요..<span>(1)</span></td>
							<td>healthy1</td>
							<td>2021-05-21</td>
						</tr>
						<tr>
							<td>10</td>
							<td onclick="location.href='';" style="cursor:pointer;">안녕하세요 물건 주문 했는데 1주일이 지나도 오지 않아요..<span>(1)</span></td>
							<td>healthy1</td>
							<td>2021-05-21</td>
						</tr>
						<tr>
							<td>10</td>
							<td onclick="location.href='';" style="cursor:pointer;">안녕하세요 물건 주문 했는데 1주일이 지나도 오지 않아요..<span>(1)</span></td>
							<td>healthy1</td>
							<td>2021-05-21</td>
						</tr>
						<tr>
							<td>10</td>
							<td onclick="location.href='';" style="cursor:pointer;">안녕하세요 물건 주문 했는데 1주일이 지나도 오지 않아요..<span>(1)</span></td>
							<td>healthy1</td>
							<td>2021-05-21</td>
						</tr>
						</tbody>
					</table>
					</div>
				</form>
			</div>	
			<div class="col"></div>
			<div class="col"></div>
		</div>
		
	 	<!-- 행 사이 빈공간-->
		<div class="row" style="margin-top: 20px;"></div>
		
		<!-- 버튼 -->
		<div class="row" style="height: 50px;">
			<!-- 검색창  -->
			<div class="col-1"></div>
			<div class="col-3" style="margin-left: 60px;">
				<!-- 검색 아이콘  -->
				<div>
					<input type="text" class="form-control"
						style="font-size: 13px; border-color: #11BBFF; margin-left: 30px; margin-top:5px;">
				</div>
			</div>
			<div class="col-1">
				<button class="btn btn-outline-secondary" type="submit"
					id="main-search" style="font-size: 14px; margin-top:5px;">검색</button>
			</div>
			<div class="col-2"></div>
			<div class="col"><button type="button" class="button1" style="margin-left: 90px;">등록</button></div>
		</div>
		
		<!-- 행 사이 빈공간-->
		<div class="row" style="margin-top: 50px;"></div>
		
		<!-- 페이지 -->
			<div class="row">
				<div class="col"></div>
				<div class="col" style="margin-left: 53px;">
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
				<div class="col"></div>
			</div>


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
		
		//제목 좌측정렬
	 	$(function() {
			for(var i = 1; i <= 10 ; i++) {
				$('tr').eq(i).children().eq(1).css('text-align', 'left');
			}
		}); 
		
	</script>
	
	
</body>
</html>

	
