<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>스토어</title>
<script src="js/popper.min.js"></script>
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap-4.3.1.js"></script>
<link href="css/bootstrap-4.3.1.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">


<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>



<style>



/*페이지번호매기는거*/
.pagination > li > a
{
    background-color: white;
    color: #11bbff;
}

/* ---------카테고리----------- */
.categorys {font-size: 25px; color: #11BBFF; font-weight: bold; margin-left:30px;}

.categorys:hover {color: #FBA481; text-decoration: none;}

/* ----------스크롤시 하단아이콘  보이기 --------------------------------------------------------------------- */

.bottomNav {position: fixed; font-size:50px; color: #11BBFF;}
.bottomNav {bottom: -90px;  transition:bottom .2s;}
.bottomNav.show {bottom: 0; }

/* ------------따라다니는 오른쪽 네비게이션---------------------------------------------------------- */
#followquick { position:absolute; top:200px; right:50%; margin-right:-850px; }

.place { width: 50px; height: 50px; background-color: #336699; }

</style>
</head>
<body style="font-family: 'Nanum Gothic', sans-serif;">
	<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!상단!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
	<div id="main-container" class="container">
		<%@ include file="../common/top.jsp" %>

		<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!상단 끝!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
	
	
		


		<!-- 행 사이 빈공간-->
		<div class="row" style="margin-top: 40px;"></div>
		<div class="row">
			<div class="col-12" style="font-size: 25px; color: #11BBFF; text-align:center; font-weight: bold;">스토어 페이지</div>
		</div>
		<div class="container">
				<ul class="nav nav-tabs" style="margin-top:30px;">
					<li class="active"><a data-toggle="tab" class="categorys" href="#home">침대</a></li>
					<li><a data-toggle="tab" class="categorys" href="#menu2">매트리스</a></li>
					<li><a data-toggle="tab" class="categorys" href="#menu3">침구</a></li>
					<li><a data-toggle="tab" class="categorys" href="#menu4">커튼</a></li>
					<li><a data-toggle="tab" class="categorys" href="#menu5">조명</a></li>
					<li><a data-toggle="tab" class="categorys" href="#menu6">행거</a></li>
				</ul>

				<div class="tab-content">

					<div id="home" class="tab-pane fade in active">
						<!-- 상세 검색 -------------------------------------------------->
						<div class="row" style="margin-top: 25px;">
							<div class="col-12" style="font-size: 20px; font-weight: bold; color:black;">상세검색</div>
						</div>
						<hr>
						<br>
						<div class="container" style="left: 20px;">
							<div class="row">
								<div class="col-12"
									style="font-size: 17px; color: #11BBFF; font-weight: bold;  margin-top: -30px;">평수</div>
							</div>
							<div class="row">
								<div class="col-8">
									<div class="row">
										<div class="col-2"
											style="font-size: 15px; color: gray; font-weight: bold; margin-top: 10px;">
											<input type="checkbox"> 6평
										</div>
										<div class="col-2"
											style="font-size: 15px; color: gray; font-weight: bold; margin-top: 10px;">
											<input type="checkbox"> 8평
										</div>
										<div class="col-2"
											style="font-size: 15px; color: gray; font-weight: bold; margin-top: 10px;">
											<input type="checkbox"> 10평
										</div>
										<div class="col-2"
											style="font-size: 15px; color: gray; font-weight: bold; margin-top: 10px;">
											<input type="checkbox"> 12평
										</div>
										<div class="col-2"
											style="font-size: 15px; color: gray; font-weight: bold; margin-top: 10px;">
											<input type="checkbox"> 14평
										</div>
									</div>
								</div>
								<div class="col-4"></div>
							</div>
							<div class="row">
								<div class="col-12"
									style="font-size: 17px; color: #11BBFF; font-weight: bold; margin-top: 10px;">브랜드별</div>
							</div>
							<div class="row">
								<div class="col-8">
									<div class="row">
										<div class="col-2"
											style="font-size: 15px; color: gray; font-weight: bold; margin-top: 10px;">
											<input type="checkbox"> 시디즈
										</div>
										<div class="col-2"
											style="font-size: 15px; color: gray; font-weight: bold; margin-top: 10px;">
											<input type="checkbox"> 듀오백
										</div>
										<div class="col-2"
											style="font-size: 15px; color: gray; font-weight: bold; margin-top: 10px;">
											<input type="checkbox"> 블루밍
										</div>
										<div class="col-2"
											style="font-size: 15px; color: gray; font-weight: bold; margin-top: 10px;">
											<input type="checkbox"> 삼의가
										</div>
										<div class="col-2"
											style="font-size: 15px; color: gray; font-weight: bold; margin-top: 10px;">
											<input type="checkbox"> 일루일
										</div>
										<div class="col-2"
											style="font-size: 15px; color: gray; font-weight: bold; margin-top: 10px;">
											<input type="checkbox"> 마켓비
										</div>
									</div>
								</div>
								<div class="col-4"></div>
							</div>
							<div class="row">
								<div class="col-5"
									style="font-size: 17px; color: #11BBFF; font-weight: bold; margin-top: 10px;">가격
									<div class="range-slider">
										<input class="range-slider__range" type="range" value="0" style="width:300px;"
											min="0" max="1000000" step="50000"> ~ <span class="range-slider__value">0</span>원
									</div>
								</div>
								<div class="col-7">
									<div class="row" style="height: 50px;">
										<div class="col"
											style="position: absolute; left: -5%; top: 40%;width: 70%; ">
											<button class="button1" onclick="location.href='.html'">검색</button>
											
										</div>
									</div>

								</div>
							</div>
						</div>
						<br>
						<!-- 인기,신상,낮은가격, 높은가격 순 -->
						<br>
						<div class="row">
							<div class="col-8">
								<div class="row">

									<div class="col-2"
										style="font-size: 15px; font-weight: bold; cursor: pointer">
										인기상품순</div>
									<span>|</span>
									<div class="col-2"
										style="font-size: 15px; font-weight: bold; cursor: pointer">
										신상품순</div>
									<span>|</span>
									<div class="col-2"
										style="font-size: 15px; font-weight: bold; cursor: pointer">
										낮은가격순</div>
									<span>|</span>
									<div class="col-2"
										style="font-size: 15px; font-weight: bold; cursor: pointer">
										높은가격순</div>
									<div class="col"></div>
								</div>
							</div>
							<div class="col-4"></div>
						</div>
						<br>


						<div class="row">
							<div class="col-12">
								<div class="row">
									<div class="col-4">
									<a href="상품상세페이지(완).html">
										<img src="images\main_page_images\main_middle_1\pic1_2a.jpg" alt="..." style="width:100%; height:300px;"></a><br>
										<span style="font-size: 13px;">시디즈</span><br> <span
											style="font-size: 18px; color: gray; font-weight: bold;">에어화이트쉘</span><br>
										<span style="font-size: 23px; color: red;">20%</span><span
											style="float: right; font-size: 23px; font-weight: bold;">379,000</span><br>
										<br> <a href="장바구니(완).html"
											style="float: right; margin-top: -15px; color: #11BBFF"><i
											class="bi bi-cart-fill" style="font-size: 30px;"></i></a>
									</div>
									

									<div class="col-4">
										<a href="상품상세페이지(완).html">
										<img src="images\main_page_images\main_middle_1\pic1_2a.jpg" alt="..." style="width:100%; height:300px;"></a><br>
										<span style="font-size: 13px;">시디즈</span><br> <span
											style="font-size: 18px; color: gray; font-weight: bold;">에어화이트쉘</span><br>
										<span style="font-size: 23px; color: red;">20%</span><span
											style="float: right; font-size: 23px; font-weight: bold;">379,000</span><br>
										<br> <a href="#"
											style="float: right; margin-top: -15px; color: #11BBFF"><i
											class="bi bi-cart-fill" style="font-size: 30px;"></i></a>
									</div>
									<div class="col-4">
										<a href="상품상세페이지(완).html">
										<img src="images\main_page_images\main_middle_1\pic1_2a.jpg" alt="..." style="width:100%; height:300px;"></a><br>
										<span style="font-size: 13px;">시디즈</span><br> <span
											style="font-size: 18px; color: gray; font-weight: bold;">에어화이트쉘</span><br>
										<span style="font-size: 23px; color: red;">20%</span><span
											style="float: right; font-size: 23px; font-weight: bold;">379,000</span><br>
										<br> <a href="#"
											style="float: right; margin-top: -15px; color: #11BBFF"><i
											class="bi bi-cart-fill" style="font-size: 30px;"></i></a>
									</div>

								</div>
							</div>
						</div>
						<br>
						<div class="row">
							<div class="col-12">
								<div class="row">
									<div class="col-4">
										<a href="상품상세페이지(완).html">
										<img src="images\main_page_images\main_middle_1\pic1_2a.jpg" alt="..." style="width:100%; height:300px;"></a><br>
										<span style="font-size: 13px;">시디즈</span><br> <span
											style="font-size: 18px; color: gray; font-weight: bold;">에어화이트쉘</span><br>
										<span style="font-size: 23px; color: red;">20%</span><span
											style="float: right; font-size: 23px; font-weight: bold;">379,000</span><br>
										<br> <a href="#"
											style="float: right; margin-top: -15px; color: #11BBFF"><i
											class="bi bi-cart-fill" style="font-size: 30px;"></i></a>
									</div>

									<div class="col-4">
										<a href="상품상세페이지(완).html">
										<img src="images\main_page_images\main_middle_1\pic1_2a.jpg" alt="..." style="width:100%; height:300px;"></a><br>
										<span style="font-size: 13px;">시디즈</span><br> <span
											style="font-size: 18px; color: gray; font-weight: bold;">에어화이트쉘</span><br>
										<span style="font-size: 23px; color: red;">20%</span><span
											style="float: right; font-size: 23px; font-weight: bold;">379,000</span><br>
										<br> <a href="#"
											style="float: right; margin-top: -15px; color: #11BBFF"><i
											class="bi bi-cart-fill" style="font-size: 30px;"></i></a>
									</div>
									<div class="col-4">
										<a href="상품상세페이지(완).html">
										<img src="images\main_page_images\main_middle_1\pic1_2a.jpg" alt="..." style="width:100%; height:300px;"></a><br>
										<span style="font-size: 13px;">시디즈</span><br> <span
											style="font-size: 18px; color: gray; font-weight: bold;">에어화이트쉘</span><br>
										<span style="font-size: 23px; color: red;">20%</span><span
											style="float: right; font-size: 23px; font-weight: bold;">379,000</span><br>
										<br> <a href="#"
											style="float: right; margin-top: -15px; color: #11BBFF"><i
											class="bi bi-cart-fill" style="font-size: 30px;"></i></a>
									</div>

								</div>
							</div>
						</div>
						<br>
						<div class="row">
							<div class="col-12">
								<div class="row">
									<div class="col-4">
										<a href="상품상세페이지(완).html">
										<img src="images\main_page_images\main_middle_1\pic1_2a.jpg" alt="..." style="width:100%; height:300px;"></a><br>
										<span style="font-size: 13px;">시디즈</span><br> <span
											style="font-size: 18px; color: gray; font-weight: bold;">에어화이트쉘</span><br>
										<span style="font-size: 23px; color: red;">20%</span><span
											style="float: right; font-size: 23px; font-weight: bold;">379,000</span><br>
										<br> <a href="#"
											style="float: right; margin-top: -15px; color: #11BBFF"><i
											class="bi bi-cart-fill" style="font-size: 30px;"></i></a>
									</div>

									<div class="col-4">
										<a href="상품상세페이지(완).html">
										<img src="images\main_page_images\main_middle_1\pic1_2a.jpg" alt="..." style="width:100%; height:300px;"></a><br>
										<span style="font-size: 13px;">시디즈</span><br> <span
											style="font-size: 18px; color: gray; font-weight: bold;">에어화이트쉘</span><br>
										<span style="font-size: 23px; color: red;">20%</span><span
											style="float: right; font-size: 23px; font-weight: bold;">379,000</span><br>
										<br> <a href="#"
											style="float: right; margin-top: -15px; color: #11BBFF"><i
											class="bi bi-cart-fill" style="font-size: 30px;"></i></a>
									</div>
									<div class="col-4">
										<a href="상품상세페이지(완).html">
										<img src="images\main_page_images\main_middle_1\pic1_2a.jpg" alt="..." style="width:100%; height:300px;"></a><br>
										<span style="font-size: 13px;">시디즈</span><br> <span
											style="font-size: 18px; color: gray; font-weight: bold;">에어화이트쉘</span><br>
										<span style="font-size: 23px; color: red;">20%</span><span
											style="float: right; font-size: 23px; font-weight: bold;">379,000</span><br>
										<br> <a href="#"
											style="float: right; margin-top: -15px; color: #11BBFF"><i
											class="bi bi-cart-fill" style="font-size: 30px;"></i></a>
									</div>

								</div>
							</div>
						</div>
						<br>
								<!-- 행 사이 빈공간-->
					<div class="row" style="margin-top: 40px;"></div>
			
					<!-- 페이지수 표시 -->
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
					</div>
						<!-- 상세 검색 -------------------------------------------------->
					<div id="menu2" class="tab-pane fade">
						<div class="row" style="margin-top: 25px;">
							<div class="col-12" style="font-size: 20px; font-weight: bold;">상세검색2</div>
						</div>
						<hr>
						<br>
						<div class="container" style="left: 20px;">
							<div class="row">
								<div class="col-12"
									style="font-size: 17px; color: #11BBFF; font-weight: bold;margin-top: -30px;">평수</div>
							</div>
							<div class="row">
								<div class="col-8">
									<div class="row">
										<div class="col-2"
											style="font-size: 15px; color: gray; font-weight: bold; margin-top: 10px;">
											<input type="checkbox"> 6평
										</div>
										<div class="col-2"
											style="font-size: 15px; color: gray; font-weight: bold; margin-top: 10px;">
											<input type="checkbox"> 8평
										</div>
										<div class="col-2"
											style="font-size: 15px; color: gray; font-weight: bold; margin-top: 10px;">
											<input type="checkbox"> 10평
										</div>
										<div class="col-2"
											style="font-size: 15px; color: gray; font-weight: bold; margin-top: 10px;">
											<input type="checkbox"> 12평
										</div>
										<div class="col-2"
											style="font-size: 15px; color: gray; font-weight: bold; margin-top: 10px;">
											<input type="checkbox"> 14평
										</div>
									</div>
								</div>
								<div class="col-4"></div>
							</div>
							<div class="row">
								<div class="col-12"
									style="font-size: 17px; color: #11BBFF; font-weight: bold; margin-top: 10px;">브랜드별</div>
							</div>
							<div class="row">
								<div class="col-8">
									<div class="row">
										<div class="col-2"
											style="font-size: 15px; color: gray; font-weight: bold; margin-top: 10px;">
											<input type="checkbox"> 시디즈
										</div>
										<div class="col-2"
											style="font-size: 15px; color: gray; font-weight: bold; margin-top: 10px;">
											<input type="checkbox"> 듀오백
										</div>
										<div class="col-2"
											style="font-size: 15px; color: gray; font-weight: bold; margin-top: 10px;">
											<input type="checkbox"> 블루밍
										</div>
										<div class="col-2"
											style="font-size: 15px; color: gray; font-weight: bold; margin-top: 10px;">
											<input type="checkbox"> 삼의가
										</div>
										<div class="col-2"
											style="font-size: 15px; color: gray; font-weight: bold; margin-top: 10px;">
											<input type="checkbox"> 일루일
										</div>
										<div class="col-2"
											style="font-size: 15px; color: gray; font-weight: bold; margin-top: 10px;">
											<input type="checkbox"> 마켓비
										</div>
									</div>
								</div>
								<div class="col-4"></div>
							</div>
							<div class="row">
								<div class="col-5"
									style="font-size: 17px; color: #11BBFF; font-weight: bold; margin-top: 10px;">가격
									<div class="range-slider">
										<input class="range-slider__range" type="range" value="0" style="width:300px;"
											min="0" max="1000000" step="50000"> ~ <span class="range-slider__value">0</span>원
									</div>
								</div>
								<div class="col-7">
									<div class="row" style="height: 50px;">
										<div class="col"
											style="position: absolute; left: -5%; top: 40%;width: 70%; ">
											<button class="button1" onclick="location.href='.html'">검색</button>
											
										</div>
									</div>
								</div>
							</div>


						</div>
						<br>
						<!-- 인기,신상,낮은가격, 높은가격 순 -->
						<br>
						<div class="row">
							<div class="col-8">
								<div class="row">

									<div class="col-2"
										style="font-size: 15px; font-weight: bold; cursor: pointer">
										인기상품순</div>
									<span>|</span>
									<div class="col-2"
										style="font-size: 15px; font-weight: bold; cursor: pointer">
										신상품순</div>
									<span>|</span>
									<div class="col-2"
										style="font-size: 15px; font-weight: bold; cursor: pointer">
										낮은가격순</div>
									<span>|</span>
									<div class="col-2"
										style="font-size: 15px; font-weight: bold; cursor: pointer">
										높은가격순</div>
									<div class="col"></div>
								</div>
							</div>
							<div class="col-4"></div>
						</div>
						<br>


						<div class="row">
							<div class="col-12">
								<div class="row">
									<div class="col-4">
										<a href="상품상세페이지(완).html">
										<img src="images\main_page_images\main_middle_1\pic1_2a.jpg" alt="..." style="width:100%; height:300px;"></a><br>
										<span style="font-size: 13px;">시디즈</span><br> <span
											style="font-size: 18px; color: gray; font-weight: bold;">에어화이트쉘</span><br>
										<span style="font-size: 23px; color: red;">20%</span><span
											style="float: right; font-size: 23px; font-weight: bold;">379,000</span><br>
										<br> <a href="#"
											style="float: right; margin-top: -15px; color: #11BBFF"><i
											class="bi bi-cart-fill" style="font-size: 30px;"></i></a>
									</div>

									<div class="col-4">
										<a href="상품상세페이지(완).html">
										<img src="images\main_page_images\main_middle_1\pic1_2a.jpg" alt="..." style="width:100%; height:300px;"></a><br>
										<span style="font-size: 13px;">시디즈</span><br> <span
											style="font-size: 18px; color: gray; font-weight: bold;">에어화이트쉘</span><br>
										<span style="font-size: 23px; color: red;">20%</span><span
											style="float: right; font-size: 23px; font-weight: bold;">379,000</span><br>
										<br> <a href="#"
											style="float: right; margin-top: -15px; color: #11BBFF"><i
											class="bi bi-cart-fill" style="font-size: 30px;"></i></a>
									</div>
									<div class="col-4">
										<a href="상품상세페이지(완).html">
										<img src="images\main_page_images\main_middle_1\pic1_2a.jpg" alt="..." style="width:100%; height:300px;"></a><br>
										<span style="font-size: 13px;">시디즈</span><br> <span
											style="font-size: 18px; color: gray; font-weight: bold;">에어화이트쉘</span><br>
										<span style="font-size: 23px; color: red;">20%</span><span
											style="float: right; font-size: 23px; font-weight: bold;">379,000</span><br>
										<br> <a href="#"
											style="float: right; margin-top: -15px; color: #11BBFF"><i
											class="bi bi-cart-fill" style="font-size: 30px;"></i></a>
									</div>

								</div>
							</div>
						</div>
						<br>
						<div class="row">
							<div class="col-12">
								<div class="row">
									<div class="col-4">
										<a href="상품상세페이지(완).html">
										<img src="images\main_page_images\main_middle_1\pic1_2a.jpg" alt="..." style="width:100%; height:300px;"></a><br>
										<span style="font-size: 13px;">시디즈</span><br> <span
											style="font-size: 18px; color: gray; font-weight: bold;">에어화이트쉘</span><br>
										<span style="font-size: 23px; color: red;">20%</span><span
											style="float: right; font-size: 23px; font-weight: bold;">379,000</span><br>
										<br> <a href="#"
											style="float: right; margin-top: -15px; color: #11BBFF"><i
											class="bi bi-cart-fill" style="font-size: 30px;"></i></a>
									</div>

									<div class="col-4">
										<a href="상품상세페이지(완).html">
										<img src="images\main_page_images\main_middle_1\pic1_2a.jpg" alt="..." style="width:100%; height:300px;"></a><br>
										<span style="font-size: 13px;">시디즈</span><br> <span
											style="font-size: 18px; color: gray; font-weight: bold;">에어화이트쉘</span><br>
										<span style="font-size: 23px; color: red;">20%</span><span
											style="float: right; font-size: 23px; font-weight: bold;">379,000</span><br>
										<br> <a href="#"
											style="float: right; margin-top: -15px; color: #11BBFF"><i
											class="bi bi-cart-fill" style="font-size: 30px;"></i></a>
									</div>
									<div class="col-4">
										<a href="상품상세페이지(완).html">
										<img src="images\main_page_images\main_middle_1\pic1_2a.jpg" alt="..." style="width:100%; height:300px;"></a><br>
										<span style="font-size: 13px;">시디즈</span><br> <span
											style="font-size: 18px; color: gray; font-weight: bold;">에어화이트쉘</span><br>
										<span style="font-size: 23px; color: red;">20%</span><span
											style="float: right; font-size: 23px; font-weight: bold;">379,000</span><br>
										<br> <a href="#"
											style="float: right; margin-top: -15px; color: #11BBFF"><i
											class="bi bi-cart-fill" style="font-size: 30px;"></i></a>
									</div>

								</div>
							</div>
						</div>
						<br>
						<div class="row">
							<div class="col-12">
								<div class="row">
									<div class="col-4">
										<a href="상품상세페이지(완).html">
										<img src="images\main_page_images\main_middle_1\pic1_2a.jpg" alt="..." style="width:100%; height:300px;"></a><br>
										<span style="font-size: 13px;">시디즈</span><br> <span
											style="font-size: 18px; color: gray; font-weight: bold;">에어화이트쉘</span><br>
										<span style="font-size: 23px; color: red;">20%</span><span
											style="float: right; font-size: 23px; font-weight: bold;">379,000</span><br>
										<br> <a href="#"
											style="float: right; margin-top: -15px; color: #11BBFF"><i
											class="bi bi-cart-fill" style="font-size: 30px;"></i></a>
									</div>

									<div class="col-4">
										<a href="상품상세페이지(완).html">
										<img src="images\main_page_images\main_middle_1\pic1_2a.jpg" alt="..." style="width:100%; height:300px;"></a><br>
										<span style="font-size: 13px;">시디즈</span><br> <span
											style="font-size: 18px; color: gray; font-weight: bold;">에어화이트쉘</span><br>
										<span style="font-size: 23px; color: red;">20%</span><span
											style="float: right; font-size: 23px; font-weight: bold;">379,000</span><br>
										<br> <a href="#"
											style="float: right; margin-top: -15px; color: #11BBFF"><i
											class="bi bi-cart-fill" style="font-size: 30px;"></i></a>
									</div>
									<div class="col-4">
										<a href="상품상세페이지(완).html">
										<img src="images\main_page_images\main_middle_1\pic1_2a.jpg" alt="..." style="width:100%; height:300px;"></a><br>
										<span style="font-size: 13px;">시디즈</span><br> <span
											style="font-size: 18px; color: gray; font-weight: bold;">에어화이트쉘</span><br>
										<span style="font-size: 23px; color: red;">20%</span><span
											style="float: right; font-size: 23px; font-weight: bold;">379,000</span><br>
										<br> <a href="#"
											style="float: right; margin-top: -15px; color: #11BBFF"><i
											class="bi bi-cart-fill" style="font-size: 30px;"></i></a>
									</div>

								</div>
							</div>
						</div>
						<br>
									<!-- 행 사이 빈공간-->
					<div class="row" style="margin-top: 40px;"></div>
			
					<!-- 페이지수 표시 -->
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
					</div>
						<!-- 상세 검색 -------------------------------------------------->
					<div id="menu3" class="tab-pane fade">
						<div class="row" style="margin-top: 25px;">
							<div class="col-12" style="font-size: 20px; font-weight: bold;">상세검색3</div>
						</div>
						<hr>
						<br>
						<div class="container" style="left: 20px;">
							<div class="row">
								<div class="col-12"
									style="font-size: 17px; color: #11BBFF; font-weight: bold; margin-top: -30px;">평수</div>
							</div>
							<div class="row">
								<div class="col-8">
									<div class="row">
										<div class="col-2"
											style="font-size: 15px; color: gray; font-weight: bold; margin-top: 10px;">
											<input type="checkbox"> 6평
										</div>
										<div class="col-2"
											style="font-size: 15px; color: gray; font-weight: bold; margin-top: 10px;">
											<input type="checkbox"> 8평
										</div>
										<div class="col-2"
											style="font-size: 15px; color: gray; font-weight: bold; margin-top: 10px;">
											<input type="checkbox"> 10평
										</div>
										<div class="col-2"
											style="font-size: 15px; color: gray; font-weight: bold; margin-top: 10px;">
											<input type="checkbox"> 12평
										</div>
										<div class="col-2"
											style="font-size: 15px; color: gray; font-weight: bold; margin-top: 10px;">
											<input type="checkbox"> 14평
										</div>
									</div>
								</div>
								<div class="col-4"></div>
							</div>
							<div class="row">
								<div class="col-12"
									style="font-size: 17px; color: #11BBFF; font-weight: bold; margin-top: 10px;">브랜드별</div>
							</div>
							<div class="row">
								<div class="col-8">
									<div class="row">
										<div class="col-2"
											style="font-size: 15px; color: gray; font-weight: bold; margin-top: 10px;">
											<input type="checkbox"> 시디즈
										</div>
										<div class="col-2"
											style="font-size: 15px; color: gray; font-weight: bold; margin-top: 10px;">
											<input type="checkbox"> 듀오백
										</div>
										<div class="col-2"
											style="font-size: 15px; color: gray; font-weight: bold; margin-top: 10px;">
											<input type="checkbox"> 블루밍
										</div>
										<div class="col-2"
											style="font-size: 15px; color: gray; font-weight: bold; margin-top: 10px;">
											<input type="checkbox"> 삼의가
										</div>
										<div class="col-2"
											style="font-size: 15px; color: gray; font-weight: bold; margin-top: 10px;">
											<input type="checkbox"> 일루일
										</div>
										<div class="col-2"
											style="font-size: 15px; color: gray; font-weight: bold; margin-top: 10px;">
											<input type="checkbox"> 마켓비
										</div>
									</div>
								</div>
								<div class="col-4"></div>
							</div>
							<div class="row">
								<div class="col-5"
									style="font-size: 17px; color: #11BBFF; font-weight: bold; margin-top: 10px;">가격
									<div class="range-slider">
										<input class="range-slider__range" type="range" value="0" style="width:300px;"
											min="0" max="1000000" step="50000"> ~ <span class="range-slider__value">0</span>원
									</div>
								</div>
								<div class="col-7">
									<div class="row" style="height: 50px;">
										<div class="col"
											style="position: absolute; left: -5%; top: 40%;width: 70%; ">
											<button class="button1" onclick="location.href='.html'">검색</button>
											
										</div>
									</div>
								</div>
							</div>


						</div>
						<br>
						<!-- 인기,신상,낮은가격, 높은가격 순 -->
						<br>
						<div class="row">
							<div class="col-8">
								<div class="row">

									<div class="col-2"
										style="font-size: 15px; font-weight: bold; cursor: pointer">
										인기상품순</div>
									<span>|</span>
									<div class="col-2"
										style="font-size: 15px; font-weight: bold; cursor: pointer">
										신상품순</div>
									<span>|</span>
									<div class="col-2"
										style="font-size: 15px; font-weight: bold; cursor: pointer">
										낮은가격순</div>
									<span>|</span>
									<div class="col-2"
										style="font-size: 15px; font-weight: bold; cursor: pointer">
										높은가격순</div>
									<div class="col"></div>
								</div>
							</div>
							<div class="col-4"></div>
						</div>
						<br>


						<div class="row">
							<div class="col-12">
								<div class="row">
									<div class="col-4">
										<a href="상품상세페이지(완).html">
										<img src="images\main_page_images\main_middle_1\pic1_2a.jpg" alt="..." style="width:100%; height:300px;"></a><br>
										<span style="font-size: 13px;">시디즈</span><br> <span
											style="font-size: 18px; color: gray; font-weight: bold;">에어화이트쉘</span><br>
										<span style="font-size: 23px; color: red;">20%</span><span
											style="float: right; font-size: 23px; font-weight: bold;">379,000</span><br>
										<br> <a href="#"
											style="float: right; margin-top: -15px; color: #11BBFF"><i
											class="bi bi-cart-fill" style="font-size: 30px;"></i></a>
									</div>

									<div class="col-4">
										<a href="상품상세페이지(완).html">
										<img src="images\main_page_images\main_middle_1\pic1_2a.jpg" alt="..." style="width:100%; height:300px;"></a><br>
										<span style="font-size: 13px;">시디즈</span><br> <span
											style="font-size: 18px; color: gray; font-weight: bold;">에어화이트쉘</span><br>
										<span style="font-size: 23px; color: red;">20%</span><span
											style="float: right; font-size: 23px; font-weight: bold;">379,000</span><br>
										<br> <a href="#"
											style="float: right; margin-top: -15px; color: #11BBFF"><i
											class="bi bi-cart-fill" style="font-size: 30px;"></i></a>
									</div>
									<div class="col-4">
										<a href="상품상세페이지(완).html">
										<img src="images\main_page_images\main_middle_1\pic1_2a.jpg" alt="..." style="width:100%; height:300px;"></a><br>
										<span style="font-size: 13px;">시디즈</span><br> <span
											style="font-size: 18px; color: gray; font-weight: bold;">에어화이트쉘</span><br>
										<span style="font-size: 23px; color: red;">20%</span><span
											style="float: right; font-size: 23px; font-weight: bold;">379,000</span><br>
										<br> <a href="#"
											style="float: right; margin-top: -15px; color: #11BBFF"><i
											class="bi bi-cart-fill" style="font-size: 30px;"></i></a>
									</div>

								</div>
							</div>
						</div>
						<br>
						<div class="row">
							<div class="col-12">
								<div class="row">
									<div class="col-4">
										<a href="상품상세페이지(완).html">
										<img src="images\main_page_images\main_middle_1\pic1_2a.jpg" alt="..." style="width:100%; height:300px;"></a><br>
										<span style="font-size: 13px;">시디즈</span><br> <span
											style="font-size: 18px; color: gray; font-weight: bold;">에어화이트쉘</span><br>
										<span style="font-size: 23px; color: red;">20%</span><span
											style="float: right; font-size: 23px; font-weight: bold;">379,000</span><br>
										<br> <a href="#"
											style="float: right; margin-top: -15px; color: #11BBFF"><i
											class="bi bi-cart-fill" style="font-size: 30px;"></i></a>
									</div>

									<div class="col-4">
										<a href="상품상세페이지(완).html">
										<img src="images\main_page_images\main_middle_1\pic1_2a.jpg" alt="..." style="width:100%; height:300px;"></a><br>
										<span style="font-size: 13px;">시디즈</span><br> <span
											style="font-size: 18px; color: gray; font-weight: bold;">에어화이트쉘</span><br>
										<span style="font-size: 23px; color: red;">20%</span><span
											style="float: right; font-size: 23px; font-weight: bold;">379,000</span><br>
										<br> <a href="#"
											style="float: right; margin-top: -15px; color: #11BBFF"><i
											class="bi bi-cart-fill" style="font-size: 30px;"></i></a>
									</div>
									<div class="col-4">
										<a href="상품상세페이지(완).html">
										<img src="images\main_page_images\main_middle_1\pic1_2a.jpg" alt="..." style="width:100%; height:300px;"></a><br>
										<span style="font-size: 13px;">시디즈</span><br> <span
											style="font-size: 18px; color: gray; font-weight: bold;">에어화이트쉘</span><br>
										<span style="font-size: 23px; color: red;">20%</span><span
											style="float: right; font-size: 23px; font-weight: bold;">379,000</span><br>
										<br> <a href="#"
											style="float: right; margin-top: -15px; color: #11BBFF"><i
											class="bi bi-cart-fill" style="font-size: 30px;"></i></a>
									</div>

								</div>
							</div>
						</div>
						<br>
						<div class="row">
							<div class="col-12">
								<div class="row">
									<div class="col-4">
										<a href="상품상세페이지(완).html">
										<img src="images\main_page_images\main_middle_1\pic1_2a.jpg" alt="..." style="width:100%; height:300px;"></a><br>
										<span style="font-size: 13px;">시디즈</span><br> <span
											style="font-size: 18px; color: gray; font-weight: bold;">에어화이트쉘</span><br>
										<span style="font-size: 23px; color: red;">20%</span><span
											style="float: right; font-size: 23px; font-weight: bold;">379,000</span><br>
										<br> <a href="#"
											style="float: right; margin-top: -15px; color: #11BBFF"><i
											class="bi bi-cart-fill" style="font-size: 30px;"></i></a>
									</div>

									<div class="col-4">
										<a href="상품상세페이지(완).html">
										<img src="images\main_page_images\main_middle_1\pic1_2a.jpg" alt="..." style="width:100%; height:300px;"></a><br>
										<span style="font-size: 13px;">시디즈</span><br> <span
											style="font-size: 18px; color: gray; font-weight: bold;">에어화이트쉘</span><br>
										<span style="font-size: 23px; color: red;">20%</span><span
											style="float: right; font-size: 23px; font-weight: bold;">379,000</span><br>
										<br> <a href="#"
											style="float: right; margin-top: -15px; color: #11BBFF"><i
											class="bi bi-cart-fill" style="font-size: 30px;"></i></a>
									</div>
									<div class="col-4">
										<a href="상품상세페이지(완).html">
										<img src="images\main_page_images\main_middle_1\pic1_2a.jpg" alt="..." style="width:100%; height:300px;"></a><br>
										<span style="font-size: 13px;">시디즈</span><br> <span
											style="font-size: 18px; color: gray; font-weight: bold;">에어화이트쉘</span><br>
										<span style="font-size: 23px; color: red;">20%</span><span
											style="float: right; font-size: 23px; font-weight: bold;">379,000</span><br>
										<br> <a href="#"
											style="float: right; margin-top: -15px; color: #11BBFF"><i
											class="bi bi-cart-fill" style="font-size: 30px;"></i></a>
									</div>

								</div>
							</div>
						</div>
						<br>
									<!-- 행 사이 빈공간-->
					<div class="row" style="margin-top: 40px;"></div>
			
					<!-- 페이지수 표시 -->
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
					</div>
						<!-- 상세 검색 -------------------------------------------------->
					<div id="menu4" class="tab-pane fade">
						<div class="row" style="margin-top: 25px;">
							<div class="col-12" style="font-size: 20px; font-weight: bold;">상세검색4</div>
						</div>
						<hr>
						<br>
						<div class="container" style="left: 20px;">
							<div class="row">
								<div class="col-12"
									style="font-size: 17px; color: #11BBFF; font-weight: bold; margin-top: -30px;">평수</div>
							</div>
							<div class="row">
								<div class="col-8">
									<div class="row">
										<div class="col-2"
											style="font-size: 15px; color: gray; font-weight: bold; margin-top: 10px;">
											<input type="checkbox"> 6평
										</div>
										<div class="col-2"
											style="font-size: 15px; color: gray; font-weight: bold; margin-top: 10px;">
											<input type="checkbox"> 8평
										</div>
										<div class="col-2"
											style="font-size: 15px; color: gray; font-weight: bold; margin-top: 10px;">
											<input type="checkbox"> 10평
										</div>
										<div class="col-2"
											style="font-size: 15px; color: gray; font-weight: bold; margin-top: 10px;">
											<input type="checkbox"> 12평
										</div>
										<div class="col-2"
											style="font-size: 15px; color: gray; font-weight: bold; margin-top: 10px;">
											<input type="checkbox"> 14평
										</div>
									</div>
								</div>
								<div class="col-4"></div>
							</div>
							<div class="row">
								<div class="col-12"
									style="font-size: 17px; color: #11BBFF; font-weight: bold; margin-top: 10px;">브랜드별</div>
							</div>
							<div class="row">
								<div class="col-8">
									<div class="row">
										<div class="col-2"
											style="font-size: 15px; color: gray; font-weight: bold; margin-top: 10px;">
											<input type="checkbox"> 시디즈
										</div>
										<div class="col-2"
											style="font-size: 15px; color: gray; font-weight: bold; margin-top: 10px;">
											<input type="checkbox"> 듀오백
										</div>
										<div class="col-2"
											style="font-size: 15px; color: gray; font-weight: bold; margin-top: 10px;">
											<input type="checkbox"> 블루밍
										</div>
										<div class="col-2"
											style="font-size: 15px; color: gray; font-weight: bold; margin-top: 10px;">
											<input type="checkbox"> 삼의가
										</div>
										<div class="col-2"
											style="font-size: 15px; color: gray; font-weight: bold; margin-top: 10px;">
											<input type="checkbox"> 일루일
										</div>
										<div class="col-2"
											style="font-size: 15px; color: gray; font-weight: bold; margin-top: 10px;">
											<input type="checkbox"> 마켓비
										</div>
									</div>
								</div>
								<div class="col-4"></div>
							</div>
							<div class="row">
								<div class="col-5"
									style="font-size: 17px; color: #11BBFF; font-weight: bold; margin-top: 10px;">가격
									<div class="range-slider">
										<input class="range-slider__range" type="range" value="0" style="width:300px;"
											min="0" max="1000000" step="50000"> ~ <span class="range-slider__value">0</span>원
									</div>
								</div>
								<div class="col-7">
									<div class="row" style="height: 50px;">
										<div class="col"
											style="position: absolute; left: -5%; top: 40%;width: 70%; ">
											<button class="button1" onclick="location.href='.html'">검색</button>
											
										</div>
									</div>
								</div>
							</div>
						</div>
						<br>
						<!-- 인기,신상,낮은가격, 높은가격 순 -->
						<br>
						<div class="row">
							<div class="col-8">
								<div class="row">

									<div class="col-2"
										style="font-size: 15px; font-weight: bold; cursor: pointer">
										인기상품순</div>
									<span>|</span>
									<div class="col-2"
										style="font-size: 15px; font-weight: bold; cursor: pointer">
										신상품순</div>
									<span>|</span>
									<div class="col-2"
										style="font-size: 15px; font-weight: bold; cursor: pointer">
										낮은가격순</div>
									<span>|</span>
									<div class="col-2"
										style="font-size: 15px; font-weight: bold; cursor: pointer">
										높은가격순</div>
									<div class="col"></div>
								</div>
							</div>
							<div class="col-4"></div>
						</div>
						<br>


						<div class="row">
							<div class="col-12">
								<div class="row">
									<div class="col-4">
										<a href="상품상세페이지(완).html">
										<img src="images\main_page_images\main_middle_1\pic1_2a.jpg" alt="..." style="width:100%; height:300px;"></a><br>
										<span style="font-size: 13px;">시디즈</span><br> <span
											style="font-size: 18px; color: gray; font-weight: bold;">에어화이트쉘</span><br>
										<span style="font-size: 23px; color: red;">20%</span><span
											style="float: right; font-size: 23px; font-weight: bold;">379,000</span><br>
										<br> <a href="#"
											style="float: right; margin-top: -15px; color: #11BBFF"><i
											class="bi bi-cart-fill" style="font-size: 30px;"></i></a>
									</div>

									<div class="col-4">
										<a href="상품상세페이지(완).html">
										<img src="images\main_page_images\main_middle_1\pic1_2a.jpg" alt="..." style="width:100%; height:300px;"></a><br>
										<span style="font-size: 13px;">시디즈</span><br> <span
											style="font-size: 18px; color: gray; font-weight: bold;">에어화이트쉘</span><br>
										<span style="font-size: 23px; color: red;">20%</span><span
											style="float: right; font-size: 23px; font-weight: bold;">379,000</span><br>
										<br> <a href="#"
											style="float: right; margin-top: -15px; color: #11BBFF"><i
											class="bi bi-cart-fill" style="font-size: 30px;"></i></a>
									</div>
									<div class="col-4">
										<a href="상품상세페이지(완).html">
										<img src="images\main_page_images\main_middle_1\pic1_2a.jpg" alt="..." style="width:100%; height:300px;"></a><br>
										<span style="font-size: 13px;">시디즈</span><br> <span
											style="font-size: 18px; color: gray; font-weight: bold;">에어화이트쉘</span><br>
										<span style="font-size: 23px; color: red;">20%</span><span
											style="float: right; font-size: 23px; font-weight: bold;">379,000</span><br>
										<br> <a href="#"
											style="float: right; margin-top: -15px; color: #11BBFF"><i
											class="bi bi-cart-fill" style="font-size: 30px;"></i></a>
									</div>

								</div>
							</div>
						</div>
						<br>
						<div class="row">
							<div class="col-12">
								<div class="row">
									<div class="col-4">
										<a href="상품상세페이지(완).html">
										<img src="images\main_page_images\main_middle_1\pic1_2a.jpg" alt="..." style="width:100%; height:300px;"></a><br>
										<span style="font-size: 13px;">시디즈</span><br> <span
											style="font-size: 18px; color: gray; font-weight: bold;">에어화이트쉘</span><br>
										<span style="font-size: 23px; color: red;">20%</span><span
											style="float: right; font-size: 23px; font-weight: bold;">379,000</span><br>
										<br> <a href="#"
											style="float: right; margin-top: -15px; color: #11BBFF"><i
											class="bi bi-cart-fill" style="font-size: 30px;"></i></a>
									</div>

									<div class="col-4">
										<a href="상품상세페이지(완).html">
										<img src="images\main_page_images\main_middle_1\pic1_2a.jpg" alt="..." style="width:100%; height:300px;"></a><br>
										<span style="font-size: 13px;">시디즈</span><br> <span
											style="font-size: 18px; color: gray; font-weight: bold;">에어화이트쉘</span><br>
										<span style="font-size: 23px; color: red;">20%</span><span
											style="float: right; font-size: 23px; font-weight: bold;">379,000</span><br>
										<br> <a href="#"
											style="float: right; margin-top: -15px; color: #11BBFF"><i
											class="bi bi-cart-fill" style="font-size: 30px;"></i></a>
									</div>
									<div class="col-4">
										<a href="상품상세페이지(완).html">
										<img src="images\main_page_images\main_middle_1\pic1_2a.jpg" alt="..." style="width:100%; height:300px;"></a><br>
										<span style="font-size: 13px;">시디즈</span><br> <span
											style="font-size: 18px; color: gray; font-weight: bold;">에어화이트쉘</span><br>
										<span style="font-size: 23px; color: red;">20%</span><span
											style="float: right; font-size: 23px; font-weight: bold;">379,000</span><br>
										<br> <a href="#"
											style="float: right; margin-top: -15px; color: #11BBFF"><i
											class="bi bi-cart-fill" style="font-size: 30px;"></i></a>
									</div>

								</div>
							</div>
						</div>
						<br>
						<div class="row">
							<div class="col-12">
								<div class="row">
									<div class="col-4">
										<a href="상품상세페이지(완).html">
										<img src="images\main_page_images\main_middle_1\pic1_2a.jpg" alt="..." style="width:100%; height:300px;"></a><br>
										<span style="font-size: 13px;">시디즈</span><br> <span
											style="font-size: 18px; color: gray; font-weight: bold;">에어화이트쉘</span><br>
										<span style="font-size: 23px; color: red;">20%</span><span
											style="float: right; font-size: 23px; font-weight: bold;">379,000</span><br>
										<br> <a href="#"
											style="float: right; margin-top: -15px; color: #11BBFF"><i
											class="bi bi-cart-fill" style="font-size: 30px;"></i></a>
									</div>

									<div class="col-4">
										<a href="상품상세페이지(완).html">
										<img src="images\main_page_images\main_middle_1\pic1_2a.jpg" alt="..." style="width:100%; height:300px;"></a><br>
										<span style="font-size: 13px;">시디즈</span><br> <span
											style="font-size: 18px; color: gray; font-weight: bold;">에어화이트쉘</span><br>
										<span style="font-size: 23px; color: red;">20%</span><span
											style="float: right; font-size: 23px; font-weight: bold;">379,000</span><br>
										<br> <a href="#"
											style="float: right; margin-top: -15px; color: #11BBFF"><i
											class="bi bi-cart-fill" style="font-size: 30px;"></i></a>
									</div>
									<div class="col-4">
										<a href="상품상세페이지(완).html">
										<img src="images\main_page_images\main_middle_1\pic1_2a.jpg" alt="..." style="width:100%; height:300px;"></a><br>
										<span style="font-size: 13px;">시디즈</span><br> <span
											style="font-size: 18px; color: gray; font-weight: bold;">에어화이트쉘</span><br>
										<span style="font-size: 23px; color: red;">20%</span><span
											style="float: right; font-size: 23px; font-weight: bold;">379,000</span><br>
										<br> <a href="#"
											style="float: right; margin-top: -15px; color: #11BBFF"><i
											class="bi bi-cart-fill" style="font-size: 30px;"></i></a>
									</div>

								</div>
							</div>
						</div>
						<br>
									<!-- 행 사이 빈공간-->
					<div class="row" style="margin-top: 40px;"></div>
			
					<!-- 페이지수 표시 -->
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
					</div>
						<!-- 상세 검색 -------------------------------------------------->
					<div id="menu5" class="tab-pane fade">
						<div class="row" style="margin-top: 25px;">
							<div class="col-12" style="font-size: 20px; font-weight: bold;">상세검색5</div>
						</div>
						<hr>
						<br>
						<div class="container" style="left: 20px;">
							<div class="row">
								<div class="col-12"
									style="font-size: 17px; color: #11BBFF; font-weight: bold; margin-top: -30px;">평수</div>
							</div>
							<div class="row">
								<div class="col-8">
									<div class="row">
										<div class="col-2"
											style="font-size: 15px; color: gray; font-weight: bold; margin-top: 10px;">
											<input type="checkbox"> 6평
										</div>
										<div class="col-2"
											style="font-size: 15px; color: gray; font-weight: bold; margin-top: 10px;">
											<input type="checkbox"> 8평
										</div>
										<div class="col-2"
											style="font-size: 15px; color: gray; font-weight: bold; margin-top: 10px;">
											<input type="checkbox"> 10평
										</div>
										<div class="col-2"
											style="font-size: 15px; color: gray; font-weight: bold; margin-top: 10px;">
											<input type="checkbox"> 12평
										</div>
										<div class="col-2"
											style="font-size: 15px; color: gray; font-weight: bold; margin-top: 10px;">
											<input type="checkbox"> 14평
										</div>
									</div>
								</div>
								<div class="col-4"></div>
							</div>
							<div class="row">
								<div class="col-12"
									style="font-size: 17px; color: #11BBFF; font-weight: bold; margin-top: 10px;">브랜드별</div>
							</div>
							<div class="row">
								<div class="col-8">
									<div class="row">
										<div class="col-2"
											style="font-size: 15px; color: gray; font-weight: bold; margin-top: 10px;">
											<input type="checkbox"> 시디즈
										</div>
										<div class="col-2"
											style="font-size: 15px; color: gray; font-weight: bold; margin-top: 10px;">
											<input type="checkbox"> 듀오백
										</div>
										<div class="col-2"
											style="font-size: 15px; color: gray; font-weight: bold; margin-top: 10px;">
											<input type="checkbox"> 블루밍
										</div>
										<div class="col-2"
											style="font-size: 15px; color: gray; font-weight: bold; margin-top: 10px;">
											<input type="checkbox"> 삼의가
										</div>
										<div class="col-2"
											style="font-size: 15px; color: gray; font-weight: bold; margin-top: 10px;">
											<input type="checkbox"> 일루일
										</div>
										<div class="col-2"
											style="font-size: 15px; color: gray; font-weight: bold; margin-top: 10px;">
											<input type="checkbox"> 마켓비
										</div>
									</div>
								</div>
								<div class="col-4"></div>
							</div>
							<div class="row">
								<div class="col-5"
									style="font-size: 17px; color: #11BBFF; font-weight: bold; margin-top: 10px;">가격
									<div class="range-slider">
										<input class="range-slider__range" type="range" value="0" style="width:300px;"
											min="0" max="1000000" step="50000"> ~ <span class="range-slider__value">0</span>원
									</div>
								</div>
								<div class="col-7">
									<div class="row" style="height: 50px;">
										<div class="col"
											style="position: absolute; left: -5%; top: 40%;width: 70%; ">
											<button class="button1" onclick="location.href='.html'">검색</button>
											
										</div>
									</div>
								</div>
							</div>


						</div>
						<br>
						<!-- 인기,신상,낮은가격, 높은가격 순 -->
						<br>
						<div class="row">
							<div class="col-8">
								<div class="row">

									<div class="col-2"
										style="font-size: 15px; font-weight: bold; cursor: pointer">
										인기상품순</div>
									<span>|</span>
									<div class="col-2"
										style="font-size: 15px; font-weight: bold; cursor: pointer">
										신상품순</div>
									<span>|</span>
									<div class="col-2"
										style="font-size: 15px; font-weight: bold; cursor: pointer">
										낮은가격순</div>
									<span>|</span>
									<div class="col-2"
										style="font-size: 15px; font-weight: bold; cursor: pointer">
										높은가격순</div>
									<div class="col"></div>
								</div>
							</div>
							<div class="col-4"></div>
						</div>
						<br>


						<div class="row">
							<div class="col-12">
								<div class="row">
									<div class="col-4">
										<a href="상품상세페이지(완).html">
										<img src="images\main_page_images\main_middle_1\pic1_2a.jpg" alt="..." style="width:100%; height:300px;"></a><br>
										<span style="font-size: 13px;">시디즈</span><br> <span
											style="font-size: 18px; color: gray; font-weight: bold;">에어화이트쉘</span><br>
										<span style="font-size: 23px; color: red;">20%</span><span
											style="float: right; font-size: 23px; font-weight: bold;">379,000</span><br>
										<br> <a href="#"
											style="float: right; margin-top: -15px; color: #11BBFF"><i
											class="bi bi-cart-fill" style="font-size: 30px;"></i></a>
									</div>

									<div class="col-4">
										<a href="상품상세페이지(완).html">
										<img src="images\main_page_images\main_middle_1\pic1_2a.jpg" alt="..." style="width:100%; height:300px;"></a><br>
										<span style="font-size: 13px;">시디즈</span><br> <span
											style="font-size: 18px; color: gray; font-weight: bold;">에어화이트쉘</span><br>
										<span style="font-size: 23px; color: red;">20%</span><span
											style="float: right; font-size: 23px; font-weight: bold;">379,000</span><br>
										<br> <a href="#"
											style="float: right; margin-top: -15px; color: #11BBFF"><i
											class="bi bi-cart-fill" style="font-size: 30px;"></i></a>
									</div>
									<div class="col-4">
										<a href="상품상세페이지(완).html">
										<img src="images\main_page_images\main_middle_1\pic1_2a.jpg" alt="..." style="width:100%; height:300px;"></a><br>
										<span style="font-size: 13px;">시디즈</span><br> <span
											style="font-size: 18px; color: gray; font-weight: bold;">에어화이트쉘</span><br>
										<span style="font-size: 23px; color: red;">20%</span><span
											style="float: right; font-size: 23px; font-weight: bold;">379,000</span><br>
										<br> <a href="#"
											style="float: right; margin-top: -15px; color: #11BBFF"><i
											class="bi bi-cart-fill" style="font-size: 30px;"></i></a>
									</div>

								</div>
							</div>
						</div>
						<br>
						<div class="row">
							<div class="col-12">
								<div class="row">
									<div class="col-4">
										<a href="상품상세페이지(완).html">
										<img src="images\main_page_images\main_middle_1\pic1_2a.jpg" alt="..." style="width:100%; height:300px;"></a><br>
										<span style="font-size: 13px;">시디즈</span><br> <span
											style="font-size: 18px; color: gray; font-weight: bold;">에어화이트쉘</span><br>
										<span style="font-size: 23px; color: red;">20%</span><span
											style="float: right; font-size: 23px; font-weight: bold;">379,000</span><br>
										<br> <a href="#"
											style="float: right; margin-top: -15px; color: #11BBFF"><i
											class="bi bi-cart-fill" style="font-size: 30px;"></i></a>
									</div>

									<div class="col-4">
										<a href="상품상세페이지(완).html">
										<img src="images\main_page_images\main_middle_1\pic1_2a.jpg" alt="..." style="width:100%; height:300px;"></a><br>
										<span style="font-size: 13px;">시디즈</span><br> <span
											style="font-size: 18px; color: gray; font-weight: bold;">에어화이트쉘</span><br>
										<span style="font-size: 23px; color: red;">20%</span><span
											style="float: right; font-size: 23px; font-weight: bold;">379,000</span><br>
										<br> <a href="#"
											style="float: right; margin-top: -15px; color: #11BBFF"><i
											class="bi bi-cart-fill" style="font-size: 30px;"></i></a>
									</div>
									<div class="col-4">
										<a href="상품상세페이지(완).html">
										<img src="images\main_page_images\main_middle_1\pic1_2a.jpg" alt="..." style="width:100%; height:300px;"></a><br>
										<span style="font-size: 13px;">시디즈</span><br> <span
											style="font-size: 18px; color: gray; font-weight: bold;">에어화이트쉘</span><br>
										<span style="font-size: 23px; color: red;">20%</span><span
											style="float: right; font-size: 23px; font-weight: bold;">379,000</span><br>
										<br> <a href="#"
											style="float: right; margin-top: -15px; color: #11BBFF"><i
											class="bi bi-cart-fill" style="font-size: 30px;"></i></a>
									</div>

								</div>
							</div>
						</div>
						<br>
						<div class="row">
							<div class="col-12">
								<div class="row">
									<div class="col-4">
										<a href="상품상세페이지(완).html">
										<img src="images\main_page_images\main_middle_1\pic1_2a.jpg" alt="..." style="width:100%; height:300px;"></a><br>
										<span style="font-size: 13px;">시디즈</span><br> <span
											style="font-size: 18px; color: gray; font-weight: bold;">에어화이트쉘</span><br>
										<span style="font-size: 23px; color: red;">20%</span><span
											style="float: right; font-size: 23px; font-weight: bold;">379,000</span><br>
										<br> <a href="#"
											style="float: right; margin-top: -15px; color: #11BBFF"><i
											class="bi bi-cart-fill" style="font-size: 30px;"></i></a>
									</div>

									<div class="col-4">
										<a href="상품상세페이지(완).html">
										<img src="images\main_page_images\main_middle_1\pic1_2a.jpg" alt="..." style="width:100%; height:300px;"></a><br>
										<span style="font-size: 13px;">시디즈</span><br> <span
											style="font-size: 18px; color: gray; font-weight: bold;">에어화이트쉘</span><br>
										<span style="font-size: 23px; color: red;">20%</span><span
											style="float: right; font-size: 23px; font-weight: bold;">379,000</span><br>
										<br> <a href="#"
											style="float: right; margin-top: -15px; color: #11BBFF"><i
											class="bi bi-cart-fill" style="font-size: 30px;"></i></a>
									</div>
									<div class="col-4">
										<a href="상품상세페이지(완).html">
										<img src="images\main_page_images\main_middle_1\pic1_2a.jpg" alt="..." style="width:100%; height:300px;"></a><br>
										<span style="font-size: 13px;">시디즈</span><br> <span
											style="font-size: 18px; color: gray; font-weight: bold;">에어화이트쉘</span><br>
										<span style="font-size: 23px; color: red;">20%</span><span
											style="float: right; font-size: 23px; font-weight: bold;">379,000</span><br>
										<br> <a href="#"
											style="float: right; margin-top: -15px; color: #11BBFF"><i
											class="bi bi-cart-fill" style="font-size: 30px;"></i></a>
									</div>

								</div>
							</div>
						</div>
						<br>
									<!-- 행 사이 빈공간-->
					<div class="row" style="margin-top: 40px;"></div>
			
					<!-- 페이지수 표시 -->
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
					</div>
					
					
					
						<!-- 상세 검색 -------------------------------------------------->
					<div id="menu6" class="tab-pane fade">
						<div class="row" style="margin-top: 25px;">
							<div class="col-12" style="font-size: 20px; font-weight: bold;">상세검색6</div>
						</div>
						<hr>
						<br>
						<div class="container" style="left: 20px;">
							<div class="row">
								<div class="col-12"
									style="font-size: 17px; color: #11BBFF; font-weight: bold; margin-top: -30px;">평수</div>
							</div>
							<div class="row">
								<div class="col-8">
									<div class="row">
										<div class="col-2"
											style="font-size: 15px; color: gray; font-weight: bold; margin-top: 10px;">
											<input type="checkbox"> 6평
										</div>
										<div class="col-2"
											style="font-size: 15px; color: gray; font-weight: bold; margin-top: 10px;">
											<input type="checkbox"> 8평
										</div>
										<div class="col-2"
											style="font-size: 15px; color: gray; font-weight: bold; margin-top: 10px;">
											<input type="checkbox"> 10평
										</div>
										<div class="col-2"
											style="font-size: 15px; color: gray; font-weight: bold; margin-top: 10px;">
											<input type="checkbox"> 12평
										</div>
										<div class="col-2"
											style="font-size: 15px; color: gray; font-weight: bold; margin-top: 10px;">
											<input type="checkbox"> 14평
										</div>
									</div>
								</div>
								<div class="col-4"></div>
							</div>
							<div class="row">
								<div class="col-12"
									style="font-size: 17px; color: #11BBFF; font-weight: bold; margin-top: 10px;">브랜드별</div>
							</div>
							<div class="row">
								<div class="col-8">
									<div class="row">
										<div class="col-2"
											style="font-size: 15px; color: gray; font-weight: bold; margin-top: 10px;">
											<input type="checkbox"> 시디즈
										</div>
										<div class="col-2"
											style="font-size: 15px; color: gray; font-weight: bold; margin-top: 10px;">
											<input type="checkbox"> 듀오백
										</div>
										<div class="col-2"
											style="font-size: 15px; color: gray; font-weight: bold; margin-top: 10px;">
											<input type="checkbox"> 블루밍
										</div>
										<div class="col-2"
											style="font-size: 15px; color: gray; font-weight: bold; margin-top: 10px;">
											<input type="checkbox"> 삼의가
										</div>
										<div class="col-2"
											style="font-size: 15px; color: gray; font-weight: bold; margin-top: 10px;">
											<input type="checkbox"> 일루일
										</div>
										<div class="col-2"
											style="font-size: 15px; color: gray; font-weight: bold; margin-top: 10px;">
											<input type="checkbox"> 마켓비
										</div>
									</div>
								</div>
								<div class="col-4"></div>
							</div>
							<div class="row">
								<div class="col-5"
									style="font-size: 17px; color: #11BBFF; font-weight: bold; margin-top: 10px;">가격
									<div class="range-slider">
										<input class="range-slider__range" type="range" value="0" style="width:300px;"
											min="0" max="1000000" step="50000"> ~ <span class="range-slider__value">0</span>원
									</div>
								</div>
								<div class="col-7">
									<div class="row" style="height: 50px;">
										<div class="col"
											style="position: absolute; left: -5%; top: 40%;width: 70%; ">
											<button class="button1" onclick="location.href='.html'">검색</button>
											
										</div>
									</div>
								</div>
							</div>


						</div>
						<br>
						<!-- 인기,신상,낮은가격, 높은가격 순 -->
						<br>
						<div class="row">
							<div class="col-8">
								<div class="row">

									<div class="col-2"
										style="font-size: 15px; font-weight: bold; cursor: pointer">
										인기상품순</div>
									<span>|</span>
									<div class="col-2"
										style="font-size: 15px; font-weight: bold; cursor: pointer">
										신상품순</div>
									<span>|</span>
									<div class="col-2"
										style="font-size: 15px; font-weight: bold; cursor: pointer">
										낮은가격순</div>
									<span>|</span>
									<div class="col-2"
										style="font-size: 15px; font-weight: bold; cursor: pointer">
										높은가격순</div>
									<div class="col"></div>
								</div>
							</div>
							<div class="col-4"></div>
						</div>
						<br>


						<div class="row">
							<div class="col-12">
								<div class="row">
									<div class="col-4">
										<a href="상품상세페이지(완).html">
										<img src="images\main_page_images\main_middle_1\pic1_2a.jpg" alt="..." style="width:100%; height:300px;"></a><br>
										<span style="font-size: 13px;">시디즈</span><br> <span
											style="font-size: 18px; color: gray; font-weight: bold;">에어화이트쉘</span><br>
										<span style="font-size: 23px; color: red;">20%</span><span
											style="float: right; font-size: 23px; font-weight: bold;">379,000</span><br>
										<br> <a href="#"
											style="float: right; margin-top: -15px; color: #11BBFF"><i
											class="bi bi-cart-fill" style="font-size: 30px;"></i></a>
									</div>

									<div class="col-4">
										<a href="상품상세페이지(완).html">
										<img src="images\main_page_images\main_middle_1\pic1_2a.jpg" alt="..." style="width:100%; height:300px;"></a><br>
										<span style="font-size: 13px;">시디즈</span><br> <span
											style="font-size: 18px; color: gray; font-weight: bold;">에어화이트쉘</span><br>
										<span style="font-size: 23px; color: red;">20%</span><span
											style="float: right; font-size: 23px; font-weight: bold;">379,000</span><br>
										<br> <a href="#"
											style="float: right; margin-top: -15px; color: #11BBFF"><i
											class="bi bi-cart-fill" style="font-size: 30px;"></i></a>
									</div>
									<div class="col-4">
										<a href="상품상세페이지(완).html">
										<img src="images\main_page_images\main_middle_1\pic1_2a.jpg" alt="..." style="width:100%; height:300px;"></a><br>
										<span style="font-size: 13px;">시디즈</span><br> <span
											style="font-size: 18px; color: gray; font-weight: bold;">에어화이트쉘</span><br>
										<span style="font-size: 23px; color: red;">20%</span><span
											style="float: right; font-size: 23px; font-weight: bold;">379,000</span><br>
										<br> <a href="#"
											style="float: right; margin-top: -15px; color: #11BBFF"><i
											class="bi bi-cart-fill" style="font-size: 30px;"></i></a>
									</div>

								</div>
							</div>
						</div>
						<br>
						<div class="row">
							<div class="col-12">
								<div class="row">
									<div class="col-4">
										<a href="상품상세페이지(완).html">
										<img src="images\main_page_images\main_middle_1\pic1_2a.jpg" alt="..." style="width:100%; height:300px;"></a><br>
										<span style="font-size: 13px;">시디즈</span><br> <span
											style="font-size: 18px; color: gray; font-weight: bold;">에어화이트쉘</span><br>
										<span style="font-size: 23px; color: red;">20%</span><span
											style="float: right; font-size: 23px; font-weight: bold;">379,000</span><br>
										<br> <a href="#"
											style="float: right; margin-top: -15px; color: #11BBFF"><i
											class="bi bi-cart-fill" style="font-size: 30px;"></i></a>
									</div>

									<div class="col-4">
										<a href="상품상세페이지(완).html">
										<img src="images\main_page_images\main_middle_1\pic1_2a.jpg" alt="..." style="width:100%; height:300px;"></a><br>
										<span style="font-size: 13px;">시디즈</span><br> <span
											style="font-size: 18px; color: gray; font-weight: bold;">에어화이트쉘</span><br>
										<span style="font-size: 23px; color: red;">20%</span><span
											style="float: right; font-size: 23px; font-weight: bold;">379,000</span><br>
										<br> <a href="#"
											style="float: right; margin-top: -15px; color: #11BBFF"><i
											class="bi bi-cart-fill" style="font-size: 30px;"></i></a>
									</div>
									<div class="col-4">
										<a href="상품상세페이지(완).html">
										<img src="images\main_page_images\main_middle_1\pic1_2a.jpg" alt="..." style="width:100%; height:300px;"></a><br>
										<span style="font-size: 13px;">시디즈</span><br> <span
											style="font-size: 18px; color: gray; font-weight: bold;">에어화이트쉘</span><br>
										<span style="font-size: 23px; color: red;">20%</span><span
											style="float: right; font-size: 23px; font-weight: bold;">379,000</span><br>
										<br> <a href="#"
											style="float: right; margin-top: -15px; color: #11BBFF"><i
											class="bi bi-cart-fill" style="font-size: 30px;"></i></a>
									</div>

								</div>
							</div>
						</div>
						<br>
						<div class="row">
							<div class="col-12">
								<div class="row">
									<div class="col-4">
										<a href="상품상세페이지(완).html">
										<img src="images\main_page_images\main_middle_1\pic1_2a.jpg" alt="..." style="width:100%; height:300px;"></a><br>
										<span style="font-size: 13px;">시디즈</span><br> <span
											style="font-size: 18px; color: gray; font-weight: bold;">에어화이트쉘</span><br>
										<span style="font-size: 23px; color: red;">20%</span><span
											style="float: right; font-size: 23px; font-weight: bold;">379,000</span><br>
										<br> <a href="#"
											style="float: right; margin-top: -15px; color: #11BBFF"><i
											class="bi bi-cart-fill" style="font-size: 30px;"></i></a>
									</div>

									<div class="col-4">
										<a href="상품상세페이지(완).html">
										<img src="images\main_page_images\main_middle_1\pic1_2a.jpg" alt="..." style="width:100%; height:300px;"></a><br>
										<span style="font-size: 13px;">시디즈</span><br> <span
											style="font-size: 18px; color: gray; font-weight: bold;">에어화이트쉘</span><br>
										<span style="font-size: 23px; color: red;">20%</span><span
											style="float: right; font-size: 23px; font-weight: bold;">379,000</span><br>
										<br> <a href="#"
											style="float: right; margin-top: -15px; color: #11BBFF"><i
											class="bi bi-cart-fill" style="font-size: 30px;"></i></a>
									</div>
									<div class="col-4">
										<a href="상품상세페이지(완).html">
										<img src="images\main_page_images\main_middle_1\pic1_2a.jpg" alt="..." style="width:100%; height:300px;"></a><br>
										<span style="font-size: 13px;">시디즈</span><br> <span
											style="font-size: 18px; color: gray; font-weight: bold;">에어화이트쉘</span><br>
										<span style="font-size: 23px; color: red;">20%</span><span
											style="float: right; font-size: 23px; font-weight: bold;">379,000</span><br>
										<br> <a href="#"
											style="float: right; margin-top: -15px; color: #11BBFF"><i
											class="bi bi-cart-fill" style="font-size: 30px;"></i></a>
									</div>

								</div>
							</div>
						</div>
						<br>
					</div>
				</div>
			</div>
		
		

	<!---------------------------------------------- 카테고리 상품 ------------------------------------------------>
		<div class="row"style="margin-top: 60px;">
			<div class="col-12"style="font-size: 20px;  font-weight: bold;">카테고리 추천 상품</div>
		</div>
		<!-- 절취선 -->
		<hr>
		<br>
		<div class="row">
			<div class="col-12">
				<div class="row">
					<div class="col-3">
						<a href="상품상세페이지(완).html">
							<img src="images\main_page_images\main_middle_1\pic1_2a.jpg" alt="..." style="width:100%; height:220px;"></a><br>
							<span style="font-size: 13px;">시디즈</span><br> <span
								style="font-size: 18px; color: gray; font-weight: bold;">에어화이트쉘</span><br>
							<span style="font-size: 23px; color: red;">20%</span><span
								style="float: right; font-size: 23px; font-weight: bold;">379,000</span><br>
							<br> <a href="#"
								style="float: right; margin-top: -15px; color: #11BBFF"><i
								class="bi bi-cart-fill" style="font-size: 30px;"></i></a>
					</div>
					<div class="col-3">
						<a href="상품상세페이지(완).html">
							<img src="images\main_page_images\main_middle_1\pic1_2a.jpg" alt="..." style="width:100%; height:220px;"></a><br>
							<span style="font-size: 13px;">시디즈</span><br> <span
								style="font-size: 18px; color: gray; font-weight: bold;">에어화이트쉘</span><br>
							<span style="font-size: 23px; color: red;">20%</span><span
								style="float: right; font-size: 23px; font-weight: bold;">379,000</span><br>
							<br> <a href="#"
								style="float: right; margin-top: -15px; color: #11BBFF"><i
								class="bi bi-cart-fill" style="font-size: 30px;"></i></a>
						
						
					</div>
					<div class="col-3">
						<a href="상품상세페이지(완).html">
							<img src="images\main_page_images\main_middle_1\pic1_2a.jpg" alt="..." style="width:100%; height:220px;"></a><br>
							<span style="font-size: 13px;">시디즈</span><br> <span
								style="font-size: 18px; color: gray; font-weight: bold;">에어화이트쉘</span><br>
							<span style="font-size: 23px; color: red;">20%</span><span
								style="float: right; font-size: 23px; font-weight: bold;">379,000</span><br>
							<br> <a href="#"
								style="float: right; margin-top: -15px; color: #11BBFF"><i
								class="bi bi-cart-fill" style="font-size: 30px;"></i></a>
						
					</div>
					<div class="col-3">
						<a href="상품상세페이지(완).html">
							<img src="images\main_page_images\main_middle_1\pic1_2a.jpg" alt="..." style="width:100%; height:220px;"></a><br>
							<span style="font-size: 13px;">시디즈</span><br> <span
								style="font-size: 18px; color: gray; font-weight: bold;">에어화이트쉘</span><br>
							<span style="font-size: 23px; color: red;">20%</span><span
								style="float: right; font-size: 23px; font-weight: bold;">379,000</span><br>
							<br> <a href="#"
								style="float: right; margin-top: -15px; color: #11BBFF"><i
								class="bi bi-cart-fill" style="font-size: 30px;"></i></a>
						
					</div>
					
				</div>
			</div>
		</div>
		
		
		
		

	<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!하단!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
		<%@ include file="../common/bottom.jsp" %>
	</div>
	<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!하단 끝 !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
	
	<!-- 오른쪽 따라 다니는 네비게이션 바 -->	
		
	
		
			<div id="followquick" style="width:7%;">
				<div class="row" style="height:280px; background:#11BBFF; border-radius: 3px; ">
					<div class="col" style="margin-top:-10px;">
						<br>
						<i class="bi bi-house" style="font-size: 50px; margin-left:5px; color:#fff"></i>
						<span style="font-size:18px; font-weight: bold; color:#fff">다나와방</span>
						<div class="row" style="margin-top: 110px;"></div>
						
						<div >
							<a href="" class="side-nav" style="font-size:20px; font-weight: bold; text-decoration: none">
							<i class="bi bi-whatsapp i-side" style="font-size: 23px; text-align: center;"></i>&nbsp;&nbsp;고객센터</a>
						</div>
						
						<span style="font-size:15px; font-weight: bold; color:#fff">1555-5551</span>
						
						<div style="margin-top: 10px; width: 100%; border-bottom: 2px solid #fff"></div>
					</div>
				</div>
			</div>	
		
	
	<!-- 탭 하면 맨위로 올라가는 버튼 -->				 
	<div class="row">
		<div class="col-10"></div>
		<div class="col-1" style="float-right">
			<i class="bi bi-arrow-up-circle-fill bottomNav i-plain" 
			style="cursor:pointer;" onclick="window.scrollTo(0,0);" ></i>
		</div>
		<div class="col-1">
			<i class="bi bi-whatsapp bottomNav i-plain" style="cursor:pointer;" ></i>
		
		</div>
	</div>	
	
	<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!하단 끝 !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->

	
	
	<!-- 스크롤 시 하단 아이콘 보이기-------------------------------------------- -->
	<script>
	//Javascript
	var lastScrollTop = 0;
	var delta = 10;
	var fixBox = document.querySelector('.bottomNav');
	var fixBoxHeight = fixBox.offsetHeight;
	var didScroll;
	//스크롤 이벤트 
	window.onscroll = function(e) {
	    didScroll = true;
	};

	//0.25초마다 스크롤 여부 체크하여 스크롤 중이면 hasScrolled() 호출
	setInterval(function(){
	    if(didScroll){
	        hasScrolled();
	        didScroll = false;
	    }
	}, 250);

	function hasScrolled(){
	    var nowScrollTop = window.scrollY;
	    if(Math.abs(lastScrollTop - nowScrollTop) <= delta){
	        return;
	    }
	    if(nowScrollTop > lastScrollTop && nowScrollTop > fixBoxHeight){
	        //Scroll down
	        fixBox.classList.add('show');
	    }else{
	        if(nowScrollTop + window.innerHeight < document.body.offsetHeight){
	            //Scroll up
	            fixBox.classList.remove('show');
	        }
	    }
	    lastScrollTop = nowScrollTop;
	};
	
	</script>
	<!-- --------------------따라오는 오른쪽 네비게이션 ------------------------------- -->
	
	<script>
	//follow quick menu
	$(window).scroll(function(){
	var scrollTop = $(document).scrollTop();
	if (scrollTop < 180) {
	 scrollTop = 180;
	}
	$("#followquick").stop();
	$("#followquick").animate( { "top" : scrollTop });
	});
	</script>
	<!-- 가격 표시 -->
	<script type="text/javascript">
		var rangeSlider = function() {
			var slider = $('.range-slider'),
			
			range = $('.range-slider__range'),
			value = $('.range-slider__value');
			slider.each(function() {
				value.each(function() {
					var value = $(this).prev().attr('value');
					$(this).html(value);
				});
				range.on('input', function() {
					
					$(this).next(value).html(this.value.replace(/\B(?=(\d{3})+(?!\d))/g, ","));
				});
			});
		};

		rangeSlider();
	</script>



</body>
</html>

	