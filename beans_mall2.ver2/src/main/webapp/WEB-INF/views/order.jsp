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

/* content_main */
.content_main {
	min-height: 700px;
	padding-right: 350px;
	position: relative;
}

table {
	border-collapse: collapse;
}

/* 사용자 정보  */
.memberInfo_table {
	width: 100%;
	border-spacing: 0;
	border-top: 2px solid #363636;
	border-bottom: 1px solid #b6b6b6;
}

.member_info_div td {
	padding: 12px;
	text-align: left;
}

/* 사용자 주소 정보 */
.addressInfo_div {
	margin-top: 30px;
}

.addressInfo_input_div_wrap {
	border-bottom: 1px solid #f3f3f3;
	height: 225px;
}

.address_btn {
	background-color: #555;
	color: white;
	float: left;
	border: none;
	outline: none;
	cursor: pointer;
	padding: 14px 16px;
	font-size: 17px;
	width: 50%;
}

.address_btn:hover {
	background-color: #777;
}

.addressInfo_button_div::after {
	content: '';
	display: block;
	clear: both;
}

.addressInfo_input_div {
	padding: 12px;
	text-align: left;
	display: none;
	line-height: 40px;
}

.addressInfo_input_div th {
	border-color: transparent;
	background-color: transparent;
}

.addressInfo_input_div th {
	padding: 12px 5px 12px 20px;
	vertical-align: top;
}

.addressInfo_input_div td {
	padding: 8px 12px;
}

.addressInfo_input_div_2 input {
	padding: 6px 5px;
}

.address_search_btn {
	vertical-align: middle;
	display: inline-block;
	border: 1px solid #aaa;
	width: 90px;
	text-align: center;
	height: 30px;
	line-height: 30px;
	color: #555;
	cursor: pointer;
}
/* 주문상품 정보 */
.orderGoods_div {
	margin-top: 30px;
}

.goods_kind_div {
	font-size: 25px;
	line-height: 35px;
	font-weight: bold;
}

.goods_subject_table {
	font-size: 14px;
	line-height: 20px;
	width: 100%;
	text-align: center;
}

.goods_subject_table th {
	text-align: center;
	color: #333;
	border-bottom: 1px solid #e7e7e7;
	border-top: 2px solid #3084d9;
	background: #f4f9fd;
	padding: 2px 0;
}

.goods_table {
	font-size: 14px;
	line-height: 20px;
	border-bottom: 1px solid #e7e7e7;
}

.goods_table tr {
	height: 110px;
}

.goods_table_price_td {
	text-align: center;
}

/* 포인트 영역 */
.point_div {
	margin-top: 30px;
	margin-bottom: 50px;
}

.point_div_subject {
	font-size: 25px;
	line-height: 35px;
	font-weight: bold;
}

.point_table {
	border-color: #ddd;
	border-spacing: 0;
	border-top: 1px solid #363636;
	border-bottom: 1px solid #b6b6b6;
}

.point_table th {
	border-color: #ddd;
	vertical-align: top;
	text-align: center;
	color: #333333;
	background: #fbfbfb;
	text-indent: 0;
	padding: 12px 5px 12px 20px;
	font-size: 15px;
	line-height: 20px;
}

.point_table_td {
	border-color: #ddd;
	text-align: left;
	color: #333333;
	padding: 8px 15px;
}

.order_point_input_btn {
	vertical-align: middle;
	display: inline-block;
	border: 1px solid #aaa;
	width: 60px;
	text-align: center;
	height: 20px;
	line-height: 20px;
	color: #555;
	cursor: pointer;
	font-size: 12px;
}

/* 주문 종합 정보 */
.total_info_div {
	position: absolute;
	top: 0;
	right: 0;
	width: 300px;
	border: 1px solid #333;
	border-top-width: 2px;
}

.total_info_price_div {
	width: 90%;
	margin: auto;
	position: relative;
}

.total_info_div ul {
	list-style: none;
}

.total_info_div li {
	text-align: right;
	margin-top: 10px;
}

.price_span_label {
	float: left;
}

.price_total_li {
	border-top: 1px solid #ddd;
	padding-top: 20px;
}

.strong_red {
	color: red;
}

.total_price_red {
	font-size: 25px;
}

.total_price_label {
	margin-top: 5px;
}

.point_li {
	padding: 15px;
	border-top: 1px solid #ddd;
	margin: 10px -15px 0;
}

.total_info_btn_div {
	border-top: 1px solid #ddd;
	text-align: center;
	padding: 15px 20px;
}

.order_btn {
	display: inline-block;
	font-size: 21px;
	line-height: 50px;
	width: 200px;
	height: 50px;
	background-color: #365fdd;
	color: #fff;
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
<link rel="stylesheet" href="/resources/css/order.css">
<script src="https://code.jquery.com/jquery-3.4.1.js"
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	crossorigin="anonymous"></script>
<!-- 다음주소 -->
<script
	src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
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


				<div class="content_main">
					<!-- 회원 정보 -->
					<div class="member_info_div">
						<table class="table_text_align_center memberInfo_table">
							<tbody>
								<tr>
									<th style="width: 25%;">주문자</th>
									<td style="width: *">${memberInfo.memberName}|
										${memberInfo.memberMail}</td>
								</tr>
							</tbody>
						</table>
					</div>

					<!-- 배송지 정보 -->
					<div class="addressInfo_div">
						<div class="addressInfo_button_div">
							<button class="address_btn address_btn_1"
								onclick="showAdress('1')" style="background-color: #3c3838;">고객
								정보 주소록</button>
							<button class="address_btn address_btn_2"
								onclick="showAdress('2')">직접 입력</button>
						</div>
						<div class="addressInfo_input_div_wrap">
							<div class="addressInfo_input_div addressInfo_input_div_1"
								style="display: block">
								<table>
									<colgroup>
										<col width="25%">
										<col width="*">
									</colgroup>
									<tbody>
										<tr>
											<th>이름</th>
											<td>${memberInfo.memberName}</td>
										</tr>
										<tr>
											<th>주소</th>
											<td>${memberInfo.memberAddr1}${memberInfo.memberAddr2}<br>${memberInfo.memberAddr3}
												<input class="selectAddress" value="T" type="hidden">
												<input class="addressee_input"
												value="${memberInfo.memberName}" type="hidden"> <input
												class="address1_input" type="hidden"
												value="${memberInfo.memberAddr1}"> <input
												class="address2_input" type="hidden"
												value="${memberInfo.memberAddr2}"> <input
												class="address3_input" type="hidden"
												value="${memberInfo.memberAddr3}">
											</td>
										</tr>
									</tbody>
								</table>
							</div>
							<div class="addressInfo_input_div addressInfo_input_div_2">
								<table>
									<colgroup>
										<col width="25%">
										<col width="*">
									</colgroup>
									<tbody>
										<tr>
											<th>이름</th>
											<td><input class="addressee_input"></td>
										</tr>
										<tr>
											<th>주소</th>
											<td><input class="selectAddress" value="F" type="hidden">
												<input class="address1_input" readonly="readonly"> <a
												class="address_search_btn"
												onclick="execution_daum_address()">주소 찾기</a><br> <input
												class="address2_input" readonly="readonly"><br>
												<input class="address3_input" readonly="readonly"></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
					<!-- 상품 정보 -->
					<div class="orderGoods_div">
						<!-- 상품 종류 -->
						<div class="goods_kind_div">
							주문상품 <span class="goods_kind_div_kind"></span>종 <span
								class="goods_kind_div_count"></span>개
						</div>
						<!-- 상품 테이블 -->
						<table class="goods_subject_table">
							<colgroup>
								<col width="15%">
								<col width="45%">
								<col width="40%">
							</colgroup>
							<tbody>
								<tr>
									<th>이미지</th>
									<th>상품 정보</th>
									<th>판매가</th>
								</tr>
							</tbody>
						</table>
						<table class="goods_table">
							<colgroup>
								<col width="15%">
								<col width="45%">
								<col width="40%">
							</colgroup>
							<tbody>
								<c:forEach items="${orderList}" var="ol">
									<tr>
										<td>
											<div class="image_wrap"
												data-beanid="${ol.imageList[0].beanId}"
												data-path="${ol.imageList[0].uploadPath}"
												data-uuid="${ol.imageList[0].uuid}"
												data-filename="${ol.imageList[0].fileName}">
												<img>
											</div>
										</td>
										<td>${ol.beanName}</td>
										<td class="goods_table_price_td"><fmt:formatNumber
												value="${ol.salePrice}" pattern="#,### 원" /> | 수량
											${ol.beanCount}개 <br> <fmt:formatNumber
												value="${ol.totalPrice}" pattern="#,### 원" /> <br>[<fmt:formatNumber
												value="${ol.totalPoint}" pattern="#,### 원" />P] <input
											type="hidden" class="individual_beanPrice_input"
											value="${ol.beanPrice}"> <input type="hidden"
											class="individual_salePrice_input" value="${ol.salePrice}">
											<input type="hidden" class="individual_beanCount_input"
											value="${ol.beanCount}"> <input type="hidden"
											class="individual_totalPrice_input"
											value="${ol.salePrice * ol.beanCount}"> <input
											type="hidden" class="individual_point_input"
											value="${ol.point}"> <input type="hidden"
											class="individual_totalPoint_input" value="${ol.totalPoint}">
											<input type="hidden" class="individual_beanId_input"
											value="${ol.beanId}"></td>
									</tr>
								</c:forEach>

							</tbody>
						</table>
					</div>

					<!-- 포인트 정보 -->
					<div class="point_div">
						<div class="point_div_subject">포인트 사용</div>
						<table class="point_table">
							<colgroup>
								<col width="25%">
								<col width="*">
							</colgroup>
							<tbody>
								<tr>
									<th>포인트 사용</th>
									<td>${memberInfo.point}| <input class="order_point_input"
										value="0">원 <a
										class="order_point_input_btn order_point_input_btn_N"
										data-state="N">모두사용</a> <a
										class="order_point_input_btn order_point_input_btn_Y"
										data-state="Y" style="display: none;">사용취소</a>

									</td>
								</tr>
							</tbody>
						</table>
					</div>
					<!-- 주문 종합 정보 -->
					<div class="total_info_div">
						<!-- 가격 종합 정보 -->
						<div class="total_info_price_div">
							<ul>
								<li><span class="price_span_label">상품 금액</span> <span
									class="totalPrice_span">100000</span>원</li>
								<li><span class="price_span_label">배송비</span> <span
									class="delivery_price_span">100000</span>원</li>
								<li><span class="price_span_label">할인금액</span> <span
									class="usePoint_span">100000</span>원</li>
								<li class="price_total_li"><strong
									class="price_span_label total_price_label">최종 결제 금액</strong> <strong
									class="strong_red"> <span
										class="total_price_red finalTotalPrice_span"> 1500000 </span>원
								</strong></li>
								<li class="point_li"><span class="price_span_label">적립예정
										포인트</span> <span class="totalPoint_span">7960원</span></li>
							</ul>
						</div>
						<!-- 버튼 영역 -->
						<div class="total_info_btn_div">
							<a class="order_btn">결제하기</a>
						</div>
					</div>

				</div>

				<!-- 주문 요청 form -->
				<form class="order_form" action="/order" method="post">
					<!-- 주문자 회원번호 -->
					<input name="memberId" value="${memberInfo.memberId}" type="hidden">
					<!-- 주소록 & 받는이-->
					<input name="addressee" type="hidden"> <input
						name="memberAddr1" type="hidden"> <input
						name="memberAddr2" type="hidden"> <input
						name="memberAddr3" type="hidden">
					<!-- 사용 포인트 -->
					<input name="usePoint" type="hidden">
					<!-- 상품 정보 -->
				</form>

			</div>



		</div>
		<!-- class="wrap" -->
	</div>
	<!-- class="wrapper" -->

	<script>
		$(document)
				.ready(
						function() {

							/* 주문 조합정보란 최신화 */
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

		/* 주소입력란 버튼 동작(숨김, 등장) */
		function showAdress(className) {
			/* 컨텐츠 동작 */
			/* 모두 숨기기 */
			$(".addressInfo_input_div").css('display', 'none');
			/* 컨텐츠 보이기 */
			$(".addressInfo_input_div_" + className).css('display', 'block');

			/* 버튼 색상 변경 */
			/* 모든 색상 동일 */
			$(".address_btn").css('backgroundColor', '#555');
			/* 지정 색상 변경 */
			$(".address_btn_" + className).css('backgroundColor', '#3c3838');
			/* selectAddress T/F */
			/* 모든 selectAddress F만들기 */
			$(".addressInfo_input_div").each(function(i, obj) {
				$(obj).find(".selectAddress").val("F");
			});
			/* 선택한 selectAdress T만들기 */
			$(".addressInfo_input_div_" + className).find(".selectAddress")
					.val("T");

		}

		/* 다음 주소 연동 */
		function execution_daum_address() {
			console.log("동작");
			new daum.Postcode(
					{
						oncomplete : function(data) {
							// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분입니다.

							// 각 주소의 노출 규칙에 따라 주소를 조합한다.
							// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
							var addr = ''; // 주소 변수
							var extraAddr = ''; // 참고항목 변수

							//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
							if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
								addr = data.roadAddress;
							} else { // 사용자가 지번 주소를 선택했을 경우(J)
								addr = data.jibunAddress;
							}

							// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
							if (data.userSelectedType === 'R') {
								// 법정동명이 있을 경우 추가한다. (법정리는 제외)
								// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
								if (data.bname !== ''
										&& /[동|로|가]$/g.test(data.bname)) {
									extraAddr += data.bname;
								}
								// 건물명이 있고, 공동주택일 경우 추가한다.
								if (data.buildingName !== ''
										&& data.apartment === 'Y') {
									extraAddr += (extraAddr !== '' ? ', '
											+ data.buildingName
											: data.buildingName);
								}
								// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
								if (extraAddr !== '') {
									extraAddr = ' (' + extraAddr + ')';
								}
								// 추가해야할 코드
								// 주소변수 문자열과 참고항목 문자열 합치기
								addr += extraAddr;

							} else {
								addr += ' ';
							}

							// 제거해야할 코드
							// 우편번호와 주소 정보를 해당 필드에 넣는다.
							$(".address1_input").val(data.zonecode);
							$(".address2_input").val(addr);
							// 커서를 상세주소 필드로 이동한다.
							$(".address3_input").attr("readonly", false);
							$(".address3_input").focus();

						}
					}).open();

		}

		/* 포인트 입력 */
		//0 이상 & 최대 포인트 수 이하
		$(".order_point_input").on("propertychange change keyup paste input",
				function() {

					const maxPoint = parseInt('${memberInfo.point}');

					let inputValue = parseInt($(this).val());

					if (inputValue < 0) {
						$(this).val(0);
					} else if (inputValue > maxPoint) {
						$(this).val(maxPoint);
					}

					/* 주문 조합정보란 최신화 */
					setTotalInfo();

				});

		/* 포인트 모두사용 취소 버튼 
		 * Y: 모두사용 상태 / N : 모두 취소 상태
		 */
		$(".order_point_input_btn").on("click", function() {

			const maxPoint = parseInt('${memberInfo.point}');

			let state = $(this).data("state");

			if (state == 'N') {
				console.log("n동작");
				/* 모두사용 */
				//값 변경
				$(".order_point_input").val(maxPoint);
				//글 변경
				$(".order_point_input_btn_Y").css("display", "inline-block");
				$(".order_point_input_btn_N").css("display", "none");
			} else if (state == 'Y') {
				console.log("y동작");
				/* 취소 */
				//값 변경
				$(".order_point_input").val(0);
				//글 변경
				$(".order_point_input_btn_Y").css("display", "none");
				$(".order_point_input_btn_N").css("display", "inline-block");
			}

			/* 주문 조합정보란 최신화 */
			setTotalInfo();

		});

		/* 총 주문 정보 세팅(배송비, 총 가격, 마일리지, 물품 수, 종류) */
		function setTotalInfo() {

			let totalPrice = 0; // 총 가격
			let totalCount = 0; // 총 갯수
			let totalKind = 0; // 총 종류
			let totalPoint = 0; // 총 마일리지
			let deliveryPrice = 0; // 배송비
			let usePoint = 0; // 사용 포인트(할인가격)
			let finalTotalPrice = 0; // 최종 가격(총 가격 + 배송비)	

			$(".goods_table_price_td").each(
					function(index, element) {
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
					});

			/* 배송비 결정 */
			if (totalPrice >= 30000) {
				deliveryPrice = 0;
			} else if (totalPrice == 0) {
				deliveryPrice = 0;
			} else {
				deliveryPrice = 3000;
			}

			/* 사용 포인트 */
			usePoint = $(".order_point_input").val();

			finalTotalPrice = totalPrice + deliveryPrice - usePoint;

			/* 값 삽입 */
			// 총 가격
			$(".totalPrice_span").text(totalPrice.toLocaleString());
			// 총 갯수
			$(".goods_kind_div_count").text(totalCount);
			// 총 종류
			$(".goods_kind_div_kind").text(totalKind);
			// 총 마일리지
			$(".totalPoint_span").text(totalPoint.toLocaleString());
			// 배송비
			$(".delivery_price_span").text(deliveryPrice.toLocaleString());
			// 최종 가격(총 가격 + 배송비)
			$(".finalTotalPrice_span").text(finalTotalPrice.toLocaleString());
			// 할인가(사용 포인트)
			$(".usePoint_span").text(usePoint.toLocaleString());

		}

		/* 주문 요청 */
		$(".order_btn")
				.on(
						"click",
						function() {

							/* 주소 정보 & 받는이*/
							$(".addressInfo_input_div")
									.each(
											function(i, obj) {
												if ($(obj).find(
														".selectAddress").val() === 'T') {
													$("input[name='addressee']")
															.val(
																	$(obj)
																			.find(
																					".addressee_input")
																			.val());
													$(
															"input[name='memberAddr1']")
															.val(
																	$(obj)
																			.find(
																					".address1_input")
																			.val());
													$(
															"input[name='memberAddr2']")
															.val(
																	$(obj)
																			.find(
																					".address2_input")
																			.val());
													$(
															"input[name='memberAddr3']")
															.val(
																	$(obj)
																			.find(
																					".address3_input")
																			.val());
												}
											});

							/* 사용 포인트 */
							$("input[name='usePoint']").val(
									$(".order_point_input").val());

							/* 상품정보 */
							let form_contents = '';
							$(".goods_table_price_td")
									.each(
											function(index, element) {
												let beanId = $(element)
														.find(
																".individual_beanId_input")
														.val();
												let beanCount = $(element)
														.find(
																".individual_beanCount_input")
														.val();
												let beanId_input = "<input name='orders[" + index + "].beanId' type='hidden' value='" + beanId + "'>";
												form_contents += beanId_input;
												let beanCount_input = "<input name='orders[" + index + "].beanCount' type='hidden' value='" + beanCount + "'>";
												form_contents += beanCount_input;
											});
							$(".order_form").append(form_contents);

							/* 서버 전송 */
							$(".order_form").submit();

						});
	</script>

</body>
</html>