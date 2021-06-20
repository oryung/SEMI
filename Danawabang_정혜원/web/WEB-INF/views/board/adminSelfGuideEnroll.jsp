<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>셀프가이드 게시글 등록</title>
<script src="js/popper.min.js"></script>
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap-4.3.1.js"></script>
<link href="css/bootstrap-4.3.1.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">	
<style>

table{
	border: 1px solid #DEEAF4;
}

.table th[scope="col"] {
	background: rgb(17, 187, 255);
	color: white;
	width: 16%;
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
		
	<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!  본문(셀프가이드 게시글 등록) !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!-->
		<div class="row" style="padding: 10px;">
			<div class="col" style="padding: 0px;">
				<div
					style="font-weight: bold; font-size: 25px; text-align: center; color: rgb(17, 187, 255);"
					class="">셀프가이드 게시글 등록</div>
			</div>
		</div>
		
		<!-- 테이블 -->
		<div class="row" style="height: 290px;">
			<form>
            <table class="table" style="width: 720px; margin-left: 220px; margin-top: 10px; text-align: center;">
				<tbody>
				<tr>
					<th scope="col">제목</th>
					<td><input type="text" size="35px" class="form-control"></td>
					<th scope="col">카테고리</th>
					<td width="30%"><select class="form-control" name="주문상태">
							<option value="계획하기">계획하기</option>
							<option value="조명">조명</option>
							<option value="공간배치">공간배치</option>
							<option value="수납정리">수납정리</option>
							<option value="페브릭">페브릭</option>
						</select>
					</td>
				</tr>
				<tr>
					<th scope="col" id="ie">썸네일 등록</th>
					<td colspan="3"><input type="file">
						<br> % 대표로 확대이미지를 등록하면 다른 사이즈의 이미지들을 자동 생성합니다. % 이미지명은 영문,
						숫자로만 사용하시기 바랍니다.(한글, 공백, 특수문자 사용x)</td>
				</tr>
				<tr>
					<th scope="col" id="ie">상세이미지 등록</th>
					<td colspan="3"><input type='file'>
						<br> % 추가되는 이미지는 상품상세정보 내 다른 이미지 보기에 사용됩니다.</td>
				</tr>
				</tbody>
			</table>
			</form>
		</div>
		
		<!-- 행 사이 빈공간-->
		<div class="row" style="margin-top: 40px;"></div>
		
		<!-- 버튼 -->
		<div class="row" style="height: 50px;">
			<!-- 돌아가기 버튼 -->
			<div class="col"
				style="left: 18%; width: 70%;">
			<a href="게시판 관리_셀프가이드.html"><button class="button1">돌아가기</button></a>
			</div>
			<div class="col"
				style="left: 22%; width: 70%;">
			<!-- 등록 버튼 -->
				<button class="button1">등록</button>
			</div>	
		</div>
		
				<!-- 행 사이 빈공간-->
		<div class="row" style="margin-top: 160px;"></div>
			
	<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!하단!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
		<%@ include file="../common/bottom.jsp" %>
	</div>
</body>
</html>