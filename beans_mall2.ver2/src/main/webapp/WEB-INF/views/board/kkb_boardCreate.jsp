<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 작성</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f7f7f7;
	padding: 20px;
}

h1 {
	color: #333333;
}

form {
	margin-bottom: 20px;
}

label {
	display: block;
	margin-bottom: 5px;
	font-weight: bold;
}

input[type="text"], textarea {
	width: 300px;
	padding: 5px;
	margin-bottom: 10px;
}

button {
	padding: 10px 20px;
	background-color: #4CAF50;
	color: white;
	border: none;
	cursor: pointer;
}

button:hover {
	background-color: #45a049;
}

a {
	color: #333333;
	text-decoration: none;
}
</style>
</head>
<body>
	<h1>게시글 작성</h1>
	<form action="/board/create" method="POST">
		<label for="title">제목:</label> <input type="text" id="title"
			name="title"><br> <label for="writer">작성자:</label> <input
			type="text" id="writer" name="writer"><br> <label
			for="content">내용:</label>
		<textarea id="content" name="content"></textarea>
		<br>
		<button type="submit">작성</button>
	</form>

	<a href="/board/kkb_boardList">목록으로</a>
</body>
</html>
