<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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

a:link {
	color: black;
}

a:visited {
	color: black;
}

a:active {
	color: black;
}

a:hover {
	color: black;
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
	background-color: #333;
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
	background-color: #5080bd;
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

.admin_list_04 {
	background-color: #c8c8c8;
}

/* 관리자페이지 컨텐츠 영역 */
.admin_content_wrap {
	max-width: 1200px;
	margin: 0 auto;
}
/* 관리자 컨텐츠 제목 영역 */
.admin_content_subject {
	font-size: 40px;
	font-weight: bolder;
	padding-left: 15px;
	background-color: #6AAFE6;
	height: 80px;
	line-height: 80px;
	color: white;
}
/* 관리자 컨텐츠 메인 영역 */
.form_section {
	width: 95%;
	margin-left: 2%;
	margin-top: 20px;
	border: 1px solid #dbdde2;
	background-color: #efefef;
}

.form_section_title {
	padding: 20px 35px;
}

.form_section_title label {
	display: block;
	font-size: 20px;
	font-weight: 800;
}

.form_section_content {
	padding: 20px 35px;
	border-top: 1px solid #dbdde2;
}

.form_section_content input {
	width: 98%;
	height: 25px;
	font-size: 20px;
	padding: 5px 1%;
}

.form_section_content textarea {
	width: 98%;
	height: 170px;
	font-size: 20px;
}

.form_section_content select {
	width: 98%;
	height: 35px;
	font-size: 20px;
	text-align-last: center;
}

.input_block {
	background-color: #f9f9f9;
}

/* 입력란 공란 경고 태그 */
.form_section_content span {
	display: none;
	padding-top: 10px;
	text-align: center;
	color: #e05757;
	font-weight: 300;
}

/* 버튼 영역 */
.btn_section {
	text-align: center;
	margin: 80px 0;
}

.btn {
	min-width: 180px;
	padding: 4px 30px;
	font-size: 25px;
	font-weight: 600;
	line-height: 40px;
}

.modify_btn {
	background-color: #b8d3e8;
	margin-left: 15px;
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
<body>
	<%@include file="../includes/admin/header.jsp"%>
	<div class="admin_content_wrap">
		<div class="admin_content_main">
			<form id="modifyForm" action="/admin/authorModify" method="post">
				<div class="form_section">
					<div class="form_section_title">
						<label>판매자 번호</label>
					</div>
					<div class="form_section_content">
						<input class="input_block" name="authorId" readonly="readonly"
							value="${authorInfo.authorId}">
					</div>
				</div>
				<div class="form_section">
					<div class="form_section_title">
						<label>판매자 이름</label>
					</div>
					<div class="form_section_content">
						<input name="authorName" value="${authorInfo.authorName}">
						<span id="warn_authorName">판매자 이름을 입력 해주세요.</span>
					</div>
				</div>
				<div class="form_section">
					<div class="form_section_title">
						<label>물품 원산지</label>
					</div>
					<div class="form_section_content">
						<select name="nationId">
							<option value="none" disabled="disabled">=== 선택 ===</option>
							<option value="01"
								${authorInfo.nationId eq '01' ? 'selected' : ''}>Made
								in Korea</option>
							<option value="02"
								${authorInfo.nationId eq '02' ? 'selected' : ''}>Made
								in other countries</option>
						</select>
					</div>
				</div>
				<div class="form_section">
					<div class="form_section_title">
						<label>판매자 소개</label>
					</div>
					<div class="form_section_content">
						<textarea name="authorIntro">${authorInfo.authorIntro}</textarea>
						<span id="warn_authorIntro">판매자 소개를 입력 해주세요.</span>
					</div>
				</div>
				<div class="form_section">
					<div class="form_section_title">
						<label>등록 날짜</label>
					</div>
					<div class="form_section_content">
						<input class="input_block" type="text" readonly="readonly"
							value="<fmt:formatDate value="${beanInfo.regDate}" pattern="yyyy-MM-dd" />">
					</div>
				</div>
				<div class="form_section">
					<div class="form_section_title">
						<label>수정 날짜</label>
					</div>
					<div class="form_section_content">
						<input class="input_block" type="text" readonly="readonly"
							value="<fmt:formatDate value="${beanInfo.updateDate}" pattern="yyyy-MM-dd" />">
					</div>
				</div>
				<div class="btn_section">
					<button id="cancelBtn" class="btn">취소</button>
					<button id="modifyBtn" class="btn modify_btn">수정</button>
					<button id="deleteBtn" class="btn delete_btn" type="button">삭제</button>
				</div>
			</form>
		</div>
	</div>

	<form id="moveForm" method="get">
		<input type="hidden" name="authorId" value="${authorInfo.authorId}">
		<input type="hidden" name="pageNum" value="${cri.pageNum}"> <input
			type="hidden" name="amount" value="${cri.amount}"> <input
			type="hidden" name="keyword" value="${cri.keyword}">
	</form>

	<script>
		let moveForm = $("#moveForm");
		let modifyForm = $("#modifyForm");

		/* 판매자 상세 페이지 이동 버튼 */
		$("#cancelBtn").on("click", function(e) {
			e.preventDefault();

			moveForm.attr("action", "/admin/authorDetail");
			moveForm.submit();
		});

		/* 삭제 버튼 */
		$("#deleteBtn").on("click", function(e) {
			e.preventDefault();
			moveForm.attr("action", "/admin/authorDelete");
			moveForm.attr("method", "post");
			moveForm.submit();
		});

		/* 판매자 수정 버튼 작동 및 유효성 검사 */
		$("#modifyBtn")
				.on(
						"click",
						function(e) {
							let authorName = $(
									".form_section_content input[name='authorName']")
									.val();
							let authorIntro = $(
									".form_section_content textarea").val();
							let nameCk = false;
							let introCk = false;

							e.preventDefault();

							if (!authorName) {
								$("#warn_authorName").css("display", "block");
							} else {
								$("#warn_authorName").css("display", "none");
								nameCk = true;
							}
							if (!authorIntro) {
								$("#warn_authorIntro").css("display", "block");
							} else {
								$("#warn_authorIntro").css("display", "none");
								introCk = true;
							}

							if (nameCk && introCk) {
								modifyForm.submit();
							} else {
								return false;
							}
						});
	</script>
</body>
</html>
