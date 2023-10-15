<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>15초를 기다리면 쿠폰 번호가 나옵니다.</title>
<script src="${pageContext.request.contextPath}/resources/js/tetris.js"></script>
<style>
body {
	background-color: #f3f3f3;
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
}

.container {
	max-width: 600px;
	margin: 0 auto;
	padding: 20px;
	display: flex;
	flex-direction: column;
	align-items: center;
}

h1 {
	text-align: center;
	color: #333;
}

#tetris-board {
	border: 1px solid #333;
	width: 300px;
	height: 600px;
	margin-bottom: 20px;
	background-color: #fff;
	display: flex;
	flex-wrap: wrap;
	justify-content: center;
	align-items: center;
}

.cell {
	width: 30px;
	height: 30px;
	border: 1px solid #eee;
	background-color: #fff;
	box-sizing: border-box;
}

.filled-cell {
	background-color: #333;
}

.footer {
	display: flex;
	justify-content: flex-end;
}

.footer-link {
	margin-left: 20px;
}
</style>
<script>
	document.addEventListener("DOMContentLoaded", function() {
		var countdownElement = document.getElementById("countdown");
		var count = 15;
		var countdownInterval = setInterval(function() {
			count--;
			countdownElement.innerText = count;
			if (count <= 0) {
				clearInterval(countdownInterval);
				countdownElement.innerText = "쿠폰 번호를 확인하세요!";
			}
		}, 1000);
	});
</script>
</head>
<body>
	<div class="container">
		<h1>
			<span id="countdown">15</span>초를 기다리면 쿠폰 번호가 나옵니다.
		</h1>
		<div id="tetris-board"></div>
		<div class="footer">
			<div>
				<a href="/main" class="footer-link">Go to Main</a>
			</div>
		</div>
	</div>
</body>
</html>



