<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="java.util.ArrayList, board.model.vo.Reply, board.model.vo.PageInfo"%>

<%
	ArrayList<Reply> list = (ArrayList<Reply>) request.getAttribute("list");
	PageInfo pi = (PageInfo) request.getAttribute("pi");
	
	int listCount = pi.getListCount();
	int currentPage = pi.getCurrentPage();
	int maxPage = pi.getMaxPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();
	int replyCount = 0;
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원_나의활동</title>
<script src="js/popper.min.js"></script>
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap-4.3.1.js"></script>
<link href="css/bootstrap-4.3.1.css" rel="stylesheet">
<link rel="stylesheet"	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap"	rel="stylesheet">
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
.bi-search {
	color: #11BBFF;
}

</style>
</head>
<body style="font-family: 'Nanum Gothic', sans-serif;">
	<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!상단!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
	<div id="main-container" class="container">
		<%@ include file="../common/top.jsp"%>

		<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!상단 끝!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->

		<!--!!!!!!!!!!!!!!!!!!!!!!!!! 마이 페이지 카테고리 !!!!!!!!!!!!!!!!!!!!!!!!!!-->
		<!-- 중단 카테고리 -->
		<div class="row" id="middleCategories">
			<!-- 중단 카테고리 여백 -->
			<div class="col-3"></div>
			<!-- 나의쇼핑, 나의활동, 설정 중단카테고리 -->
			<div onclick="location.href='마이페이지-나의 쇼핑.html';" class="col-2"
				style="text-align: center; cursor: pointer; font-size: 20px; font-weight: bold; padding-right: 10px;">
				나의 쇼핑</div>
			<div
				onclick="location.href='<%=request.getContextPath()%>/myReply.bo';"
				class="col-2"
				style="text-align: center; cursor: pointer; font-size: 20px; font-weight: bold; padding-right: 20px;">
				나의 활동</div>
			<div
				onclick="location.href='<%=request.getContextPath()%>/mySettingForm.me';"
				class="col-2"
				style="text-align: center; cursor: pointer; font-size: 20px; font-weight: bold;">
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
				style="text-align: center; font-size: 23px; font-weight: bold; color: #11BBFF;">댓글
				내역</div>
			<!-- 여백 -->
			<div class="col"></div>
		</div>

		<!-- 행 사이 빈공간-->
		<div class="row" style="margin-top: 20px;"></div>

		<form action="deleteReplys.bo" onsubmit="return selectDeleteReply();">
			<!-- 주문 내역 -->
			<div class="row">
				<table class="table"
					style="width: 720px; margin-left: 220px; text-align: center;">
					<thead>
						<tr>
							<th scope="col" style="width: 50px;"><input type="checkbox"
								id="all" onclick="selectAll();"></th>
							<th scope="col" style="width: 470px;">댓글</th>
							<th scope="col" style="width: 100px;" class="board">게시판</th>
							<th scope="col" style="width: 120px;">작성일</th>
						</tr>
					</thead>
					<tbody>
						<% if (!list.isEmpty()) { %>
						<% 		for (Reply r : list) {	%>
						<tr>
							<td><input type="checkbox" class="check" name="check" onclick="selectOne();"></td>
							<td class="reply" style="text-align: left;"><%=r.getReplyContent()%></td>
							<!-- 선택한 댓글 id -->
							<input type="hidden" name="rId" value="<%=r.getReplyId()%>">
							<td style="vertical-align: middle;"><%=r.getBoardCategoryName()%></td>
							<td style="vertical-align: middle;"><%=r.getEnrollDate()%></td>
						</tr>
							<% replyCount++;	%>
							<%}	%>
						<%} else {	%>
						<tr>
							<td colspan=4>댓글 작성 내역이 없습니다.</td>
						</tr>
						<% } %>
					</tbody>
				</table>
			</div>

			<!-- 체크된 댓글의 아이디 저장 -->
			<input type="hidden" id="checkReplys" name="checkReplys" value="">

			<!-- 행 사이 빈공간-->
			<div class="row" style="margin-top: 30px;"></div>

			<div class="row">
				<div class="col-3" style="left: 20%;"></div>
				<!-- 버튼 -->
				<div class="col" style="left: 37%; width: 70%;">
					<!-- 댓글 삭제 버튼 -->
					<button type="submit" class="button1" style="margin-left: 100px;">삭제하기</button>
				</div>
			</div>

		</form>


		<!-- 행 사이 빈공간-->
		<div class="row" style="margin-top: 40px;"></div>

		<!-- 페이지수 표시 -->
		<nav aria-label="Page navigation example"
			class="pagination justify-content-center page-item">
			<!-- 맨 처음으로 -->
			<button class="page-link"
				onclick="location.href='<%=request.getContextPath()%>/myReply.bo?currentPage=1'"
				id="bebeforeBtn">&lt;&lt;</button>
			<!-- 이전 페이지로 -->
			<button class="page-link"
				onclick="location.href='<%=request.getContextPath()%>/myReply.bo?currentPage=<%=currentPage - 1%>'"
				id="beforeBtn">&lt;</button>
			<script>
				if (<%=currentPage%> <= 1) {
					$('#bebeforeBtn').attr('disabled', 'true');
					$('#beforeBtn').attr('disabled', 'true');
				}
			</script>

			<!-- 숫자 버튼 -->
			<% for (int p = startPage; p <= endPage; p++) {	%>
				<% if (p == currentPage) {	%>
					<button class="page-link" id="chosen" disabled><%=p%></button>
				<% } else { %>
			<button class="page-link" id="numBtn"
				onclick="location.href='<%=request.getContextPath()%>/myReply.bo?currentPage=<%=p%>'"><%=p%></button>
				<%}	%>
			<%}%>

			<!-- 다음 페이지로 -->
			<button class="page-link" onclick="location.href='<%=request.getContextPath()%>/myReply.bo?currentPage=<%=currentPage + 1%>'"
				id="afterBtn">&gt;</button>
			<!-- 맨 끝으로 -->
			<button class="page-link" onclick="location.href='<%=request.getContextPath()%>/myReply.bo?currentPage=<%=maxPage%>'"
				id="afafterBtn">&gt;&gt;</button>
			<script>
				if (<%=currentPage%> >= <%=maxPage%>) {
					$('#afafterBtn').prop('disabled', true);
					$('#afterBtn').prop('disabled', true);
				}
			</script>
		</nav>

		<!-- 행 사이 빈공간-->
		<div class="row" style="margin-top: 40px;"></div>
		<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!하단!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
		<%@ include file="../common/bottom.jsp"%>
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

		/* 체크박스 선택방식 메소드 */
		function selectAll() {
			var check = document.getElementsByName("check");
			var all = document.getElementById("all");

			if (document.getElementById("all").checked) {
				for (var i = 0; i < check.length; i++) {
					check[i].checked = true;
				}
			} else {
				for (var i = 0; i < check.length; i++) {
					check[i].checked = false;
				}
			}
		}

		function selectOne() {
			var check = document.getElementsByName("check");
			var all = document.getElementById("all");

			var count = 0;

			for (var i = 1; i < check.length; i++) {
				if (check[i].checked) {
					count++;
				}
			}

			if (count != 10) {
				all.checked = false;
			} else {
				all.checked = true;
			}
		}

		// 댓글 삭제하기
		function selectDeleteReply() {
			var checkList = document.getElementsByName('check');
			var checkReplyId = '';

			// 체크박스 선택된 댓글의 댓글아이디  저장하기 
			for (var i = 0; i <	<%=replyCount%>	; i++) {
				if (checkList[i].checked) {
					checkReplyId += checkList[i].parentNode.nextSibling.nextSibling.nextSibling.nextSibling.nextSibling.nextSibling.value + ",";
				}
			}

			document.getElementById('checkReplys').value = checkReplyId;

			if (checkReplyId == '' || checkReplyId.length == 0) {
				alert("댓글을 먼저 체크해주세요");
				return false;
			}

			/* 	var result = window.confirm("정말 삭제하시겠습니까?"); */

			if (window.confirm("정말 삭제하시겠습니까?")) {
				alert("삭제 완료했습니다.");
				return true;
			} else {
				return false;
			}
		}
	</script>

</body>
</html>
