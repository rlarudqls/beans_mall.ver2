<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구매 내역</title>
<style>
body {
	font-family: Arial, sans-serif;
}

h1 {
	background-color: #3498db;
	color: #fff;
	padding: 20px;
	text-align: center;
}

h2 {
	margin-top: 20px;
	font-size: 24px;
}

table {
	width: 100%;
	border-collapse: collapse;
	margin-top: 20px;
}

th, td {
	border: 1px solid #ccc;
	padding: 10px;
	text-align: center;
}

th {
	background-color: #3498db;
	color: #fff;
}

img {
	max-width: 100px;
	max-height: 100px;
}

button {
	background-color: #3498db;
	color: #fff;
	border: none;
	padding: 10px 20px;
	font-size: 16px;
	margin-top: 20px;
	cursor: pointer;
}

button:hover {
	background-color: #2980b9;
}
</style>
</head>
<body>
	<h1>구매 내역</h1>

	<h2>회원 정보</h2>
	<table>
		<tr>
			<th>주문자</th>
			<td>${memberInfo.memberName}</td>
		</tr>
		<!-- Add more member information if needed -->
	</table>

	<h2>배송지 정보</h2>
	<table>
		<!-- Display shipping information here -->
	</table>

	<h2>상품 정보</h2>
	<table>
		<thead>
			<tr>
				<th>이미지</th>
				<th>상품 정보</th>
				<th>판매가</th>
				<th>수량</th>
				<th>총 가격</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${orderList}" var="ol">
				<tr>
					<td>
						<!-- Display product image here, you can use the image path from your orderList -->
						<img src="${ol.imageList[0].beanId}" alt="구매 완료 상품 없음">
					</td>
					<td>${ol.beanName}</td>
					<td>${ol.salePrice}원</td>
					<td>${ol.beanCount}개</td>
					<td>${ol.totalPrice}원</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>

	<h2>포인트 정보</h2>
	<table>
		<!-- Display point information here -->
	</table>

	<h2>주문 종합 정보</h2>
	<table>
		<!-- Display total order information here -->
	</table>

	<!-- Add any additional information or formatting as needed -->

	<a href="/main">
		<button>홈으로 가기</button>
	</a>


	<button onclick="window.print()"
		style="background-color: #3498db; color: #fff; border: none; padding: 10px 20px; font-size: 16px; margin-top: 20px; cursor: pointer; font-weight: bold;">
		모바일 현금영수증 프린트</button>

	<!-- Add your JavaScript or jQuery code for any interactivity if needed -->

</body>
</html>
