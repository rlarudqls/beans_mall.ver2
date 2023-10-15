<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>랜덤 페이지 리디렉션</title>
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
	// 페이지 목록 배열
	var pages = [
		"A_ring",
		"Accessories",
		"Agricultural_and_fishery",
		"Allowance_event",
		"Bags",
		"Beauty",
		"Beverage",
		"Books",
		"Bracelet",
		"Candle",
		"caricature",
		"Child",
		"Clock",
		"Clothing",
		"companion_goods",
		"Craft",
		"Dessert",
		"Digital_Accessories",
		"Earrings",
		"fashion_miscellaneous_goods",
		"Fine_art",
		"flower",
		"furniture",
		"Hair",
		"Handmade_food",
		"Handmade_side_dishes",
		"Handmade_soap",
		"Home_Fabric",
		"Home_interior",
		"Kitchen",
		"men_shoes",
		"Necklace",
		"Perfume",
		"phonecase",
		"Phrase",
		"Pottery",
		"Toy",
		"traditional_liquor",
		"Vehicle_Supplies",
		"Wallet",
		"women_shoes"
	];

	//// 무작위 페이지 선택 및 리디렉션
	var randomPageIndex = Math.floor(Math.random() * pages.length);
	var randomPage = pages[randomPageIndex];
	var redirectedPage = "/category/" + randomPage; // /category/ 경로를 추가합니다.
	setTimeout(function() {
		location.href = redirectedPage;
	}, 1000);
</script>
</head>
<body>
	<div class="container">
		<h1>잠시 후 실시간 추천 페이지로 이동합니다...</h1>
	</div>
</body>
</html>
