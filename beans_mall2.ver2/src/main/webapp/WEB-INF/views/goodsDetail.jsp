<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>beans mall</title>
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



/* 로그인 성공 영역 */
.login_success_area {
	background-color: #f5f5f5;
	border: 2px solid #ddd;
	border-radius: 15px;
	padding: 20px; /* 크기 조절 */
	text-align: center;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
	width: 200px; /* 너비 조절 */
	float: right; /* 오른쪽으로 이동 */
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

.content_top {
	width: 100%;
	height: 400px;
}

.content_top:after {
	content: "";
	clear: both;
	display: table;
}

.ct_left_area {
	float: left;
	width: 30%;
	height: 100%;
}

.image_wrap {
	height: 80%;
	width: 80%;
	margin: auto;
	top: 10%;
	position: relative;
}

.image_wrap img {
	max-width: 100%;
	height: auto;
	display: block;
}

.line {
	width: 100%;
	border-top: 1px solid #c6c6cf;
}

.ct_right_area {
	float: left;
	width: 70%;
	height: 100%;
}

.title {
	height: 28%;
	font-size: 17px;
	line-height: 110px;
	color: #3a60df;
	padding-left: 3%;
}

.author {
	font-size: 16px;
	line-height: 50px;
	padding-left: 3%;
}

.price {
	line-height: 30px;
	padding: 2% 0 2% 3%;
}

.discount_price_number {
	line-height: 30px;
	font-size: 22px;
	color: #f84450;
	font-weight: bold;
}

.button {
	padding: 2% 0 2% 3%;
}

.button_quantity {
	margin-bottom: 2%;
}

.button_quantity input {
	height: 26px;
	width: 40px;
	text-align: center;
	font-weight: bold;
}

.button_quantity button {
	border: 1px solid #aaa;
	color: #3a60df;
	width: 20px;
	height: 20px;
	padding: 3px;
	background-color: #fff;
	font-weight: bold;
	font-size: 15px;
	line-height: 15px;
}

.btn_cart {
	display: inline-block;
	width: 140px;
	text-align: center;
	height: 50px;
	line-height: 50px;
	background-color: #5e6b9f;
	border: 1px solid #5e6b9f;
	color: #fff;
	margin-right: 2px;
}

.btn_buy {
	display: inline-block;
	width: 140px;
	text-align: center;
	height: 50px;
	line-height: 50px;
	background-color: #7b8ed1;
	border: 1px solid #7b8ed1;
	color: #fff;
}

.content_middle {
	width: 100%;
	min-height: 600px;
}

.bean_intro {
	width: 80%;
	margin: auto;
	margin-top: 40px;
}

.bean_content {
	width: 80%;
	margin: auto;
	margin-top: 40px;
	margin-bottom: 40px;
}

/* 리뷰쓰기 버튼 */
.reply_button_wrap {
	padding: 10px;
}

.reply_button_wrap button {
	background-color: #365fdd;
	color: white;
	font-weight: bold;
	font-size: 15px;
	padding: 5px 12px;
	cursor: pointer;
}

.reply_button_wrap button:hover {
	background-color: #1347e7;
}

/* 리뷰 영역 */
.content_bottom {
	width: 80%;
	margin: auto;
}

.reply_content_ul {
	list-style: none;
}

.comment_wrap {
	position: relative;
	border-bottom: 1px dotted #d4d4d4;
	padding: 14px 0 10px 0;
	font-size: 12px;
}
/* 리뷰 머리 부분 */
.reply_top {
	padding-bottom: 10px;
}

.id_span {
	padding: 0 15px 0 3px;
	font-weight: bold;
}

.date_span {
	padding: 0 15px 0;
}
/* 리뷰 컨텐트 부분 */
.reply_bottom {
	padding-bottom: 10px;
}

/* 리뷰 선 */
.reply_line {
	width: 80%;
	margin: auto;
	border-top: 1px solid #c6c6cf;
}

/* 리뷰 제목 */
.reply_subject h2 {
	padding: 15px 0 5px 5px;
}

/* pageMaker */
.repy_pageInfo_div {
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
	width: 25px;
	height: 25px;
	line-height: 25px;
	margin-left: 20px;
	font-size: 10px;
	cursor: pointer;
}

.active {
	border: 2px solid black;
	font-weight: 400;
}

.next, .prev {
	border: 1px solid #ccc;
	padding: 0 10px;
}

/* 리뷰 없는 경우 div */
.reply_not_div {
	text-align: center;
}

.reply_not_div span {
	display: block;
	margin-top: 30px;
	margin-bottom: 20px;
}

/* 리뷰 수정 삭제 버튼 */
.update_reply_btn {
	font-weight: bold;
	background-color: #b7b399;
	display: inline-block;
	width: 40px;
	text-align: center;
	height: 20px;
	line-height: 20px;
	margin: 0 5px 0 30px;
	border-radius: 6px;
	color: white;
	cursor: pointer;
}

.delete_reply_btn {
	font-weight: bold;
	background-color: #e7578f;
	display: inline-block;
	width: 40px;
	text-align: center;
	height: 20px;
	line-height: 20px;
	border-radius: 6px;
	color: white;
	cursor: pointer;
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
</style>
<link rel="stylesheet" href="/resources/css/goodsDetail.css">
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
					<li class="dropdown">
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
								<button class='btn search_btn'>검 색</button>
							</div>
						</form>
					</div>
				</div>
				<div class="login_area">

					

					<!-- 로그인한 상태 -->
					<c:if test="${member != null}">
						<div class="login_success_area">
							<span>회원: ${member.memberName}</span><br> <span>사용가능금액:
								<fmt:formatNumber value="${member.money}" pattern="\#,###.##" />
							</span><br> <span>포인트: <fmt:formatNumber
									value="${member.point}" pattern="#,###" /></span><br> <a
								href="/member/logout.do">로그아웃</a>
						</div>
					</c:if>



				</div>
				<div class="clearfix"></div>
			</div>
			<div class="content_area">
				<div class="line"></div>
				<div class="content_top">
					<div class="ct_left_area">
						<div class="image_wrap"
							data-beanid="${goodsInfo.imageList[0].beanId}"
							data-path="${goodsInfo.imageList[0].uploadPath}"
							data-uuid="${goodsInfo.imageList[0].uuid}"
							data-filename="${goodsInfo.imageList[0].fileName}">
							<img>
						</div>
					</div>
					<div class="ct_right_area">
						<div class="title">
							<h1>${goodsInfo.beanName}</h1>
						</div>
						<div class="line"></div>
						<div class="author">
							<span> ${goodsInfo.authorName} </span> <span>|</span> <span>
								${goodsInfo.publisher} </span> <span>|</span> <span class="publeyear">
								${goodsInfo.publeYear} </span>
						</div>
						<div class="line"></div>
						<div class="price">
							<div class="sale_price">
								정가 :
								<fmt:formatNumber value="${goodsInfo.beanPrice}"
									pattern="#,### 원" />
							</div>
							<div class="discount_price">
								판매가 : <span class="discount_price_number"><fmt:formatNumber
										value="${goodsInfo.beanPrice - (goodsInfo.beanPrice*goodsInfo.beanDiscount)}"
										pattern="#,### 원" /></span> [
								<fmt:formatNumber value="${goodsInfo.beanDiscount*100}"
									pattern="###" />
								%
								<fmt:formatNumber
									value="${goodsInfo.beanPrice*goodsInfo.beanDiscount}"
									pattern="#,### 원" />
								할인]
							</div>
							<div>
								적립 포인트 : <span class="point_span"></span>원
							</div>
						</div>
						<div class="line"></div>
						<div class="button">
							<div class="button_quantity">
								주문수량 <input type="text" class="quantity_input" value="1">
								<span>
									<button class="plus_btn">+</button>
									<button class="minus_btn">-</button>
								</span>
							</div>
							<div class="button_set">
								<a class="btn_cart">장바구니 담기</a> <a class="btn_buy">바로구매</a>
							</div>
						</div>
					</div>
				</div>
				<div class="line"></div>
				<div class="content_middle">
					<div class="bean_intro">${goodsInfo.beanIntro}</div>
					<div class="bean_content">${goodsInfo.beanContents }</div>
				</div>
				<div class="line"></div>
				<div class="content_bottom">
					<div class="reply_subject">
						<h2>리뷰</h2>
					</div>

					<c:if test="${member != null}">
						<div class="reply_button_wrap">
							<button>리뷰 쓰기</button>
						</div>
					</c:if>

					<div class="reply_not_div"></div>
					<ul class="reply_content_ul">

					</ul>
					<div class="repy_pageInfo_div">
						<ul class="pageMaker">

						</ul>
					</div>


				</div>
				<!-- 주문 form -->
				<form action="/order/${member.memberId}" method="get"
					class="order_form">
					<input type="hidden" name="orders[0].beanId"
						value="${goodsInfo.beanId}"> <input type="hidden"
						name="orders[0].beanCount" value="">
				</form>
			</div>

			<!-- Footer 영역 -->

		</div>
		<!-- class="wrap" -->
	</div>
	<!-- class="wrapper" -->

	<script>
		$(document)
				.ready(
						function() {

							/* 이미지 삽입 */
							const bobj = $(".image_wrap");

							if (bobj.data("beanid")) {
								const uploadPath = bobj.data("path");
								const uuid = bobj.data("uuid");
								const fileName = bobj.data("filename");

								const fileCallPath = encodeURIComponent(uploadPath
										+ "/s_" + uuid + "_" + fileName);

								bobj.find("img").attr('src',
										'/display?fileName=' + fileCallPath);
							} else {
								bobj.find("img").attr('src',
										'/resources/img/goodsNoImage.png');
							}

							/* publeyear */
							const year = "${goodsInfo.publeYear}";

							// 연도, 월, 일 추출
							const yearArray = year.split("-");
							const publeYear = "상품등록 일자: " + yearArray[0] + "년 ";

							$(".publeyear").html(publeYear);

							/* 포인트 삽입 */
							let salePrice = "${goodsInfo.beanPrice - (goodsInfo.beanPrice*goodsInfo.beanDiscount)}"
							let point = salePrice * 0.05;
							point = Math.floor(point);
							$(".point_span").text(point);

							/* 리뷰 리스트 출력 */

							const beanId = '${goodsInfo.beanId}';

							$.getJSON("/reply/list", {
								beanId : beanId
							}, function(obj) {

								makeReplyContent(obj);

							});

						}); //$(document).ready(function(){

		// 수량 버튼 조작
		let quantity = $(".quantity_input").val();
		$(".plus_btn").on("click", function() {
			$(".quantity_input").val(++quantity);
		});
		$(".minus_btn").on("click", function() {
			if (quantity > 1) {
				$(".quantity_input").val(--quantity);
			}
		});

		// 서버로 전송할 데이터
		const form = {
			memberId : '${member.memberId}',
			beanId : '${goodsInfo.beanId}',
			beanCount : ''
		}
		// 장바구니 추가 버튼
		$(".btn_cart").on("click", function(e) {
			form.beanCount = $(".quantity_input").val();
			$.ajax({
				url : '/cart/add',
				type : 'POST',
				data : form,
				success : function(result) {
					cartAlert(result);
				}
			})
		});

		function cartAlert(result) {
			if (result == '0') {
				alert("장바구니에 추가를 하지 못하였습니다.");
			} else if (result == '1') {
				alert("장바구니에 추가되었습니다.");
			} else if (result == '2') {
				alert("장바구니에 이미 추가되어져 있습니다.");
			} else if (result == '5') {
				alert("로그인이 필요합니다.");
			}
		}
		/* 바로구매 버튼 */
		$(".btn_buy").on(
				"click",
				function() {
					let beanCount = $(".quantity_input").val();
					$(".order_form").find("input[name='orders[0].beanCount']")
							.val(beanCount);
					$(".order_form").submit();
				});

		/* 리뷰쓰기 */
		$(".reply_button_wrap")
				.on(
						"click",
						function(e) {

							e.preventDefault();

							const memberId = '${member.memberId}';
							const beanId = '${goodsInfo.beanId}';

							$
									.ajax({
										data : {
											beanId : beanId,
											memberId : memberId
										},
										url : '/reply/check',
										type : 'POST',
										success : function(result) {

											if (result === '1') {
												alert("이미 등록된 리뷰가 존재 합니다.")
											} else if (result === '0') {
												let popUrl = "/replyEnroll/"
														+ memberId + "?beanId="
														+ beanId;
												console.log(popUrl);
												let popOption = "width = 490px, height=490px, top=300px, left=300px, scrollbars=yes";

												window.open(popUrl, "리뷰 쓰기",
														popOption);
											}

										}
									});

						});

		/* 댓글 페이지 정보 */
		const cri = {
			beanId : '${goodsInfo.beanId}',
			pageNum : 1,
			amount : 10
		}

		/* 댓글 페이지 이동 버튼 동작 */
		$(document).on('click', '.pageMaker_btn a', function(e) {

			e.preventDefault();

			let page = $(this).attr("href");
			cri.pageNum = page;

			replyListInit();

		});

		/* 댓글 데이터 서버 요청 및 댓글 동적 생성 메서드 */
		let replyListInit = function() {
			$.getJSON("/reply/list", cri, function(obj) {

				makeReplyContent(obj);

			});
		}

		/* 리뷰 수정 버튼 */
		$(document)
				.on(
						'click',
						'.update_reply_btn',
						function(e) {

							e.preventDefault();
							let replyId = $(this).attr("href");
							let popUrl = "/replyUpdate?replyId=" + replyId
									+ "&beanId=" + '${goodsInfo.beanId}'
									+ "&memberId=" + '${member.memberId}';
							let popOption = "width = 490px, height=490px, top=300px, left=300px, scrollbars=yes"

							window.open(popUrl, "리뷰 수정", popOption);

						});

		/* 리뷰 삭제 버튼 */
		$(document).on('click', '.delete_reply_btn', function(e) {

			e.preventDefault();
			let replyId = $(this).attr("href");

			$.ajax({
				data : {
					replyId : replyId,
					beanId : '${goodsInfo.beanId}'
				},
				url : '/reply/delete',
				type : 'POST',
				success : function(result) {
					replyListInit();
					alert('삭제가 완료되엇습니다.');
				}
			});

		});

		/* 댓글(리뷰) 동적 생성 메서드 */
		function makeReplyContent(obj) {

			if (obj.list.length === 0) {
				$(".reply_not_div").html('<span>리뷰가 없습니다.</span>');
				$(".reply_content_ul").html('');
				$(".pageMaker").html('');
			} else {

				$(".reply_not_div").html('');

				const list = obj.list;
				const pf = obj.pageInfo;
				const userId = '${member.memberId}';

				/* list */

				let reply_list = '';

				$(list)
						.each(
								function(i, obj) {
									reply_list += '<li>';
									reply_list += '<div class="comment_wrap">';
									reply_list += '<div class="reply_top">';
									/* 아이디 */
									reply_list += '<span class="id_span">'
											+ obj.memberId + '</span>';
									/* 날짜 */
									reply_list += '<span class="date_span">'
											+ obj.regDate + '</span>';
									/* 평점 */
									reply_list += '<span class="rating_span">평점 : <span class="rating_value_span">'
											+ obj.rating + '</span>점</span>';
									if (obj.memberId === userId) {
										reply_list += '<a class="update_reply_btn" href="'+ obj.replyId +'">수정</a><a class="delete_reply_btn" href="'+ obj.replyId +'">삭제</a>';
									}
									reply_list += '</div>'; //<div class="reply_top">
									reply_list += '<div class="reply_bottom">';
									reply_list += '<div class="reply_bottom_txt">'
											+ obj.content + '</div>';
									reply_list += '</div>';//<div class="reply_bottom">
									reply_list += '</div>';//<div class="comment_wrap">
									reply_list += '</li>';
								});

				$(".reply_content_ul").html(reply_list);

				/* 페이지 버튼 */

				let reply_pageMaker = '';

				/* prev */
				if (pf.prev) {
					let prev_num = pf.pageStart - 1;
					reply_pageMaker += '<li class="pageMaker_btn prev">';
					reply_pageMaker += '<a href="'+ prev_num +'">이전</a>';
					reply_pageMaker += '</li>';
				}
				/* numbre btn */
				for (let i = pf.pageStart; i < pf.pageEnd + 1; i++) {
					reply_pageMaker += '<li class="pageMaker_btn ';
					if (pf.cri.pageNum === i) {
						reply_pageMaker += 'active';
					}
					reply_pageMaker += '">';
					reply_pageMaker += '<a href="'+i+'">' + i + '</a>';
					reply_pageMaker += '</li>';
				}
				/* next */
				if (pf.next) {
					let next_num = pf.pageEnd + 1;
					reply_pageMaker += '<li class="pageMaker_btn next">';
					reply_pageMaker += '<a href="'+ next_num +'">다음</a>';
					reply_pageMaker += '</li>';
				}

				console.log(reply_pageMaker);
				$(".pageMaker").html(reply_pageMaker);

			}

		}
	</script>

</body>
</html>