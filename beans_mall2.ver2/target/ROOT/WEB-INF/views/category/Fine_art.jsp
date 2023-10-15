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
									<li><a href="/category/Dessert">디저트/베이커리</a></li>
									<li><a href="/category/Beverage">음료</a></li>
									<li><a href="/category/traditional_liquor">전통주</a></li>
									<li><a href="/category/Handmade_side_dishes">수제반찬</a></li>
									<li><a href="/category/Handmade_food">수제먹거리</a></li>
									<li><a href="/category/Agricultural_and_fishery">농축수산물</a></li>
									<li><a href="/category/Clothing">의류/홈웨어</a></li>
									<li><a href="/category/fashion_miscellaneous_goods">패션잡화</a></li>
									<li><a href="/category/Wallet">지갑</a></li>
									<li><a href="/category/Bags">가방/파우치</a></li>
								</ul>
								<ul>
									<li><a href="/category/Clock">시계</a></li>
									<li><a href="/category/Home_Fabric">홈 패브릭</a></li>
									<li><a href="/category/men_shoes">남성신발/수제화</a></li>
									<li><a href="/category/women_shoes">여성신발/수제화</a></li>
									<li><a href="/category/Child">육아/아동</a></li>
									<li><a href="/category/A_ring">반지</a></li>
									<li><a href="/category/Earrings">귀걸이</a></li>
									<li><a href="/category/Necklace">목걸이</a></li>
									<li><a href="/category/Bracelet">팔찌</a></li>
									<li><a href="/category/Accessories">기타 액세서리</a></li>
								</ul>
								<ul>
									<li><a href="/category/flower">꽃/식물</a></li>
									<li><a href="/category/Candle">캔들/디퓨저</a></li>
									<li><a href="/category/Home_interior">홈인테리어</a></li>
									<li><a href="/category/Pottery">도자기</a></li>
									<li><a href="/category/Kitchen">주방/생활</a></li>
									<li><a href="/category/furniture">가구</a></li>
									<li><a href="/category/Toy">인형/장난감</a></li>
									<li><a href="/category/companion_goods">반려용품/간식</a></li>
									<li><a href="/category/Fine_art">파인아트</a></li>
									<li><a href="/category/Craft">공예</a></li>
								</ul>
								<ul>
									<li><a href="/main" data-log-label="product_category">폰케이스</a>
									</li>
									<li><a href="/category/Digital_Accessories">디지털 액세서리</a></li>
									<li><a href="/category/Phrase">문구/팬시</a></li>
									<li><a href="/category/caricature">페인팅/캐리커쳐</a></li>
									<li><a href="/category/Vehicle_Supplies">차량용품</a></li>
									<li><a href="/category/Books">도서</a></li>
									<li><a href="/category/Perfume">향수</a></li>
									<li><a href="/category/Beauty">뷰티</a></li>
									<li><a href="/category/Hair">헤어/바디</a></li>
									<li><a href="/category/Handmade_soap">수제비누/클렌징</a></li>
								</ul>
								<ul>
									<li><a href="/category/Allowance_event">용돈이벤트/기타</a></li>
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
						<h2 class="ui_title__txt">파인아트</h2>
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
												style="background-image: url('/resources/category/img/Fine_art1.jpg')"></div>
											<div class="product-bookmark">
												<button class="full-button">
													<button type="button" class="sp-icon icon-favorite"></button>
												</button>
											</div>
										</div>
										<div class="card-info product-info">
											<div class="product-info__artist-name">실버바오</div>
											<div class="product-info__name">💫 화려한 악세서리로 빛나는 나만의 패션 스타일을 완성해보세요! ✨

</div>
											<div class="product-info__price">
												<span class="sale-rate"> 20% </span> <span
													class="price-sale"> 40,000<span
													style="font-size: 14px;">원</span>
												</span>
												<div class="price-origin--before-sale">
													<del>50,000원</del>
												</div>
											</div>
											<div class="product-info__badge-group"
												style="margin-top: 12px">
												<div class="badge badge-repurchase">재구매 많은</div>
											</div>
											<div class="product-info__review">
												<div class="review-rating">
													<span class="ui_rating fr" data-value="4.9"> ★ ★ ★ ★
														★</span> <span class="review-count">(1918)</span>
												</div>
												<div class="review-comment">
													<div class="review-comment__badge">후기</div>
													<div class="review-comment__contents">이 악세서리를 착용하면서 느끼는 특별한 감성이 있어요. 손쉽게 패션 스타일을 업그레이드시킬 수 있고, 다른 사람들의 시선을 끌 수 있어요. 섬세한 디자인과 품질로 만들어진 악세서리라 만족도가 높습니다.♡♡</div>
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
												style="background-image: url('/resources/category/img/Fine_art2.jpg')"></div>
											<div class="product-bookmark">
												<button class="full-button">
													<button type="button" class="sp-icon icon-favorite"></button>
												</button>
											</div>
										</div>
										<div class="card-info product-info">
											<div class="product-info__artist-name">리지스토어</div>
											<div class="product-info__name">🌟 특별한 순간을 더욱 빛나게 할 악세서리를 만나보세요. 💍

</div>
											<div class="product-info__price">
												<span class="sale-rate"> 37% </span> <span
													class="price-sale"> 6,900<span
													style="font-size: 14px;">원</span>
												</span>
												<div class="price-origin--before-sale">
													<del>10,900원</del>
												</div>
											</div>
											<div class="product-info__badge-group"
												style="margin-top: 12px"></div>
											<div class="product-info__review">
												<div class="review-rating">
													<span class="ui_rating fr" data-value="4.9"> ★ ★ ★ ★
														★ </span> <span class="review-count">(278)</span>
												</div>
												<div class="review-comment">
													<div class="review-comment__badge">후기</div>
													<div class="review-comment__contents">악세서리의 디자인이 매우 독특하고 멋져요. 다른 사람들이 착용한 것과는 조금 다른 분위기를 연출할 수 있어요. 특별한 날이나 소중한 자리에서 착용하면 더욱 빛나는 느낌을 받을 수 있어요😆</div>
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
												style="background-image: url('/resources/category/img/Fine_art3.jpg')"></div>
											<div class="product-bookmark">
												<button class="full-button">
													<button type="button" class="sp-icon icon-favorite"></button>
												</button>
											</div>
										</div>
										<div class="card-info product-info">
											<div class="product-info__artist-name">핫티몰</div>
											<div class="product-info__name">👑 왕자와 공주처럼 눈부시게 매력적인 악세서리로 특별한 날을 연출해보세요! 💫

</div>
											<div class="product-info__price">
												<span class="sale-rate"> 31% </span> <span
													class="price-sale"> 12,800<span
													style="font-size: 14px;">원</span>
												</span>
												<div class="price-origin--before-sale">
													<del>18,500원</del>
												</div>
											</div>
											<div class="product-info__badge-group"
												style="margin-top: 12px">
												<div class="badge badge-delivery">무료배송</div>
											</div>
											<div class="product-info__review">
												<div class="review-rating">
													<span class="ui_rating fr" data-value="4.9"> ★ ★ ★ ★
														★ </span> <span class="review-count">(437)</span>
												</div>
												<div class="review-comment">
													<div class="review-comment__badge">후기</div>
													<div class="review-comment__contents">이 악세서리를 착용하면 분위기가 한층 더 업그레이드되는 것 같아요. 다양한 스타일과 의상에 어울리고, 고급스러운 느낌을 주어요. 소중한 자리나 특별한 이벤트 때 착용하면 자신감이 넘치는 느낌을 받을 수 있어요♡</div>
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
												style="background-image: url('/resources/category/img/Fine_art4.jpg')"></div>
											<div class="product-bookmark">
												<button class="full-button">
													<button type="button" class="sp-icon icon-favorite"></button>
												</button>
											</div>
										</div>
										<div class="card-info product-info">
											<div class="product-info__artist-name">엘리강트</div>
											<div class="product-info__name">💎 화려한 보석 같은 악세서리로 눈길을 사로잡아보세요. 💫

</div>
											<div class="product-info__price">
												<span class="sale-rate"> 66% </span> <span
													class="price-sale"> 6,900<span
													style="font-size: 14px;">원</span>
												</span>
												<div class="price-origin--before-sale">
													<del>20,000원</del>
												</div>
											</div>
											<div class="product-info__badge-group"
												style="margin-top: 12px">
												<div class="badge badge-repurchase">재구매 많은</div>
											</div>
											<div class="product-info__review">
												<div class="review-rating">
													<span class="ui_rating fr" data-value=4.8> ★ ★ ★ ★ ★
													</span> <span class="review-count">(846)</span>
												</div>
												<div class="review-comment">
													<div class="review-comment__badge">후기</div>
													<div class="review-comment__contents">신랑이 너무너무너무
														좋아해요! 배송도 빠르고 상담도 너무 좋았습니다💛 아기들 크는 속도가 빨라서 6개월에 한번씩
														주문하려구요 번창하세요!</div>
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
												style="background-image: url('/resources/category/img/Fine_art5.jpg')"></div>
											<div class="product-bookmark">
												<button class="full-button">
													<button type="button" class="sp-icon icon-favorite"></button>
												</button>
											</div>
										</div>
										<div class="card-info product-info">
											<div class="product-info__artist-name">비올레타</div>
											<div class="product-info__name">🌟 스타일을 완성시킬 작은 도장, 악세서리의 매력에 빠져보세요! ✨

</div>
											<div class="product-info__price">
												<span class="price-origin"> 14,800<span
													style="font-size: 14px;">원</span>
												</span>
											</div>
											<div class="product-info__badge-group"
												style="margin-top: 8px">
												<div class="badge badge-delivery">무료배송</div>
											</div>
											<div class="product-info__review">
												<div class="review-rating">
													<span class="ui_rating fr" data-value=4.8> ★ ★ ★ ★ ★
													</span> <span class="review-count">(127)</span>
												</div>
												<div class="review-comment">
													<div class="review-comment__badge">후기</div>
													<div class="review-comment__contents">맘에드는 케이스를 발견해서
														좋고 받아보니 넘 귀여워요!</div>
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
												style="background-image: url('/resources/category/img/Fine_art6.jpg')"></div>
											<div class="product-bookmark">
												<button class="full-button">
													<button type="button" class="sp-icon icon-favorite"></button>
												</button>
											</div>
										</div>
										<div class="card-info product-info">
											<div class="product-info__artist-name">아이리스악세사리</div>
											<div class="product-info__name">🌸 매일의 룩을 돋보이게 할 악세서리로 스타일을 즐겨보세요. 💫

</div>
											<div class="product-info__price">
												<span class="price-origin"> 15,400<span
													style="font-size: 14px;">원</span>
												</span>
											</div>
											<div class="product-info__badge-group"
												style="margin-top: 8px">
												<div class="badge badge-delivery">무료배송</div>
											</div>
											<div class="product-info__review">
												<div class="review-rating">
													<span class="ui_rating fr" data-value=4.9> ★ ★ ★ ★ ★
													</span> <span class="review-count">(965)</span>
												</div>
												<div class="review-comment">
													<div class="review-comment__badge">후기</div>
													<div class="review-comment__contents">기념일 선물로 어떤 커플템이
														좋을까 고민하던 차에 찾게되었는데 기대 이상이에요! 해외여행 다녀온 직후가 기념일이라 시간이 촉박했는데
														배송도 빠르게 해주셨고 그렇다고 물건의 퀄리티가 떨어지거나 하자가 있지도 않아서 만족했습니다 :) 이번이
														반지를 제외하면 첫 커플템이네요. 이쁘게 잘 쓰겠습니다~</div>
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
												style="background-image: url('/resources/category/img/Fine_art7.jpg')"></div>
											<div class="product-bookmark">
												<button class="full-button">
													<button type="button" class="sp-icon icon-favorite"></button>
												</button>
											</div>
										</div>
										<div class="card-info product-info">
											<div class="product-info__artist-name">얀이토리</div>
											<div class="product-info__name">🌟 악세서리 하나로 다양한 스타일을 연출해보세요. 당신의 패션 센스가 돋보일 거예요! 💍

</div>
											<div class="product-info__price">
												<span class="sale-rate"> 15% </span> <span
													class="price-sale"> 17,000<span
													style="font-size: 14px;">원</span>
												</span>
												<div class="price-origin--before-sale">
													<del>20,000원</del>
												</div>
											</div>
											<div class="product-info__badge-group"
												style="margin-top: 12px"></div>
											<div class="product-info__review">
												<div class="review-rating">
													<span class="ui_rating fr" data-value=5> ★ ★ ★ ★ ★ </span>
													<span class="review-count">(44)</span>
												</div>
												<div class="review-comment">
													<div class="review-comment__badge">후기</div>
													<div class="review-comment__contents">넘 이뻐여 실물
														존예ㅠㅠㅠㅠㅋㅋㅋㅌ근데 상품 설명이 좀 더 있었으면 좋게써여ㅠㅠㅠㅋㅋㅋ</div>
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
												style="background-image: url('/resources/category/img/Fine_art8.jpg')"></div>
											<div class="product-bookmark">
												<button class="full-button">
													<button type="button" class="sp-icon icon-favorite"></button>
												</button>
											</div>
										</div>
										<div class="card-info product-info">
											<div class="product-info__artist-name">트렌디바이</div>
											<div class="product-info__name">💐4color 5월 할인중! 수국 생화
												일반&맥세이프</div>
											<div class="product-info__price">
												<span class="sale-rate"> 27% </span> <span
													class="price-sale"> 10,900<span
													style="font-size: 14px;">원</span>
												</span>
												<div class="price-origin--before-sale">
													<del>15,000원</del>
												</div>
											</div>
											<div class="product-info__badge-group"
												style="margin-top: 12px"></div>
											<div class="product-info__review">
												<div class="review-rating">
													<span class="ui_rating fr" data-value=5> ★ ★ ★ ★ ★ </span>
													<span class="review-count">(353)</span>
												</div>
												<div class="review-comment">
													<div class="review-comment__badge">후기</div>
													<div class="review-comment__contents">너무 예뻐요 사진에 안담겨요
														진짜 예뻐요 맥세이프 추가로 금액이 좀 올라가서 망설였는데 안샀으면 어쩔뻔!!! 보고있음 행복해져요.
														빨리 구매들 하세요~~~~</div>
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
												style="background-image: url('/resources/category/img/Fine_art9.jpg')"></div>
											<div class="product-bookmark">
												<button class="full-button">
													<button type="button" class="sp-icon icon-favorite"></button>
												</button>
											</div>
										</div>
										<div class="card-info product-info">
											<div class="product-info__artist-name">빈티지마법</div>
											<div class="product-info__name">🌟 악세서리 하나로 다양한 스타일을 연출해보세요. 당신의 패션 센스가 돋보일 거예요! 💍

</div>
											<div class="product-info__price">
												<span class="sale-rate"> 54% </span> <span
													class="price-sale"> 6,900<span
													style="font-size: 14px;">원</span>
												</span>
												<div class="price-origin--before-sale">
													<del>14,900원</del>
												</div>
											</div>
											<div class="product-info__badge-group"
												style="margin-top: 12px"></div>
											<div class="product-info__review">
												<div class="review-rating">
													<span class="ui_rating fr" data-value=4.9> ★ ★ ★ ★ ★
													</span> <span class="review-count">(399)</span>
												</div>
												<div class="review-comment">
													<div class="review-comment__badge">후기</div>
													<div class="review-comment__contents">도안도 꼼꼼하게 보내주시고
														요청사항도 잘 들어주셔서 감사합니다.💕 예쁘게 잘 쓰겠습니다!!!!</div>
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
												style="background-image: url('/resources/category/img/Fine_art10.jpg')"></div>
											<div class="product-bookmark">
												<button class="full-button">
													<button type="button" class="sp-icon icon-favorite"></button>
												</button>
											</div>
										</div>
										<div class="card-info product-info">
											<div class="product-info__artist-name">미소랜드</div>
											<div class="product-info__name">💖 화려한 악세서리가 당신의 매력을 한층 더해줄 거예요.
</div>
											<div class="product-info__price">
												<span class="price-origin"> 8,900<span
													style="font-size: 14px;">원</span>
												</span>
											</div>
											<div class="product-info__badge-group"
												style="margin-top: 8px">
												<div class="badge badge-delivery">무료배송</div>
											</div>
											<div class="product-info__review">
												<div class="review-rating">
													<span class="ui_rating fr" data-value=4.9> ★ ★ ★ ★ ★
													</span> <span class="review-count">(244)</span>
												</div>
												<div class="review-comment">
													<div class="review-comment__badge">후기</div>
													<div class="review-comment__contents">귀여워서 딱 취향저격
														당했어요😆</div>
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
												style="background-image: url('/resources/category/img/Fine_art11.jpg')"></div>
											<div class="product-bookmark">
												<button class="full-button">
													<button type="button" class="sp-icon icon-favorite"></button>
												</button>
											</div>
										</div>
										<div class="card-info product-info">
											<div class="product-info__artist-name">아이리스악세사리</div>
											<div class="product-info__name">💍 특별한 사람에게 선물로 전할 수 있는 아름다운 악세서리를 만나보세요. 💖

</div>
											<div class="product-info__price">
												<span class="sale-rate"> 66% </span> <span
													class="price-sale"> 6,900<span
													style="font-size: 14px;">원</span>
												</span>
												<div class="price-origin--before-sale">
													<del>20,000원</del>
												</div>
											</div>
											<div class="product-info__badge-group"
												style="margin-top: 12px"></div>
											<div class="product-info__review">
												<div class="review-rating">
													<span class="ui_rating fr" data-value=4.8> ★ ★ ★ ★ ★
													</span> <span class="review-count">(1614)</span>
												</div>
												<div class="review-comment">
													<div class="review-comment__badge">후기</div>
													<div class="review-comment__contents">너어어무 이쁘구 너어어무
														저렴하구 가성비 좋고 퀄리티 좋고 판매자님 친절하시구❤️ 너무 만족스러운 구매였습니다!!! 기회가된다면
														재구매하구 싶네욤!</div>
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
												style="background-image: url('/resources/category/img/Fine_art12.jpg')"></div>
											<div class="product-bookmark">
												<button class="full-button">
													<button type="button" class="sp-icon icon-favorite"></button>
												</button>
											</div>
										</div>
										<div class="card-info product-info">
											<div class="product-info__artist-name">명품악세사리</div>
											<div class="product-info__name">💛✨ 소중한 순간을 기억에 남게 할 악세서리로 특별한 추억을 만들어보세요. 💖

</div>
											<div class="product-info__price">
												<span class="sale-rate"> 20% </span> <span
													class="price-sale"> 15,920<span
													style="font-size: 14px;">원</span>
												</span>
												<div class="price-origin--before-sale">
													<del>19,900원</del>
												</div>
											</div>
											<div class="product-info__badge-group"
												style="margin-top: 12px"></div>
											<div class="product-info__review">
												<div class="review-rating">
													<span class="ui_rating fr" data-value=4.8> ★ ★ ★ ★ ★
													</span> <span class="review-count">(104)</span>
												</div>
												<div class="review-comment">
													<div class="review-comment__badge">후기</div>
													<div class="review-comment__contents">딱봐도 이쁘고 그냥봐도
														괜찮고 흔하지 않고 굳이예요 💗 일본여행 때 착용했었는데, 케이스 예쁘다고 많이 들었어용 ◡̎ ꪑ
														동생꺼 주문해볼까 싶어 들어왔다가 후기 남겨욧</div>
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
												style="background-image: url('/resources/category/img/Fine_art13.jpg')"></div>
											<div class="product-bookmark">
												<button class="full-button">
													<button type="button" class="sp-icon icon-favorite"></button>
												</button>
											</div>
										</div>
										<div class="card-info product-info">
											<div class="product-info__artist-name">일루에이(illu.A)</div>
											<div class="product-info__name">❤️힙스마일 🌟 특별한 순간을 더욱 빛나게 할 악세서리를 만나보세요. 💍

</div>
											<div class="product-info__price">
												<span class="price-origin"> 17,900<span
													style="font-size: 14px;">원</span>
												</span>
											</div>
											<div class="product-info__badge-group"
												style="margin-top: 8px">
												<div class="badge badge-delivery">무료배송</div>
											</div>
											<div class="product-info__review">
												<div class="review-rating">
													<span class="ui_rating fr" data-value=4.9> ★ ★ ★ ★ ★
													</span> <span class="review-count">(68)</span>
												</div>
												<div class="review-comment">
													<div class="review-comment__badge">후기</div>
													<div class="review-comment__contents">악세서리의 디자인이 너무 아름다워서 놀라웠어요. 소중한 자리나 특별한 이벤트 때 착용하면 분위기를 한층 더해줘요. 다른 사람들로부터 많은 관심과 칭찬을 받을 수 있을 거예요."

</div>
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
												style="background-image: url('/resources/category/img/Fine_art14.jpg')"></div>
											<div class="product-bookmark">
												<button class="full-button">
													<button type="button" class="sp-icon icon-favorite"></button>
												</button>
											</div>
										</div>
										<div class="card-info product-info">
											<div class="product-info__artist-name">마인드마이닝</div>
											<div class="product-info__name">✨ 소중한 순간을 기억에 남게 할 악세서리로 특별한 추억을 만들어보세요. 💖

</div>
											<div class="product-info__price">
												<span class="sale-rate"> 48% </span> <span
													class="price-sale"> 12,900<span
													style="font-size: 14px;">원</span>
												</span>
												<div class="price-origin--before-sale">
													<del>25,000원</del>
												</div>
											</div>
											<div class="product-info__badge-group"
												style="margin-top: 12px">
												<div class="badge badge-delivery">무료배송</div>
											</div>
											<div class="product-info__review">
												<div class="review-rating">
													<span class="ui_rating fr" data-value=4.8> ★ ★ ★ ★ ★
													</span> <span class="review-count">(163)</span>
												</div>
												<div class="review-comment">
													<div class="review-comment__badge">후기</div>
													<div class="review-comment__contents">케이스 너무
														이뻐요꒦ິ^꒦ິ..</div>
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
												style="background-image: url('/resources/category/img/Fine_art15.jpg')"></div>
											<div class="product-bookmark">
												<button class="full-button">
													<button type="button" class="sp-icon icon-favorite"></button>
												</button>
											</div>
										</div>
										<div class="card-info product-info">
											<div class="product-info__artist-name">하루빛</div>
											<div class="product-info__name">💎 화려한 보석 같은 악세서리로 눈길을 사로잡아보세요. 💫

</div>
											<div class="product-info__price">
												<span class="price-origin"> 23,900<span
													style="font-size: 14px;">원</span>
												</span>
											</div>
											<div class="product-info__badge-group"
												style="margin-top: 8px">
												<div class="badge badge-new">NEW</div>
											</div>
											<div class="product-info__review">
												<div class="review-rating">
													<span class="ui_rating fr" data-value=5> ★ ★ ★ ★ ★ </span>
													<span class="review-count">(1)</span>
												</div>
												<div class="review-comment">
													<div class="review-comment__badge">후기</div>
													<div class="review-comment__contents">정말 이뻐요 받고
														소리질렸거든요ㅋㅋㅋ 사진은ㅠ 카메라 고장으로 못 찍어서 올리는데 진짜 실물이 장난아니예요</div>
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
												style="background-image: url('/resources/category/img/Fine_art16.jpg')"></div>
											<div class="product-bookmark">
												<button class="full-button">
													<button type="button" class="sp-icon icon-favorite"></button>
												</button>
											</div>
										</div>
										<div class="card-info product-info">
											<div class="product-info__artist-name">잉애링</div>
											<div class="product-info__name">2️⃣버전 💙투명한 푸른바다 폰케이스 &
												스마트그립톡🌊</div>
											<div class="product-info__price">
												<span class="sale-rate"> 20% </span> <span
													class="price-sale"> 20,800<span
													style="font-size: 14px;">원</span>
												</span>
												<div class="price-origin--before-sale">
													<del>25,900원</del>
												</div>
											</div>
											<div class="product-info__badge-group"
												style="margin-top: 12px"></div>
											<div class="product-info__review">
												<div class="review-rating">
													<span class="ui_rating fr" data-value=4.9> ★ ★ ★ ★ ★
													</span> <span class="review-count">(37)</span>
												</div>
												<div class="review-comment">
													<div class="review-comment__badge">후기</div>
													<div class="review-comment__contents">완전 예뻐요! 오자마자 바로
														휴대폰에 끼우고 배경화면까지 바다로 맞췄어여</div>
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
												style="background-image: url('/resources/category/img/Fine_art17.jpg')"></div>
											<div class="product-bookmark">
												<button class="full-button">
													<button type="button" class="sp-icon icon-favorite"></button>
												</button>
											</div>
										</div>
										<div class="card-info product-info">
											<div class="product-info__artist-name">소유템 폰케이스(
												soutem)</div>
											<div class="product-info__name">💎 화려한 보석 같은 악세서리로 눈길을 사로잡아보세요. 💫

</div>
											<div class="product-info__price">
												<span class="sale-rate"> 23% </span> <span
													class="price-sale"> 19,900<span
													style="font-size: 14px;">원</span>
												</span>
												<div class="price-origin--before-sale">
													<del>25,900원</del>
												</div>
											</div>
											<div class="product-info__badge-group"
												style="margin-top: 12px"></div>
											<div class="product-info__review">
												<div class="review-rating">
													<span class="ui_rating fr" data-value=4.7> ★ ★ ★ ★ ★
													</span> <span class="review-count">(41)</span>
												</div>
												<div class="review-comment">
													<div class="review-comment__badge">후기</div>
													<div class="review-comment__contents">고급지고 예뻐욤♡</div>
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
												style="background-image: url('/resources/category/img/Fine_art18.jpg')"></div>
											<div class="product-bookmark">
												<button class="full-button">
													<button type="button" class="sp-icon icon-favorite"></button>
												</button>
											</div>
										</div>
										<div class="card-info product-info">
											<div class="product-info__artist-name">비올레타</div>
											<div class="product-info__name">💍 특별한 사람에게 선물로 전할 수 있는 아름다운 악세서리를 만나보세요. 💖


											</div>
											<div class="product-info__price">
												<span class="price-origin"> 14,800<span
													style="font-size: 14px;">원</span>
												</span>
											</div>
											<div class="product-info__badge-group"
												style="margin-top: 8px">
												<div class="badge badge-delivery">무료배송</div>
											</div>
											<div class="product-info__review">
												<div class="review-rating">
													<span class="ui_rating fr" data-value=4.9> ★ ★ ★ ★ ★
													</span> <span class="review-count">(204)</span>
												</div>
												<div class="review-comment">
													<div class="review-comment__badge">후기</div>
													<div class="review-comment__contents">색상도 상큼하고 귀여워요🥰
														카메라 부분 보호해 주는것도 너무 좋네용👍🏻</div>
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
												style="background-image: url('/resources/category/img/Fine_art19.jpg')"></div>
											<div class="product-bookmark">
												<button class="full-button">
													<button type="button" class="sp-icon icon-favorite"></button>
												</button>
											</div>
										</div>
										<div class="card-info product-info">
											<div class="product-info__artist-name">미소랜드</div>
											<div class="product-info__name">💫 화려한 악세서리로 빛나는 나만의 패션 스타일을 완성해보세요! ✨</div>
											<div class="product-info__price">
												<span class="price-origin"> 11,900<span
													style="font-size: 14px;">원</span>
												</span>
											</div>
											<div class="product-info__badge-group"
												style="margin-top: 8px">
												<div class="badge badge-delivery">무료배송</div>
											</div>
											<div class="product-info__review">
												<div class="review-rating">
													<span class="ui_rating fr" data-value=4.8> ★ ★ ★ ★ ★
													</span> <span class="review-count">(39)</span>
												</div>
												<div class="review-comment">
													<div class="review-comment__badge">후기</div>
													<div class="review-comment__contents">핸드폰 사면 주는 기본
														케이스(왼) 1년 넘도록 쓰다가 너무 귀여워서 새로 배송받아 바로 사진찍고(오) 핸드폰
														탈바꿈했어요🤣🤣 일찍 알았으면 더 빨리 바꿨을텐데, 꼬질꼬질 케이스에서 귀염뽀짝한 케이스로 바꾸니
														봄이 온것같고 넘 좋네요 번창하세요 ☺️😍😍</div>
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
												style="background-image: url('/resources/category/img/Fine_art20.jpg')"></div>
											<div class="product-bookmark">
												<button class="full-button">
													<button type="button" class="sp-icon icon-favorite"></button>
												</button>
											</div>
										</div>
										<div class="card-info product-info">
											<div class="product-info__artist-name">일루에이(illu.A)</div>
											<div class="product-info__name">💖 화려한 악세서리가 당신의 매력을 한층 더해줄 거예요. 특




</div>
											<div class="product-info__price">
												<span class="price-origin"> 24,900<span
													style="font-size: 14px;">원</span>
												</span>
											</div>
											<div class="product-info__badge-group"
												style="margin-top: 8px">
												<div class="badge badge-delivery">무료배송</div>
											</div>
											<div class="product-info__review">
												<div class="review-rating">
													<span class="ui_rating fr" data-value=4.9> ★ ★ ★ ★ ★
													</span> <span class="review-count">(256)</span>
												</div>
												<div class="review-comment">
													<div class="review-comment__badge">후기</div>
													<div class="review-comment__contents">배송도 빠르고 받자마자
														써봤는데 너무 좋아요!!</div>
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
	    window.location.href = '/category/flower';
	  }
	});

	</script>
</body>
</html>