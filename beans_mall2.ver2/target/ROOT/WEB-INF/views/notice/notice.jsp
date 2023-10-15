<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
<script>
	document.addEventListener("DOMContentLoaded", function() {
		var mainLink = document.getElementById("main-link");
		mainLink.href = "/main";
	});
</script>
<link rel="stylesheet" type="text/css"
	href="/resources/css/notice/notice.css">
</head>
<body>
	<div class="wrapper">
		<h1>공지사항</h1>
		<div class="notice-list">
			<div class="notice-item">
				<div class="notice-title">공지 제목: 서비스 이용 안내</div>
				<div class="notice-date">작성일: 2023-05-26</div>
				<div class="notice-content">
					쇼핑몰 이용에 관련된 안내사항입니다.<br> 주문 및 결제, 배송 등에 대한 중요 사항을 안내드립니다.<br>
					자세한 내용은 공지사항 페이지에서 확인해주세요.
				</div>
			</div>
			<div class="notice-item">
				<div class="notice-title">공지 제목: 할인 이벤트 안내</div>
				<div class="notice-date">작성일: 2023-05-26</div>
				<div class="notice-content">
					오늘부터 특별 할인 이벤트를 진행합니다.<br> 다양한 상품들을 저렴한 가격에 만나보세요.<br>
					기간은 한 주간으로 제한됩니다.
				</div>
			</div>

			<div class="notice-item">
				<div class="notice-title">공지 제목: 배송 지연 안내</div>
				<div class="notice-date">작성일: 2023-05-26</div>
				<div class="notice-content">
					최근 날씨 영향으로 일부 지역의 배송이 지연되고 있습니다.<br> 빠른 시일 내에 배송이 완료될 수 있도록
					최선을 다하겠습니다.<br> 양해하여 주시기 바랍니다.
				</div>
			</div>

			<div class="notice-item">
				<div class="notice-title">공지 제목: 새로운 상품 입고 안내</div>
				<div class="notice-date">작성일: 2023-05-26</div>
				<div class="notice-content">
					매장에 다양한 신상품이 입고되었습니다.<br> 트렌디한 디자인과 고품질을 경험해보세요.<br> 한정
					수량이므로 서둘러 구매해주세요.
				</div>
			</div>

			<div class="notice-item">
				<div class="notice-title">공지 제목: 시스템 점검 안내</div>
				<div class="notice-date">작성일: 2023-05-26</div>
				<div class="notice-content">
					서비스의 안정적인 운영을 위해 시스템 점검을 실시합니다.<br> 점검 시간 동안 일시적으로 이용이 제한될 수
					있습니다.<br> 불편을 드려 죄송하며, 양해 부탁드립니다.
				</div>
			</div>

			<div class="notice-item">
				<div class="notice-title">공지 제목: 환불 규정 변경 안내</div>
				<div class="notice-date">작성일: 2023-05-26</div>
				<div class="notice-content">
					상품 환불 규정이 변경되었습니다.<br> 환불 신청 절차와 조건을 자세히 안내하겠습니다.<br> 자세한
					내용은 환불 안내 페이지를 참고해주세요.
				</div>
			</div>

			<div class="notice-item">
				<div class="notice-title">공지 제목: 리뷰 이벤트 안내</div>
				<div class="notice-date">작성일: 2023-05-26</div>
				<div class="notice-content">
					상품 구매 후 리뷰 작성 시 특별 혜택을 제공합니다.<br> 리뷰 이벤트에 참여하시면 경품을 받을 수 있습니다.<br>
					자세한 내용은 이벤트 페이지에서 확인해주세요.
				</div>
			</div>

			<div class="notice-item">
				<div class="notice-title">공지 제목: 고객센터 운영 안내</div>
				<div class="notice-date">작성일: 2023-05-26</div>
				<div class="notice-content">
					고객센터 운영시간이 변경되었습니다.<br> 평일 09:00 ~ 18:00까지 운영됩니다.<br>
					문의사항이 있으시면 언제든지 문의해주세요.
				</div>
			</div>

			<div class="notice-item">
				<div class="notice-title">공지 제목: 회원 등급 업그레이드 안내</div>
				<div class="notice-date">작성일: 2023-05-26</div>
				<div class="notice-content">
					회원 등급 업그레이드 기준이 변경되었습니다.<br> 더 많은 혜택과 특전을 누리고 싶으신 분들은 확인해보세요.<br>
					자세한 내용은 회원 등급 안내 페이지에서 확인해주세요.
				</div>
			</div>

			<div class="notice-item">
				<div class="notice-title">공지 제목: 기프트 카드 이벤트 안내</div>
				<div class="notice-date">작성일: 2023-05-26</div>
				<div class="notice-content">
					기프트 카드 이벤트를 진행합니다.<br> 구매 시 추가적인 할인 혜택을 받으실 수 있습니다.<br>
					기프트 카드 구매와 관련된 자세한 내용은 이벤트 페이지에서 확인해주세요.
				</div>
			</div>
			<div class="main-link-wrapper">
				<a href="/main" class="main-link">[메인으로]</a>
			</div>

		</div>
	</div>
</body>
</html>