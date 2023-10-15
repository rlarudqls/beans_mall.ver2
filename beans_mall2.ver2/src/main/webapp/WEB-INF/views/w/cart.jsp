<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Page Redirect</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f0f0f1;
}

.container {
	max-width: 1080px;
	margin: 0 auto;
	padding: 20px;
	text-align: center;
}
</style>
<script>
	setTimeout(function() {
		location.href = "/cart/${member.memberId}";
	}, 1000);
</script>
</head>
<body>
	<div class="container">
		<h1>잠시 후 장바구니 페이지로 자동으로 이동합니다...</h1>
	</div>
</body>
</html>
