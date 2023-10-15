<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
@charset "UTF-8";

* {
	margin: 0;
	padding: 0;
}

a {
	text-decoration: none;
}

ul {
	list-style: none;
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
/* 홈페이지 기능 네비 */
.top_gnb_area {
	width: 100%;
	height: 50px;
	background-color: #f0f0f1;
	position: relative;
}

.top_gnb_area .list {
	position: absolute;
	top: 0px;
	right: 0;
}

.top_gnb_area .list li {
	list-style: none;
	float: left;
	padding: 13px 15px 0 10px;
	font-weight: 900;
	cursor: pointer;
}

/* 관리제 페이지 상단 현페이지 정보 */
.admin_top_wrap {
	height: 110px;
	line-height: 110px;
	background-color: #333;
	margin-bottom: 15px;
}

.admin_top_wrap>span {
	margin-left: 30px;
	display: inline-block;
	color: white;
	font-size: 50px;
	font-weight: bolder;
}
/* 관리자 wrap(네비+컨텐츠) */
.admin_wrap {
	
}

/* 관리자페이지 네비 영역 */
.admin_navi_wrap {
	width: 20%;
	height: 300px;
	float: left;
	height: 100%;
}

.admin_navi_wrap li {
	display: block;
	height: 80px;
	line-height: 80px;
	text-align: center;
}

.admin_navi_wrap li a {
	display: block;
	height: 100%;
	width: 95%;
	margin: 0 auto;
	cursor: pointer;
	font-size: 30px;
	font-weight: bolder;
}

.admin_navi_wrap li a:link {
	color: black;
}

.admin_navi_wrap li a:visited {
	color: black;
}

.admin_navi_wrap li a:active {
	color: black;
}

.admin_navi_wrap li a:hover {
	color: black;
}

.admin_list_02 {
	background-color: #c8c8c8;
}

/* 관리자페이지 컨텐츠 영역 */
.admin_content_wrap {
	max-width: 1200px;
	margin: 0 auto;
}

.admin_content_subject { /* 관리자 컨텐츠 제목 영역 */
	font-size: 40px;
	font-weight: bolder;
	padding-left: 15px;
	background-color: #333;
	height: 80px;
	line-height: 80px;
	color: white;
}

/* 상품 목록 영역 */
.goods_table_wrap {
	padding: 20px 35px
}

.goods_table {
	width: 100%;
	border: 1px solid #d3d8e1;
	text-align: center;
	border-collapse: collapse;
}

.goods_table td {
	padding: 10px 5px;
	border: 1px solid #e9ebf0;
}

.goods_table thead {
	background-color: #f8f9fd;
	font-weight: 600;
}

.goods_table a {
	color: #1088ed;
	font-weight: 500;
}

.th_column_1 {
	width: 11%;
}

.th_column_3 {
	width: 14%;
}

.th_column_4 {
	width: 15%;
}

.th_column_5 {
	width: 10%;
}

.table_empty {
	height: 50px;
	text-align: center;
	margin: 200px 0 215px 0px;
	font-size: 25px;
}

/* 검색 영역 */
.search_wrap {
	margin-top: 15px;
}

.search_input {
	position: relative;
	text-align: center;
}

.search_input input[name='keyword'] {
	padding: 4px 10px;
	font-size: 15px;
	height: 20px;
	line-height: 20px;
}

.search_btn {
	height: 32px;
	width: 80px;
	font-weight: 600;
	font-size: 18px;
	line-height: 20px;
	position: absolute;
	margin-left: 15px;
	background-color: #c3daf7;
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
<script src="https://code.jquery.com/jquery-3.4.1.js"
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	crossorigin="anonymous"></script>
</head>
</head>
<body>

	<%@include file="../includes/admin/header.jsp"%>

	<div class="admin_content_wrap">
		<div class="goods_table_wrap">
			<!-- 상품 리스트 O -->
			<c:if test="${listcheck != 'empty'}">
				<table class="goods_table">
					<thead>
						<tr>
							<td class="th_column_1">상품 번호</td>
							<td class="th_column_2">상품 이름</td>
							<td class="th_column_3">판매자 이름</td>
							<td class="th_column_4">카테고리</td>
							<td class="th_column_5">재고</td>
							<td class="th_column_6">등록날짜</td>
						</tr>
					</thead>
					<c:forEach items="${list}" var="bean">
						<tr>
							<td><c:out value="${bean.beanId}"></c:out></td>
							<td><a class="move" href='<c:out value="${bean.beanId}"/>'>
									<c:out value="${bean.beanName}"></c:out>
							</a></td>
							<td><c:out value="${bean.authorName}"></c:out></td>
							<td><c:out value="${bean.cateName}"></c:out></td>
							<td><c:out value="${bean.beanStock}"></c:out></td>
							<td><fmt:formatDate value="${bean.regDate}"
									pattern="yyyy-MM-dd" /></td>
						</tr>
					</c:forEach>
				</table>
			</c:if>
			<!-- 상품 리스트 X -->
			<c:if test="${listCheck == 'empty'}">
				<div class="table_empty">등록된 판매자가 없습니다.</div>
			</c:if>
		</div>

		<!-- 검색 영역 -->
		<div class="search_wrap">
			<form id="searchForm" action="/admin/goodsManage" method="get">
				<div class="search_input">
					<input type="text" name="keyword"
						value='<c:out value="${pageMaker.cri.keyword}"></c:out>'>
					<input type="hidden" name="pageNum"
						value='<c:out value="${pageMaker.cri.pageNum }"></c:out>'>
					<input type="hidden" name="amount" value='${pageMaker.cri.amount}'>
					<input type="hidden" name="type" value="G">
					<button class='btn search_btn'>검 색</button>
				</div>
			</form>
		</div>

		<!-- 페이지 이름 인터페이스 영역 -->
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

		<form id="moveForm" action="/admin/goodsManage" method="get">
			<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum}">
			<input type="hidden" name="amount" value="${pageMaker.cri.amount}">
			<input type="hidden" name="keyword" value="${pageMaker.cri.keyword}">
		</form>

	</div>

	<script>
		$(document).ready(function() {

			/* 등록 성공 이벤트 */
			let eResult = '<c:out value="${enroll_result}"/>';
			checkResult(eResult);
			function checkResult(result) {

				if (result === '') {
					return;
				}

				alert("상품'" + eResult + "'을 등록하였습니다.");

			}

			/* 수정 성공 이벤트 */
			let modify_result = '${modify_result}';

			if (modify_result == 1) {
				alert("수정 완료");
			}

			/* 삭제 결과 경고창 */
			let delete_result = '${delete_result}';

			if (delete_result == 1) {
				alert("삭제 완료");
			}

		});

		let searchForm = $('#searchForm');
		let moveForm = $('#moveForm');

		/* 작거 검색 버튼 동작 */
		$("#searchForm button").on("click", function(e) {

			e.preventDefault();

			/* 검색 키워드 유효성 검사 */
			if (!searchForm.find("input[name='keyword']").val()) {
				alert("키워드를 입력하십시오");
				return false;
			}

			searchForm.find("input[name='pageNum']").val("1");

			searchForm.submit();

		});

		/* 페이지 이동 버튼 */
		$(".pageMaker_btn a").on("click", function(e) {

			e.preventDefault();

			moveForm.find("input[name='pageNum']").val($(this).attr("href"));

			moveForm.submit();

		});

		/* 상품 조회 페이지 */
		$(".move")
				.on(
						"click",
						function(e) {

							e.preventDefault();

							moveForm
									.append("<input type='hidden' name='beanId' value='"
											+ $(this).attr("href") + "'>");
							moveForm.attr("action", "/admin/goodsDetail");
							moveForm.submit();

						});
	</script>

</body>
</html>
