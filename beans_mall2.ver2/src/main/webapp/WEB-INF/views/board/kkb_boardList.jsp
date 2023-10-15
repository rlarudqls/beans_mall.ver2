<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>빈스몰 Q&A 게시판</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f5f5f5;
	margin: 0;
	padding: 0;
}

h1 {
	text-align: center;
	padding: 20px;
	background-color: #333;
	color: #fff;
	margin: 0;
}

table {
	width: 100%;
	border-collapse: collapse;
	margin-top: 20px;
}

th, td {
	padding: 10px;
	border: 1px solid #ccc;
}

th {
	background-color: #f9f9f9;
}

tr:nth-child(even) {
	background-color: #f2f2f2;
}

a {
	text-decoration: none;
	color: #333;
}

.create-link {
	display: block;
	margin-top: 20px;
	text-align: center;
}

.timestamp {
	text-align: right;
	padding: 10px;
	color: #666;
}
</style>
<script>
	document.addEventListener("DOMContentLoaded", function() {
		var mainLink = document.getElementById("main-link");
		mainLink.href = "/main";
	});
</script>
</head>
<body>
	<h1>빈스몰 Q&A 게시판</h1>
	<table>
		<tr>
			<th>제목</th>
			<th>작성자</th>
			<th>내용</th>
			<th>공지사항 바로가기</th>
			<th>자주묻는질문 바로가기</th>
			<th>수정</th>
			<th>삭제</th>
		</tr>
		<c:forEach var="board" items="${boardList}">
			<tr>
				<td>${board.title}</td>
				<td>${board.writer}</td>
				<td>${board.content}</td>
				<td><a href="/notice/notice">이동</a></td>
				<td><a href="/notice/inquire">이동</a></td>
				<td><a href="/board/${board.id}/edit">수정</a></td>
				<td><a href="/board/${board.id}/delete">삭제</a></td>

			</tr>
		</c:forEach>
	</table>

	<div class="timestamp">
		현재 시간:
		<%= new java.util.Date() %>
	</div>

	<a class="create-link" href="/board/create">글쓰기</a>
	<div class="main-link-wrapper">
		<a href="/main" class="main-link">[메인으로]</a>
	</div>
</body>
</html>
