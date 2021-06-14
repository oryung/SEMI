<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>하단_개인정보처리방침</title>
<script src="js/popper.min.js"></script>
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap-4.3.1.js"></script>
<link href="css/bootstrap-4.3.1.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
	<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic&display=swap" rel="stylesheet">
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
/* ----------스크롤시 하단아이콘  보이기 --------------------------------------------------------------------- */

.bottomNav {position: fixed; font-size:50px; color: #11BBFF;}
.bottomNav {bottom: -90px;  transition:bottom .2s;}
.bottomNav.show {bottom: 0; }
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
		<div class="row" style="margin-top: 40px;"></div>

		<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!상단 끝!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->

			<!-- 개인정보처리방침제목 -->
			<div class="row">
				<!-- 여백 -->
				<div class="col"></div>
				<!-- 개인정보처리방침 -->
				<div class="col"
					style="text-align: center; font-size: 25px; font-weight: bold; color: rgb(17, 187, 255);">개인정보처리방침</div>
				<!-- 여백 -->
				<div class="col"></div>
			</div>
			<!-- 행 사이 빈공간-->
			<div class="row" style="margin-top: 10px;"></div>
			<!-- 행 사이 빈공간-->
			<div class="row" style="margin-top: 30px;"></div>
			<!-- 본문내용 -->
			<div class="row">
				<div class="col-1"></div>
				<div class="col-10 overflow-auto" style="font-size: 12px;">
					((주)다나와방(이하 "회사"라 합니다)은 회사가 제공하는 서비스 회원의 개인정보보호를 매우 중요시하며, 『정보통신망
					이용촉진 및 정보보호 등에 관한 법률』등 개인정보와 관련된 법령 상의 개인정보보호규정을 준수하고 있습니다. 회사는 아래와
					같이 개인정보처리방침을 명시하여 회원이 회사에 제공한 개인정보가 어떠한 용도와 방식으로 이용되고 있으며 개인정보보호를
					위해 어떠한 조치를 취하는지 알려드립니다. 회사의 서비스 개인정보처리방침은 정부의 법률 및 지침의 변경과 당사의 약관 및
					내부 정책에 따라 변경될 수 있으며 이를 개정하는 경우 회사는 변경사항에 대하여 즉시 서비스 화면에 게시합니다.
					회원님께서는 사이트 방문 시 수시로 확인하시기 바랍니다.<br>
					<!-- 본문내용1 -->
					<br> <b>1. 다나와방은 이용하는 서비스의 형태에 따라 다음과 같은 개인정보를 수집 및
						이용∙제공∙파기하고 있습니다.</b><br> <br> ① 개인정보의 수집 ∙ 이용 목적 및 항목 <br>회사가
					제공하는 서비스는 별도의 회원가입 절차 없이 자유롭게 컨텐츠에 접근할 수 있습니다. 회사의 회원제 서비스 이용을 위해
					수집 ∙ 이용하는 개인정보는 다음의 목적 이외의 용도로는 이용되지 않으며, 목적 변경 시 별도의 동의를 받는 등 필요한
					조치를 이행합니다. <br> <br>② 개인정보 수집 방법<br>1) 회원가입 및 서비스 이용
					과정에서 이용자가 개인정보 수집에 대해 동의를 하고 직접 정보를 입력하는 경우, 해당 개인정보를 수집합니다.<br>2)
					고객센터를 통한 상담 과정에서 웹 페이지, 메일, 팩스, 전화 등을 통해 이용자의 개인정보가 수집될 수 있습니다. <br>3)
					회사와 제휴한 외부 기업이나 단체로부터 개인정보를 제공받을 수 있으며, 이러한 경우에는 제휴사에서 이용자에게 개인정보
					제공 동의를 받은 후 수집합니다. <br> <br>③ 개인정보 보유 ∙ 이용 기간<br>1)
					회사는 이용자로부터 개인정보 수집 시에 동의 받은 보유 · 이용기간 내에서 개인정보를 처리·보유합니다.<br>
					- 회원 정보: 회원탈퇴 후 1개월 일까지 <br> - 비회원 정보: 업무 목적 달성 시까지 <br>
					- 서비스 이용에 따른 채권·채무관계 정산 시까지<br> 2) 1 년 간 회원의 서비스 이용 기록이 없는 경우,
					『정보통신망 이용촉진 및 정보보호등에 관한 법률』 제 29 조에 근거하여 회원에게 사전 통지하고, 별도 보관합니다. <br>3)
					회원에서 탈퇴한 후 회원 재가입, 임의해지 등을 반복적으로 행하여 회사가 제공하는 할인쿠폰, 이벤트 혜택 등으로 경제상의
					이익을 취하거나 이 과정에서 명의를 무단으로 사용하는 편법과 불법행위를 하는 회원을 차단 하고자 회원 탈퇴 후 1개월
					동안 보관합니다. <br>4) 단, 전자상거래 등에서의 소비자보호에 관한 법률 등 관련 법령의 규정에 따라 거래
					관계 확인을 위해 개인정보를 일정기간 보유 할 수 있습니다.<br> <br>
					<!-- 본문내용2 -->
					<b>2. 서비스의 제공 또는 법령에 정해진 책임의 준수를 위하여 회사가 보관하고 있는 개인정보가 제3자에게 수집
						목적 범위 내에서 제공될 수 있습니다.</b><br> <br> ① 회사는 이용자의 개인정보를 명시한 범위
					내에서만 처리하며, 정보주체의 동의, 법률의 특별한 규정에 해당하는 경우에만 개인정보를 제 3 자에게 제공합니다.<br>
					<br> ②회사는 다음과 같이 개인정보를 제 3 자에게 제공하고 있습니다.<br> <br> <b>3.
						회사는 서비스 향상과 효과적인 업무처리를 위하여 다음과 같이 개인정보를 처리 위탁하고 있습니다.</b><br> <br>①
					회사는 원활하고 향상된 서비스를 위하여 개인정보 처리를 타인에게 위탁할 수 있습니다. 이 경우 회사는 사전에 다음 각
					호의 사항 모두를 이용자에게 미리 알리고 동의를 받습니다. <br> (1) 개인정보 처리위탁을 받는 자 <br>
					(2) 개인정보 처리위탁을 하는 업무의 내용 <br> <br>② 회사는 개인정보의 처리와 관련하여
					아래와 같이 업무를 위탁하고 있으며, 관계법령에 따라 위탁 계약 시 개인정보가 안전하게 관리될 수 있도록 필요한 조치를
					하고 있습니다. 회사는 위탁 계약 시 수탁자의 개인정보 보호조치 능력을 고려하고, 개인정보의 안전한 관리 및 파기 등
					수탁자의 의무 이행 여부를 주기적으로 확인합니다. 또한 위탁처리하는 정보는 원활한 서비스를 제공하기 위하여 필요한
					최소한의 정보에 국한됩니다. <br> <br> <b>4. 회사는 이용자에게 다른 회사의 웹사이트
						또는 자료에 대한 링크를 제공할 수 있습니다.</b><br> <br> 회사가 이용자에게 다른 회사의 웹사이트
					또는 자료에 대한 링크를 제공하는 경우, 회사는 외부사이트 및 자료에 대한 아무런 통제권이 없으므로 그로부터 제공받는
					서비스나 자료의 유용성에 대해 책임질 수 없으며 보증할 수 없습니다. 회사가 포함하고 있는 링크를 클릭(click)하여
					타사이트(site)의 페이지로 옮겨 갈 경우 해당 사이트의 개인정보보호정책은 회사와 무관하므로 새로 방문한 사이트의
					정책을 검토해보시기 바랍니다.<br> <br> <b>5. 이용자 및 법정대리인은 아래와 같은
						권리를 행사할 수 있습니다.</b> <br> <br>① 이용자 및 법정대리인은 언제든지 수집 정보에 대하여
					수정, 동의철회, 삭제 등을 요청하실 수 있습니다. 다만, 동의 철회․삭제시 서비스의 일부 또는 전부 이용이 제한될 수
					있습니다.<br> <br>② (조회/수정 및 정정) 홈페이지에서 ‘마이홈>설정>회원정보수정’ 메뉴 또는
					1:1 상담을 이용하여 처리할 수 있습니다. 처리가 완료될 때까지 해당 정보를 이용하거나 타인에게 제공하지 않을
					것입니다. 또한 합리적인 사유로 잘못된 개인정보를 제3자에게 이미 제공한 경우, 정정 처리의 결과를 지체 없이 제3자에게
					통지하여 정정하도록 조치합니다.<br> <br>③ (동의 철회/삭제) 1:1 상담을 이용하여 수집
					정보에 대한 동의 철회 및 삭제를 요청하실 수 있습니다. 다만, 수집정보에 대한 동의 철회․삭제시 서비스의 일부 또는
					전부 이용이 제한될 수 있으며, 다른 법령에 따라 수집하는 정보의 경우에는 동의 철회가 어려울 수 있습니다.<br>
					<br>④ (회원 탈퇴) 홈페이지의 ‘마이홈>설정>회원정보수정>회원탈퇴’ 메뉴를 이용하여 편리하게 직접 탈퇴를
					진행하시거나, 1:1상담을 통하여 진행할 수 있습니다.<br> <br>⑤ (서비스 재이용) ‘아이디
					찾기’를 통하여 미이용자 여부를 확인할 수 있으며, 반드시 비밀번호를 변경하신 후 계정 재이용이 가능합니다. 문의사항은
					고객센터 1670-0876을 이용하시기 바랍니다.<br> <br>⑥ (상담/문의) 회사는 개인정보의
					수집 및 이용 목적에 따라 이용자와 상담원 간의 통화내용을 녹음할 수 있으며 고객센터를 통한 소비자 상담/문의 시 녹음
					등에 대한 안내는 고객센터 상담 전 안내 멘트를 통해 확인하실 수 있습니다. <br> <br> <b>6.
						자동 수집되는 개인정보 및 거부에 관한 사항은 다음과 같습니다.</b><br> <br>회사는 이용자의 정보를
					수시로 저장하고 찾아내는 쿠키(cookie) 등을 운용합니다. 쿠키는 웹사이트가 이용자의 컴퓨터 브라우저에 보내는 아주
					작은 텍스트 파일로 이용자의 컴퓨터 하드디스크에 저장됩니다.<br> <br>① 쿠키의 사용 목적<br>-
					회원과 비회원의 접속 빈도나 방문 시간 등의 분석, 이용 형태 및 관심분야 파악, 자취 추적, 각종 이벤트 참여 정도,
					방문 횟수 파악 등을 통한 타겟 마케팅 등 개인별 맞춤 서비스를 제공하기 위해 쿠키를 사용 합니다.<br> <br>②
					쿠키의 설치, 운영과 거부<br>- 이용자는 쿠키 설치에 대한 선택권을 가지고 있으며, 언제든지 이러한 쿠키의
					저장을 거부하거나 삭제할 수 있습니다.<br>- 쿠키의 설정은 웹브라우저별 옵션 선택을 통해 ①모든 쿠키를
					허용, ②쿠키가 저장될 때 마다 확인, ③모든 쿠키의 저장을 거부 할 수 있습니다.<br>- 이러한 쿠키의 설정
					방법은 웹브라우저에 따라 차이가 있으므로, 자세한 사항은 각 브라우저별 도움말을 참고해 주시기 바랍니다.<br>-
					Internet Explorer : 도구 메뉴 선택 > 인터넷 옵션 선택 > 개인정보 탭 클릭 > 개인정보처리 수준 설정<br>-
					Chrome : 설정 메뉴 선택 > 고급 설정 표시 선택 > 개인정보-콘텐츠 설정 선택 > 쿠키 수준 설정<br>-
					firefox : 옵션 메뉴 선택 > 개인정보 선택 > 방문기록-사용자 정의 설정 > 쿠키 수준 설정 <br>-
					safari : 환경설정 메뉴 선택 > 개인정보 탭 선택 > 쿠키 및 웹 사이트 데이터 수준 설정<br>- 단,
					쿠키의 저장을 거부하였을 경우에는 로그인이 필요한 서비스 등 일부 서비스 이용에 어려움이 있을 수 있습니다.<br>
					<br> <b>7. 맞춤형 광고</b><br> <br> 고객에게 맞춤형 광고를 제공하기 위하여
					회사는 웹 브라우저에서는 ‘쿠키’, 모바일 앱에서는 광고식별자(ADID)를 수집하여 사용합니다. 회사는 쿠키 및
					광고식별자를 통해 고객의 서비스 사용 이력을 자동으로 수집하고 이를 활용하여 고객 맞춤 광고를 진행합니다. 회사에서
					수집하는 쿠키 및 광고식별자는 다른 개인정보와 연계되지 않으며 개인을 식별하지 않습니다. 사용자는 언제든지 이러한 맞춤형
					광고 수신을 거부할 수 있습니다.<br> <br> <b>8. 회사는 이용자들의 개인정보를
						처리함에 있어 개인정보의 기술적/관리적 보호 대책을 마련하여 정보보호를 위해 노력하고 있습니다.</b><br> <br>
					회사는 이용자들의 개인정보를 처리함에 있어 개인정보가 분실, 도난, 유출, 변조 또는 훼손되지 않도록 안전성 확보를
					위하여 다음과 같은 기술적/관리적 보호대책을 강구하고 있습니다.<br> <br> ① 비밀번호의 암호화<br>-
					이용자의 비밀번호는 일방향 암호화하여 저장 및 관리되고 있으며, 개인정보의 확인 및 변경은 비밀번호를 알고 있는 본인에
					의해서만 가능합니다.<br> <br>② 해킹 등에 대비한 대책<br>- 회사는 해킹이나
					바이러스 등 회사 정보통신망 침입에 의한 이용자 개인정보의 분실, 도난, 유출, 변조 또는 훼손 등 피해 방지를 위해
					침입탐지 및 침입차단 시스템을 24시간 가동하고 있으며, 만일의 사태에 대비하여 모든 침입탐지 시스템과 침입차단 시스템은
					이중화로 구성하여 운영하고 있습니다.<br>- 개인정보의 훼손 피해에 대비하여 중요한 데이터를 주기적으로
					백업하고 있으며, 백신 프로그램을 이용하여 개인정보나 중요한 데이터의 유출 방지를 위해 노력하고 있습니다.<br>-
					민감한 개인정보는 정보통신망을 통해 주고받는 과정에서 암호화 통신을 적용하여 개인정보를 안전하게 전송할 수 있도록 하고
					있습니다.<br>- 이 외에도 보안 시스템 도입 및 전문인력 확충 등 보안성 확보를 위해 지속적으로 노력하고
					있습니다.<br> <br>③ 개인정보 처리자의 최소화 및 주기적인 교육<br>- 회사의
					개인정보 관련 처리자는 담당자로 한정하여 개인정보 처리자를 최소화 하고 있으며, 퇴직 및 직무변경 등 인사이동이 있는
					경우 지체 없이 권한을 변경, 말소 하여 개인정보 접근 권한을 통제 하고 있습니다.<br>- 개인정보 처리자에
					대해 주기적으로 교육을 진행하여 개인정보보호의 중요성을 인식시키고, 안전하게 관리 할 수 있도록 최선의 노력을 다하고
					있습니다.<br> <br> <b>9. 이용자의 의무</b> <br> <br>①
					이용자는 본인의 개인정보를 안전하게 지키기 위해 개인정보보호에 관한 법률을 준수할 의무가 있습니다.<br> <br>
					② 이용자는 자신의 개인정보를 안전하게 보호할 의무가 있으며, 회사는 이용자 개인의 부주의로 인해 발생된 일에 대해서는
					책임을 지지 않습니다. 따라서 이용자는 자신의 개인정보보호를 위하여 ID 및 비밀번호를 철저히 관리하고 주기적으로
					변경하는 등의 최선의 노력을 다할 의무가 있습니다.<br> <br>③ 이용자는 본인의 개인정보를 최신의
					상태로 정확하게 입력하고 유지할 의무가 있습니다. 이용자의 부정확한 정보 입력으로 인하여 발생하는 문제의 책임은 이용자
					본인에게 있습니다.<br> <br>④ 이용자는 타인의 개인정보를 도용하여 회원가입 또는 서비스 이용 시
					회원자격 상실과 함께 개인정보에 관한 법률에 의거하여 처벌될 수 있습니다.<br> <br>⑤ 이용자는
					타인의 개인정보를 침해하거나 유출하지 않을 의무도 가지고 있습니다. 서비스 이용 중 다른 이용자에 대해 알게 된
					개인정보를 언급하거나, 유출할 경우 개인정보 관련 법령에 의거하여 처벌될 수 있습니다.<br>
					<br>
					<b>10. 개인정보 처리방침 변경에 관한 정책은 다음과 같습니다.</b><br>
					<br> 이 개인정보 처리방침은 시행일로부터 적용되며, 법령 및 방침에 따른 변경내용의 추가, 삭제 및 정정이
					있는 경우에는 변경사항의 시행 7일 전부터 공지사항을 통하여 고지할 것입니다. 또한 관련 법령이나 회사 정책의 변경으로
					불가피하게 처리방침을 변경해야 하는 경우, 웹사이트 공지사항을 통해 빠르게 알려드리고 있으니 참고하여 주시기 바랍니다.
				</div>
				<div class="col-1"></div>
				</div>
		
		
		<!--!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!하단!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
		<!-- 행 사이 빈공간-->
		<div class="row" style="margin-top: 120px;"></div>

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