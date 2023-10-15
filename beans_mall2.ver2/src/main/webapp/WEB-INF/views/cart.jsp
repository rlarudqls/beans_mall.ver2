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
	margin-left: 10px;
	width: 17%;
	border-radius: 14px;
	font-size: 17px;
	font-weight: 600;
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

table {
	border-collapse: collapse;
	width: 100%;
}

.table_text_align_center {
	text-align: center;
}

caption {
	visibility: hidden;
	width: 0;
	height: 0;
	font-size: 0;
	line-height: 0;
	overflow: hidden;
}

.content_subject {
	height: 110px;
	line-height: 110px;
	background-color: #5080bd;
	margin-bottom: 60px;
}

.content_subject span {
	padding-left: 30 px;
	display: inline-block;
	color: white;
	font-size: 50px;
	font-weight: bolder;
}

.content_totalCount_section {
	margin-bottom: 12px;
}

.content_btn_section {
	margin-top: 20px;
	text-align: right;
}

.content_btn_section a {
	color: #fefeff;
	background-color: #365fdd;
	min-width: 125px;
	padding: 17px 25px;
	display: inline-block;
	height: 39px;
	font-size: 23px;
	font-weight: bold;
	text-align: center;
	margin-right: 14px;
	line-height: 39px;
}

.subject_table {
	font-size: 14px;
	line-height: 20px;
	width: 100%;
	text-align: center;
}

th {
	text-align: center;
	color: #333;
	border-bottom: 1px solid #e7e7e7;
	border-top: 1px solid #3084d9;
	background: #f4f9fd;
	padding: 2px 0;
}

.td_width_1 {
	width: 5%;
}

.td_width_2 {
	width: 10%;
}

.td_width_3 {
	width: 25%;
}

.td_width_4 {
	width: 15%;
}

.cart_table {
	font-size: 14px;
	line-height: 20px;
}

.cart_table tr {
	height: 110px;
}

.price_td {
	padding-left: 5px;
}

.red_color {
	color: red;
}

.green_color {
	color: green;
}

.cart_table td {
	border-bottom: 1px solid #e7e7e7;
}

.quantity_div {
	position: relative;
	width: 42px;
	height: 25px;
	text-align: left;
	margin: 5px auto;
}

.quantity_input {
	position: absolute;
	width: 27px;
	height: 23px;
	text-align: center;
	border: 1px solid #c6c6c6;
	border-right: 0px;
	line-height: 19px;
	font-size: 12px;
	color: #4c4848;
	left: 0;
}

.quantity_btn {
	position: absolute;
	border: 1px solid #aaa;
	color: #3a60df;
	width: 14px;
	height: 13px;
	padding: 0px;
	background-color: #fff;
	font-weight: bold;
	font-size: 7px;
	line-height: 6px;
	vertical-align: middle;
}

.plus_btn {
	top: 0;
	right: 0
}

.minus_btn {
	bottom: 0;
	right: 0
}

.quantity_modify_btn {
	border: 1px solid #d0d0d0;
	height: 13px;
	line-height: 13px;
	background-color: #fff;
	text-align: center;
	width: 28px;
	display: inline-block;
	padding: 3px 6px 2px;
	margin-top: 3px;
}

.table_text_align_center {
	text-align: center;
}

.delete_btn {
	width: 40px;
}

.content_total_section {
	background-color: rgb(227, 237, 247);
}

.total_wrap {
	width: 80%;
	margin: auto;
	padding: 10px 0 10px 0;
}

.total_wrap td {
	width: 50%;
}

.finalTotalPrice_span {
	color: #854A72;
	font-size: 17px;
	font-weight: bold;
}

.totalPoint_span {
	font-size: 17px;
	font-weight: bold;
}

.boundary_div {
	font-size: 0;
	border: 1px dotted #d1c7c7;
	margin: 5px 0 5px 0;
}

.input_size_20 {
	width: 20px;
	height: 20px;
}

.all_check_input {
	margin: 18px 0 18px 18px;
}

.all_chcek_span {
	padding-left: 8px;
	font-size: 20px;
	font-weight: bold;
}

/* 이미지 */
.image_wrap {
	width: 100%;
	height: 100%;
}

.image_wrap img {
	max-width: 85%;
	height: auto;
	display: block;
}

/* 로그인 성공 영역 */
.login_success_area {
	height: 62%;
	width: 80%;
	border: 2px solid #7474ad;
	border-radius: 15px;
	margin: 5% auto;
	padding-top: 5%;
}

.login_success_area>a {
	font-size: 15px;
	font-weight: 900;
	display: inline-block;
	margin-top: 5px;
	background: #e1e5e8;
	width: 82px;
	height: 22px;
	line-height: 22px;
	border-radius: 25px;
	color: #606267;
}

.login_success_area>span {
	display: block;
	text-align: left;
	margin-left: 10%;
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
<link rel="stylesheet" href="/resources/css/cart.css">
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
							<span>회원 : ${member.memberName}</span> <span>충전금액 : <fmt:formatNumber
									value="${member.money }" pattern="\#,###.##" /></span> <span>포인트
								: <fmt:formatNumber value="${member.point }" pattern="#,###" />
							</span> <a href="/member/logout.do">로그아웃</a>
						</div>
					</c:if>

				</div>
				<div class="clearfix"></div>
			</div>
			<div class="content_area">

				
				<!-- 장바구니 리스트 -->
				<div class="content_middle_section"></div>
				<!-- 장바구니 가격 합계 -->
				<!-- cartInfo -->
				<div class="content_totalCount_section">

					<!-- 체크박스 전체 여부 -->
					<div class="all_check_input_div">
						<input type="checkbox" class="all_check_input input_size_20"
							checked="checked"><span class="all_chcek_span">전체선택</span>
					</div>

					<table class="subject_table">
						<caption>표 제목 부분</caption>
						<tbody>

							<tr>
								<th class="td_width_1"></th>
								<th class="td_width_2"></th>
								<th class="td_width_3">상품명</th>
								<th class="td_width_4">가격</th>
								<th class="td_width_4">수량</th>
								<th class="td_width_4">합계</th>
								<th class="td_width_4">삭제</th>
							</tr>
						</tbody>
					</table>
					<table class="cart_table">
						<caption>표 내용 부분</caption>
						<tbody>
							<c:forEach items="${cartInfo}" var="ci">
								<tr>
									<td class="td_width_1 cart_info_td"><input type="checkbox"
										class="individual_cart_checkbox input_size_20"
										checked="checked"> <input type="hidden"
										class="individual_beanPrice_input" value="${ci.beanPrice}">
										<input type="hidden" class="individual_salePrice_input"
										value="${ci.salePrice}"> <input type="hidden"
										class="individual_beanCount_input" value="${ci.beanCount}">
										<input type="hidden" class="individual_totalPrice_input"
										value="${ci.salePrice * ci.beanCount}"> <input
										type="hidden" class="individual_point_input"
										value="${ci.point}"> <input type="hidden"
										class="individual_totalPoint_input" value="${ci.totalPoint}">
										<input type="hidden" class="individual_beanId_input"
										value="${ci.beanId}"></td>
									<td class="td_width_2">
										<div class="image_wrap"
											data-beanid="${ci.imageList[0].beanId}"
											data-path="${ci.imageList[0].uploadPath}"
											data-uuid="${ci.imageList[0].uuid}"
											data-filename="${ci.imageList[0].fileName}">
											<img>
										</div>
									</td>
									<td class="td_width_3">${ci.beanName}</td>
									<td class="td_width_4 price_td"><del>
											정가 :
											<fmt:formatNumber value="${ci.beanPrice}" pattern="#,### 원" />
										</del><br> 판매가 : <span class="red_color"><fmt:formatNumber
												value="${ci.salePrice}" pattern="#,### 원" /></span><br> 마일리지
										: <span class="green_color"><fmt:formatNumber
												value="${ci.point}" pattern="#,###" /></span></td>
									<td class="td_width_4 table_text_align_center">
										<div class="table_text_align_center quantity_div">
											<input type="text" value="${ci.beanCount}"
												class="quantity_input">
											<button class="quantity_btn plus_btn">+</button>
											<button class="quantity_btn minus_btn">-</button>
										</div> <a class="quantity_modify_btn" data-cartId="${ci.cartId}">변경</a>
									</td>
									<td class="td_width_4 table_text_align_center"><fmt:formatNumber
											value="${ci.salePrice * ci.beanCount}" pattern="#,### 원" />
									</td>
									<td class="td_width_4 table_text_align_center">
										<button class="delete_btn" data-cartid="${ci.cartId}">삭제</button>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<table class="list_table">
					</table>
				</div>
				<!-- 가격 종합 -->
				<div class="content_total_section">
					<div class="total_wrap">
						<table>
							<tr>
								<td>
									<table>
										<tr>
											<td>총 상품 가격</td>
											<td><span class="totalPrice_span">70000</span> 원</td>
										</tr>
										<tr>
											<td>배송비</td>
											<td><span class="delivery_price">3000</span>원</td>
										</tr>
										<tr>
											<td>총 주문 상품수</td>
											<td><span class="totalKind_span"></span>종류 <span
												class="totalCount_span"></span>개</td>
										</tr>
									</table>
								</td>
								<td>
									<table>
										<tr>
											<td></td>
											<td></td>
										</tr>
									</table>
								</td>
							</tr>
						</table>
						<div class="boundary_div">구분선</div>
						<table>
							<tr>
								<td>
									<table>
										<tbody>
											<tr>
												<td><strong>총 결제 예상 금액</strong></td>
												<td><span class="finalTotalPrice_span">70000</span> 원</td>
											</tr>
										</tbody>
									</table>
								</td>
								<td>
									<table>
										<tbody>
											<tr>
												<td><strong>총 적립 예상 마일리지</strong></td>
												<td><span class="totalPoint_span">70000</span> 원</td>
											</tr>
										</tbody>
									</table>
								</td>
							</tr>
						</table>
					</div>
				</div>
				<!-- 구매 버튼 영역 -->
				<div class="content_btn_section">
					<a class="order_btn">주문하기</a>
				</div>

				<!-- 수량 조정 form -->
				<form action="/cart/update" method="post"
					class="quantity_update_form">
					<input type="hidden" name="cartId" class="update_cartId"> <input
						type="hidden" name="beanCount" class="update_beanCount"> <input
						type="hidden" name="memberId" value="${member.memberId}">
				</form>

				<!-- 삭제 form -->
				<form action="/cart/delete" method="post"
					class="quantity_delete_form">
					<input type="hidden" name="cartId" class="delete_cartId"> <input
						type="hidden" name="memberId" value="${member.memberId}">
				</form>
				<!-- 주문 form -->
				<form action="/order/${member.memberId}" method="get"
					class="order_form"></form>


			</div>

		</div>
		<!-- class="wrap" -->
	</div>
	<!-- class="wrapper" -->

	<script>
		$(document)
				.ready(
						function() {

							/* 종합 정보 섹션 정보 삽입 */
							setTotalInfo();

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

		/* 체크여부에따른 종합 정보 변화 */
		$(".individual_cart_checkbox").on("change", function() {
			/* 총 주문 정보 세팅(배송비, 총 가격, 마일리지, 물품 수, 종류) */
			setTotalInfo($(".cart_info_td"));
		});

		/* 체크박스 전체 선택 */
		$(".all_check_input").on("click", function() {

			/* 체크박스 체크/해제 */
			if ($(".all_check_input").prop("checked")) {
				$(".individual_cart_checkbox").attr("checked", true);
			} else {
				$(".individual_cart_checkbox").attr("checked", false);
			}

			/* 총 주문 정보 세팅(배송비, 총 가격, 마일리지, 물품 수, 종류) */
			setTotalInfo($(".cart_info_td"));

		});

		/* 총 주문 정보 세팅(배송비, 총 가격, 마일리지, 물품 수, 종류) */
		function setTotalInfo() {

			let totalPrice = 0; // 총 가격
			let totalCount = 0; // 총 갯수
			let totalKind = 0; // 총 종류
			let totalPoint = 0; // 총 마일리지
			let deliveryPrice = 0; // 배송비
			let finalTotalPrice = 0; // 최종 가격(총 가격 + 배송비)

			$(".cart_info_td").each(
					function(index, element) {

						if ($(element).find(".individual_cart_checkbox").is(
								":checked") === true) { //체크여부
							// 총 가격
							totalPrice += parseInt($(element).find(
									".individual_totalPrice_input").val());
							// 총 갯수
							totalCount += parseInt($(element).find(
									".individual_beanCount_input").val());
							// 총 종류
							totalKind += 1;
							// 총 마일리지
							totalPoint += parseInt($(element).find(
									".individual_totalPoint_input").val());
						}

					});

			/* 배송비 결정 */
			if (totalPrice >= 30000) {
				deliveryPrice = 0;
			} else if (totalPrice == 0) {
				deliveryPrice = 0;
			} else {
				deliveryPrice = 3000;
			}

			finalTotalPrice = totalPrice + deliveryPrice;

			/* ※ 세자리 컴마 Javscript Number 객체의 toLocaleString() */

			// 총 가격
			$(".totalPrice_span").text(totalPrice.toLocaleString());
			// 총 갯수
			$(".totalCount_span").text(totalCount);
			// 총 종류
			$(".totalKind_span").text(totalKind);
			// 총 마일리지
			$(".totalPoint_span").text(totalPoint.toLocaleString());
			// 배송비
			$(".delivery_price").text(deliveryPrice);
			// 최종 가격(총 가격 + 배송비)
			$(".finalTotalPrice_span").text(finalTotalPrice.toLocaleString());
		}

		/* 수량버튼 */
		$(".plus_btn").on("click", function() {
			let quantity = $(this).parent("div").find("input").val();
			$(this).parent("div").find("input").val(++quantity);
		});
		$(".minus_btn").on("click", function() {
			let quantity = $(this).parent("div").find("input").val();
			if (quantity > 1) {
				$(this).parent("div").find("input").val(--quantity);
			}
		});

		/* 수량 수정 버튼 */
		$(".quantity_modify_btn").on("click", function() {
			let cartId = $(this).data("cartid");
			let beanCount = $(this).parent("td").find("input").val();
			$(".update_cartId").val(cartId);
			$(".update_beanCount").val(beanCount);
			$(".quantity_update_form").submit();

		});

		/* 장바구니 삭제 버튼 */
		$(".delete_btn").on("click", function(e) {
			e.preventDefault();
			const cartId = $(this).data("cartid");
			$(".delete_cartId").val(cartId);
			$(".quantity_delete_form").submit();
		});

		/* 주문 페이지 이동 */
		$(".order_btn")
				.on(
						"click",
						function() {

							let form_contents = '';
							let orderNumber = 0;

							$(".cart_info_td")
									.each(
											function(index, element) {

												if ($(element)
														.find(
																".individual_cart_checkbox")
														.is(":checked") === true) { //체크여부

													let beanId = $(element)
															.find(
																	".individual_beanId_input")
															.val();
													let beanCount = $(element)
															.find(
																	".individual_beanCount_input")
															.val();

													let beanId_input = "<input name='orders[" + orderNumber + "].beanId' type='hidden' value='" + beanId + "'>";
													form_contents += beanId_input;

													let beanCount_input = "<input name='orders[" + orderNumber + "].beanCount' type='hidden' value='" + beanCount + "'>";
													form_contents += beanCount_input;

													orderNumber += 1;

												}
											});

							$(".order_form").html(form_contents);
							$(".order_form").submit();

						});
	</script>

</body>
</html>