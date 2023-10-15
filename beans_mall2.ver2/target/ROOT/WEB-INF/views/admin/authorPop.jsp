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

/* 전체 wrap */
.wrapper {
	width: 100%;
	height: 535px;
}

.subject_name_warp {
	font-size: 33px;
	font-weight: bolder;
	padding-left: 15px;
	background-color: #333;
	height: 13%;
	line-height: 70px;
	color: white;
}

.content_wrap {
	height: 87%;
}

/* 판매자 목록 영역 */
.author_table_wrap {
	padding: 20px 35px
}

.table_exist {
	height: 251px;
}

.author_table {
	width: 100%;
	border: 1px solid #d3d8e1;
	text-align: center;
	border-collapse: collapse;
}

.author_table td {
	padding: 10px 5px;
	border: 1px solid #e9ebf0;
}

.author_table thead {
	background-color: #f8f9fd;
	font-weight: 600;
}

.author_table a {
	color: #1088ed;
	font-weight: 500;
}

.th_column_1 {
	width: 120px;
}

.th_column_3 {
	width: 110px;
}

.table_empty {
	text-align: center;
	margin: 101px 0 130px 0;
	font-size: 25px;
}

/* 검색 영역 */
.search_wrap {
	margin-top: 25px;
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
	margin-top: 20px;
	margin-bottom: 40px;
}

.pageMaker {
	list-style: none;
	display: inline-block;
}

.pageMaker_btn {
	text-align: center;
	float: left;
	width: 30px;
	height: 30px;
	line-height: 30px;
	margin-left: 8px;
	font-size: 15px;
}

.active {
	border: 2px solid black;
	font-weight: 400;
}

.next, .prev {
	border: 1px solid #ccc;
	padding: 0 10px;
}

.next a, .prev a {
	color: #ccc;
}
</style>
<script src="https://code.jquery.com/jquery-3.4.1.js"
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	crossorigin="anonymous"></script>
</head>
<body>
	<div class="wrapper">
		<div class="subject_name_warp">
			<span>판매자 선택</span>
		</div>
		<div class="content_wrap">
			<!-- 게시물 표 영역 -->
			<div class="author_table_wrap">
				<!-- 게시물 O -->
				<c:if test="${listCheck != 'empty'}">
					<div class="table_exist">
						<table class="author_table">
							<thead>
								<tr>
									<td class="th_column_1">판매자 번호</td>
									<td class="th_column_2">판매자 이름</td>
								</tr>
							</thead>
							<c:forEach items="${list}" var="bean">
								<tr>
									<td><c:out value="${bean.authorId}"></c:out></td>
									<td><a class="move"
										href='<c:out value="${bean.authorId}"/>'
										data-name='<c:out value="${bean.authorName}"/>'> <c:out
												value="${bean.authorName}"></c:out>
									</a></td>
								</tr>
							</c:forEach>
						</table>
					</div>
				</c:if>
				<!-- 게시물 x -->
				<c:if test="${listCheck == 'empty'}">
					<div class="table_empty">등록된 판매자가 없습니다.</div>
				</c:if>

				<!-- 검색 영역 -->
				<div class="search_wrap">
					<form id="searchForm" action="/admin/authorPop" method="get">
						<div class="search_input">
							<input type="text" name="keyword"
								value='<c:out value="${pageMaker.cri.keyword}"></c:out>'>
							<input type="hidden" name="pageNum"
								value='<c:out value="${pageMaker.cri.pageNum }"></c:out>'>
							<input type="hidden" name="amount"
								value='${pageMaker.cri.amount}'>
							<button class='btn search_btn'>검 색</button>
						</div>
					</form>
				</div>

				<!-- 페이지 이동 인터페이스 영역 -->
				<div class="pageMaker_wrap">

					<ul class="pageMaker">

						<!-- 이전 버튼 -->
						<c:if test="${pageMaker.prev}">
							<li class="pageMaker_btn prev"><a
								href="${pageMaker.pageStart - 1}">이전</a></li>
						</c:if>

						<!-- 페이지 번호 -->
						<c:forEach begin="${pageMaker.pageStart}"
							end="${pageMaker.pageEnd}" var="num">
							<li class="pageMaker_btn ${pageMaker.cri.pageNum == num ? "active":""}">
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

				<form id="moveForm" action="/admin/authorPop" method="get">
					<input type="hidden" name="pageNum"
						value="${pageMaker.cri.pageNum}"> <input type="hidden"
						name="amount" value="${pageMaker.cri.amount}"> <input
						type="hidden" name="keyword" value="${pageMaker.cri.keyword}">
				</form>


			</div>

		</div>
		<script>
			let searchForm = $('#searchForm');
			let moveForm = $('#moveForm');

			/* 판매자 검색 버튼 동작 */
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
			$(".pageMaker_btn a").on(
					"click",
					function(e) {

						e.preventDefault();

						console.log($(this).attr("href"));

						moveForm.find("input[name='pageNum']").val(
								$(this).attr("href"));

						moveForm.submit();

					});

			/* 판매자 선택 및 팝업창 닫기 */
			$(".move").on("click", function(e) {

				e.preventDefault();

				let authorId = $(this).attr("href");
				let authorName = $(this).data("name");
				$(opener.document).find("#authorId_input").val(authorId);
				$(opener.document).find("#authorName_input").val(authorName);

				window.close();

			});
		</script>
</body>
</html>
