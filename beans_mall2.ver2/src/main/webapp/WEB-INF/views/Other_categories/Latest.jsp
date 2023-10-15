<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>의상 나눔</title>
<style>
/* 스타일 추가 */
body {
	font-family: Arial, sans-serif;
	background-color: #f0f0f0;
	margin: 0;
	padding: 0;
}

header {
	background-color: #333;
	color: #fff;
	text-align: center;
	padding: 1rem;
}

h1 {
	font-size: 2rem;
}

#container {
	max-width: 1200px;
	margin: 0 auto;
	padding: 2rem;
	background-color: #fff;
	border: 1px solid #ccc;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

label {
	font-weight: bold;
}

input, select, button {
	padding: 0.5rem;
	margin: 0.5rem 0;
	width: 100%;
}

button {
	background-color: #2196F3;
	color: #fff;
	border: none;
	border-radius: 5px;
	cursor: pointer;
}

button:hover {
	background-color: #1976D2;
}

/* 추가 스타일 - 패션몰 */
#fashionMall {
	display: flex;
	flex-wrap: wrap;
	gap: 1rem;
	margin-top: 2rem;
}

.fashionItem {
	border: 1px solid #ccc;
	padding: 1rem;
	border-radius: 5px;
	box-shadow: 0 0 5px rgba(0, 0, 0, 0.2);
	width: calc(33.33% - 1rem);
	text-align: center;
}

.fashionItem img {
	max-width: 100%;
	height: auto;
}
</style>
</head>
<body>
	<header>
		<h1>의상 나눔</h1>
	</header>

	<div id="container">
		<form enctype="multipart/form-data" action="/upload" method="post">
			<label for="itemName">의상 이름:</label> <input type="text" id="itemName"
				name="itemName" required> <label for="itemDescription">의상
				설명:</label>
			<textarea id="itemDescription" name="itemDescription" rows="4"
				required></textarea>

			<label for="itemSize">의상 크기:</label> <select id="itemSize"
				name="itemSize" required>
				<option value="S">S</option>
				<option value="M">M</option>
				<option value="L">L</option>
				<option value="XL">XL</option>
			</select> <label for="itemCondition">의상 상태:</label> <select id="itemCondition"
				name="itemCondition" required>
				<option value="새 제품">새 제품</option>
				<option value="거의 새 것">거의 새 것</option>
				<option value="사용 감 있음">사용 감 있음</option>
			</select> <label for="itemImage">의상 이미지:</label> <input type="file"
				id="itemImage" name="itemImage" accept="image/*" required>

			<button type="submit" onclick="showThankYouMessage()">의상
				나눔하기</button>
		</form>

		<!-- 패션몰 - 외부 링크로 변경 -->
		<div id="fashionMall">
			<a class="fashionItem"
				href="https://www.unicef.or.kr/event/unicef-team3-1/?trackcode=n_bad_21team&utm_source=naver&utm_medium=paidsearch&utm_content=%EB%A9%94%EC%9D%B8%ED%83%80%EC%9D%B4%ED%8B%80_%ED%8C%80%ED%8C%94%EC%B0%8C_PC&utm_campaign=21team&mac_ad_key=2195203737"
				target="_blank"> <img src="/resources/img/유니세프.jpg"
				alt="UNICEF 아이템">
			</a> <a class="fashionItem"
				href="https://www.sc.or.kr/yeonsu/?utm_source=naver_pc&utm_medium=paid_search&utm_campaign=yeonsu&utm_content=text_basic_%EA%B5%AD%EB%82%B4_%EA%B8%B0%EB%B6%80&utm_term=%EA%B8%B0%EB%B6%80%EC%82%AC%EC%9D%B4%ED%8A%B8&utm_source_platform=%EA%B5%AD%EB%82%B4_%EA%B8%B0%EB%B6%80&BSCPN=SC_PC&n_media=27758&n_query=%EA%B8%B0%EB%B6%80%EC%82%AC%EC%9D%B4%ED%8A%B8&n_rank=3&n_ad_group=grp-a001-01-000000008258601&n_ad=nad-a001-01-000000241239624&n_keyword_id=nkw-a001-01-000005033779574&n_keyword=%EA%B8%B0%EB%B6%80%EC%82%AC%EC%9D%B4%ED%8A%B8&n_campaign_type=1&n_ad_group_type=1&NaPm=ct%3Dlmew8ch4%7Cci%3D0yi000393ZXy54gKSL09%7Ctr%3Dsa%7Chk%3Db6127a4a1cacb4683e8ddd08c911d1e5a923ba4d"
				target="_blank"> <img src="/resources/img/세이브 더 칠드런.jpg"
				alt="세이브 더 칠드런 아이템">
			</a> <a class="fashionItem"
				href="https://www.redcross.or.kr/main/main.do" target="_blank">
				<img src="/resources/img/대한적십자사.jpg" alt="적십자 아이템">
			</a>
		</div>
	</div>

	<!-- 의상 나눔 후 감사 메시지 -->
	<div id="thankYouMessage"
		style="display: none; text-align: center; margin-top: 2rem;">
		<h2>의상을 나누어 주셔서 감사합니다!</h2>
		<p>귀하의 기부는 더 나은 세상을 만드는데 기여합니다.</p>
	</div>
	<!-- 홈 버튼 -->
	<a href="/main"
		style="display: block; text-align: center; margin-top: 2rem;">홈으로</a>

	<script>
		// 홈 버튼 클릭 시 페이지 이동
		document.querySelector("a[href='/main']").addEventListener("click",
				function(e) {
					e.preventDefault(); // 기본 링크 이벤트 방지
					window.location.href = "/main"; // 홈 페이지로 이동
				});
	</script>

	<script>
		// 의상 기부 후 감사 메시지 표시
		function showThankYouMessage() {
			document.getElementById("thankYouMessage").style.display = "block";
		}
	</script>
</body>
</html>
