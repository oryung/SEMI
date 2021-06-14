<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, board.model.vo.Board" %>
<%
	ArrayList<Board> list = (ArrayList) request.getAttribute("list");
	ArrayList<Board> list1 = (ArrayList) request.getAttribute("list1");
	ArrayList<Board> list2 = (ArrayList) request.getAttribute("list2");
	ArrayList<Board> list3 = (ArrayList) request.getAttribute("list3");
	ArrayList<Board> list4 = (ArrayList) request.getAttribute("list4");
	ArrayList<Board> list5 = (ArrayList) request.getAttribute("list5");
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고객센터</title>
<script src="js/popper.min.js"></script>
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap-4.3.1.js"></script>
<link href="css/bootstrap-4.3.1.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<style>
.category {
	font-size: 18px;
	color: black;
}

table {
	margin-left: 10px;
}

td {
	font-size: 20px;
	cursor: pointer;
}

span {
	color: #11BBFF;
	font-size: 20px;
	font-weight: bold;
}

td>p {
	width: 700px;
	height: 250px;
	display: none;
}

.customer {
	margin-left: 30px;
	line-height: 30px;
	font-size: 20px;
	font-weight: bold;
}

#middleCategories {
	text-align: center;
	cursor: pointer;
	font-size: 20px;
	font-weight: bold;
}

.categories {font-size: 20px; color: #11BBFF; font-weight: bold; margin-left:20px;}

.categories:hover {color: #FBA481; text-decoration: none;}

</style>
</head>
<body style="font-family: 'Nanum Gothic', sans-serif;">
	<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!상단!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
	<div id="main-container" class="container">
		<%@ include file="../common/top.jsp" %>
		
		<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!상단 끝!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
		<!-- 행 사이 빈공간-->
		<div class="row" style="margin-top: 40px;"></div>
		
		<div class="row" id="middleCategories">
			<div class="col-3"></div>
			<div onclick="location.href='부트공지사항.html';" class="col">
				공지사항</div>
			<div onclick="location.href='부트1대1 게시판2.html';"
				class="col">1:1 게시판</div>
			<div onclick="location.href='<%= request.getContextPath() %>/boardFaq.bo';" class="col">
				FAQ</div>
			<div class="col-3"></div>
		</div>


		<!-- 행 사이 빈공간-->
		<div class="row" style="margin-top: 50px;"></div>

		<div class="row">
			<div class="col-3"></div>
			<div class="col-6"
				style="border: 2px solid rgb(17, 187, 255); height: 150px;">
				<div class="row customer"
					style="margin-top: 15px; font-size: 30px; color: #11BBFF;">
					고객센터</div>
				<div class="row customer" style="margin-top: 30px;">
					운영시간 : 평일 9:00 ~ 18:00(주말 & 공휴일 제외)<br> 전화 : 1551 - 5551
				</div>
			</div>
			<div class="col-3"></div>
		</div>

		<!-- 행 사이 빈공간-->
		<div class="row" style="margin-top: 60px;"></div>

		<div class="row">
			<div class="col"></div>
			<div class="col-10">
			
				<!-- FAQ 카테고리 -->
				<ul class="nav nav-tabs"
					style="margin-left: 50px; font-size: 18px; color: #11BBFF; font-weight: bold;">
					<li class="active"><a data-toggle="tab" class="categories" href="#home">전체</a></li>
					<li><a data-toggle="tab" class="categories" href="#menu1">주문/결제</a></li>
					<li><a data-toggle="tab" class="categories" href="#menu2">배송관련</a></li>
					<li><a data-toggle="tab" class="categories" href="#menu3">취소/환불</a></li>
					<li><a data-toggle="tab" class="categories" href="#menu4">회원정보변경</a></li>
					<li><a data-toggle="tab" class="categories" href="#menu5">서비스/기타</a></li>
				</ul>
				<!-- FAQ 카테고리에 해당하는 질문들 -->
				<div class="tab-content">
					<div id="home" class="tab-pane fade in active">
						<div class="row">
							<div class="col"></div>

							<div class="col-11">
								<form>
									<table
										style="border-bottom: 1px solid #11BBFF; line-height: 50px;">
										<%
											if (list.isEmpty()) {
										%>
										<tr>
											<td>조회된 리스트가 없습니다.</td>
										</tr>
										<% } else { %>
										<% for(Board b : list) { %>
										<tr>
											<td width="950px;" class="q"><span>Q&nbsp;</span> <%= b.getBoardTitle() %> <br>
												<p><%= b.getBoardContent() %></p></td>
										</tr>
										<tr style="border-top: 1px solid #11BBFF;">
											<% } %>
										<% } %>
									</table>
								</form>
							</div>
							<div class="col"></div>
						</div>
					</div>
					<div id="menu1" class="tab-pane fade">
						<div class="row">
							<div class="col"></div>

							<div class="col-11">
								<form>
									<table
										style="border-bottom: 1px solid #11BBFF; line-height: 50px;">
										<%
											if (list.isEmpty()) {
										%>
										<tr>
											<td>조회된 리스트가 없습니다.</td>
										</tr>
										<% } else { %>
										<% for(Board b : list1) { %>
										<tr>
											<td width="950px;" class="q"><span>Q&nbsp;</span> <%= b.getBoardTitle() %> <br>
												<p><%= b.getBoardContent() %></p></td>
										</tr>
										<tr style="border-top: 1px solid #11BBFF;">
										<% } %>
										<% } %>
									</table>
								</form>
							</div>
							<div class="col"></div>
						</div>
					</div>
					<div id="menu2" class="tab-pane fade">
						<div class="row">
							<div class="col"></div>

							<div class="col-11">
								<form>
									<table
										style="border-bottom: 1px solid #11BBFF; line-height: 50px;">
										<%
											if (list.isEmpty()) {
										%>
										<tr>
											<td>조회된 리스트가 없습니다.</td>
										</tr>
										<% } else { %>
										<% for (Board b : list2) { %>
										<tr>
											<td width="950px;" class="q"><span>Q&nbsp;</span> <%= b.getBoardTitle() %> <br>
												<p><%= b.getBoardContent() %></p></td>
										</tr>
										<tr style="border-top: 1px solid #11BBFF;">
										<% } %>
										<% } %>
									</table>
								</form>
							</div>
							<div class="col"></div>
						</div>
					</div>
					<div id="menu3" class="tab-pane fade">
						<div class="row">
							<div class="col"></div>

							<div class="col-11">
								<form>
									<table
										style="border-bottom: 1px solid #11BBFF; line-height: 50px;">
										<%
											if (list.isEmpty()) {
										%>
										<tr>
											<td>조회된 리스트가 없습니다.</td>
										</tr>
										<% } else { %>
										<% for(Board b : list3) { %>
										<tr>
											<td width="950px;" class="q"><span>Q&nbsp;</span> <%= b.getBoardTitle() %> <br>
												<p><%= b.getBoardContent() %></p></td>
										</tr>
										<tr style="border-top: 1px solid #11BBFF;">
										<% } %>
										<% } %>
									</table>
								</form>
							</div>
							<div class="col"></div>
						</div>
					</div>
					<div id="menu4" class="tab-pane fade">
						<div class="row">
							<div class="col"></div>

							<div class="col-11">
								<form>
									<table
										style="border-bottom: 1px solid #11BBFF; line-height: 50px;">
										<%
											if (list.isEmpty()) {
										%>
										<tr>
											<td>조회된 리스트가 없습니다.</td>
										</tr>
										<% } else { %>
										<% for(Board b : list4) { %>
										<tr>
											<td width="950px;" class="q"><span>Q&nbsp;</span> <%= b.getBoardTitle() %> <br>
												<p><%= b.getBoardContent() %></p></td>
										</tr>
										<tr style="border-top: 1px solid #11BBFF;">
										<% } %>
										<% } %>
									</table>
								</form>
							</div>
							<div class="col"></div>
						</div>
					</div>
					<div id="menu5" class="tab-pane fade">
						<div class="row">
							<div class="col"></div>

							<div class="col-11">
								<form>
									<table
										style="border-bottom: 1px solid #11BBFF; line-height: 50px;">
										<%
											if (list.isEmpty()) {
										%>
										<tr>
											<td>조회된 리스트가 없습니다.</td>
										</tr>
										<% } else { %>
										<% for(Board b : list5) { %>
										<tr>
											<td width="950px;" class="q"><span>Q&nbsp;</span> <%= b.getBoardTitle() %> <br>
												<p><%= b.getBoardContent() %></p></td>
										</tr>
										<tr style="border-top: 1px solid #11BBFF;">
										<% } %>
										<% } %>
									</table>
								</form>
							</div>
							<div class="col"></div>
						</div>
					</div>
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
		/* 중단 카테고리 호버 */
		$(function() {
			$('#middleCategories').children().hover(function() {
				$(this).css('color', '#11BBFF');
			}, function() {
				$(this).css('color', 'black');
			});
		});
		
		$(function() {
			$('.q').click(function() {
				$(this).find('p').slideToggle();
			});
		});

	</script>
</body>
</html>
