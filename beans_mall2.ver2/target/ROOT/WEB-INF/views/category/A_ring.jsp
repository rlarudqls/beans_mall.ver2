<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta name="naver-site-verification"
	content="bdd8c1288663e09362bd7d3b08627b9c527c5876" />
<meta name="google-site-verification"
	content="NnaPRa-jWBb5SnBiwjEZkMqm1pFS2Y8mVdUG0nJqO4c" />

<title>빈스몰</title>
<meta name="theme-color" content="#ffffff" />
<link rel="apple-touch-icon" sizes="384x384"
	href="/resources/img/kkblogo.png">
<link rel="apple-touch-icon" sizes="256x256"
	href="/resources/img/kkblogo.png">
<link rel="apple-touch-icon" sizes="192x192"
	href="/resources/img/kkblogo.png">
<link rel="apple-touch-icon" sizes="128x128"
	href="/resources/img/kkblogo.png">
<link rel="apple-touch-icon" sizes="96x96"
	href="/resources/img/kkblogo.png">

<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=5.0, user-scalable=0 viewport-fit=cover" />
<meta name="application-name" content="빈스몰" />
<meta name="keywords"
	content="핸드메이드, 수공예, 수제 먹거리, 디저트, 선물, 온라인 클래스, 반려동물 간식, 폰케이스" />
<meta property="fb:app_id" content="1410666675867984" />
<meta name="description" content="빈스몰과 함께 취향 발견! 나만의 라이프 스타일을 완성하다.">
<meta property="og:title" content="beans_mall" />
<meta property="og:type" content="website" />
<meta property="og:description"
	content="빈스몰과 함께 취향 발견! 나만의 라이프 스타일을 완성하다." />
<meta property="og:image" content="/resources/img/kkblogo.png" />

<!-- project src -->
<link rel="icon" href="/kkblogo.ico" />
<link rel="stylesheet" href="/resources/css/main.css">
<link rel="stylesheet" href="/resources/css/main1.css">
<link rel="stylesheet" href="/resources/css/main2.css">
<link rel="stylesheet" href="/resources/css/main3.css">


<script>
	(function(d, s, i) {
		var se = d.createElement(s);
		se.type = 'text/javascript';
		se.async = true;
		se.src = '//assets.datarize.ai/logger/genesis.' + i + '.min.js';
		var x = d.getElementsByTagName(s)[0];
		x.parentNode.insertBefore(se, x);
	})(document, 'script', '11185');
</script>
<!-- Kakao web SDK -->
<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>

<!-- tracker vendors -->
<script async
	src="https://www.googletagmanager.com/gtag/js?id=AW-775263643"></script>
<script async
	src="https://www.googletagmanager.com/gtag/js?id=G-76FWDWEP0Y"></script>
<script type="text/javascript" charset="UTF-8"
	src="//t1.daumcdn.net/adfit/static/kp.js"></script>
<script type="text/javascript" src="//static.criteo.net/js/ld/ld.js"
	async="true"></script>
<script src="//wcs.naver.net/wcslog.js"></script>
<!-- idus가 출처인 js코드 -->
<script
	src="https://cdn.idus.kr/www/73840b1fad129bc627d28db19bb984ff64572f7c/resources/dist/js/vendor.client.min.js"></script>
<script
	src="https://cdn.idus.kr/www/73840b1fad129bc627d28db19bb984ff64572f7c/resources/dist/js/vuepack.bundle.js"></script>
<script
	src="https://cdn.idus.kr/www/73840b1fad129bc627d28db19bb984ff64572f7c/resources/dist/js/vuepack.js"></script>
<style>
.icon-iduslogo {
	display: none;
}
</style>
</head>
<body>
	<div data-vue="token"></div>
	<div data-vue="globalUser"></div>
	<div data-vue="resizeHandler"></div>
	<div data-vue="ToastPopup"></div>
	<div class="wrap">
		<div class="head_banner_group">
			<div data-vue="TopBanner"></div>
			<script>
				vuepack.create([ {
					selector : '[data-vue="TopBanner"]',
					component : 'TopBanner',
				}, ]);
			</script>
		</div>


		<header id="header" class="header ">
			<input type="hidden" name="isLoggedIn" value="">
			<div class="top-navigation full-w">
				<div class="inner-w clf">
					<style>
.menu-dropdown {
	display: none;
}

.menu-dropdown.show {
	display: block;
}
</style>

					<div class="nav-btn ui-dropdown" data-disabled="hover"
						onmouseover="showDropdown('app-install-guide')"
						onmouseout="hideDropdown('app-install-guide')">
						<input readonly type="text" name="" class="btn-dropdown reset"
							value="빈스몰 앱 설치하기">
						<section class="menu-dropdown app-install-guide"
							id="app-install-guide">
							<h1>빈스몰을 스마트폰으로 더욱 편리하게 사용하세요.</h1>
							<ol>
								<li>
									<h2>1. 문자로 앱설치 안내받기(앱 출시예정)</h2>
									<form class="form-sms" method="post">
										<label class="input-text"> <input type="text"
											placeholder="'-' 없이 번호를 입력하세요" name="cell_phone" required>
										</label>
										<button type="submit" class="btn btn-s btn-point">전송</button>
									</form> <span>앱 설치 URL 전송을 위하여 휴대폰번호를 입력하며<br />입력된 정보는 저장되지
										않습니다.
								</span>
								</li>
								<li>
									<h2>2. 앱스토어에서 직접 설치하기</h2>
									<p>빈스몰 앱을 스마트폰에 더욱 편리하게 사용하려면 아래의 단계를 따라주세요:</p>
									<ol>
										<li>스마트폰의 앱스토어(예: App Store 또는 Google Play 스토어)를 엽니다.</li>
										<li>앱스토어의 검색 창에 "빈스몰"을 입력합니다.</li>
										<li>검색 결과에서 빈스몰 앱을 찾아 선택합니다.</li>
										<li>선택한 앱 페이지에서 "설치" 버튼을 눌러 앱을 다운로드합니다.</li>
										<li>다운로드가 완료되면 빈스몰 앱을 열고 회원가입 또는 로그인을 진행합니다.</li>
										<li>이제 빈스몰 앱을 스마트폰에서 편리하게 이용할 수 있습니다.</li>
									</ol>
								</li>
							</ol>
						</section>

					</div>

					<nav class="fr">
						<input type="text" id="current_user_email" class="hidden"
							name="current_user_email" value="" readonly>
					</nav>

					<script>
						function showDropdown(menuId) {
							var dropdownMenu = document.getElementById(menuId);
							dropdownMenu.classList.add("show");
						}

						function hideDropdown(menuId) {
							var dropdownMenu = document.getElementById(menuId);
							dropdownMenu.classList.remove("show");
						}
					</script>

					<style>
.menu-dropdown {
	display: none;
}

.menu-dropdown.show {
	display: block;
}
</style>



					<div class="nav-btn ui-dropdown"
						onmouseover="showDropdown('customer-service')"
						onmouseout="hideDropdown('customer-service')">
						<button type="button" class="btn-dropdown">고객센터</button>
						<ul class="menu-dropdown" id="customer-service">
							<li><a href="/notice/notice">공지사항</a></li>
							<li><a href="/notice/inquire">자주 묻는 질문</a></li>
							<li><a href="/board/kkb_boardList">Q&A 게시판</a></li>
						</ul>
					</div>

					<script>
						function showDropdown(menuId) {
							var dropdownMenu = document.getElementById(menuId);
							dropdownMenu.classList.add("show");
						}

						function hideDropdown(menuId) {
							var dropdownMenu = document.getElementById(menuId);
							dropdownMenu.classList.remove("show");
						}
					</script>



					<c:if test="${member == null}">
						<!-- 로그인되지 않은 상태 -->
						<div class="login_button">
							<a href="/member/login">로그인 </a> <a href="/member/join">회원가입</a>
						</div>
					</c:if>

					<c:if test="${member != null}">
						<!-- 로그인된 상태 -->
						<div class="login_success_area">
							<span>회원: ${member.memberName}</span> <span>충전금액: <fmt:formatNumber
									value="${member.money}" pattern="\#,###.##" /></span> <span>포인트:
								<fmt:formatNumber value="${member.point}" pattern="#,###" />
							</span> <a href="/member/logout.do">로그아웃</a>
						</div>
					</c:if>
					</nav>
				</div>
			</div>

			<div class="bg-wrapper" data-vue="SearchHeader">
				<div class="inner-w top">
					<h1 class="logo">
						<a href="/" class="icon-logo"> <img id="logo-image"
							src="resources/img/kkblogo.png">
						</a>
					</h1>

					<nav class="service-nav">
						<a href="/" class="active">작품</a> <a href="/oc" class="">김경빈
							블로그 보러가기</a>
					</nav>
					<div class="main-search">
						<form class="naver-shopping-form"
							action="https://search.shopping.naver.com/search" method="GET">
							<input id="header-search" type="text" autocomplete="off"
								name="query" value="가방" placeholder="검색어를 입력하세요"> <input
								type="hidden" name="channel" value="user"> <label
								class="searchLabel">
								<button type="submit" name="btq" value="all">
									<i class="naver-icon-search"></i>
								</button>
							</label>

						</form>
					</div>
					<nav class="profile-links">
						<a href="/w/me" class="btn"> <i class="icon-mypage"></i> 내 정보
						</a> <a id="my-cart-button" href="/w/cart" class="btn"> <span
							class="cart-counter"></span> <i class="icon-cart"></i> 장바구니
						</a>

					</nav>

				</div>
			</div>
			<div class="full-w gnb-scroll " data-ui="gnb-scroll"
				data-state="static">

				<div class="inner-w container_gnb" data-ui="gnb">
					<ul class="ui_gnb" data-state="" data-type="">
						<li class="ui_gnb__menu"><span>카테고리</span>
							<div class="ui_gnb__submenu">
								<ul>
									<li><a href="/category/Dessert"
										data-log-label="product_category"
										data-log-object="5c6bc7d4-7760-4702-b63f-7f29eca479e3">디저트/베이커리</a>
									</li>
									<li><a href="/category/Beverage"
										data-log-label="product_category"
										data-log-object="613ac4c3-df73-4a0f-b3dd-362849dabb2a">음료</a>
									</li>
									<li><a href="/category/traditional_liquor"
										data-log-label="product_category"
										data-log-object="fa340e0b-f4b1-4aba-8d9c-a29086d5a8a4">전통주</a>
									</li>
									<li><a href="/category/Handmade_side_dishes"
										data-log-label="product_category"
										data-log-object="b3f853b9-333d-4eec-ad04-e4604d9d501b">수제
											반찬</a></li>
									<li><a href="/category/Handmade_food"
										data-log-label="product_category"
										data-log-object="8daa0fc3-d370-46c5-a58b-9a0c71a6ae08">수제
											먹거리</a></li>
									<li><a href="/category/Agricultural_and_fishery"
										data-log-label="product_category"
										data-log-object="4a8cbc36-3af8-4b75-af01-8795782df80d">농축수산물</a>
									</li>
									<li><a href="/category/Clothing"
										data-log-label="product_category"
										data-log-object="d9e8a56d-ae4c-4020-b043-9417fe26fbec">의류/홈웨어</a>
									</li>
									<li><a href="/category/fashion_miscellaneous_goods"
										data-log-label="product_category"
										data-log-object="1616d42d-ea77-11e4-88d5-06530c0000b4">패션잡화</a>
									</li>
									<li><a href="/category/Wallet"
										data-log-label="product_category"
										data-log-object="a9970f75-ea75-11e4-8a46-06fd000000c2">지갑</a>
									</li>
									<li><a href="/category/Bags"
										data-log-label="product_category"
										data-log-object="bc5f4be5-c6bc-11e3-8b03-06fd000000c2">가방/파우치</a>
									</li>
								</ul>
								<ul>
									<li><a href="/category/Clock"
										data-log-label="product_category"
										data-log-object="bc6a17ba-ea75-11e4-8878-06a6fa0000b9">시계</a>
									</li>
									<li><a href="/category/Home_Fabric"
										data-log-label="product_category"
										data-log-object="8b4bf95d-c6bc-11e3-8577-06f4fe0000b5">홈
											패브릭</a></li>
									<li><a href="/category/men_shoes"
										data-log-label="product_category"
										data-log-object="1fc3c71a-88d6-4333-a09e-178e85bb742f">남성신발/수제화</a>
									</li>
									<li><a href="/category/women_shoes"
										data-log-label="product_category"
										data-log-object="65477a55-7f4f-4a0f-9b05-dcaa271a8385">여성신발/수제화</a>
									</li>
									<li><a href="/category/Child"
										data-log-label="product_category"
										data-log-object="0556009b-f9c6-11e3-8363-06fd000000c2">육아/아동</a>
									</li>
									<li><a href="/category/A_ring"
										data-log-label="product_category"
										data-log-object="387867a4-0da4-11e4-873e-06f4fe0000b5">반지</a>
									</li>
									<li><a href="/category/Earrings"
										data-log-label="product_category"
										data-log-object="ac599662-0cdf-11e4-85f1-06fd000000c2">귀걸이</a>
									</li>
									<li><a href="/category/Necklace"
										data-log-label="product_category"
										data-log-object="aef50134-0cdf-11e4-8182-06530c0000b4">목걸이</a>
									</li>
									<li><a href="/category/Bracelet"
										data-log-label="product_category"
										data-log-object="b12b42eb-0cdf-11e4-85f1-06fd000000c2">팔찌</a>
									</li>
									<li><a href="/category/Accessories"
										data-log-label="product_category"
										data-log-object="f0475fb1-c6bb-11e3-954e-06a6fa0000b9">기타
											액세서리</a></li>
								</ul>
								<ul>
									<li><a href="/category/flower"
										data-log-label="product_category"
										data-log-object="bec56c93-ea75-11e4-8a46-06fd000000c2">꽃/식물</a>
									</li>
									<li><a href="/category/Candle"
										data-log-label="product_category"
										data-log-object="976cfb97-c6bc-11e3-83fc-06530c0000b4">캔들/디퓨저</a>
									</li>
									<li><a href="/category/Home_interior"
										data-log-label="product_category"
										data-log-object="66299878-c6bc-11e3-8577-06f4fe0000b5">홈인테리어</a>
									</li>
									<li><a href="/category/Pottery"
										data-log-label="product_category"
										data-log-object="c5010d79-e666-11e3-9874-06fd000000c2">도자기</a>
									</li>
									<li><a href="/category/Kitchen"
										data-log-label="product_category"
										data-log-object="30b3ae0f-c6bc-11e3-8577-06f4fe0000b5">주방/생활</a>
									</li>
									<li><a href="/category/furniture"
										data-log-label="product_category"
										data-log-object="e866743b-0a33-4030-80c1-3a1ec943b0e4">가구</a>
									</li>
									<li><a href="/category/Toy"
										data-log-label="product_category"
										data-log-object="fa8c9d8e-c6bb-11e3-8577-06f4fe0000b5">인형/장난감</a>
									</li>
									<li><a href="/category/companion_goods"
										data-log-label="product_category"
										data-log-object="f6335574-c6bb-11e3-83fc-06530c0000b4">반려용품/간식</a>
									</li>
									<li><a href="/category/Fine_art"
										data-log-label="product_category"
										data-log-object="002e6aef-c6bc-11e3-8b03-06fd000000c2">파인아트</a>
									</li>
									<li><a href="/category/Craft"
										data-log-label="product_category"
										data-log-object="9f4b9a69-c6bc-11e3-954e-06a6fa0000b9">공예</a>
									</li>
								</ul>
								<ul>
									<li><a href="/category/phonecase"
										data-log-label="product_category"
										data-log-object="b3b31a1b-ea75-11e4-8a46-06fd000000c2">폰케이스</a>
									</li>
									<li><a href="/category/Digital_Accessories"
										data-log-label="product_category"
										data-log-object="a923ab08-0643-11e4-98ba-06f4fe0000b5">디지털
											액세서리</a></li>
									<li><a href="/category/Phrase"
										data-log-label="product_category"
										data-log-object="b00844bc-c6bc-11e3-8577-06f4fe0000b5">문구/팬시</a>
									</li>
									<li><a href="/category/caricature"
										data-log-label="product_category"
										data-log-object="e3ba45b3-c165-11e3-8788-06fd000000c2">페인팅/캐리커쳐</a>
									</li>
									<li><a href="/category/Vehicle_Supplies"
										data-log-label="product_category"
										data-log-object="1941c7fe-06f6-4e4f-b54d-ea9bdd9b6c30">차량용품</a>
									</li>
									<li><a href="/category/Books"
										data-log-label="product_category"
										data-log-object="8ce1f0e9-0c96-41b4-9b19-cae4dd202a05">도서</a>
									</li>
									<li><a href="/category/Perfume"
										data-log-label="product_category"
										data-log-object="869abe46-d8d5-4eed-bc6f-7a0359d9b5b6">향수</a>
									</li>
									<li><a href="/category/Beauty"
										data-log-label="product_category"
										data-log-object="c468e7db-ea75-11e4-b903-06f4fe0000b5">뷰티</a>
									</li>
									<li><a href="/category/Hair"
										data-log-label="product_category"
										data-log-object="6b1313ff-dc5b-463c-b0a8-0c0e1fb0f5fb">헤어/바디</a>
									</li>
									<li><a href="/category/Handmade_soap"
										data-log-label="product_category"
										data-log-object="be3cf842-ea74-11e4-8878-06a6fa0000b9">수제비누/클렌징</a>
									</li>
								</ul>
								<ul>
									<li><a href="/category/Allowance_event"
										data-log-label="product_category"
										data-log-object="4094e656-c6bf-11e3-83fc-06530c0000b4">용돈이벤트/기타</a>
									</li>
								</ul>
							</div></li>
						<li class="ui_gnb__menu " data-state=""><a href="/main">홈</a>
						</li>
						<li class="ui_gnb__menu " data-state=""><a
							href="/other_categories/purchase">구매내역</a></li>
						<li class="ui_gnb__menu " data-state=""><a
							href="/other_categories/review">지연 배송 신고</a></li>
						<li class="ui_gnb__menu " data-state=""><a
							href="/category/A_ring">판매자 추천</a></li>
						<li class="ui_gnb__menu " data-state=""><a
							href="/other_categories/recommendation">실시간 추천</a></li>
						<li class="ui_gnb__menu " data-state=""><a
							href="/category/A_ring">인기 작품</a></li>
						<li class="ui_gnb__menu " data-state=""><a
							href="/other_categories/season_discount">시즌할인</a></li>
						<li class="ui_gnb__menu " data-state=""><a
							href="/other_categories/latest">의상 나눔</a></li>
						<li class="ui_gnb__menu " data-state=""><a
							href="https://bristle-house-c2d.notion.site/fbdf277b33984ffba1046be4320c2923">인기판매자</a>
						</li>
						<li class="ui_gnb__menu " data-state=""><a
							href="${pageContext.request.contextPath}/play-tetris">게임경품이벤트</a>
						</li>
						<li class="ui_gnb__menu " data-state=""><a
							href="/other_categories/diy">나만의 DIY</a></li>
						<li class="ui_gnb__menu " data-state="active"><a
							href="/w/main/category">카테고리</a></li>
					</ul>
				</div>
			</div>

			<!-- 모바일용 푸터 gnb -->
			<nav class="footer_gnb mobile-show split-5" data-disabled="">

				<a href="/" class=""> 작품 </a> <a href="/oc" class=""
					data-log-object="class"> 룰렛 </a> <a href="#"> 검색 </a> <a
					href="/w/main/category" class="active"> 카테고리 </a> <a
					href="/personal_profile" class="" data-log-object="class"> 내 정보
				</a>
				<div data-vue="bottom-nav-message-nudging"></div>
			</nav>
			<script>
				var components = [];
				var redirectUrl = new vuepack.externals.Applink()
						.generateWebUrlByScheme('');
				var justShow = false;
				if (redirectUrl === '/oc')
					justShow = true;
				var topNavNudging = {
					imageUrl : '',
					location : '',
					message : '',
					scheme : redirectUrl,
					justShow : justShow
				};
				var bottomNavNudging = {
					imageUrl : '',
					location : '',
					message : '',
					scheme : redirectUrl,
					justShow : justShow
				};
				components.push({
					selector : '[data-vue="bottom-nav-message-nudging"]',
					component : 'BottomNavigationMessageNudging',
					props : {
						gnbTooltip : bottomNavNudging,
						isEdu : false
					}
				});
				var encodingWord = '';
				var decodingWord = encodingWord ? vuepack.externals.vuepackDecoder
						.vuepackDecode(encodingWord)
						: '';
				components
						.push({
							selector : '[data-vue="SearchHeader"]',
							component : 'SearchHeader',
							props : {
								placeholder : '김경빈의 생일날을 검색해보세요! ',
								placeholderWord : '김경빈의날',
								searchWord : decodingWord,
								popularWordList : [
										{
											"key" : "\uc2a4\uc2b9\uc758\ub0a0",
											"docCount" : 1390000
										},
										{
											"key" : "\ud0a4\ub9c1",
											"docCount" : 950000
										},
										{
											"key" : "\ub124\uc784\ud0dd",
											"docCount" : 686000
										},
										{
											"key" : "\ud3f0\ucf00\uc774\uc2a4",
											"docCount" : 663000
										},
										{
											"key" : "\uc9c0\ube44\uce20",
											"docCount" : 613000
										},
										{
											"key" : "\uadf8\ub9bd\ud1a1",
											"docCount" : 564000
										},
										{
											"key" : "\ubc18\uc9c0",
											"docCount" : 430000
										},
										{
											"key" : "\uce74\ub4dc\uc9c0\uac11",
											"docCount" : 398000
										},
										{
											"key" : "\ucf00\uc774\ud06c",
											"docCount" : 375000
										},
										{
											"key" : "\ucfe0\ud0a4",
											"docCount" : 372000
										},
										{
											"key" : "\ud314\ucc0c",
											"docCount" : 368000
										},
										{
											"key" : "\ub2f5\ub840\ud488",
											"docCount" : 345000
										},
										{
											"key" : "\uac00\ubc29",
											"docCount" : 331000
										},
										{
											"key" : "\ud30c\uc6b0\uce58",
											"docCount" : 310000
										},
										{
											"key" : "\uc57d\uacfc",
											"docCount" : 310000
										},
										{
											"key" : "\ucee4\ud50c\ub9c1",
											"docCount" : 305000
										},
										{
											"key" : "\ubaa9\uac78\uc774",
											"docCount" : 286000
										},
										{
											"key" : "\ud578\ub4dc\ud3f0\ucf00\uc774\uc2a4",
											"docCount" : 280000
										}, {
											"key" : "\uc5d0\ucf54\ubc31",
											"docCount" : 273000
										}, {
											"key" : "\ub9c8\uce74\ub871",
											"docCount" : 269000
										} ],
								hotWordList : [
										{
											"key" : "\ud658\uac11",
											"doc_count" : 14084,
											"diff_rank" : 0
										},
										{
											"key" : "\uac1c\uc131\uc8fc\uc545",
											"doc_count" : 13541,
											"diff_rank" : 0
										},
										{
											"key" : "\ub2e4\uc774\uc5b4\ud2b8",
											"doc_count" : 11480,
											"diff_rank" : 2
										},
										{
											"key" : "\uc5d0\uc5b4\ud31f\ucf00\uc774\uc2a4",
											"doc_count" : 11439,
											"diff_rank" : 0
										},
										{
											"key" : "\uc0dd\uc77c",
											"doc_count" : 10493,
											"diff_rank" : 2
										},
										{
											"key" : "\ud478\ub529",
											"doc_count" : 9740,
											"diff_rank" : 5
										},
										{
											"key" : "\uc57d\uacfc\ucfe0\ud0a4",
											"doc_count" : 9505,
											"diff_rank" : 6
										},
										{
											"key" : "\ucc28\ud0a4\ucf00\uc774\uc2a4",
											"doc_count" : 9174,
											"diff_rank" : -2
										},
										{
											"key" : "\uc778\ud615",
											"doc_count" : 8901,
											"diff_rank" : 99
										},
										{
											"key" : "\ud06c\ub85c\uc2a4\ubc31",
											"doc_count" : 8719,
											"diff_rank" : 0
										},
										{
											"key" : "\ucee4\ud50c",
											"doc_count" : 8651,
											"diff_rank" : 6
										},
										{
											"key" : "\ud53c\uc5b4\uc2f1",
											"doc_count" : 8602,
											"diff_rank" : -4
										},
										{
											"key" : "\ud658\uac11 \ud604\uc218\ub9c9",
											"doc_count" : 8028,
											"diff_rank" : 3
										},
										{
											"key" : "\uc9d1\ub4e4\uc774",
											"doc_count" : 8012,
											"diff_rank" : 99
										},
										{
											"key" : "\ucc28\ub7c9\uc6a9\ubc29\ud5a5\uc81c",
											"doc_count" : 7900,
											"diff_rank" : -6
										},
										{
											"key" : "\ucea0\ud551",
											"doc_count" : 7814,
											"diff_rank" : -1
										},
										{
											"key" : "\ub514\uc800\ud2b8",
											"doc_count" : 7789,
											"diff_rank" : -5
										},
										{
											"key" : "\uac1c\uc5c5\uc120\ubb3c",
											"doc_count" : 7782,
											"diff_rank" : 99
										},
										{
											"key" : "\uce90\ub9ac\uc5b4\ub124\uc784\ud0dd",
											"doc_count" : 7331,
											"diff_rank" : 1
										},
										{
											"key" : "\ub9e5\uc138\uc774\ud504 \uadf8\ub9bd\ud1a1",
											"doc_count" : 7303,
											"diff_rank" : 99
										} ],
								isEdu : false,
								isClassSearch : false,
								topNavNudging : topNavNudging
							}
						});
				vuepack.create(components);

				$(function() {

					$('header#header [data-log-object]').on(
							'click',
							function(event) {
								var logObject = $(event.currentTarget).data(
										'logObject');
								Logger.sendClick({
									section : Section.Gnb,
									object : logObject
								}, true)
							});
					// 알림 모두 보기 로깅

					$('header#header [data-log-noti-object]').on(
							'click',
							function(event) {
								var logObject = $(event.currentTarget).data(
										'logNotiObject');
								Logger.sendClick({
									logLabel : LogLabel.Inbox,
									section : Section.Gnb,
									object : logObject
								}, true)
							});

					$('header#header [data-log-label="product_category"]').on(
							'click',
							function(event) {
								var logObject = $(event.currentTarget).data(
										'logObject');
								Logger.sendClick({
									logLabel : LogLabel.ProductCategory,
									section : Section.Gnb,
									object : logObject,
									objectType : ObjectType.ProductCategoryUuid
								}, true);
							})

				});
			</script>
		</header>
		<div class="dimmed-background"></div>
		<div data-vue="category-detail">
			<div id="content" class="content" data-page="2dep-list">
				<div class="inner-w mobile-full hide-gnb">
					<div class="ui_title m-mod mobile-hide">
						<h2 class="ui_title__txt">반지[빈스몰 인기카테고리]</h2>
					</div>
				</div>
				<div class="inner-w">
					<div class="ui_grid mt10">
						<div class="ui_grid__cols--4">
							<div class="ui_grid__item">
								<div class="base-card card--vertical product">
									<a href="/w/product/" target="_blank">
										<div class="card-thumb-cover">
											<div class="product-thumb-img"
												style="background-image: url('/resources/category/img/ring1.jpg')"></div>
											<div class="product-bookmark">
												<button class="full-button">
													<button type="button" class="sp-icon icon-favorite"></button>
												</button>
											</div>
										</div>



										<div class="card-info product-info">
											<!-- 작가 이름 -->
											<div class="product-info__artist-name">반지마을 💎판매자 강력추천💎</div>
											<!-- 제목 -->
											<div class="product-info__name">💍 맞춤형 디자인 반지 - 나만의 특별한
												반지를 만나보세요!</div>
											<!-- 가격 -->
											<div class="product-info__price">
												<span class="sale-rate"> 30% </span> <span
													class="price-sale"> 210,000<span
													style="font-size: 14px;">원</span>
												</span>
												<div class="price-origin--before-sale">
													<del>300,000원</del>
												</div>
											</div>
											<div class="product-info__badge-group"
												style="margin-top: 12px">
												<div class="badge badge-repurchase">재구매 많은</div>
											</div>
											<div class="product-info__review">
												<div class="review-rating">
													<span class="ui_rating fr" data-value=4.9> <i
														style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i> <i style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i> <i style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i> <i style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i> <i style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i>
													</span> <span class="review-count">(1918)</span>
												</div>
												<div class="review-comment">
													<div class="review-comment__badge">후기</div>
													<div class="review-comment__contents">"이 반지 정말 예쁘고
														퀄리티도 좋아요! 만족스럽게 착용 중입니다."</div>
												</div>
											</div>
										</div>
									</a>
								</div>
							</div>
							<div class="ui_grid__item">
								<div class="base-card card--vertical product">
									<a href="/w/product/" target="_blank">
										<div class="card-thumb-cover">
											<div class="product-thumb-img"
												style="background-image: url('/resources/category/img/ring2.jpg')"></div>
											<div class="product-bookmark">
												<button class="full-button">
													<button type="button" class="sp-icon icon-favorite"></button>
												</button>
											</div>
										</div>
										<div class="card-info product-info">
											<!-- 작가 이름 -->
											<div class="product-info__artist-name">보석모험</div>
											<!-- 제목 -->
											<div class="product-info__name">💎개성 넘치는 나만의 반지💎 런칭할인
												중</div>
											<!-- 가격 -->
											<div class="product-info__price">
												<span class="sale-rate"> 15% </span> <span
													class="price-sale"> 340,000<span
													style="font-size: 14px;">원</span>
												</span>
												<div class="price-origin--before-sale">
													<del>400,000원</del>
												</div>
											</div>
											<div class="product-info__badge-group"
												style="margin-top: 12px"></div>
											<div class="product-info__review">
												<div class="review-rating">
													<span class="ui_rating fr" data-value=5> <i
														style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i> <i style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i> <i style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i> <i style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i> <i style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i>
													</span> <span class="review-count">(278)</span>
												</div>
												<div class="review-comment">
													<div class="review-comment__badge">후기</div>
													<div class="review-comment__contents">"판매자분이 친절하게
														상담해주셔서 원하는 디자인으로 맞춤 제작했어요. 완전 만족!"</div>
												</div>
											</div>
										</div>
									</a>
								</div>
							</div>
							<div class="ui_grid__item">
								<div class="base-card card--vertical product">
									<a href="/w/product/" target="_blank">
										<div class="card-thumb-cover">
											<div class="product-thumb-img"
												style="background-image: url('/resources/category/img/ring3.jpg')"></div>
											<div class="product-bookmark">
												<button class="full-button">
													<button type="button" class="sp-icon icon-favorite"></button>
												</button>
											</div>
										</div>
										<div class="card-info product-info">
											<!-- 작가 이름 -->
											<div class="product-info__artist-name">화려한반지</div>
											<!-- 제목 -->
											<div class="product-info__name">💖런칭 이벤트💖 특별한 커스텀 반지로
												선물하세요</div>
											<!-- 가격 -->
											<div class="product-info__price">
												<span class="sale-rate"> 20% </span> <span
													class="price-sale"> 160,000<span
													style="font-size: 14px;">원</span>
												</span>
												<div class="price-origin--before-sale">
													<del>200,000원</del>
												</div>
											</div>
											<div class="product-info__badge-group"
												style="margin-top: 12px">
												<div class="badge badge-delivery">무료배송</div>
											</div>
											<div class="product-info__review">
												<div class="review-rating">
													<span class="ui_rating fr" data-value=4.9> <i
														style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i> <i style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i> <i style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i> <i style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i> <i style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i>
													</span> <span class="review-count">(437)</span>
												</div>
												<div class="review-comment">
													<div class="review-comment__badge">후기</div>
													<div class="review-comment__contents">"반지가 예상보다 더
														아름답고 고급스러워서 놀랐어요. 가격 대비 훌륭한 선택이었습니다."</div>
												</div>
											</div>
										</div>
									</a>
								</div>
							</div>
							<div class="ui_grid__item">
								<div class="base-card card--vertical product">
									<a href="/w/product/" target="_blank">
										<div class="card-thumb-cover">
											<div class="product-thumb-img"
												style="background-image: url('/resources/category/img/ring4.jpg')"></div>
											<div class="product-bookmark">
												<button class="full-button">
													<button type="button" class="sp-icon icon-favorite"></button>
												</button>
											</div>
										</div>
										<div class="card-info product-info">
											<!-- 작가 이름 -->
											<div class="product-info__artist-name">반짝링</div>
											<!-- 제목 -->
											<div class="product-info__name">💍고급 커스텀 반지💍 특별 할인 중</div>
											<!-- 가격 -->
											<div class="product-info__price">
												<span class="sale-rate"> 25% </span> <span
													class="price-sale"> 750,000<span
													style="font-size: 14px;">원</span>
												</span>
												<div class="price-origin--before-sale">
													<del>1,000,000원</del>
												</div>
											</div>
											<div class="product-info__badge-group"
												style="margin-top: 12px">
												<div class="badge badge-repurchase">재구매 많은</div>
											</div>
											<div class="product-info__review">
												<div class="review-rating">
													<span class="ui_rating fr" data-value=4.8> <i
														style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i> <i style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i> <i style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i> <i style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i> <i style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i>
													</span> <span class="review-count">(846)</span>
												</div>
												<div class="review-comment">
													<div class="review-comment__badge">후기</div>
													<div class="review-comment__contents">"세련된 디자인과 빛나는
														보석들이 환상적이에요. 주변에서 자꾸 칭찬받는 반지입니다." !</div>
												</div>
											</div>
										</div>
									</a>
								</div>
							</div>
							<div class="ui_grid__item">
								<div class="base-card card--vertical product">
									<a href="/w/product/" target="_blank">
										<div class="card-thumb-cover">
											<div class="product-thumb-img"
												style="background-image: url('/resources/category/img/ring5.jpg')"></div>
											<div class="product-bookmark">
												<button class="full-button">
													<button type="button" class="sp-icon icon-favorite"></button>
												</button>
											</div>
										</div>
										<div class="card-info product-info">
											<!-- 작가 이름 -->
											<div class="product-info__artist-name">트렌디반지</div>
											<!-- 제목 -->
											<div class="product-info__name">💎나만의 스타일 반영한 반지💎 특가로
												만나보세요</div>
											<!-- 가격 -->
											<div class="product-info__price">
												<span class="price-origin"> 500,000<span
													style="font-size: 14px;">원</span>
												</span>
											</div>
											<div class="product-info__badge-group"
												style="margin-top: 8px">
												<div class="badge badge-delivery">무료배송</div>
											</div>
											<div class="product-info__review">
												<div class="review-rating">
													<span class="ui_rating fr" data-value=4.8> <i
														style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i> <i style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i> <i style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i> <i style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i> <i style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i>
													</span> <span class="review-count">(127)</span>
												</div>
												<div class="review-comment">
													<div class="review-comment__badge">후기</div>
													<div class="review-comment__contents">"구매 과정부터 배송까지
														원활하게 진행되어 좋았고, 반지의 품질도 매우 좋아서 만족합니다."</div>
												</div>
											</div>
										</div>
									</a>
								</div>
							</div>
							<div class="ui_grid__item">
								<div class="base-card card--vertical product">
									<a href="/w/product/" target="_blank">
										<div class="card-thumb-cover">
											<div class="product-thumb-img"
												style="background-image: url('/resources/category/img/ring6.jpg')"></div>
											<div class="product-bookmark">
												<button class="full-button">
													<button type="button" class="sp-icon icon-favorite"></button>
												</button>
											</div>
										</div>
										<div class="card-info product-info">
											<!-- 작가 이름 -->
											<div class="product-info__artist-name">반지포인트</div>
											<!-- 제목 -->
											<div class="product-info__name">💖맞춤형 디자인 반지💖 특별 가격으로
												만나보세요</div>
											<!-- 가격 -->
											<div class="product-info__price">
												<span class="price-origin"> 150,000<span
													style="font-size: 14px;">원</span>
												</span>
											</div>
											<div class="product-info__badge-group"
												style="margin-top: 8px">
												<div class="badge badge-delivery">무료배송</div>
											</div>
											<div class="product-info__review">
												<div class="review-rating">
													<span class="ui_rating fr" data-value=4.9> <i
														style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i> <i style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i> <i style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i> <i style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i> <i style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i>
													</span> <span class="review-count">(965)</span>
												</div>
												<div class="review-comment">
													<div class="review-comment__badge">후기</div>
													<div class="review-comment__contents">"맞춤 제작해서 완벽하게
														맞는 반지를 받았어요. 소중한 선물로 주고 싶은 아이템입니다."</div>
												</div>
											</div>
										</div>
									</a>
								</div>
							</div>
							<div class="ui_grid__item">
								<div class="base-card card--vertical product">
									<a href="/w/product/" target="_blank">
										<div class="card-thumb-cover">
											<div class="product-thumb-img"
												style="background-image: url('/resources/category/img/ring7.jpg')"></div>
											<div class="product-bookmark">
												<button class="full-button">
													<button type="button" class="sp-icon icon-favorite"></button>
												</button>
											</div>
										</div>
										<div class="card-info product-info">
											<!-- 작가 이름 -->
											<div class="product-info__artist-name">세련된보석</div>
											<!-- 제목 -->
											<div class="product-info__name">💍개성 넘치는 커스텀 반지💍 런칭
												이벤트 중</div>
											<!-- 가격 -->
											<div class="product-info__price">
												<span class="sale-rate"> 35% </span> <span
													class="price-sale"> 1,950,000<span
													style="font-size: 14px;">원</span>
												</span>
												<div class="price-origin--before-sale">
													<del>3,000,000원</del>
												</div>
											</div>
											<div class="product-info__badge-group"
												style="margin-top: 12px"></div>
											<div class="product-info__review">
												<div class="review-rating">
													<span class="ui_rating fr" data-value=5> <i
														style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i> <i style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i> <i style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i> <i style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i> <i style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i>
													</span> <span class="review-count">(44)</span>
												</div>
												<div class="review-comment">
													<div class="review-comment__badge">후기</div>
													<div class="review-comment__contents">"피부와 잘 어울리고
														착용감도 편안한 반지에요. 일상적으로 매일 착용하고 있어요."</div>
												</div>
											</div>
										</div>
									</a>
								</div>
							</div>
							<div class="ui_grid__item">
								<div class="base-card card--vertical product">
									<a href="/w/product/" target="_blank">
										<div class="card-thumb-cover">
											<div class="product-thumb-img"
												style="background-image: url('/resources/category/img/ring8.jpg')"></div>
											<div class="product-bookmark">
												<button class="full-button">
													<button type="button" class="sp-icon icon-favorite"></button>
												</button>
											</div>
										</div>
										<div class="card-info product-info">
											<!-- 작가 이름 -->
											<div class="product-info__artist-name">젬스타일</div>
											<!-- 제목 -->
											<div class="product-info__name">💎특별한 선물, 나만의 반지💎 특가
												이벤트 중</div>
											<!-- 가격 -->
											<div class="product-info__price">
												<span class="sale-rate"> 50% </span> <span
													class="price-sale"> 400,000<span
													style="font-size: 14px;">원</span>
												</span>
												<div class="price-origin--before-sale">
													<del>800,000원</del>
												</div>
											</div>
											<div class="product-info__badge-group"
												style="margin-top: 12px"></div>
											<div class="product-info__review">
												<div class="review-rating">
													<span class="ui_rating fr" data-value=5> <i
														style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i> <i style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i> <i style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i> <i style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i> <i style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i>
													</span> <span class="review-count">(353)</span>
												</div>
												<div class="review-comment">
													<div class="review-comment__badge">후기</div>
													<div class="review-comment__contents">"반지마다 디자인이 다양해서
														선택하기가 어려웠지만, 마음에 드는 반지를 찾을 수 있었어요."</div>
												</div>
											</div>
										</div>
									</a>
								</div>
							</div>
							<div class="ui_grid__item">
								<div class="base-card card--vertical product">
									<a href="/w/product/" target="_blank">
										<div class="card-thumb-cover">
											<div class="product-thumb-img"
												style="background-image: url('/resources/category/img/ring9.jpg')"></div>
											<div class="product-bookmark">
												<button class="full-button">
													<button type="button" class="sp-icon icon-favorite"></button>
												</button>
											</div>
										</div>
										<div class="card-info product-info">
											<!-- 작가 이름 -->
											<div class="product-info__artist-name">반지러시</div>
											<!-- 제목 -->
											<div class="product-info__name">특가할인🔥 특별 커스텀 반지로 독특함을
												선사하세요</div>
											<!-- 가격 -->
											<div class="product-info__price">
												<span class="sale-rate"> 5% </span> <span class="price-sale">
													237,500<span style="font-size: 14px;">원</span>
												</span>
												<div class="price-origin--before-sale">
													<del>250,000원</del>
												</div>
											</div>
											<div class="product-info__badge-group"
												style="margin-top: 12px"></div>
											<div class="product-info__review">
												<div class="review-rating">
													<span class="ui_rating fr" data-value=4.9> <i
														style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i> <i style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i> <i style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i> <i style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i> <i style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i>
													</span> <span class="review-count">(399)</span>
												</div>
												<div class="review-comment">
													<div class="review-comment__badge">후기</div>
													<div class="review-comment__contents">"퀄리티가 너무 좋아서 오래
														사용할 수 있을 것 같아요. 가격도 합리적이어서 만족합니다."</div>
												</div>
											</div>
										</div>
									</a>
								</div>
							</div>
							<div class="ui_grid__item">
								<div class="base-card card--vertical product">
									<a href="/w/product/" target="_blank">
										<div class="card-thumb-cover">
											<div class="product-thumb-img"
												style="background-image: url('/resources/category/img/ring10.jpg')"></div>
											<div class="product-bookmark">
												<button class="full-button">
													<button type="button" class="sp-icon icon-favorite"></button>
												</button>
											</div>
										</div>
										<div class="card-info product-info">
											<!-- 작가 이름 -->
											<div class="product-info__artist-name">반지꽃길</div>
											<!-- 제목 -->
											<div class="product-info__name">💍특별한 나만의 반지, 런칭할인 특가!
											</div>
											<!-- 가격 -->
											<div class="product-info__price">
												<span class="price-origin"> 300,000<span
													style="font-size: 14px;">원</span>
												</span>
											</div>
											<div class="product-info__badge-group"
												style="margin-top: 8px">
												<div class="badge badge-delivery">무료배송</div>
											</div>
											<div class="product-info__review">
												<div class="review-rating">
													<span class="ui_rating fr" data-value=4.9> <i
														style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i> <i style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i> <i style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i> <i style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i> <i style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i>
													</span> <span class="review-count">(244)</span>
												</div>
												<div class="review-comment">
													<div class="review-comment__badge">후기</div>
													<div class="review-comment__contents">"반지마다 세심하게 디테일이
														살려져 있어서 특별한 느낌이에요. 장식으로 착용하기도 좋아요."</div>
												</div>
											</div>
										</div>
									</a>
								</div>
							</div>
							<div class="ui_grid__item">
								<div class="base-card card--vertical product">
									<a href="/w/product/" target="_blank">
										<div class="card-thumb-cover">
											<div class="product-thumb-img"
												style="background-image: url('/resources/category/img/ring11.jpg')"></div>
											<div class="product-bookmark">
												<button class="full-button">
													<button type="button" class="sp-icon icon-favorite"></button>
												</button>
											</div>
										</div>
										<div class="card-info product-info">
											<!-- 작가 이름 -->
											<div class="product-info__artist-name">보석하우스</div>
											<!-- 제목 -->
											<div class="product-info__name">✨개성 넘치는 커스텀 반지, 독특한
												디자인으로 빛나세요!</div>
											<!-- 가격 -->
											<div class="product-info__price">
												<span class="sale-rate"> 15% </span> <span
													class="price-sale"> 340,000<span
													style="font-size: 14px;">원</span>
												</span>
												<div class="price-origin--before-sale">
													<del>400,000원</del>
												</div>
											</div>
											<div class="product-info__badge-group"
												style="margin-top: 12px"></div>
											<div class="product-info__review">
												<div class="review-rating">
													<span class="ui_rating fr" data-value=4.8> <i
														style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i> <i style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i> <i style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i> <i style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i> <i style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i>
													</span> <span class="review-count">(1614)</span>
												</div>
												<div class="review-comment">
													<div class="review-comment__badge">후기</div>
													<div class="review-comment__contents">"반짝반짝 빛나는 반지를
														찾고 있었는데, 이 제품은 기대 이상으로 아름다워서 감탄했어요."</div>
												</div>
											</div>
										</div>
									</a>
								</div>
							</div>
							<div class="ui_grid__item">
								<div class="base-card card--vertical product">
									<a href="/w/product/" target="_blank">
										<div class="card-thumb-cover">
											<div class="product-thumb-img"
												style="background-image: url('/resources/category/img/ring12.jpg')"></div>
											<div class="product-bookmark">
												<button class="full-button">
													<button type="button" class="sp-icon icon-favorite"></button>
												</button>
											</div>
										</div>
										<div class="card-info product-info">
											<!-- 작가 이름 -->
											<div class="product-info__artist-name">반지갤러리</div>
											<!-- 제목 -->
											<div class="product-info__name">💎맞춤형 반지, 품격 있는 나만의 보석
												제작 서비스</div>
											<!-- 가격 -->
											<div class="product-info__price">
												<span class="sale-rate"> 20% </span> <span
													class="price-sale"> 160,000<span
													style="font-size: 14px;">원</span>
												</span>
												<div class="price-origin--before-sale">
													<del>200,000원</del>
												</div>
											</div>
											<div class="product-info__badge-group"
												style="margin-top: 12px"></div>
											<div class="product-info__review">
												<div class="review-rating">
													<span class="ui_rating fr" data-value=4.8> <i
														style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i> <i style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i> <i style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i> <i style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i> <i style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i>
													</span> <span class="review-count">(104)</span>
												</div>
												<div class="review-comment">
													<div class="review-comment__badge">후기</div>
													<div class="review-comment__contents">"패키지와 함께 도착한
														반지가 예쁘게 포장되어 있어서 받는 순간부터 기분이 좋았어요."</div>
												</div>
											</div>
										</div>
									</a>
								</div>
							</div>
							<div class="ui_grid__item">
								<div class="base-card card--vertical product">
									<a href="/w/product/" target="_blank">
										<div class="card-thumb-cover">
											<div class="product-thumb-img"
												style="background-image: url('/resources/category/img/ring13.jpg')"></div>
											<div class="product-bookmark">
												<button class="full-button">
													<button type="button" class="sp-icon icon-favorite"></button>
												</button>
											</div>
										</div>
										<div class="card-info product-info">
											<!-- 작가 이름 -->
											<div class="product-info__artist-name">반짝반짝</div>
											<!-- 제목 -->
											<div class="product-info__name">🌟고급스러운 반지, 화려한 디자인으로
												특별한 순간을 만들어보세요!</div>
											<!-- 가격 -->
											<div class="product-info__price">
												<span class="price-origin"> 1,000,000<span
													style="font-size: 14px;">원</span>
												</span>
											</div>
											<div class="product-info__badge-group"
												style="margin-top: 8px">
												<div class="badge badge-delivery">무료배송</div>
											</div>
											<div class="product-info__review">
												<div class="review-rating">
													<span class="ui_rating fr" data-value=4.9> <i
														style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i> <i style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i> <i style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i> <i style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i> <i style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i>
													</span> <span class="review-count">(68)</span>
												</div>
												<div class="review-comment">
													<div class="review-comment__badge">후기</div>
													<div class="review-comment__contents">"피부에 자연스럽게 어울리는
														색상과 디자인으로 다양한 스타일링에 활용하기 좋아요."</div>
												</div>
											</div>
										</div>
									</a>
								</div>
							</div>
							<div class="ui_grid__item">
								<div class="base-card card--vertical product">
									<a href="/w/product/" target="_blank">
										<div class="card-thumb-cover">
											<div class="product-thumb-img"
												style="background-image: url('/resources/category/img/ring14.jpg')"></div>
											<div class="product-bookmark">
												<button class="full-button">
													<button type="button" class="sp-icon icon-favorite"></button>
												</button>
											</div>
										</div>
										<div class="card-info product-info">
											<!-- 작가 이름 -->
											<div class="product-info__artist-name">반지스타일</div>
											<!-- 제목 -->
											<div class="product-info__name">💖런칭 기념 특가, 사랑스러운 커스텀
												반지를 만나보세요!</div>
											<!-- 가격 -->
											<div class="product-info__price">
												<span class="sale-rate"> 40% </span> <span
													class="price-sale"> 300,000<span
													style="font-size: 14px;">원</span>
												</span>
												<div class="price-origin--before-sale">
													<del>500,000원</del>
												</div>
											</div>
											<div class="product-info__badge-group"
												style="margin-top: 12px">
												<div class="badge badge-delivery">무료배송</div>
											</div>
											<div class="product-info__review">
												<div class="review-rating">
													<span class="ui_rating fr" data-value=4.8> <i
														style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i> <i style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i> <i style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i> <i style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i> <i style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i>
													</span> <span class="review-count">(163)</span>
												</div>
												<div class="review-comment">
													<div class="review-comment__badge">후기</div>
													<div class="review-comment__contents">"여러 가게를 비교해봤는데,
														이 가격에 이렇게 훌륭한 반지를 구입할 수 있다니 감탄합니다."</div>
												</div>
											</div>
										</div>
									</a>
								</div>
							</div>
							<div class="ui_grid__item">
								<div class="base-card card--vertical product">
									<a href="/w/product/" target="_blank">
										<div class="card-thumb-cover">
											<div class="product-thumb-img"
												style="background-image: url('/resources/category/img/ring15.jpg')"></div>
											<div class="product-bookmark">
												<button class="full-button">
													<button type="button" class="sp-icon icon-favorite"></button>
												</button>
											</div>
										</div>
										<div class="card-info product-info">
											<!-- 작가 이름 -->
											<div class="product-info__artist-name">반지마스터</div>
											<!-- 제목 -->
											<div class="product-info__name">🌈나만의 디자인 반지, 다양한 커스텀
												옵션으로 개성을 표현해보세요!</div>
											<!-- 가격 -->
											<div class="product-info__price">
												<span class="price-origin"> 150,000<span
													style="font-size: 14px;">원</span>
												</span>
											</div>
											<div class="product-info__badge-group"
												style="margin-top: 8px">
												<div class="badge badge-new">NEW</div>
											</div>
											<div class="product-info__review">
												<div class="review-rating">
													<span class="ui_rating fr" data-value=5> <i
														style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i> <i style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i> <i style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i> <i style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i> <i style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i>
													</span> <span class="review-count">(1)</span>
												</div>
												<div class="review-comment">
													<div class="review-comment__badge">후기</div>
													<div class="review-comment__contents">"맞춤 제작으로 원하는
														크기와 디자인으로 제작받았어요. 완벽한 반지가 완성되었습니다."</div>
												</div>
											</div>
										</div>
									</a>
								</div>
							</div>
							<div class="ui_grid__item">
								<div class="base-card card--vertical product">
									<a href="/w/product/" target="_blank">
										<div class="card-thumb-cover">
											<div class="product-thumb-img"
												style="background-image: url('/resources/category/img/ring16.jpg')"></div>
											<div class="product-bookmark">
												<button class="full-button">
													<button type="button" class="sp-icon icon-favorite"></button>
												</button>
											</div>
										</div>
										<div class="card-info product-info">
											<!-- 작가 이름 -->
											<div class="product-info__artist-name">반지월드</div>
											<!-- 제목 -->
											<div class="product-info__name">💍퀄리티 보장, 특별한 커스텀 반지를
												저렴한 가격에 만나보세요!</div>
											<!-- 가격 -->
											<div class="product-info__price">
												<span class="sale-rate"> 35% </span> <span
													class="price-sale"> 1,950,000<span
													style="font-size: 14px;">원</span>
												</span>
												<div class="price-origin--before-sale">
													<del>3,000,000원</del>
												</div>
											</div>
											<div class="product-info__badge-group"
												style="margin-top: 12px"></div>
											<div class="product-info__review">
												<div class="review-rating">
													<span class="ui_rating fr" data-value=4.9> <i
														style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i> <i style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i> <i style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i> <i style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i> <i style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i>
													</span> <span class="review-count">(37)</span>
												</div>
												<div class="review-comment">
													<div class="review-comment__badge">후기</div>
													<div class="review-comment__contents">"제품의 퀄리티와 가격에
														비해 놀라운 만족도입니다. 다른 제품도 구매하고 싶어지네요."</div>
												</div>
											</div>
										</div>
									</a>
								</div>
							</div>
							<div class="ui_grid__item">
								<div class="base-card card--vertical product">
									<a href="/w/product/" target="_blank">
										<div class="card-thumb-cover">
											<div class="product-thumb-img"
												style="background-image: url('/resources/category/img/ring17.jpg')"></div>
											<div class="product-bookmark">
												<button class="full-button">
													<button type="button" class="sp-icon icon-favorite"></button>
												</button>
											</div>
										</div>
										<div class="card-info product-info">
											<!-- 작가 이름 -->
											<div class="product-info__artist-name">반지메이커</div>
											<!-- 제목 -->
											<div class="product-info__name">✨섬세한 디자인, 맞춤형 반지로 세련된
												스타일링을 완성해보세요!</div>
											<!-- 가격 -->
											<div class="product-info__price">
												<span class="sale-rate"> 50% </span> <span
													class="price-sale"> 400,000<span
													style="font-size: 14px;">원</span>
												</span>
												<div class="price-origin--before-sale">
													<del>800,000원</del>
												</div>
											</div>
											<div class="product-info__badge-group"
												style="margin-top: 12px"></div>
											<div class="product-info__review">
												<div class="review-rating">
													<span class="ui_rating fr" data-value=4.7> <i
														style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i> <i style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i> <i style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i> <i style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i> <i style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i>
													</span> <span class="review-count">(41)</span>
												</div>
												<div class="review-comment">
													<div class="review-comment__badge">후기</div>
													<div class="review-comment__contents">"좋은 가격에 이렇게 퀄리티
														좋은 반지를 구매할 수 있어서 너무 기쁩니다. 추천해요!"</div>
												</div>
											</div>
										</div>
									</a>
								</div>
							</div>
							<div class="ui_grid__item">
								<div class="base-card card--vertical product">
									<a href="/w/product/" target="_blank">
										<div class="card-thumb-cover">
											<div class="product-thumb-img"
												style="background-image: url('/resources/category/img/ring18.jpg')"></div>
											<div class="product-bookmark">
												<button class="full-button">
													<button type="button" class="sp-icon icon-favorite"></button>
												</button>
											</div>
										</div>
										<div class="card-info product-info">
											<!-- 작가 이름 -->
											<div class="product-info__artist-name">반지파크</div>
											<!-- 제목 -->
											<div class="product-info__name">💎런칭 특가, 고급 보석으로 완성된
												나만의 커스텀 반지를 만나보세요!</div>
											<!-- 가격 -->
											<div class="product-info__price">
												<span class="price-origin"> 237,500<span
													style="font-size: 14px;">원</span>
												</span>
											</div>
											<div class="product-info__badge-group"
												style="margin-top: 8px">
												<div class="badge badge-delivery">무료배송</div>
											</div>
											<div class="product-info__review">
												<div class="review-rating">
													<span class="ui_rating fr" data-value=4.9> <i
														style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i> <i style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i> <i style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i> <i style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i> <i style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i>
													</span> <span class="review-count">(204)</span>
												</div>
												<div class="review-comment">
													<div class="review-comment__badge">후기</div>
													<div class="review-comment__contents">"반지마다 고유한 매력이
														있어서 매일 착용하기가 즐거워요. 다양한 컬렉션을 만들고 싶어졌어요."</div>
												</div>
											</div>
										</div>
									</a>
								</div>
							</div>
							<div class="ui_grid__item">
								<div class="base-card card--vertical product">
									<a href="/w/product/" target="_blank">
										<div class="card-thumb-cover">
											<div class="product-thumb-img"
												style="background-image: url('/resources/category/img/ring19.jpg')"></div>
											<div class="product-bookmark">
												<button class="full-button">
													<button type="button" class="sp-icon icon-favorite"></button>
												</button>
											</div>
										</div>
										<div class="card-info product-info">
											<!-- 작가 이름 -->
											<div class="product-info__artist-name">반지플레이스</div>
											<!-- 제목 -->
											<div class="product-info__name">🌟개성 넘치는 반지, 특별한 커스텀
												옵션으로 독특한 매력을 선사해드립니다!</div>
											<!-- 가격 -->
											<div class="product-info__price">
												<span class="price-origin"> 4,000,000<span
													style="font-size: 14px;">원</span>
												</span>
											</div>
											<div class="product-info__badge-group"
												style="margin-top: 8px">
												<div class="badge badge-delivery">무료배송</div>
											</div>
											<div class="product-info__review">
												<div class="review-rating">
													<span class="ui_rating fr" data-value=4.8> <i
														style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i> <i style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i> <i style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i> <i style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i> <i style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i>
													</span> <span class="review-count">(39)</span>
												</div>
												<div class="review-comment">
													<div class="review-comment__badge">후기</div>
													<div class="review-comment__contents">"반지를 착용하고 나서 주변
														사람들이 반짝임을 칭찬해줘서 자신감이 생겼어요."</div>
												</div>
											</div>
										</div>
									</a>
								</div>
							</div>
							<div class="ui_grid__item">
								<div class="base-card card--vertical product">
									<a href="/w/product/" target="_blank">
										<div class="card-thumb-cover">
											<div class="product-thumb-img"
												style="background-image: url('/resources/category/img/ring20.jpg')"></div>
											<div class="product-bookmark">
												<button class="full-button">
													<button type="button" class="sp-icon icon-favorite"></button>
												</button>
											</div>
										</div>
										<div class="card-info product-info">
											<!-- 작가 이름 -->
											<div class="product-info__artist-name">반지코너</div>
											<!-- 제목 -->
											<div class="product-info__name">💖포인트 반지, 스타일을 완성할 수 있는
												특별한 액세서리입니다!</div>
											<!-- 가격 -->
											<div class="product-info__price">
												<span class="price-origin"> 2,200,000<span
													style="font-size: 14px;">원</span>
												</span>
											</div>
											<div class="product-info__badge-group"
												style="margin-top: 8px">
												<div class="badge badge-delivery">무료배송</div>
											</div>
											<div class="product-info__review">
												<div class="review-rating">
													<span class="ui_rating fr" data-value=4.9> <i
														style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i> <i style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i> <i style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i> <i style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i> <i style="font-size: 11px"
														class="ui_icon--star idus-icon-star-fill"
														data-state="active"></i>
													</span> <span class="review-count">(256)</span>
												</div>
												<div class="review-comment">
													<div class="review-comment__badge">후기</div>
													<div class="review-comment__contents">"세련된 디자인과 브랜드의
														신뢰성으로 선택했는데, 정말 만족스러운 반지였어요."</div>
												</div>
											</div>
										</div>
									</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<script>


		<div data-vue="BottomSheet"></div>
		<div data-vue="WideBottomSheet"></div>
		<div data-vue="FooterModal"></div>
		<div data-vue="InactiveToast"></div>
		<footer id="footer" class="footer">
			<div class="full-w">
				<nav class="nav-links">
					<a class="m-show" href="/other_categories/conditions">이용약관</a> <span
						class="m-show">|</span> <a class="m-show"
						href="/other_categories/personal_information"><strong>개인정보
							처리방침</strong></a> <span class="m-show">|</span> <a class="m-show"
						href="/notice/notice">공지사항</a> <span class="m-show">|</span> <a
						href="/notice/inquire">자주 묻는 질문</a> <span>|</span> <a
						href="/other_categories/event">이벤트</a> <span>|</span> <a
						href="/board/kkb_boardList" target="blank">Q&A 게시판</a> <span>|</span>
					<a class="m-show" href="https://github.com/rlarudqls/kkbmall"
						target="blank">About beans_mall</a> <span>|</span> <a
						href="/other_categories/recruitment" target="blank">인재 영입</a>
				</nav>
			</div>

			<div class="inner-w clf" data-has-inquire-btn="false">


				<div class="text-box fl">
					<strong>(주) 빈스몰</strong>
					<ul>
						<li>대표이사 : 김경빈</li>
						<li>서울특별시 송파구 올림픽로135</li>
						<li>사업자 등록번호 : 000-00-00000 <a
							href="https://velog.io/@kkb3431" target="blank"
							class="btn-style-link"> 사업자 벨로그확인 <i
								class="fa fa-caret-right"></i>
						</a>
						</li>
						<li>판매업신고 : 2023-서울강남-0101</li>
						<li>호스팅서비스 제공자 : KKB WEB Service, Inc</li>
					</ul>
					<span class="mt-fix1"> 빈스몰의 실제 판매촉진 및 상업적 활동을 하지 않습니다.<br>
						따라서 빈스몰은 상품 거래정보 및 거래에 대하여 책임을 지지 않습니다. <span class="copyright">Copyright
							© 2023 Beans_mall All right reserved.</span>
					</span>
				</div>

				<div class="text-box fl">
					<strong>고객센터</strong> <span
						style="display: inline-blk; margin-top: 2px;">(평일 오전 10시 ~
						오후 6시)</span>
					<ul>
						<li><span class="fix-w">카카오톡</span> <a
							href="https://www.kakaocorp.com/page/"><em
								style="font-size: 12px;">빈스몰</em></a></li>
						<li><span class="fix-w">대표번호</span>010-6375-3431(발신자 부담전화)</li>
						<li><span class="fix-w">메일</span>kkb3431@gmail.com</li>
						<li><span class="fix-w">광고문의</span>kyeongbin3431@gmail.com</li>
					</ul>
					<span class="mt-fix2"> 빈스몰 이용 중 궁금하신 점이 있으신가요? 메일 또는 플러스친구
						`빈스몰`로 연락해주세요. 최선을 다해 도와드리겠습니다. </span>
				</div>

				<div class="text-box fr">
					<strong>Follow Us</strong>
					<nav class="sns-list">
						<a href="https://www.facebook.com/" target="blank"
							class="sp-icon icon-facebook-c"></a> <a
							href="https://www.instagram.com" target="blank"
							class="sp-icon icon-instagram-c"></a> <a
							href="https://blog.naver.com" target="blank"
							class="sp-icon icon-blog"></a> <a href="https://post.naver.com"
							target="blank" class="sp-icon icon-post"></a> <a
							href="https://twitter.com" target="blank"
							class="sp-icon icon-twitter-c"></a>
					</nav>

					<span class="mt-fix3"> <span class="sp-icon award-reddot fl"
						style="margin-right: 24px"></span> <span
						class="sp-icon award-idea fr"></span>
					</span>
				</div>
			</div>

			<div class="inner-w clf safe-info">
				<hr class="divider" />
				<div class="empty fl"></div>
				<div class="text-box fl isms">
					<a
						href="https://isms.kisa.or.kr/main/ispims/issue/?certificationMode=list&crtfYear=&searchCondition=2&searchKeyword=%EB%B0%B1%ED%8C%A8%EC%BB%A4&__encrypted=U8oaEwTLg12yqNDZuCwRPMiDRLgcrZjlbxomU5uctoZc1kXWONBhXaf0KhG%2BaV6wpp2zSeTry6yKT1QpQPP4n6Wl4JbzPyTKSn7s1FoRr90UnnwTp%2BW928V1TpyMuwFVMU8D270RkIg564CRAF0bUnkvpnfyAxjhbyn0pSpjvw%2BMlXuoQnR3oJUfvVi%2B1dac8Gnd7jHhSmiDLOX09CuWhVRPx40RuMcaT%2FHbItyyZvQECWvcAvRb36C1zB%2FnwnWRJNfv74iaCKBgpNE%2BERnypNyBfcqQSKf%2BfDsW9aHcpTOO1K747YgBrg%3D%3D"
						target="blank"> <span class="sp-icon logo-isms fl"></span>
					</a> <span class="txt fl"> [김경빈한정 인증범위] 온라인 마켓 플랫폼 운영(빈스몰) <br />
						[김경빈한정 유효기간] 1999.09.27 - 3999.12.31
					</span>
				</div>
				<div class="text-box fl escrow">
					<span class="sp-icon escrow fl"></span> <span class="txt fl">
						고객님은 현금 등으로 결제시 당사에서 가입한 <br /> 구매안전서비스를 이용하실 수 없습니다.
					</span>
				</div>
			</div>
		</footer>

	</div>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
		<script>
	$(window).scroll(function() {
	  var scrollHeight = $(document).height();
	  var scrollPosition = $(window).height() + $(window).scrollTop();
	  if ((scrollHeight - scrollPosition) / scrollHeight === 0) {
	    // 페이지 하단에 도달한 경우
	    // 다음 카테고리로 스크롤하는 코드 작성
	    // 예를 들어, accessories.jsp로 이동하는 코드
	    window.location.href = '/category/accessories';
	  }
	});

	</script>
</body>
</html>