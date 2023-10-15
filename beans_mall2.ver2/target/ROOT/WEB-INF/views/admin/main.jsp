<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bean's mall Admin Page</title>
<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

body {
	font-family: Arial, sans-serif;
	background-color: #f0f0f1;
}

.container {
	max-width: 1080px;
	margin: 0 auto;
	padding: 20px;
}

.top-nav {
	display: flex;
	justify-content: flex-end;
	align-items: center;
	height: 50px;
	background-color: #f0f0f1;
	padding: 0 20px;
}

.top-nav a {
	text-decoration: none;
	color: #333;
	font-weight: bold;
	padding: 8px 10px;
	border-radius: 4px;
	transition: background-color 0.3s ease;
}

.top-nav a:hover {
	background-color: #ddd;
}

.admin-header {
	background-color: #333;
	color: white;
	padding: 10px 20px;
	text-align: center;
	font-size: 28px;
	font-weight: bold;
}

.admin-content {
	background-color: #fff;
	padding: 20px;
	text-align: center;
	font-size: 24px;
	font-weight: bold;
	color: #333;
}

.admin-content ul {
	list-style: none;
	padding: 0;
	margin-top: 20px;
}

.admin-content li {
	margin-bottom: 10px;
}

.admin-content a {
	display: block;
	padding: 10px 20px;
	background-color: #8EC0E4;
	color: white;
	text-decoration: none;
	border-radius: 4px;
	transition: background-color 0.3s ease;
}

.admin-content a:hover {
	background-color: #70A9D5;
}

.footer {
	background-color: #333;
	padding: 10px 20px;
	text-align: center;
	color: white;
	font-weight: bold;
}
</style>
</head>
<body>
	<div class="container">
		<div class="top-nav">
			<li><a href="/main">메인 페이지</a></li>
			<li><a href="/member/logout.do">로그아웃</a></li>
		</div>

		<header class="admin-header"> Bean's mall Admin Page </header>

		<div class="admin-content">
			<ul>
				<li><a class="admin_list_01" href="/admin/goodsEnroll">상품
						등록</a></li>
				<li><a class="admin_list_02" href="/admin/goodsManage">상품
						관리</a></li>
				<li><a class="admin_list_03" href="/admin/authorEnroll">판매자
						등록</a></li>
				<li><a class="admin_list_04" href="/admin/authorManage">판매자
						관리</a></li>
				<li><a class="admin_list_05" href="/w/me">관리자 마이페이지</a></li>
			</ul>
		</div>
	</div>

	<footer class="footer"> &copy; 2023 Admin Page. All rights
		reserved. </footer>

</body>
</html>
