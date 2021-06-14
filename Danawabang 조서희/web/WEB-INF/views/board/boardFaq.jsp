<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	height: 100px;
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
			<div onclick="location.href='<%= request.getContextPath() %>/boardNotice.bo';" class="col">
				공지사항</div>
			<div onclick="location.href='#';"
				class="col">1:1 게시판</div>
			<div onclick="location.href='#';" class="col">
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
										style="border-bottom: 1px solid black; line-height: 50px;">
										<tr>
											<td width="950px;" class="q"><span>Q&nbsp;</span> 주문내역은
												어떻게 확인할 수 있나요?<br>
												<p>마이페이지에서 확인가능합니다</p></td>
										</tr>
										<tr style="border-top: 1px solid black;">

											<td class="q"><span>Q&nbsp;</span> 주문내역은 어떻게 확인할 수 있나요?<br>
												<p>마이페이지에서 확인가능합니다</p></td>
										</tr>
										<tr style="border-top: 1px solid black;">

											<td class="q"><span>Q&nbsp;</span> 주문내역은 어떻게 확인할 수 있나요?<br>
												<p>마이페이지에서 확인가능합니다</p></td>
										</tr>
										<tr style="border-top: 1px solid black;">

											<td class="q"><span>Q&nbsp;</span> 주문내역은 어떻게 확인할 수 있나요?<br>
												<p>마이페이지에서 확인가능합니다</p></td>

										</tr>
										<tr style="border-top: 1px solid black;">

											<td class="q"><span>Q&nbsp;</span> 주문내역은 어떻게 확인할 수 있나요?<br>
												<p>마이페이지에서 확인가능합니다</p></td>
										</tr>
										<tr style="border-top: 1px solid black;">

											<td class="q"><span>Q&nbsp;</span> 주문내역은 어떻게 확인할 수 있나요?<br>
												<p>마이페이지에서 확인가능합니다</p></td>
										</tr>
										<tr style="border-top: 1px solid black;">

											<td class="q"><span>Q&nbsp;</span> 주문내역은 어떻게 확인할 수 있나요?<br>
												<p>마이페이지에서 확인가능합니다</p></td>
										</tr>
										<tr style="border-top: 1px solid black;">

											<td class="q"><span>Q&nbsp;</span> 주문내역은 어떻게 확인할 수 있나요?<br>
												<p>마이페이지에서 확인가능합니다</p></td>
										</tr>
										<tr style="border-top: 1px solid black;">

											<td class="q"><span>Q&nbsp;</span> 주문내역은 어떻게 확인할 수 있나요?<br>
												<p>마이페이지에서 확인가능합니다</p></td>
										</tr>
										<tr style="border-top: 1px solid black;">

											<td class="q"><span>Q&nbsp;</span> 주문내역은 어떻게 확인할 수 있나요?<br>
												<p>마이페이지에서 확인가능합니다</p></td>
										</tr>
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
										style="border-bottom: 1px solid black; line-height: 50px;">
										<tr>
											<td width="950px;" class="q"><span>Q&nbsp;</span> 주문내역은
												어떻게 확인할 수 있나요?<br>
												<p>마이페이지에서 확인가능합니다</p></td>
										</tr>
										<tr style="border-top: 1px solid black;">

											<td class="q"><span>Q&nbsp;</span> 주문내역은 어떻게 확인할 수 있나요?<br>
												<p>마이페이지에서 확인가능합니다</p></td>
										</tr>
										<tr style="border-top: 1px solid black;">

											<td class="q"><span>Q&nbsp;</span> 주문내역은 어떻게 확인할 수 있나요?<br>
												<p>마이페이지에서 확인가능합니다</p></td>
										</tr>
										<tr style="border-top: 1px solid black;">

											<td class="q"><span>Q&nbsp;</span> 주문내역은 어떻게 확인할 수 있나요?<br>
												<p>마이페이지에서 확인가능합니다</p></td>

										</tr>
										<tr style="border-top: 1px solid black;">

											<td class="q"><span>Q&nbsp;</span> 주문내역은 어떻게 확인할 수 있나요?<br>
												<p>마이페이지에서 확인가능합니다</p></td>
										</tr>
										<tr style="border-top: 1px solid black;">

											<td class="q"><span>Q&nbsp;</span> 주문내역은 어떻게 확인할 수 있나요?<br>
												<p>마이페이지에서 확인가능합니다</p></td>
										</tr>
										<tr style="border-top: 1px solid black;">

											<td class="q"><span>Q&nbsp;</span> 주문내역은 어떻게 확인할 수 있나요?<br>
												<p>마이페이지에서 확인가능합니다</p></td>
										</tr>
										<tr style="border-top: 1px solid black;">

											<td class="q"><span>Q&nbsp;</span> 주문내역은 어떻게 확인할 수 있나요?<br>
												<p>마이페이지에서 확인가능합니다</p></td>
										</tr>
										<tr style="border-top: 1px solid black;">

											<td class="q"><span>Q&nbsp;</span> 주문내역은 어떻게 확인할 수 있나요?<br>
												<p>마이페이지에서 확인가능합니다</p></td>
										</tr>
										<tr style="border-top: 1px solid black;">

											<td class="q"><span>Q&nbsp;</span> 주문내역은 어떻게 확인할 수 있나요?<br>
												<p>마이페이지에서 확인가능합니다</p></td>
										</tr>
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
										style="border-bottom: 1px solid black; line-height: 50px;">
										<tr>
											<td width="950px;" class="q"><span>Q&nbsp;</span> 배송기간은
												어느정도 걸리나요?<br>
												<p>영업일 기준 1~2일 소요됩니다.</p></td>
										</tr>
										<tr style="border-top: 1px solid black;">
											<td class="q"><span>Q&nbsp;</span> 배송기간은 어느정도 걸리나요?<br>
												<p>영업일 기준 1~2일 소요됩니다.</p></td>
										</tr>
										<tr style="border-top: 1px solid black;">
											<td class="q"><span>Q&nbsp;</span> 배송기간은 어느정도 걸리나요?<br>
												<p>영업일 기준 1~2일 소요됩니다.</p></td>
										</tr>
										<tr style="border-top: 1px solid black;">
											<td class="q"><span>Q&nbsp;</span> 배송기간은 어느정도 걸리나요?<br>
												<p>영업일 기준 1~2일 소요됩니다.</p></td>
										</tr>
										<tr style="border-top: 1px solid black;">
											<td class="q"><span>Q&nbsp;</span> 배송기간은 어느정도 걸리나요?<br>
												<p>영업일 기준 1~2일 소요됩니다.</p></td>
										</tr>
										<tr style="border-top: 1px solid black;">
											<td class="q"><span>Q&nbsp;</span> 배송기간은 어느정도 걸리나요?<br>
												<p>영업일 기준 1~2일 소요됩니다.</p></td>
										</tr>
										<tr style="border-top: 1px solid black;">
											<td class="q"><span>Q&nbsp;</span> 배송기간은 어느정도 걸리나요?<br>
												<p>영업일 기준 1~2일 소요됩니다.</p></td>
										</tr>
										<tr style="border-top: 1px solid black;">
											<td class="q"><span>Q&nbsp;</span> 배송기간은 어느정도 걸리나요?<br>
												<p>영업일 기준 1~2일 소요됩니다.</p></td>
										</tr>
										<tr style="border-top: 1px solid black;">
											<td class="q"><span>Q&nbsp;</span> 배송기간은 어느정도 걸리나요?<br>
												<p>영업일 기준 1~2일 소요됩니다.</p></td>
										</tr>
										<tr style="border-top: 1px solid black;">
											<td class="q"><span>Q&nbsp;</span> 배송기간은 어느정도 걸리나요?<br>
												<p>영업일 기준 1~2일 소요됩니다.</p></td>
										</tr>
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
										style="border-bottom: 1px solid black; line-height: 50px;">
										<tr>
											<td width="950px;" class="q"><span>Q&nbsp;</span> 구매취소는
												어떻게 하나요?<br>
												<p>마이페이지에서 확인가능합니다</p></td>
										</tr>
										<tr style="border-top: 1px solid black;">
											<td class="q"><span>Q&nbsp;</span> 구매취소는 어떻게 하나요?<br>
												<p>마이페이지에서 확인가능합니다</p></td>
										</tr>
										<tr style="border-top: 1px solid black;">
											<td class="q"><span>Q&nbsp;</span> 구매취소는 어떻게 하나요?<br>
												<p>마이페이지에서 확인가능합니다</p></td>
										</tr>
										<tr style="border-top: 1px solid black;">
											<td class="q"><span>Q&nbsp;</span> 구매취소는 어떻게 하나요?<br>
												<p>마이페이지에서 확인가능합니다</p></td>
										</tr>
										<tr style="border-top: 1px solid black;">
											<td class="q"><span>Q&nbsp;</span> 구매취소는 어떻게 하나요?<br>
												<p>마이페이지에서 확인가능합니다</p></td>
										</tr>
										<tr style="border-top: 1px solid black;">
											<td class="q"><span>Q&nbsp;</span> 구매취소는 어떻게 하나요?<br>
												<p>마이페이지에서 확인가능합니다</p></td>
										</tr>
										<tr style="border-top: 1px solid black;">
											<td class="q"><span>Q&nbsp;</span> 구매취소는 어떻게 하나요?<br>
												<p>마이페이지에서 확인가능합니다</p></td>
										</tr>
										<tr style="border-top: 1px solid black;">
											<td class="q"><span>Q&nbsp;</span> 구매취소는 어떻게 하나요?<br>
												<p>마이페이지에서 확인가능합니다</p></td>
										</tr>
										<tr style="border-top: 1px solid black;">
											<td class="q"><span>Q&nbsp;</span> 구매취소는 어떻게 하나요?<br>
												<p>마이페이지에서 확인가능합니다</p></td>
										</tr>
										<tr style="border-top: 1px solid black;">
											<td class="q"><span>Q&nbsp;</span> 구매취소는 어떻게 하나요?<br>
												<p>마이페이지에서 확인가능합니다</p></td>
										</tr>

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
										style="border-bottom: 1px solid black; line-height: 50px;">
										<tr>
											<td width="950px;" class="q"><span>Q&nbsp;</span> 비밀번호를
												바꾸고 싶어요<br>
												<p>마이페이지에서 변경가능합니다</p></td>
										</tr>
										<tr style="border-top: 1px solid black;">
											<td class="q"><span>Q&nbsp;</span> 비밀번호를 바꾸고 싶어요<br>
												<p>마이페이지에서 변경가능합니다</p></td>
										</tr>
										<tr style="border-top: 1px solid black;">
											<td class="q"><span>Q&nbsp;</span> 비밀번호를 바꾸고 싶어요<br>
												<p>마이페이지에서 변경가능합니다</p></td>
										</tr>
										<tr style="border-top: 1px solid black;">
											<td class="q"><span>Q&nbsp;</span> 비밀번호를 바꾸고 싶어요<br>
												<p>마이페이지에서 변경가능합니다</p></td>
										</tr>
										<tr style="border-top: 1px solid black;">
											<td class="q"><span>Q&nbsp;</span> 비밀번호를 바꾸고 싶어요<br>
												<p>마이페이지에서 변경가능합니다</p></td>
										</tr>
										<tr style="border-top: 1px solid black;">
											<td class="q"><span>Q&nbsp;</span> 비밀번호를 바꾸고 싶어요<br>
												<p>마이페이지에서 변경가능합니다</p></td>
										</tr>
										<tr style="border-top: 1px solid black;">
											<td class="q"><span>Q&nbsp;</span> 비밀번호를 바꾸고 싶어요<br>
												<p>마이페이지에서 변경가능합니다</p></td>
										</tr>
										<tr style="border-top: 1px solid black;">
											<td class="q"><span>Q&nbsp;</span> 비밀번호를 바꾸고 싶어요<br>
												<p>마이페이지에서 변경가능합니다</p></td>
										</tr>
										<tr style="border-top: 1px solid black;">
											<td class="q"><span>Q&nbsp;</span> 비밀번호를 바꾸고 싶어요<br>
												<p>마이페이지에서 변경가능합니다</p></td>
										</tr>
										<tr style="border-top: 1px solid black;">
											<td class="q"><span>Q&nbsp;</span> 비밀번호를 바꾸고 싶어요<br>
												<p>마이페이지에서 변경가능합니다</p></td>
										</tr>

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
										style="border-bottom: 1px solid black; line-height: 50px;">
										<tr>
											<td width="950px;" class="q"><span>Q&nbsp;</span> 서비스/기타
												질문<br>
												<p>마이페이지에서 확인가능합니다</p></td>
										</tr>
										<tr style="border-top: 1px solid black;">

											<td class="q"><span>Q&nbsp;</span> 서비스/기타 질문<br>
												<p>마이페이지에서 확인가능합니다</p></td>
										</tr>
										<tr style="border-top: 1px solid black;">

											<td class="q"><span>Q&nbsp;</span> 서비스/기타 질문<br>
												<p>마이페이지에서 확인가능합니다</p></td>
										</tr>
										<tr style="border-top: 1px solid black;">

											<td class="q"><span>Q&nbsp;</span> 서비스/기타 질문<br>
												<p>마이페이지에서 확인가능합니다</p></td>
										</tr>
										<tr style="border-top: 1px solid black;">

											<td class="q"><span>Q&nbsp;</span> 서비스/기타 질문<br>
												<p>마이페이지에서 확인가능합니다</p></td>
										</tr>
										<tr style="border-top: 1px solid black;">

											<td class="q"><span>Q&nbsp;</span> 서비스/기타 질문<br>
												<p>마이페이지에서 확인가능합니다</p></td>
										</tr>
										<tr style="border-top: 1px solid black;">

											<td class="q"><span>Q&nbsp;</span> 서비스/기타 질문<br>
												<p>마이페이지에서 확인가능합니다</p></td>
										</tr>
										<tr style="border-top: 1px solid black;">

											<td class="q"><span>Q&nbsp;</span> 서비스/기타 질문<br>
												<p>마이페이지에서 확인가능합니다</p></td>
										</tr>
										<tr style="border-top: 1px solid black;">

											<td class="q"><span>Q&nbsp;</span> 서비스/기타 질문<br>
												<p>마이페이지에서 확인가능합니다</p></td>
										</tr>
										<tr style="border-top: 1px solid black;">

											<td class="q"><span>Q&nbsp;</span> 서비스/기타 질문<br>
												<p>마이페이지에서 확인가능합니다</p></td>
										</tr>

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
			<div class="col-1" onclick="location.href='회사소개.html';"
				style="color: black; line-height: 20px; font-size: 13px; font-weight: bold; cursor: pointer;">회사소개</div>
			<div class="col-1" onclick="location.href='이용약관.html';"
				style="color: black; line-height: 20px; font-size: 13px; font-weight: bold; cursor: pointer;">이용약관</div>
			<div class="col-2" onclick="location.href='개인정보처리방침.html';"
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
	</div>	
	<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!하단 끝 !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
	<!-- 상단 스크립트 -->
	<script>
		/* 중단 카테도리 호버 */
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
