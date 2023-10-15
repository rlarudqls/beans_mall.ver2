<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>빈스몰</title>
<style>
@charset "UTF-8";

* {
	margin: 0;
	padding: 0;
}

a {
	text-decoration: none;
}
/* 화면 전체 렙 */
.wrapper {
	width: 100%;
}
/* content 랩 */
.wrap {
	width: 1080px;
	margin: auto;
}
/* 상단 네비게이션 */
.top_gnb_area {
	background-color: #333;
	height: 50px;
}

.top_gnb_area .list {
	display: flex;
	justify-content: flex-end;
	align-items: center;
	padding-right: 20px;
}

.top_gnb_area .list li {
	list-style: none;
	margin-left: 10px;
}

.top_gnb_area .list li a {
	color: #fff;
	font-weight: bold;
	text-decoration: none;
	transition: color 0.3s ease;
}

.top_gnb_area .list li a:hover {
	color: #ff6b6b;
}

/* 로고, 검색, 로그인 */
.top_area {
	width: 100%;
	height: 150px;
	/* background-color: #f7f0b9; */
}
/* 로고 영역 */
.logo_area {
	width: 25%;
	height: 100%;
	float: left;
}

.logo_area img {
	width: 100%;
	height: 100%;
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
	width: 20%;
	border: none;
	background-color: #04AA6D;
	color: #fff;
	font-size: 17px;
	font-weight: 600;
	cursor: pointer;
}

.search_btn:hover {
	background-color: #3e8e41;
}

/* 로그인 버튼 영역 */
.login_area {
	width: 25%;
	height: 100%;
	display: inline-block;
	text-align: center;
}

.login_button {
	height: 50%;
	background-color: #D4DFE6;
	margin-top: 30px;
	line-height: 77px;
	font-size: 40px;
	font-weight: 900;
	border-radius: 10px;
	cursor: pointer;
}

.login_area>span {
	margin-top: 10px;
	font-weight: 900;
	display: inline-block;
}

.login_button {
	height: 50%;
	background-color: #D4DFE6;
	margin-top: 30px;
}

/* 제품 목록 네비 */
.navi_bar_area {
	width: 100%;
	height: 70px;
	background-color: #7696fd;
}

/* 홈페이지 메인 제품 목록  */
.content_area {
	width: 100%;
	min-height: 1000px;
}

/* 상품 표 */
.list_search_result {
	width: 90%;
	margin: auto;
}

.type_list {
	width: 100%;
	border-bottom: 1px solid #e7e7e7;
	border-collapse: collapse;
}

.type_list tr {
	height: 200px;
	border-bottom: 1px solid #e7e7e7;
}

.detail div {
	margin-bottom: 5px;
}

.category {
	font-size: 12px;
	font-weight: 600;
}

.title {
	font-size: 20px;
	color: #3a60df;
	font-weight: 700;
}

.author {
	font-size: 14px;
}

.info {
	text-align: center;
}

.price {
	text-align: center;
}

.org_price del {
	font-size: 13px;
}

.sell_price strong {
	color: #da6262;
	font-size: 18px;
}

/* 상품 이미지 관련 */
.image_wrap {
	width: 100%;
	height: 100%;
}

.image_wrap img {
	max-width: 85%;
	height: auto;
	display: block;
}

/* 페이지 버튼 인터페이스 */
.pageMaker_wrap {
	text-align: center;
	margin-top: 30px;
	margin-bottom: 40px;
}

.pageMaker {
	list-style: none;
	display: inline-block;
}

.pageMaker_btn {
	float: left;
	width: 40px;
	height: 40px;
	line-height: 40px;
	margin-left: 20px;
}

.active {
	border: 2px solid black;
	font-weight: 400;
}

.next, .prev {
	border: 1px solid #ccc;
	padding: 0 10px;
}

.pageMaker_btn a:link {
	color: black;
}

.pageMaker_btn a:visited {
	color: black;
}

.pageMaker_btn a:active {
	color: black;
}

.pageMaker_btn a:hover {
	color: black;
}

.next a, .prev a {
	color: #ccc;
}

/* 로그인 성공 영역 */
.login_success_area {
	background-color: #f5f5f5;
	border: 2px solid #ddd;
	border-radius: 15px;
	padding: 10px; /* 크기 조절 */
	text-align: center;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
	width: 200px; /* 너비 조절 */
	margin: 0 auto; /* 가운데 정렬 */
}

/* 로그아웃 링크 스타일 */
.login_success_area>a {
	display: inline-block;
	padding: 5px 10px;
	background-color: #3a60df;
	color: #fff;
	font-size: 14px; /* 폰트 크기 조절 */
	font-weight: 600;
	border-radius: 20px; /* 버튼 모양을 더 둥글게 만듭니다. */
	text-decoration: none;
	margin-top: 10px; /* 버튼과 텍스트 사이의 간격 조절 */
	transition: background-color 0.3s ease;
}

.login_success_area>a:hover {
	background-color: #3048c5;
}

/* 회원 정보 스타일 */
.login_success_area>span {
	display: block;
	margin-top: 10px; /* 텍스트와 버튼 사이의 간격 조절 */
	font-size: 16px; /* 폰트 크기 조절 */
	color: #333;
}

/* 검색결과 없음 */
.table_empty {
	height: 50px;
	text-align: center;
	margin: 200px 0 215px 0px;
	font-size: 25px;
}

/* 필터정보 */
.search_filter {
	width: 85%;
	margin: auto;
	margin-top: 30px;
	margin-bottom: 50px;
}

.filter_button_wrap {
	width: 100%;
}

.filter_button_wrap button {
	width: 50%;
}

.filter_button {
	background-color: #04AA6D;
	border: 1px solid green;
	color: white;
	padding: 10px 24px;
	cursor: pointer;
	float: left;
}

.filter_button_wrap:after {
	content: "";
	clear: both;
	display: table;
}

.filter_button_wrap button:not(:last-child) {
	border-right: none;
}

.filter_button:hover {
	background-color: #3e8e41;
}

.filter_active {
	background-color: #045d3c;
}

.filter_content {
	padding: 20px 50px 20px 50px;
	border: 1px solid gray;
}

.filter_content a:not(:first-child) {
	margin-left: 10px;
}

.filter_a {
	display: block;
}

.filter_b {
	display: none;
}

/* footer navai 영역 */
.footer_nav {
	width: 100%;
	height: 50px;
}

.footer_nav_container {
	width: 100%;
	height: 100%;
	background-color: #8EC0E4;
}

.footer_nav_container>ul {
	font-weight: bold;
	float: left;
	list-style: none;
	position: relative;
	padding-top: 10px;
	line-height: 27px;
	font-family: dotum;
	margin-left: 10px;
}

.footer_nav_container>ul>li {
	display: inline;
	width: 45px;
	height: 19px;
	padding: 10px 9px 0 10px;
}

.footer_nav_container>ul>span {
	margin: 0 4px;
}
/* footer 영역 */
.footer {
	width: 100%;
	height: 130px;
	background-color: #D4DFE6;
	padding-bottom: 50px;
}

.footer_container {
	width: 100%;
	height: 100%;
	margin: auto;
}

.footer_left>img {
	width: 150%;
	height: 130px;
	margin-left: -20px;
	margin-top: -12px;
}

.footer_left {
	float: left;
	width: 170px;
	margin-left: 20px;
	margin-top: 30px;
}

.footer_right {
	float: left;
	width: 680px;
	margin-left: 70px;
	margin-top: 30px;
}

/* float 속성 해제 */
.clearfix {
	clear: both;
}
/* 필터 버튼 스타일 */
.filter_button_wrap {
	width: 100%;
	text-align: center;
	margin-top: 30px;
	margin-bottom: 50px;
}

.filter_button_wrap button {
	width: 50%;
	background-color: #04AA6D;
	border: 1px solid green;
	color: white;
	padding: 10px 24px;
	cursor: pointer;
	float: left;
}

.filter_button_wrap:after {
	content: "";
	clear: both;
	display: table;
}

.filter_button_wrap button:not(:last-child) {
	border-right: none;
}

.filter_button:hover {
	background-color: #3e8e41;
}

.filter_active {
	background-color: #045d3c;
}

/* 상품 목록 스타일 */
.type_list.large_view {
	display: flex;
	flex-wrap: wrap;
	justify-content: flex-start;
}

.type_list.small_view {
	display: flex;
	flex-wrap: wrap;
	justify-content: space-between;
}

.type_list tr {
	width: calc(33.333% - 20px);
	margin-right: 20px;
	margin-bottom: 20px;
	border: 1px solid #e7e7e7;
	box-sizing: border-box;
}
</style>
<link rel="stylesheet" href="resources/css/search.css">
<script src="https://code.jquery.com/jquery-3.4.1.js"
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	crossorigin="anonymous"></script>
</head>
<body>
	<div class="wrapper">
		<div class="wrap">
			<div class="top_gnb_area">
				<ul class="list">
					<c:if test="${member == null}">
						<!-- 로그인 x -->
						<li><a href="/member/login">로그인</a></li>
						<li><a href="/member/join">회원가입</a></li>
					</c:if>
					<c:if test="${member != null }">
						<!-- 로그인 o -->
						<c:if test="${member.adminCk == 1 }">
							<!-- 관리자 계정 -->
							<li><a href="/admin/main">관리자 페이지</a></li>
						</c:if>
						<li><a id="gnb_logout_button">로그아웃</a></li>
						<li><a href="/w/me">마이페이지</a></li>
						<li><a href="/cart/${member.memberId}">장바구니</a></li>
					</c:if>
					<li><a href="/notice/notice">공지사항</a></li>
					<li><a href="/notice/inquire">자주 묻는 질문</a></li>
					<li><a href="/board/kkb_boardList">Q&A 게시판</a></li>
				</ul>
			</div>
			<div class="top_area">
				<!-- 로고영역 -->
				<div class="logo_area">
					<a href="/main"><img src="/resources/img/kkblogo.png"></a>
				</div>
				<div class="search_area">
					<div class="search_wrap">
						<form id="searchForm" action="/search" method="get">
							<div class="search_input">
								<select name="type">
									<option value="T">상품명</option>
									<option value="A">판매자</option>
								</select> <input type="text" name="keyword"
									value="<c:out value="${pageMaker.cri.keyword}"/>">
								<button class="btn search_btn">검 색</button>
							</div>
						</form>
					</div>
				</div>
				<div class="login_area">
					<!-- 로그인 하지 않은 상태 -->
					<c:if test="${member == null }">
						<div class="login_button">
							<a href="/member/login">로그인</a>
						</div>
						<span><a href="/member/join">회원가입</a></span>
					</c:if>
					<!-- 로그인한 상태 -->
					<c:if test="${ member != null }">
						<div class="login_success_area">
							<span>회원 : ${member.memberName}</span> <span>사용가능금액 : <fmt:formatNumber
									value="${member.money }" pattern="\#,###.##" /></span> <span>포인트
								: <fmt:formatNumber value="${member.point }" pattern="#,###" />
							</span> <a href="/member/logout.do">로그아웃</a>
						</div>
					</c:if>
				</div>
				<div class="clearfix"></div>
			</div>
			<div class="content_area">
				<!-- 게시물 o -->
				<c:if test="${listcheck != 'empty'}">
					<div class="search_filter">
						<div class="filter_button_wrap">
							<button class="filter_button filter_active" id="filter_button_a">국내</button>
							<button class="filter_button" id="filter_button_b">외국</button>
						</div>
						<div class="filter_content filter_a">
							<c:forEach items="${filter_info}" var="filter">
								<c:if test="${filter.cateGroup eq '1'}">
									<a href="${filter.cateCode}">${filter.cateName}(${filter.cateCount})</a>
								</c:if>
							</c:forEach>
						</div>
						<div class="filter_content filter_b">
							<c:forEach items="${filter_info}" var="filter">
								<c:if test="${filter.cateGroup eq '2'}">
									<a href="${filter.cateCode}">${filter.cateName}(${filter.cateCount})</a>
								</c:if>
							</c:forEach>
						</div>
						<form id="filter_form" action="/search" method="get">
							<input type="hidden" name="keyword"> <input type="hidden"
								name="cateCode"> <input type="hidden" name="type">
						</form>
					</div>
					<div class="list_search_result">
						<table class="type_list large_view">
							<colgroup>
								<col width="110">
								<col width="*">
								<col width="120">
								<col width="120">
								<col width="120">
							</colgroup>
							<tbody id="searchList">
								<c:forEach items="${list}" var="list">
									<tr>
										<td class="image">
											<div class="image_wrap"
												data-beanid="${list.imageList[0].beanId}"
												data-path="${list.imageList[0].uploadPath}"
												data-uuid="${list.imageList[0].uuid}"
												data-filename="${list.imageList[0].fileName}">
												<img>
											</div>
										</td>
										<td class="detail">
											<div class="category">[${list.cateName}]</div>
											<div class="title">${list.beanName}</div>
											<div class="author">${list.authorName}|
												${list.publisher} | ${list.publeYear}</div>
										</td>
										<td class="info">
											<div class="author">${list.authorName}</div>
										</td>
										<td class="price">
											<div class="org_price">
												<del>
													<fmt:formatNumber value="${list.beanPrice}"
														pattern="#,### 원" />
												</del>
											</div>
											<div class="sell_price">
												<strong><fmt:formatNumber
														value="${list.beanPrice * (1-list.beanDiscount)}"
														pattern="#,### 원" /></strong>
											</div>
										<td class="option"></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
					<!-- 페이지 이동 인터페이스 -->
					<div class="pageMaker_wrap">
						<ul class="pageMaker">
							<!-- 이전 버튼 -->
							<c:if test="${pageMaker.prev }">
								<li class="pageMaker_btn prev"><a
									href="${pageMaker.pageStart -1}">이전</a></li>
							</c:if>
							<!-- 페이지 번호 -->
							<c:forEach begin="${pageMaker.pageStart }"
								end="${pageMaker.pageEnd }" var="num">
								<li
									class="pageMaker_btn ${pageMaker.cri.pageNum == num ? 'active':''}">
									<a href="${num}">${num}</a>
								</li>
							</c:forEach>
							<!-- 다음 버튼 -->
							<c:if test="${pageMaker.next}">
								<li class="pageMaker_btn next"><a
									href="${pageMaker.pageEnd + 1 }">다음</a></li>
							</c:if>
						</ul>
					</div>
					<form id="moveForm" action="/search" method="get">
						<input type="hidden" name="pageNum"
							value="${pageMaker.cri.pageNum}"> <input type="hidden"
							name="amount" value="${pageMaker.cri.amount}"> <input
							type="hidden" name="keyword" value="${pageMaker.cri.keyword}">
						<input type="hidden" name="cateCode"
							value="<c:out value="${pageMaker.cri.cateCode}"/>"> <input
							type="hidden" name="type" value="${pageMaker.cri.type}">
					</form>
				</c:if>
				<!-- 게시물 x -->
				<c:if test="${listcheck == 'empty'}">
					<div class="table_empty">검색결과가 없습니다.</div>
				</c:if>
			</div>
		</div>
	</div>
	<script>
		/* gnb_area 로그아웃 버튼 작동 */
		$("#gnb_logout_button").click(function() {
			$.ajax({
				type : "POST",
				url : "/member/logout.do",
				success : function(data) {
					alert("로그아웃 성공");
					document.location.reload();
				}
			});
		});

		/* 페이지 이동 버튼 */
		const moveForm = $('#moveForm');

		$(".pageMaker_btn a").on("click", function(e) {
			e.preventDefault();
			moveForm.find("input[name='pageNum']").val($(this).attr("href"));
			moveForm.submit();
		});

		/* 검색 필터 */
		let buttonA = $("#filter_button_a");
		let buttonB = $("#filter_button_b");

		buttonA.on("click", function() {
			$(".filter_b").css("display", "none");
			$(".filter_a").css("display", "block");
			buttonA.attr("class", "filter_button filter_active");
			buttonB.attr("class", "filter_button");
		});

		buttonB.on("click", function() {
			$(".filter_a").css("display", "none");
			$(".filter_b").css("display", "block");
			buttonB.attr("class", "filter_button filter_active");
			buttonA.attr("class", "filter_button");
		});

		/* 필터링 태그 동작 */
		$(".filter_content a").on("click", function(e) {
			e.preventDefault();
			let type = '<c:out value="${pageMaker.cri.type}"/>';
			if (type === 'A' || type === 'T') {
				type = type + 'C';
			}
			let keyword = '<c:out value="${pageMaker.cri.keyword}"/>';
			let cateCode = $(this).attr("href");
			$("#filter_form input[name='keyword']").val(keyword);
			$("#filter_form input[name='cateCode']").val(cateCode);
			$("#filter_form input[name='type']").val(type);
			$("#filter_form").submit();
		});

		$(document)
				.ready(
						function() {
							// 검색 타입 selected
							const selectedType = '<c:out value="${pageMaker.cri.type}"/>';
							if (selectedType != "") {
								$("select[name='type']").val(selectedType)
										.attr("selected", "selected");
							}
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
	</script>

</body>
</html>