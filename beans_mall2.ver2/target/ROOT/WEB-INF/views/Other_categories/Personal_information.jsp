<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>빈스몰 이용약관</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f2f2f2;
}

h1 {
	color: #333;
	text-align: center;
	margin-top: 50px;
	font-size: 24px;
	font-weight: bold;
}

p {
	color: #666;
	font-size: 50px;
	line-height: 1.5;
	margin: 20px;
}

button {
	background-color: #4CAF50;
	color: white;
	padding: 10px 20px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	font-size: 16px;
	margin: 20px;
}

button:hover {
	background-color: #45a049;
}
</style>
</head>
<body>
	<h1>개인정보처리방침</h1>
	<p>저는 책임을 지지 않는 한도로, 귀하께서는 개인정보를 최대한 적지 않으시는 것을 권장드립니다.</p>

	<script>
		function goToMain() {
			window.location.href = "/main";
		}
	</script>
	<button onclick="goToMain()">메인으로 돌아가기</button>
</body>
</html>
