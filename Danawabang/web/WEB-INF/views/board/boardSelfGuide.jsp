<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, board.model.vo.*"%>
<%
	ArrayList<Board> boardList = (ArrayList)request.getAttribute("boardList");
	ArrayList<BoardAttachment> fileList = (ArrayList)request.getAttribute("fileList");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>다나와방</title>
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
#followquick {
	position: absolute;
	top: 200px;
	right: 50%;
	margin-top: 270px;
	margin-right: -800px;
}
 
.thumb-list:hover {opacity:0.8; cursor:pointer;}   

</style>

</head>
<body style="font-family: 'Nanum Gothic', sans-serif;">
   
      <!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!상단!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
   <div id="main-container" class="container">
      
		<%@ include file="../common/top.jsp" %>
      <!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!상단 끝!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
         
      <!-- 행 사이 빈공간-->
      <div class="row" style="margin-top: 20px;"></div>
      
      
      <!-- 셀프가이드 전용 -->
      <div class="container">
         <div class="row" >
            <div class="col-4"></div>
            <div class="col-4" style=" text-align:center; font-size: 25px; text-decoration: none; color: #11BBFF; font-weight: bold;">셀프 인테리어 가이드</div>
            <div class="col-4"></div>
         </div>
         
		<!-- 행 사이 빈공간-->
	      <div class="row" style="margin-top: 40px;"></div>
         
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
              	 <% if(boardList.isEmpty() || fileList.isEmpty()) { %>
              	 	<div class="swiper-wrapper" style="font-weight: bold; font-size: 20px;">
              	 		<div class="swiper-slide">
              	 		조회된 리스트가 없습니다.
              	 		</div>
              	 	</div>
              	 <% } else { %>	
	                  <div class="swiper-wrapper" style="height: 1000px; font-weight: bold; font-size: 20px;">
	              	 	<% for(int i = 0; i < boardList.size(); i++) { %>
						<% Board b = boardList.get(i); %>
						<% int bId =  b.getBoardId(); %>
		                 		 <input type="hidden" value="<%= bId %>">
		                     	<% for(int j = 0; j < fileList.size(); j++) { %>
									<% BoardAttachment a = fileList.get(j); %>
									<% if(b.getBoardId() == a.getBoardId()) { %>
										<% if(b.getBoardCategoryId() == 2421) { %>
			                     			<div class="swiper-slide">
												<div class="thumb-list" style="width:310px;" onclick="location.href='<%= request.getContextPath() %>/boardSelfGuideDetail.bo?bId='+ <%= bId %>">
						                        	<img width="310px" height= "220px" src="<%= request.getContextPath() %>/selfGuide_uploadFiles/<%= a.getChangeName() %>" class="img-rounded">
				                       	    		<%= b.getBoardTitle() %>
				                       	    	</div>
			                   				</div>
		                       	    	<% } %>
		                       	    <% } %>
		                       	 <% } %>   
	                 	 <% } %>
                	  </div>
                  <% } %>	
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
              	 <% if(boardList.isEmpty() || fileList.isEmpty()) { %>
              	 	<div class="swiper-wrapper" style="height: 1000px; font-weight: bold; font-size: 20px;">
              	 		<div class="swiper-slide">
              	 		조회된 리스트가 없습니다.
              	 		</div>
              	 	</div>
              	 <% } else { %>	
	                  <div class="swiper-wrapper" style="height: 1000px; font-weight: bold; font-size: 20px;">
	              	 	<% for(int i = 0; i < boardList.size(); i++) { %>
						<% Board b = boardList.get(i); %>
						<% int bId =  b.getBoardId(); %>
		                 		 <input type="hidden" value="<%= bId %>">
		                     	<% for(int j = 0; j < fileList.size(); j++) { %>
									<% BoardAttachment a = fileList.get(j); %>
									<% if(b.getBoardId() == a.getBoardId()) { %>
										<% if(b.getBoardCategoryId() == 2422) { %>
			                     			<div class="swiper-slide">
												<div class="thumb-list" style="width:310px;" onclick="location.href='<%= request.getContextPath() %>/boardSelfGuideDetail.bo?bId='+ <%= bId %>">
						                        	<img width="310px" height= "220px" src="<%= request.getContextPath() %>/selfGuide_uploadFiles/<%= a.getChangeName() %>" class="img-rounded">
				                       	    		<%= b.getBoardTitle() %>
				                       	    	</div>
			                   				</div>
		                       	    	<% } %>
		                       	    <% } %>
		                       	 <% } %>   
	                 	 <% } %>
                	  </div>
                  <% } %>	
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
              	 <% if(boardList.isEmpty() || fileList.isEmpty()) { %>
              	 	<div class="swiper-wrapper" style="height: 1000px; font-weight: bold; font-size: 20px;">
              	 		<div class="swiper-slide">
              	 		조회된 리스트가 없습니다.
              	 		</div>
              	 	</div>
              	 <% } else { %>	
	                  <div class="swiper-wrapper" style="height: 1000px; font-weight: bold; font-size: 20px;">
	              	 	<% for(int i = 0; i < boardList.size(); i++) { %>
						<% Board b = boardList.get(i); %>
						<% int bId =  b.getBoardId(); %>
		                 		 <input type="hidden" value="<%= bId %>">
		                     	<% for(int j = 0; j < fileList.size(); j++) { %>
									<% BoardAttachment a = fileList.get(j); %>
									<% if(b.getBoardId() == a.getBoardId()) { %>
										<% if(b.getBoardCategoryId() == 2423) { %>
			                     			<div class="swiper-slide">
												<div class="thumb-list" style="width:310px;" onclick="location.href='<%= request.getContextPath() %>/boardSelfGuideDetail.bo?bId='+ <%= bId %>">
						                        	<img width="310px" height= "220px" src="<%= request.getContextPath() %>/selfGuide_uploadFiles/<%= a.getChangeName() %>" class="img-rounded">
				                       	    		<%= b.getBoardTitle() %>
				                       	    	</div>
			                   				</div>
		                       	    	<% } %>
		                       	    <% } %>
		                       	 <% } %>   
	                 	 <% } %>
                	  </div>
                  <% } %>	
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
              	 <% if(boardList.isEmpty() || fileList.isEmpty()) { %>
              	 	<div class="swiper-wrapper" style="height: 1000px; font-weight: bold; font-size: 20px;">
              	 		<div class="swiper-slide">
              	 		조회된 리스트가 없습니다.
              	 		</div>
              	 	</div>
              	 <% } else { %>	
	                  <div class="swiper-wrapper" style="height: 1000px; font-weight: bold; font-size: 20px;">
	              	 	<% for(int i = 0; i < boardList.size(); i++) { %>
						<% Board b = boardList.get(i); %>
						<% int bId =  b.getBoardId(); %>
		                 		 <input type="hidden" value="<%= bId %>">
		                     	<% for(int j = 0; j < fileList.size(); j++) { %>
									<% BoardAttachment a = fileList.get(j); %>
									<% if(b.getBoardId() == a.getBoardId()) { %>
										<% if(b.getBoardCategoryId() == 2424) { %>
			                     			<div class="swiper-slide">
												<div class="thumb-list" style="width:310px;" onclick="location.href='<%= request.getContextPath() %>/boardSelfGuideDetail.bo?bId='+ <%= bId %>">
						                        	<img width="310px" height= "220px" src="<%= request.getContextPath() %>/selfGuide_uploadFiles/<%= a.getChangeName() %>" class="img-rounded">
				                       	    		<%= b.getBoardTitle() %>
				                       	    	</div>
			                   				</div>
		                       	    	<% } %>
		                       	    <% } %>
		                       	 <% } %>   
	                 	 <% } %>
                	  </div>
                  <% } %>	
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
              	 <% if(boardList.isEmpty() || fileList.isEmpty()) { %>
              	 	<div class="swiper-wrapper" style="height: 1000px; font-weight: bold; font-size: 20px;">
              	 		<div class="swiper-slide">
              	 		조회된 리스트가 없습니다.
              	 		</div>
              	 	</div>
              	 <% } else { %>	
	                  <div class="swiper-wrapper" style="height: 1000px; font-weight: bold; font-size: 20px;">
	              	 	<% for(int i = 0; i < boardList.size(); i++) { %>
						<% Board b = boardList.get(i); %>
						<% int bId =  b.getBoardId(); %>
		                 		 <input type="hidden" value="<%= bId %>">
		                     	<% for(int j = 0; j < fileList.size(); j++) { %>
									<% BoardAttachment a = fileList.get(j); %>
									<% if(b.getBoardId() == a.getBoardId()) { %>
										<% if(b.getBoardCategoryId() == 2425) { %>
			                     			<div class="swiper-slide">
												<div class="thumb-list" style="width:310px;" onclick="location.href='<%= request.getContextPath() %>/boardSelfGuideDetail.bo?bId='+ <%= bId %>">
						                        	<img width="310px" height= "220px" src="<%= request.getContextPath() %>/selfGuide_uploadFiles/<%= a.getChangeName() %>" class="img-rounded">
				                       	    		<%= b.getBoardTitle() %>
				                       	    	</div>
			                   				</div>
		                       	    	<% } %>
		                       	    <% } %>
		                       	 <% } %>   
	                 	 <% } %>
                	  </div>
                  <% } %>	
                  <div class="swiper-pagination"></div>
               </div>
            </div>
            <div class="col-2"></div>
         </div>
      

      <!-- 셀프가이드 이미지 슬라이드 끝-->
   
   </div>
   
   <!-- 행 사이 빈공간-->
	<div class="row" style="margin-top: 100px;"></div>
   
   <!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!하단!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
      
   	<%@ include file="../common/bottom.jsp" %>
   <!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!하단 끝 !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
   </div>
   
  <!-- 오른쪽 따라 다니는 네비게이션 바 -->

	<div id="followquick" style="width: 7%;">
		<div class="row"
			style="height: 200px; background: #11BBFF; color: #fff; border-radius: 10px;">
			<div class="col"
				style="margin-top: -10px; text-align: center; cursor: pointer;"
				onclick="location.href='<%= request.getContextPath() %>/boardFaq.bo';">
				<div>
					<div class="side-nav"
						style="font-size: 19px; font-weight: bold; margin-top: 15px;">
						<i class="bi bi-house" style="font-size: 45px; color: #fff"></i><br>
						<div style="color: #fff;">
							다나와방<br>고객센터
						</div>
						<br>
						<div
							style="font-size: 23px; font-weight: bold; color: #fff; margin-top: -10px;">1555-5551</div>
					</div>
				</div>
				<div
					style="margin-top: 5px; width: 100%; border-bottom: 2px solid #fff"></div>
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

	$(function(){
		$('#followquick').children().hover(function(){
			$(this).css({'background-color':'#FBA481', 'color' : '#fff'});
	}, function(){
		$(this).css({'background-color':'#11BBFF', 'color' : '#fff'});
	});
	});
   </script>
      
      
         
</body>
</html>