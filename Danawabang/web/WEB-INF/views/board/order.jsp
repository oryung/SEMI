<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.ArrayList, board.model.vo.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>다나와방</title>
<script src="js/popper.min.js"></script>
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap-4.3.1.js"></script>
<script type="text/javascript" src="js/jquery-3.6.0.min.js"></script>
<link href="css/bootstrap-4.3.1.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js" type="text/javascript"></script>
<script>IMP.init('imp59032228');</script>
<style>

div {
	border: 0px solid blue;
}

h4 {
	color: #11BBFF;
	font-weight: bold;
	text-align: center;
}

h5 {font-size: 15px; 
	text-decoration: none; 
	 
	font-weight: bold;"
	}


/* ----------스크롤시 하단아이콘  보이기 --------------------------------------------------------------------- */

.bottomNav {position: fixed; font-size:50px; color: #11BBFF;}
.bottomNav {bottom: -90px;  transition:bottom .2s;}
.bottomNav.show {bottom: 0; }
.water {
	background: #11BBFF;
	border-color: #11BBFF;
	width: 150px;
	height: 40px;
	border: none;
	color:  white;
	border-radius: 4px;
}
.water3 {
	background: #11BBFF;
	border-color: #11BBFF;
	width: 100px;
	height: 30px;
	border: none;
	color:  white;
	border-radius: 4px;
}

/* ------------따라다니는 오른쪽 네비게이션---------------------------------------------------------- */
#followquick { position:absolute; top:200px; right:50%; margin-right:-850px; }
	

</style>
</head>
<body style="font-family: 'Nanum Gothic', sans-serif;">

<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!상단!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
	<div id="main-container" class="container">
		<%@ include file="../common/top.jsp" %>

		<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!상단 끝!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
		<%
			ArrayList<CartWhole> cwList = (ArrayList) request.getAttribute("cwList");
		ArrayList<ProductAttachment> fList = (ArrayList) request.getAttribute("fList");
		Orders order = (Orders) request.getAttribute("order");
		String name = order.getOrderProductName();
		int amount = order.getOrderPrice();
		String buyer_email = order.getOrdererEmail();
		String buyer_name = order.getOrdererName();
		String buyer_tel = order.getOrdererPhone();
		String address = order.getOrdererAddress();
		String[] splitStr = address.split("/");
		String buyer_addr = splitStr[1] + " " + splitStr[2];
		String buyer_postcode = splitStr[0];
		String message = order.getOrdererRequest();
		int productId = order.getProductId();
		String boards = (String) request.getAttribute("boards");
		String memberId = loginUser.getId();

		int fee = 0;
		int price = 0;
		for (int i = 0; i < cwList.size(); i++) {
			fee += cwList.get(i).getProductDeliveryFee();
			price += (cwList.get(i).getProductPrice() * cwList.get(i).getCartProductAmount());
		}
		int sum = fee + price;	
		%>
	
		<!-- 행 사이 빈공간-->
		<div class="row" style="margin-top: 40px;"></div>
		<div class="row-12" style="font-size: 25px; color: #11BBFF; font-weight: bold; text-align: center; margin-bottom:40px;">
		결제</div>
		

		<div class="row-12" style="font-size: 20px; color: #11BBFF; font-weight: bold; margin-left:250px; margin-bottom:10px;">
		상품정보</div>
		<div class="row" style="margin-bottom:20px; margin-left: 210px; border:2px solid #11bbff; border-radius:10px; height: 250px; width:700px;">
			<div class="col-3">
				<% for(int j = 0; j < fList.size(); j++) { %>
								<% if(order.getProductId() == fList.get(j).getProductId() && fList.get(j).getProductFileLevel() == 0) { %>
									<span><img src="<%= request.getContextPath() %>/thumbnail_uploadFiles/<%= fList.get(j).getProductChangeName() %>"
									style="width:200px; height:200px; margin-top:20px;"></span><br><br>
								<% } %>
							<% } %>				
				</div>
			<div class="col-1"></div>
			<div class="col-8" style="margin-top: 7px;"><br>
			<span style="font-size: 18px; font-weight: bold;"><%= name %></span>
			<hr>
				<div class="row" style="font-size:16px; margin-left:5px; font-weight:bold;">총 배송비 : <%= fee %></div><br>
				<div class="row" style="font-size:16px; margin-left:5px; font-weight:bold;">총 상품가격 : <%= price %></div><br>
			
				<div class="row" style="font-size:16px; margin-left:5px; font-weight:bold;">총 결제가격 : <%= amount %></div>
			</div>
		</div>
		
		<div class="row-12" style="font-size: 20px; color: #11BBFF; font-weight: bold; margin-left:240px; margin-top:40px; margin-bottom:10px;">
			주문자정보</div>	
			<div class="row" style="margin-bottom:20px; margin-left: 210px; border:2px solid #11bbff; border-radius:10px; height: 730px; width:700px;">
				<div class="col-2"></div>
				<div class="col-8" style="margin-top: 40px; margin-left:-30px;">
				<label class="form-label" style="font-weight:bold;">이름</label><br>
               <input class="form-control" type="text" id="buyer_name" name="buyer_name" value="<%=buyer_name%>"
                style="color: rgb(94, 94, 94); font-size: 14px; line-height: 200%; width: 60%;" readonly><br>
			    <label class="form-label" style="font-weight:bold;">연락처</label><br>
			    <input class="form-control" type="text" id="buyer_tel" name="buyer_tel"
                  value="<%= buyer_tel %>" style="color: rgb(94, 94, 94); font-size: 14px; line-height: 200%; width: 70%;" readonly><br> 
			    <label class="form-label" style="font-weight:bold;">이메일</label><br>
			     <input class="form-control" type="text" id="buyer_email" name="buyer_email"
                  value="<%= buyer_email %>" style="color: rgb(94, 94, 94); font-size: 14px; line-height: 200%; width: 70%;" readonly><br> 
			     <label class="form-label" style="font-weight:bold;">주소</label><br>
			    <input class="form-control" type="text" id="buyer_postcode" name="buyer_postcode"
                  value="<%=splitStr[0]%>"
                  style="color: rgb(94, 94, 94); font-size: 14px; line-height: 200%; width: 40%;" readonly><br>
               <input class="form-control" type="text" id="buyer_add1" name="buyer_add1"
                  value="<%=splitStr[1]%>"
                  style="color: rgb(94, 94, 94); font-size: 14px; line-height: 200%; width: 80%; margin-top: -13px;" readonly><br>
               <input class="form-control" type="text" id="buyer_add2" name="buyer_add2"
                  value="<%=splitStr[2]%>"
                  style="color: rgb(94, 94, 94); font-size: 14px; line-height: 200%; width: 80%; margin-top: -13px;" readonly><br> 
				<label class="form-label" style="font-weight:bold;">배송메시지</label><br>
                <textarea class="form-control" id="message" name="message"
                  style="color: rgb(94, 94, 94); font-size: 14px; width: 500px; height: 150px; resize:none;" readonly><%= message %></textarea>
                  <input type="hidden" id="productId" name="productId" value="<%=productId%>">
             </div>
         </div>
         
         
		<div class="row" style="margin-top: 40px;">
				<input type="button" id="goBack" class="water3" onclick="location.href='<%=request.getContextPath()%>/cart.bo'" value="돌아가기" style="margin-left:230px; cursor:pointer;">
				<input type="button" id="pay" class="water3" value="결제하기" style="margin-left:480px; cursor:pointer;">
			</div>
			
		<div class="row" style="margin-bottom: 120px;"></div>
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
	<script>
    $('#pay').on('click', function(){
        IMP.init('imp59032228');
       	var name = '<%= name %>';
        var amount = <%= amount %>;
        var buyer_email = '<%=buyer_email%>';
        var buyer_name = '<%= buyer_name %>';
        var buyer_tel = '<%= buyer_tel %>';
		var address = '<%= address %>';
		var message = '<%= message %>';  
		var productId = <%= productId %>;
		var boards = '<%= boards %>';
		var memberId = '<%= memberId %>'
			
		var msg;
		
		 IMP.request_pay({
            pg : 'inicis',
            method : 'post',
            pay_method : 'card',
            merchant_uid : 'merchant_' + new Date().getTime(),
            name : '<%= name %>',
            amount : <%= amount %>,
            buyer_email : '<%=buyer_email%>',
            buyer_name : '<%= buyer_name %>',
            buyer_tel : '<%= buyer_tel %>',
            buyer_addr : '<%= buyer_addr %>',
            buyer_postcode : '<%= buyer_postcode %>'
        }, function(rsp) {
            if (rsp.success ) {
                jQuery.ajax({
                    url: "orderInsert.bo",
                    headers: { "Content-Type": "application/json, charset=UTF-8" },
                    data: {
                        imp_uid : rsp.imp_uid,
                        merchant_uid: rsp.merchant_uid,
                        paid_amount : rsp.paid_amount,
                        apply_num : rsp.apply_num,
                        name : name,
                        amount : amount,
                    	buyer_email : buyer_email,
                    	buyer_name : buyer_name,
                    	buyer_tel : buyer_tel,
                    	address : address,
                    	message : message,
                   		productId : productId,
                   		boards : boards,
                   		memberId : memberId
                    	}
                }).done(function(data) {
                     if (true) {
                    	 msg = '결제가 완료되었습니다.';
                         msg += '\n\n고유ID : ' + rsp.imp_uid;
                         msg += '\n\n상점 거래ID : ' + rsp.merchant_uid;
                         msg += '\n\n결제 금액 : ' + rsp.paid_amount;
                         if(rsp.apply_num != 0) {
                        	 msg += '\n\n카드 승인번호 : ' + rsp.apply_num;
                         }
                         alert(msg);
                         location.href='<%= request.getContextPath() %>/myOrder.bo';
                    } else {
                    	 msg = '결제에 실패하였습니다.';
                         msg += '에러내용 : ' + rsp.error_msg;
                         alert(msg);
                         location.href='<%= request.getContextPath() %>/orderError.bo'; 
                 }
                });   
                
            } 
        });
    });
    </script> 
</body>
</html>
