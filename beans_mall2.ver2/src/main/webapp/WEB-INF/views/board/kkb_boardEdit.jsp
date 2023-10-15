<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 수정</title>
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

form {
	max-width: 600px;
	margin: 20px auto;
	background-color: #fff;
	padding: 20px;
	border-radius: 5px;
	box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
}

label {
	display: inline-block;
	width: 100px;
	margin-bottom: 10px;
}

input[type="text"], textarea {
	width: 100%;
	padding: 10px;
	border: 1px solid #ccc;
	border-radius: 3px;
	resize: vertical;
}

button[type="submit"] {
	background-color: #333;
	color: #fff;
	padding: 10px 20px;
	border: none;
	border-radius: 3px;
	cursor: pointer;
}

button[type="submit"]:hover {
	background-color: #555;
}

a {
	text-decoration: none;
	color: #333;
	display: block;
	text-align: center;
	margin-top: 10px;
}
</style>
</head>
<body>
	<h1>게시글 수정</h1>
	<form action="/board/${board.id}/edit" method="POST">
		<label for="title">제목:</label> <input type="text" id="title"
			name="title" value="${board.title}"><br> <label
			for="writer">작성자:</label> <input type="text" id="writer"
			name="writer" value="${board.writer}"><br> <label
			for="content">내용:</label>
		<textarea id="content" name="content">${board.content}</textarea>
		<br>
		<button type="submit">수정</button>
	</form>

	<a href="/board/${board.id}">취소</a>
</body>
</html>
