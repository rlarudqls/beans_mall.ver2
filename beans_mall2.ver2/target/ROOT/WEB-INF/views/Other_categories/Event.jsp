<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>빈스몰 이벤트</title>
<style>
/* 스타일링 코드 */
body {
	background-image: url(/resources/img/kkblogo.png);
	background-size: cover;
	background-color: rgba(255, 255, 255, 0.01);
}

.event-container {
	width: 600px;
	margin: 0 auto;
	padding: 20px;
	background-color: rgba(255, 255, 255, 0.8);
	border: 1px solid #ccc;
	border-radius: 5px;
}

h1 {
	text-align: center;
}

.event-title {
	text-align: center;
	margin-bottom: 20px;
	color: #ff6d23;
}

.event-description {
	color: #000000;
}

.button-container {
	text-align: center;
	margin-top: 20px;
}

.event-button {
	padding: 10px 20px;
	background-color: #ff6d23;
	color: #ffffff;
	border: none;
	border-radius: 5px;
	font-size: 16px;
	cursor: pointer;
}

.main-button {
	margin-top: 20px;
	text-align: center;
}

.main-button a {
	padding: 10px 20px;
	background-color: #ff6d23;
	color: #ffffff;
	text-decoration: none;
	border-radius: 5px;
	font-size: 16px;
}
</style>
</head>
<body>
	<div class="event-container">
		<h1>빈스몰 이벤트</h1>
		<h2 class="event-title">이벤트</h2>
		<div class="inner-w mobile-full">
			<nav class="cnn-list">
				<div>
					<span style="color: red;">[진행중]</span>
					<p>🎟 필요한 친구에게 빈스몰 쿠폰 선물해 보세요!</p>
				</div>
				<div>
					<span style="color: red;">[진행중]</span>
					<p>[EVENT] 친구 초대하면 조건없이 쓸 수 있는 할인쿠폰을 매월 드려요.</p>
				</div>
				<div>
					<span style="color: red;">[진행중]</span>
					<p>[EVENT] 카카오톡 친구 추가하고 할인쿠폰 받아 가세요.</p>
				</div>
			</nav>
		</div>
		<div class="button-container">
			<button class="event-button" onclick="location.href='/play-tetris'">이벤트
				참여</button>
		</div>
		<div class="main-button">
			<a href="/main">메인으로</a>
		</div>
	</div>
</body>
</html>
