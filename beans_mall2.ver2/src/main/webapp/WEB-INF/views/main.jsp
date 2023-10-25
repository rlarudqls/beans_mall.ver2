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
<style>
@charset "UTF-8";

* {
	margin: 0;
	padding: 0;
}

a {
	text-decoration: none;
}

@media ( max-width : 767px) {
	.content {
		width: 100%;
		padding: 10px;
	}
}
/* 화면 전체 렙 */
.wrapper {
	width: 100%;
	margin-top: 20px;
}
/* content 랩 */
.wrap {
	width: 1080px;
	margin: auto;
}

/* 검색 박스 영역 */
.search_area {
	width: 50%;
	height: 100%;
	float: left;
}

.search_wrap {
	width: 100%;
	height: 100%;
}

#searchForm {
	width: 100%;
	height: 100%;
	display: flex;
	justify-content: center;
	align-items: center;
}

.search_input {
	display: flex;
	height: 30%;
	width: 80%;
}

.search_input select {
	width: 20%;
	text-align: center;
	font-size: 15px;
}

.search_input input {
	margin-left: 10px;
	width: 57%;
	font-size: 18px;
	padding-left: 2%;
}

.search_btn {
	margin-left: 10px;
	width: 17%;
	border-radius: 14px;
	font-size: 17px;
	font-weight: 600;
}

/* Footer 영역 스타일 */
.footer {
	background-color: #f5f5f5;
	padding: 20px;
	text-align: center;
}

.footer ul {
	list-style: none;
	padding: 0;
	margin: 0;
}

.footer li {
	display: inline-block;
	margin: 0 28px;
}

.footer a {
	color: #555;
	text-decoration: none;
}

.footer a:hover {
	color: #000;
	text-decoration: underline;
}

.footer .social-icons {
	margin-top: 10px;
}

.footer .social-icons a {
	display: inline-block;
	width: 30px;
	height: 30px;
	background-color: #555;
	color: #fff;
	border-radius: 50%;
	text-align: center;
	line-height: 30px;
	margin-right: 5px;
}

.footer .social-icons a:hover {
	background-color: #000;
}

.footer .award-icons {
	margin-top: 20px;
}

.footer .award-icons .icon {
	display: inline-block;
	width: 20px;
	height: 20px;
	background-color: #ccc;
	margin-right: 10px;
}

/* 제품 목록 네비 */
.navi_bar_area {
	overflow: hidden;
	background-color: #5e6b9e;
	margin-top: 20px;
}

.navi_bar_area a {
	float: left;
	font-size: 16px;
	color: white;
	text-align: center;
	padding: 14px 0;
	text-decoration: none;
}

.dropdown {
	float: left;
	overflow: hidden;
	margin-left: 10px;
}

.dropdown .dropbtn {
	font-size: 16px;
	font-weight: bold;
	border: none;
	outline: none;
	color: white;
	padding: 14px 16px;
	background-color: inherit;
	font-family: inherit;
	margin: 0;
	width: 140px;
}

.dropdown-content {
	display: none;
	position: absolute;
	background-color: #f9f9f9;
	width: 466px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 1;
}

.dropdown-content a {
	float: none;
	color: black;
	padding: 12px 16px;
	text-decoration: none;
	display: inline-block;
	text-align: left;
	width: 80px;
}

.container_gnb {
	display: flex;
	justify-content: center;
	align-items: center;
}

.dropdown:hover .dropdown-content {
	display: block;
}

.navi_bar_area a:hover, .dropdown:hover .dropbtn {
	background-color: #475382;
}

.dropdown-content a:hover {
	background-color: #ddd;
}

/* 홈페이지 메인 제품 목록  */
.content_area {
	width: 100%;
	min-height: 1000px;
}

/* float 속성 해제 */
.clearfix {
	clear: both;
}

/* 슬라이드 */
.ls_wrap {
	margin: 30px 0;
	padding: 0 10px;
}

.ls_div_content {
	height: 275px;
	border: 1px solid #dadada;
}

.ls_category {
	text-align: center;
	font-size: 13px;
	color: #3e74ab;
}

.ls_beanName {
	text-align: center;
	color: #333;
	font-size: 15px;
	font-weight: bold;
}
</style>

<style>
.full-w {
	position: relative;
	left: 50%;
	transform: translateX(-50%);
}

.inner-w {
	position: absolute;
	left: 0;
	right: 0;
	text-align: center;
	margin-top: 10px;
}

.inner-w {
	display: flex;
	justify-content: center;
	align-items: center;
	flex-wrap: wrap;
}

.text-box {
	text-align: center;
}

.text-box ul {
	text-align: left;
}

.text-box.fr .sns-list {
	display: flex;
	justify-content: flex-start;
	align-items: center;
}

.text-box.fr .sns-list a {
	margin-right: 10px; /* 각 링크 사이의 간격을 조정할 수 있습니다. */
}

.sns-list {
	text-align: center;
}

.inner-w.clf.safe-info {
	text-align: center;
}

.empty {
	flex: 1;
}
</style>
<style>/* 모바일 화면용 스타일 */
@media screen and (max-width: 768px) {
	/* 검색 영역 스타일 수정 */
	.search_area {
		width: 100%; /* 모바일 화면에서는 전체 너비로 변경 */
		float: none; /* float 제거 */
	}
	.search_input {
		flex-direction: column; /* 세로 정렬로 변경 */
	}
	.search_input select {
		width: 100%; /* 전체 너비로 변경 */
		margin-bottom: 10px; /* 간격 추가 */
	}
	.search_input input {
		width: 100%; /* 전체 너비로 변경 */
	}
	.search_btn {
		width: 100%; /* 전체 너비로 변경 */
		margin-top: 10px; /* 간격 추가 */
	}

	/* 네비게이션 바 스타일 수정 */
	.navi_bar_area a {
		padding: 10px 0; /* 간격 수정 */
	}
	.dropdown .dropbtn {
		padding: 10px 16px; /* 간격 수정 */
	}
	.dropdown-content {
		width: 100%; /* 전체 너비로 변경 */
	}
}
</style>
<link rel="stylesheet" type="text/css"
	href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
<link rel="stylesheet" type="text/css"
	href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick-theme.css" />

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
					<style>
.btn-dropdown {
	margin-top: -5px;
	margin-right: 10px;
}
</style>
					<style>
.nav-btn {
	margin-top: -15px;
}
</style>


					<style>
.menu-dropdown {
	display: none;
}

.menu-dropdown.show {
	display: block;
}
</style>
					<style>
.login_button {
	margin-top: -15px;
}
</style>











					<div class="nav-btn ui-dropdown" data-disabled="hover"
						onmouseover="showDropdown('app-install-guide')"
						onmouseout="hideDropdown('app-install-guide')">
						<input readonly type="text" name="" class="btn-dropdown reset"
							value="완성품일때 보일화면" onclick="redirectToCategory()">
					</div>

					<script>
    function redirectToCategory() {
        window.location.href = "/category/Dessert";
    }

    function showDropdown(menuId) {
        var dropdownMenu = document.getElementById(menuId);
        dropdownMenu.classList.add("show");
    }

    function hideDropdown(menuId) {
        var dropdownMenu = document.getElementById(menuId);
        dropdownMenu.classList.remove("show");
    }
</script>

					<nav class="fr">
						<input type="text" id="current_user_email" class="hidden"
							name="current_user_email" value="" readonly>
					</nav>

					<c:choose>
						<c:when test="${member == null}">
							<!-- 로그인되지 않은 상태 -->
							<div class="login_button">
								<a href="/member/login">로그인</a> <a href="/member/join">회원가입</a>
							</div>
						</c:when>
						<c:otherwise>
							<!-- 로그인된 상태 -->
							<div class="login_success_area">
								<span>회원: ${member.memberName}</span> <span>충전금액: <fmt:formatNumber
										value="${member.money}" pattern="\#,###.##" /></span> <span>포인트:
									<fmt:formatNumber value="${member.point}" pattern="#,###" />
								</span> <a href="/member/logout.do">로그아웃</a>
							</div>
						</c:otherwise>
					</c:choose>

					</nav>
				</div>
			</div>

			<div class="bg-wrapper" data-vue="SearchHeader">
				<div class="inner-w top">
					<nav class="profile-links">
						<a href="/w/me" class="btn"> <i class="icon-mypage"></i> 내 정보
						</a> <a id="my-cart-button" href="/cart/${member.memberId}"
							class="btn"> <span class="cart-counter"></span> <i
							class="icon-cart"></i> 장바구니
						</a>
					</nav>
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
        imageUrl: '',
        location: '',
        message: '',
        scheme: redirectUrl,
        justShow: justShow
    };
    var bottomNavNudging = {
        imageUrl: '',
        location: '',
        message: '',
        scheme: redirectUrl,
        justShow: justShow
    };
    components.push({
        selector: '[data-vue="bottom-nav-message-nudging"]',
        component: 'BottomNavigationMessageNudging',
        props: {
            gnbTooltip: bottomNavNudging,
            isEdu: false
        }
    });
    var encodingWord = '';
    var decodingWord = encodingWord ? vuepack.externals.vuepackDecoder
        .vuepackDecode(encodingWord)
        : '';
    components.push({
        selector: '[data-vue="SearchHeader"]',
        component: 'SearchHeader',
        props: {
            placeholder: 'NaverShopSearch를 사용한 검색엔진 ',
            placeholderWord: '김경빈의날',
            searchWord: decodingWord,
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

    // 검색 기능 추가
    function searchNaverShopping(query) {
        // 네이버 쇼핑 검색 페이지로 이동
        var searchUrl = "https://search.shopping.naver.com/search/all?query=" + encodeURIComponent(query);
        window.location.href = searchUrl;
    }

    $(function () {
        // Enter 키를 누를 때 검색 수행
        $('#header-search').on('keydown', function (event) {
            if (event.keyCode === 13) {
                var keyword = $(this).val();
                searchNaverShopping(keyword);
                event.preventDefault();
            }
        });

        // 검색 버튼 클릭 시 검색 수행
        $('form.naver-shopping-form button[type="submit"]').on('click', function () {
            var keyword = $('#header-search').val();
            searchNaverShopping(keyword);
        });
    });
</script>










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
							href="/goodsDetail/37">판매자 추천</a></li>
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



						<li class="ui_gnb__menu " data-state="active"><a
							href="/w/main/category">카테고리</a></li>
					</ul>
				</div>
			</div>



		</header>


		<div class="wrapper">
			<div class="wrap">

				<div class="top_area">

					<div class="search_area">
						<div class="search_wrap">
							 <form id="searchForm" action="/search" method="get">
                        <div class="search_input">
                            <select name="type">
                                <option value="T">상품명</option>
                                <option value="A">판매자</option>
                            </select>
                            <input type="text" name="keyword" placeholder="빈스몰 내 판매상품 검색">
                            <!-- 버튼 요소 -->
                            <button class='btn search_btn' style="text-align: left;">
                                모든 상품보기
                            </button>
                            
                        </div>
                    </form>
						</div>
					</div>

					<div class="clearfix"></div>
				</div>
				<div class="navi_bar_area">
					<div class="dropdown">
						<button class="dropbtn">국산제품</button>
						<div class="dropdown-content">
							<c:forEach items="${cate1}" var="cate">
								<a href="search?type=C&cateCode=${cate.cateCode}">${cate.cateName}</a>
							</c:forEach>
						</div>
					</div>
					<div class="dropdown">
						<button class="dropbtn">외국제품</button>
						<div class="dropdown-content">
							<c:forEach items="${cate2}" var="cate">
								<a href="search?type=C&cateCode=${cate.cateCode}">${cate.cateName}</a>
							</c:forEach>
						</div>
					</div>
				</div>





				<c:forEach items="${ls}" var="item">
					<a href="/goodsDetail/${item.beanId}">
						<div class="ls_div_content" style="height: 50%;">
							<div class="ls_beanName">${item.beanName}</div>
							<div class="ls_category">${item.cateName}</div>
						</div>
					</a>
				</c:forEach>







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
						<li><strong>대표이사:</strong> 김경빈</li>
						<li><strong>서울특별시 송파구 올림픽로135</strong></li>
						<li><strong>사업자 등록번호:</strong> 000-00-00000 <a
							href="https://velog.io/@kkb3431" target="_blank"
							class="btn-style-link">사업자 벨로그확인 <i class="fa fa-caret-right"></i></a></li>
						<li><strong>판매업신고:</strong> 2023-서울강남-0101</li>
						<li><strong>호스팅서비스 제공자:</strong> KKB WEB Service, Inc</li>
					</ul>

				</div>

				<div class="text-box fl">
					<span style="display: inline-block; margin-top: 10px;">고객센터(평일
						오전 10시 ~ 오후 6시)</span>
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
				</div>

				<div class="inner-w clf safe-info">
					<hr class="divider" />
					<div class="empty fl"></div>
					<div class="text-box fl isms"></div>
				</div>
			</div>



		</footer>

	</div>
	<script>

							

							/* 이미지 삽입 */
							$(".image_wrap")
									.each(
											function(i, obj) {

												const bobj = $(obj);

												if (bobj.data("beanid")) {
													const uploadPath = bobj
															.data("path");
													const uuid = bobj
															.data("uuid");
													const fileName = bobj
															.data("filename");

													const fileCallPath = encodeURIComponent(uploadPath
															+ "/s_"
															+ uuid
															+ "_" + fileName);

													$(this)
															.find("img")
															.attr(
																	'src',
																	'/display?fileName='
																			+ fileCallPath);
												} else {
													$(this)
															.find("img")
															.attr('src',
																	'/resources/img/goodsNoImage.png');
												}

											});

						});

		/* gnb_area 로그아웃 버튼 작동 */
		$("#gnb_logout_button").click(function() {
			//alert("버튼 작동");
			$.ajax({
				type : "POST",
				url : "/member/logout.do",
				success : function(data) {
					alert("로그아웃 성공");
					document.location.reload();
				}
			}); // ajax 
		});
	</script>

	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
        // 페이지 로드 시 실행할 함수
        window.addEventListener('load', function () {
            // 메시지를 표시할 함수
            function showMessage() {
                alert("Test ID : kkb2023 / Test PW : 1234");
            }

            // showMessage 함수를 0.5초 뒤에 실행 (페이지 로드 후 0.5초 후에 실행됨)
            setTimeout(showMessage, 500); 
        });
    </script>
</body>
</html>