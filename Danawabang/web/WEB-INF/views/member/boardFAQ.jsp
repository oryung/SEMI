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
/*상단 관련 스타일*/
/*검색창*/
.btn-outline-secondary {
	color: #fff;
	border-color: #11BBFF;
	background-color: #11BBFF;
	font-weight: bold;
}

.btn-outline-secondary:hover {
	color: #fff;
	background-color: #FBA481;
	border-color: #FBA481;
}

.btn-outline-secondary:focus, .btn-outline-secondary.focus {
	box-shadow: 0 0 0 0 rgba(251, 164, 129, 0);
}

.btn-outline-secondary:not (:disabled ):not (.disabled ):active,
	.btn-outline-secondary:not (:disabled ):not (.disabled ).active, .show>.btn-outline-secondary.dropdown-toggle
	{
	color: #fff;
	background-color: #11BBFF;
	border-color: #11BBFF;
}

.btn-outline-secondary:not (:disabled ):not (.disabled ):active:focus,
	.btn-outline-secondary:not (:disabled ):not (.disabled ).active:focus,
	.show>.btn-outline-secondary.dropdown-toggle:focus {
	box-shadow: 0 0 0 0 rgba(251, 164, 129, 0);
}
/*아이콘 색변경*/
.i-plain {
	color: #11BBFF;
}

.i-plain:hover {
	color: #FBA481;
}
/*메뉴버튼*/
.dropdown-menu {
	position: absolute;
	top: 100%;
	left: 0;
	z-index: 1000;
	display: none;
	float: left;
	min-width: 250px;
	padding: 0;
	margin: 0;
	font-size: 18px;
	color: black;
	text-align: left;
	list-style: none;
	background-color: #fff;
	background-clip: padding-box;
	border: 2px solid rgba(17, 187, 255, 1);
	border-radius: 0.25rem;
}
.dropdown-item:hover {
	color: #11BBFF;
}

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
		<!-- 1행 -->
		<div class="row">
			<!-- 상단 광고 -->
			<div class="col-12" id="top-bar" onclick="location.href='프로모션.html';"
				style="background: #11BBFF; text-align: center; cursor: pointer; line-height: 30px; font-size: 14px; font-weight: bold; color: white;">
				더운 여름을 시원하게! 여름 맞이 프로모션으로 함께 떠나요!</div>
		</div>

		<!-- 2행 -->
		<div class="row" id="secondRow">
			<!-- 로고  -->
			<div class="col-3">
				<div id="logo" onclick="location.href='메인페이지.html';"
					style="color: #11BBFF; font-size: 32px; text-align: center; vertical-align: middle; margin-top: 16px; font-weight: bold; cursor: pointer; color: #11BBFF;">
					<i class="bi bi-house" style="font-size: 37px;"></i>다나와방
				</div>
			</div>

			<!-- 검색창  -->
			<div class="col-3">
				<!-- 검색 아이콘  -->
				<div style="margin-top: 30px;">
					<input type="text" class="form-control" placeholder="검색어를 입력해주세요"
						style="font-size: 13px; border-color: #11BBFF; margin-left: 30px;">
				</div>
			</div>
			<div class="col-1">
				<button class="btn btn-outline-secondary" type="submit"
					id="main-search" style="font-size: 14px; margin-top: 30px;">검색</button>
			</div>
			<!-- 로그인/회원가입 아이콘 -->
			<div class="col-2">
				<div id="login" onclick="location.href='로그인 페이지.html';"
					style="width: 140px; margin-left: 10px; font-size: 15px; margin-top: 37px; border-radius: 15px 15px 15px 15px; border-width: 2px 2px 2px 2px; border-style: solid; border-color: #11BBFF; background-color: #11BBFF; color: white; text-align: center; cursor: pointer; font-weight: bold;">로그인/회원가입</div>
			</div>
			<!-- 마이페이지 아이콘  -->
			<div class="col-1" onclick="location.href='마이페이지-나의 쇼핑.html';"
				style="margin-top: 18px; cursor: pointer;">
				<i class="bi bi-person i-plain" style="font-size: 42px;"></i>
			</div>
			<!-- 장바구니 아이콘 -->
			<div class="col-1" onclick="location.href='장바구니.html';"
				style="margin-top: 18px; cursor: pointer;">
				<i class="bi bi-cart2 i-plain" style="font-size: 38px;"></i>
			</div>
			<!-- 고객센터 아이콘  -->
			<div class="col-1" onclick="location.href='고객센터.html';"
				style="margin-top: 20px; cursor: pointer;">
				<i class="bi bi-headset i-plain" style="font-size: 37px;"></i>
			</div>
		</div>



		<!-- 3행 -->
		<!-- 메뉴아이콘 -->
		<div class="row" id="thirdRow"
			style="text-align: center; margin-top: 15px;">
			<div class="col-1">
				<div class="dropdown" style="margin-top: -10px;">
					<a class="btn-group-vertical" href="#" role="button"
						id="dropdownMenuLink" data-bs-toggle="dropdown"
						aria-expanded="false"><i class="bi bi-list i-plain"
						style="font-size: 35px;"></i></a>
					<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink"
						style="text-align: center; font-weight: bold;">
						<li class="dropdown-item" style="font-weight: bold;">6평<a
							class="dropdown-item" href="스토어페이지.html"><img
								src="images/6평.png"></a></li>
						<li class="dropdown-item" style="font-weight: bold;">8평<a
							class="dropdown-item" href="스토어페이지.html"><img
								src="images/8평.png"></a></li>
						<li class="dropdown-item" style="font-weight: bold;">10평<a
							class="dropdown-item" href="스토어페이지.html"><img
								src="images/10평.png"></a></li>
						<li class="dropdown-item" style="font-weight: bold;">12평<a
							class="dropdown-item" href="스토어페이지.html"><img
								src="images/12평.png"></a></li>
						<li class="dropdown-item" style="font-weight: bold;">14평<a
							class="dropdown-item" href="스토어페이지.html"><img
								src="images/14평.png"></a></li>
					</ul>
				</div>
			</div>
			<!-- 스토어 카테고리 -->
			<div class="col-2" onclick="location.href='스토어페이지.html';"
				style="font-size: 23px; color: #11BBFF; font-weight: bold; cursor: pointer">스토어</div>
			<!-- 셀프가이드 카테고리 -->
			<div class="col-2" onclick="location.href='셀프가이드페이지.html';"
				style="text-align: center; font-size: 23px; color: #11BBFF; font-weight: bold; cursor: pointer">셀프가이드</div>
			<!-- 프로모션 카테고리 -->
			<div class="col-2" onclick="location.href='프로모션페이지.html';"
				style="text-align: center; font-size: 23px; color: #11BBFF; font-weight: bold; cursor: pointer">프로모션</div>
			<div class="col-5"></div>
		</div>

		<!-- 구분선 -->
		<div
			style="margin-top: 20px; width: 100%; border-bottom: 2px solid #11BBFF"></div>

		<!-- 행 사이 빈공간-->
		<div class="row" style="margin-top: 15px;"></div>

		<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!상단 끝!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->

		<div class="row" id="middleCategories">
			<div class="col-3"></div>
			<div onclick="location.href='부트공지사항.html';" class="col">
				공지사항</div>
			<div onclick="location.href='부트1대1 게시판2.html';"
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
		<div class="row" style="margin-top: 140px;"></div>

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
		//2행 로고
		$(function() {
			$('#logo').hover(function() {
				$(this).css('font-size', '34px');
			}, function() {
				$(this).css('font-size', '32px');
			});
		});
		//2행 로그인
		$(function() {
			$('#login').hover(function() {
				$(this).css({
					'background-color' : '#FBA481',
					'border-color' : '#FBA481'
				});
			}, function() {
				$(this).css({
					'background-color' : '#11BBFF',
					'border-color' : '#11BBFF'
				});
			});
		});
		//3행
		$(function() {
			$('#thirdRow').children().hover(function() {
				$(this).css('color', '#FBA481');
			}, function() {
				$(this).css('color', '#11BBFF');
			});
		});
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
	
	<!-- 필요한 외부 script -->
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
		integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js"
		integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT"
		crossorigin="anonymous"></script>
</body>
</html>
