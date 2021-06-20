<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>셀프가이드</title>
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap-4.3.1.js"></script>
<script src="js/bootstrap.min.js"></script>

<link rel="stylesheet" href="css/bootstrap-4.3.1.css" >
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">

<!-- Link Swiper's CSS -->
<link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css">
    
    
<style type="text/css">
		div {
			border: 0px solid green;
		}
      
.self:hover{background:#fff;}


/* ----------------swiper슬라이드-------------------------- */
      .swiper-container {
        width: 100%;
        height: 100%;
        margin-left: auto;
        margin-right: auto;
      }
	  a:hover{color: #11BBFF; text-decoration:none;}
	  a{color:black;} 
      .swiper-slide {
        text-align: center;
        font-size: 18px;
        background: #fff;
        height: calc((100% - 30px) / 3);
         

        /* Center slide text vertically */
        display: -webkit-box;
        display: -ms-flexbox;
        display: -webkit-flex;
        display: flex;
        -webkit-box-pack: center;
        -ms-flex-pack: center;
        -webkit-justify-content: center;
        justify-content: center;
        -webkit-box-align: center;
        -ms-flex-align: center;
        -webkit-align-items: center;
        align-items: center;
      }
      


/* ----------스크롤시 하단아이콘  보이기 --------------------------------------------------------------------- */

.bottomNav {position: fixed; font-size:50px; color: #11BBFF;}
.bottomNav {bottom: -90px;  transition:bottom .2s;}
.bottomNav.show {bottom: 0; }



/* ------------따라다니는 오른쪽 네비게이션---------------------------------------------------------- */
#followquick { position:absolute; top:200px; right:50%; margin-right:-850px; }
	

</style>

</head>
<body style="font-family: 'Nanum Gothic', sans-serif;">
	
		<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!상단!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
	<div id="main-container" class="container">
		<%@ include file="../common/top.jsp" %>

		<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!상단 끝!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
			
		
		<!-- 행 사이 빈공간-->
		<div class="row" style="margin-top: 40px;"></div>
		
		
		<!-- 셀프가이드 전용 -->
		<div class="container">
			<div class="row" >
				<div class="col-4"></div>
				<div class="col-4" style=" text-align:center; font-size: 25px; text-decoration: none; color: #11BBFF; font-weight: bold;">셀프 인테리어 가이드</div>
				<div class="col-4"></div>
			</div>
			<!-- 행 사이 빈공간-->
			<div class="row" style="margin-top: 10px;"></div>
			
			<div class="row" style="height:80px;">
				<div class="col-2"></div>
				<div class="col-8">
					<div class="row" style="height:80px;">
						<div class="thumbnail" style="width:16%; height:80px; background:#eee;" id="e1" >
								<input type="image" class="self" style="width:100%;" src="images\self_guide\self_pic1.png">
								
						</div>
						<div style="width:5%"></div>
						<div class="thumbnail" style="width:16%; height:80px; background:#eee;" id="e2">
								<input type="image" class="self" style="width:100%;" src="images\self_guide\self_pic2.png">
						
						</div>
						<div style="width:5%"></div>
						<div class="thumbnail" style="width:16%; height:80px; background:#eee;" id="e3">
								<input type="image" class="self" style="width:100%;" src="images\self_guide\self_pic3.png">
						
						</div>
						<div style="width:5%"></div>
						<div class="thumbnail" style="width:16%; height:80px; background:#eee;" id="e4">
								<input type="image" class="self" style="width:100%;" src="images\self_guide\self_pic4.png">
						
						</div>
						<div style="width:5%"></div>
						<div class="thumbnail" style="width:16%; height:80px; background:#eee;" id="e5">
								<input type="image" class="self" style="width:100%;" src="images\self_guide\self_pic5.png">
						
						</div>
					</div>
				</div>
				<div class="col-2"></div>
			
			</div>
			<div class="row" style="height:30px;">
				<div class="col-2"></div>
				<div class="col-8">
					<div id="middleCategories" class="row" style="height:30px; text-align: center; font-weight: bold; font-size:20px; cursor:pointer;">
						<div style="width:16%">계획하기</div>
						<div style="width:5%"></div>
						<div style="width:16%">조명</div>
						<div style="width:5%"></div>
						<div style="width:16%">공간배치</div>
						<div style="width:5%"></div>
						<div style="width:16%">수납정리</div>
						<div style="width:5%"></div>
						<div style="width:16%">페브릭</div>
					</div>
					
				</div>
				<div class="col-2"></div>
			</div>
		</div>
			<!-- 행 사이 빈공간-->
		<div class="row" style="margin-top: 40px;"></div>

		<!-- 셀프가이드 이미지 슬라이드 -->
				<!-- -----------------------------------계획 하기-------------------------------------- -->
				
		<div class="container">
			<div class="row" id="planning">
				<div class="col-2"></div>
				<div class="col-8" >
					<div class="swiper-container mySwiper">
						<div class="swiper-wrapper"
							style="height: 1000px; font-weight: bold; font-size: 20px;">
							<div class="swiper-slide">
								<a href="셀프가이드내용(완).html"> <img class="img-rounded"
									src="images\self_guide\planning\sg_pl_1.jpg"><br>
									매트리스 종류와 선택하는 팁
								</a>
							</div>
							<div class="swiper-slide">
								<a href=""> <img class="img-rounded"
									src="images\self_guide\planning\sg_pl_2.jpg"><br>
									가구 구매 및 배송 시 알아야할점
								</a>
							</div>
							<div class="swiper-slide">
								<a href=""> <img class="img-rounded"
									src="images\self_guide\planning\sg_pl_3.jpg"><br>
									생활 패턴별 필요한 가구 체크하기
								</a>
							</div>
							<div class="swiper-slide">
								<a href=""> <img class="img-rounded"
									src="images\self_guide\planning\sg_pl_4.jpg"><br>
									목재 가구 구입 전 알아야 할 것
								</a>
							</div>
							<div class="swiper-slide">
								<a href=""> <img class="img-rounded"
									src="images\self_guide\planning\sg_pl_5.jpg"><br>
									우리집 공간 파악과 배치도 그리기
								</a>
							</div>
							<div class="swiper-slide">
								<a href=""> <img class="img-rounded"
									src="images\self_guide\planning\sg_pl_6.jpg"><br>
									우리집에 필요한 가구 체크하기
								</a>
							</div>
							<div class="swiper-slide">
								<a href=""> <img class="img-rounded"
									src="images\self_guide\planning\sg_pl_7.jpg"><br>
									대표적인 인테리어 컨셉은 무엇이 있을까?
								</a>
							</div>
							<div class="swiper-slide">
								<a href=""> <img class="img-rounded"
									src="images\self_guide\planning\sg_pl_8.jpg"><br>
									가구 선택, 고려해야 할 7가지!
								</a>
							</div>
							<div class="swiper-slide">
								<a href=""> <img class="img-rounded"
									src="images\self_guide\planning\sg_pl_9.jpg"><br>
									대표적 가구 브랜드와 가격 알아보기
								</a>
							</div>
							<div class="swiper-slide">
								<a href=""> <img class="img-rounded"
									src="images\self_guide\planning\sg_pl_10.jpg"><br>
									신혼집 인테리어_30평대 가구 리스트
								</a>
							</div>
							<div class="swiper-slide">
								<a href=""> <img class="img-rounded"
									src="images\self_guide\planning\sg_pl_11.jpg"><br>
									신혼집 인테리어_20평대 가구 리스트
								</a>
							</div>
							<div class="swiper-slide">
								<a href=""> <img class="img-rounded"
									src="images\self_guide\planning\sg_pl_12.jpg"><br>
									신혼집 인테리어_10평대 가구 리스트
								</a>
							</div>

						</div>
						<div class="swiper-pagination"></div>
					</div>
					
				</div>
				<div class="col-2"></div>
			</div>
		
		
				<!-- ----------------------------------- 조명 - ------------------------------------- -->
		
			<div class="row" id="lighting">
				<div class="col-2"></div>
				<div class="col-8" >
					<div class="swiper-container mySwiper">
						<div class="swiper-wrapper"
							style="height: 1000px; font-weight: bold; font-size: 20px;">
							<div class="swiper-slide">
								<a href=""> <img class="img-rounded"
									src="images\self_guide\lighting\sl_light_001.jpg"><br>
									이케아 조명 식탁등으로 주방인테리어 바꾸기
								</a>
							</div>
							<div class="swiper-slide">
								<a href=""> <img class="img-rounded"
									src="images\self_guide\lighting\sl_light_002.jpg"><br>
									여자 혼자 조명교체하기
								</a>
							</div>
							<div class="swiper-slide">
								<a href=""> <img class="img-rounded"
									src="images\self_guide\lighting\sl_light_003.jpg"><br>
									공간에 따른 조명 선택법을 알아볼까요?
								</a>
							</div>
							<div class="swiper-slide">
								<a href=""> <img class="img-rounded"
									src="images\self_guide\lighting\sl_light_004.jpg"><br>
									다양한 조명의 종류를 알아봅시다
								</a>
							</div>
							<div class="swiper-slide">
								<a href=""> <img class="img-rounded"
									src="images\self_guide\lighting\sl_light_005.jpg"><br>
									실전! 펜던트조명 설치 해보기
								</a>
							</div>
							<div class="swiper-slide">
								<a href=""> <img class="img-rounded"
									src="images\self_guide\lighting\sl_light_006.jpg"><br>
									실전! 레일조명 설치해보기
								</a>
							</div>
							<div class="swiper-slide">
								<a href=""> <img class="img-rounded"
									src="images\self_guide\lighting\sl_light_007.jpg"><br>
									파이프 조명 만들기
								</a>
							</div>
							<div class="swiper-slide">
								<a href=""> <img class="img-rounded"
									src="images\self_guide\lighting\sl_light_008.jpg"><br>
									소비전력(W,와트)을 통한 전구밝기 비교
								</a>
							</div>

						</div>
						<div class="swiper-pagination"></div>
					</div>
					
				</div>
				<div class="col-2"></div>
			</div>
				<!-- ----------------------------------- 공간배치 - ------------------------------------- -->
		
			<div class="row" id="placeSpace">
				<div class="col-2"></div>
				<div class="col-8" >
					<div class="swiper-container mySwiper">
						<div class="swiper-wrapper"
							style="height: 1000px; font-weight: bold; font-size: 20px;">
							<div class="swiper-slide">
								<a href=""> <img class="img-rounded"
									src="images\self_guide\placeSpace\sl_space_001.jpg"><br>
									우리집 공간 파악과 배치도 그리기
								</a>
							</div>
							<div class="swiper-slide">
								<a href=""> <img class="img-rounded"
									src="images\self_guide\placeSpace\sl_space_002.jpg"><br>
									공간별 가구를 배치할 때 생각할 점
								</a>
							</div>
							<div class="swiper-slide">
								<a href=""> <img class="img-rounded"
									src="images\self_guide\placeSpace\sl_space_003.jpg"><br>
									원룸 이쁘게 공간 활용하는 꿀팁 BEST5
								</a>
							</div>

						</div>
						<div class="swiper-pagination"></div>
					</div>
					
				</div>
				<div class="col-2"></div>
			</div>
				
				<!-- ----------------------------------- 수납정리 - ------------------------------------- -->
		
			<div class="row" id="storage">
				<div class="col-2"></div>
				<div class="col-8" >
					<div class="swiper-container mySwiper">
						<div class="swiper-wrapper"
							style="height: 1000px; font-weight: bold; font-size: 20px;">
							<div class="swiper-slide">
								<a href=""> <img class="img-rounded"
									src="images\self_guide\storage\sl_storage_001.jpg"><br>
									깔끔깔끔 새것처럼 깨끗하게! 냉장고 청소 편
								</a>
							</div>
							<div class="swiper-slide">
								<a href=""> <img class="img-rounded"
									src="images\self_guide\storage\sl_storage_002.jpg"><br>
									정리정돈 7가지 기본 순서를 알아볼까요?
								</a>
							</div>
							<div class="swiper-slide">
								<a href=""> <img class="img-rounded"
									src="images\self_guide\storage\sl_storage_003.jpg"><br>
									공간에 따른 효율적인 수납Tip을 알아보아요
								</a>
							</div>
							<div class="swiper-slide">
								<a href=""> <img class="img-rounded"
									src="images\self_guide\storage\sl_storage_004.jpg"><br>
									책상정리가 안되는 사람을 위한 DIY 팁!
								</a>
							</div>

						</div>
						<div class="swiper-pagination"></div>
					</div>
					
				</div>
				<div class="col-2"></div>
			</div>
		
				<!-- ----------------------------------- 페브릭 - ------------------------------------- -->
		
			<div class="row" id="fabric" >
				<div class="col-2"></div>
				<div class="col-8" >
					<div class="swiper-container mySwiper">
						<div class="swiper-wrapper"
							style="height: 1000px; font-weight: bold; font-size: 20px;">
							<div class="swiper-slide">
								<a href=""> <img class="img-rounded"
									src="images\self_guide\fabric\sl_fabric_001.jpg"><br>
									이불 속 재료 특징과 관리 노하우
								</a>
							</div>
							<div class="swiper-slide">
								<a href=""> <img class="img-rounded"
									src="images\self_guide\fabric\sl_fabric_002.jpg"><br>
									베개의 종류와 선택하는 팁
								</a>
							</div>
							<div class="swiper-slide">
								<a href=""> <img class="img-rounded"
									src="images\self_guide\fabric\sl_fabric_003.jpg"><br>
									러그&쿠션의 기능 및 활용 사례
								</a>
							</div>
							<div class="swiper-slide">
								<a href=""> <img class="img-rounded"
									src="images\self_guide\fabric\sl_fabric_004.jpg"><br>
									커튼/블라인드의 종류와 선택 요령 알아보기
								</a>
							</div>
							<div class="swiper-slide">
								<a href=""> <img class="img-rounded"
									src="images\self_guide\fabric\sl_fabric_005.jpg"><br>
									실전! 커튼을 직접 설치해 봅시다
								</a>
							</div>
							<div class="swiper-slide">
								<a href=""> <img class="img-rounded"
									src="images\self_guide\fabric\sl_fabric_006.jpg"><br>
									실전! 블라인드를 직접 설치해봅시다
								</a>
							</div>
							<div class="swiper-slide">
								<a href=""> <img class="img-rounded"
									src="images\self_guide\fabric\sl_fabric_007.jpg"><br>
									침구의 종류와 침구를 선택하는 간단한 팁은?
								</a>
							</div>

						</div>
						<div class="swiper-pagination"></div>
					</div>
					
				</div>
				<div class="col-2"></div>
			</div>
		</div>
		

		<!-- 셀프가이드 이미지 슬라이드 끝-->
	<!-- 검색창  -->
			<div class="col-3" style="position: absolute; left: 42.5%; width:300px;" >
				<div class="input-group">
					<input type="text" class="form-control form-control-research"
						placeholder="검색어를 입력해주세요" aria-label="Recipient's username"
						aria-describedby="button-addon2"
						style="font-size: 13px; border-color: #11BBFF;">
					<button class="btn btn-outline-secondary" type="submit"
						id="main-search" style="font-size: 13px;">검색</button>
				</div>
			</div>
	
	<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!하단!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
		<%@ include file="../common/bottom.jsp" %>
	</div>
	
	
	<!-- 오른쪽 따라 다니는 네비게이션 바 -->

	<div id="followquick" style="width: 7%;">
		<div class="row"
			style="height: 280px; background: #11BBFF; border-radius: 3px;">
			<div class="col" style="margin-top: -10px;">
				<br> <i class="bi bi-house"
					style="font-size: 50px; margin-left: 5px; color: #fff"></i> <span
					style="font-size: 18px; font-weight: bold; color: #fff">다나와방</span>
				<div class="row" style="margin-top: 110px;"></div>

				<div>
					<a href="" class="side-nav"
						style="font-size: 20px; font-weight: bold; text-decoration: none">
						<i class="bi bi-whatsapp i-side"
						style="font-size: 23px; text-align: center;"></i>&nbsp;&nbsp;고객센터
					</a>
				</div>

				<span style="font-size: 15px; font-weight: bold; color: #fff">1555-5551</span>

				<div
					style="margin-top: 10px; width: 100%; border-bottom: 2px solid #fff"></div>
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
	

		<!-- ---------------------------------------스크립트 영역 --------------------------------------->
		
		<!-- Swiper JS -->
		<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>

		<!-- Initialize Swiper -->
		<script>
			var swiper = new Swiper(".mySwiper", {
				slidesPerView : 2,
				slidesPerColumn : 3,
				
				pagination : {
					el : ".swiper-pagination",
					clickable : true,
				}
			});
		</script>
		
		<!-- 카테고리별 슬라이드 보이기 숨기기 -->
		<script>
			
			$(document).ready(function(){
				$('#planning').show();
				$('#lighting').hide();
				$('#placeSpace').hide();
				$('#storage').hide();
				$('#fabric').hide();
				
			}).on('click','#e1',function(){
				$('#planning').show();
				$('#lighting').hide();
				$('#placeSpace').hide();
				$('#storage').hide();
				$('#fabric').hide();
				
			}).on('click','#e2',function(){
				$('#planning').hide();
				$('#lighting').show();
				$('#placeSpace').hide();
				$('#storage').hide();
				$('#fabric').hide();
				
			}).on('click','#e3',function(){
				$('#planning').hide();
				$('#lighting').hide();
				$('#placeSpace').show();
				$('#storage').hide();
				$('#fabric').hide();
				
			}).on('click','#e4',function(){
				$('#planning').hide();
				$('#lighting').hide();
				$('#placeSpace').hide();
				$('#storage').show();
				$('#fabric').hide();
				
			}).on('click','#e5',function(){
				$('#planning').hide();
				$('#lighting').hide();
				$('#placeSpace').hide();
				$('#storage').hide();
				$('#fabric').show();
				
			});
			
		</script>	
		
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
	</script>
	
	
		

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
	}
	
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
		
		
			
</body>
</html>