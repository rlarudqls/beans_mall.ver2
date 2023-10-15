<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 정보</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f5f5f5;
}

h1 {
	text-align: center;
	color: #333;
	padding-top: 30px;
}

table {
	margin: 20px auto;
	border-collapse: collapse;
	background-color: #fff;
	box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
	width: 80%;
	max-width: 600px;
}

th, td {
	padding: 10px;
	border: 1px solid #ccc;
}

td:first-child {
	font-weight: bold;
}

.image-container {
	float: right;
	width: 200px;
}

.image-container img {
	display: block;
	margin-bottom: 10px;
	width: 100%;
	border-radius: 5px;
}
</style>


</head>
<body>
	<h1>회원 정보</h1>
	<table>
		<tr>
			<td>아이디</td>
			<td>${member.memberId}</td>
		</tr>
		<tr>
			<td>이름</td>
			<td>${member.memberName}</td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td>${member.memberPw}</td>
		</tr>
		<tr>
			<td>돈</td>
			<td>${member.money}</td>
		</tr>
		<tr>
			<td>포인트</td>
			<td>${member.point}</td>
		</tr>
	</table>
	<div class="image-container"></div>
</body>
</html>
