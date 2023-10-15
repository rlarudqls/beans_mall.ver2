<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>직원 채용 공고</title>
<style>
body {
	background-color: #f2f2f2;
	font-family: Arial, sans-serif;
}

.poster {
	max-width: 500px;
	margin: 50px auto;
	background-color: white;
	padding: 20px;
	border-radius: 10px;
	box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
}

.poster h1 {
	font-size: 24px;
	text-align: center;
	margin-bottom: 20px;
}

.job-role {
	font-weight: bold;
	margin-bottom: 5px;
}

.job-count {
	font-style: italic;
	margin-bottom: 20px;
}

.how-to-apply {
	margin-bottom: 20px;
}

.how-to-apply h2 {
	font-size: 18px;
	margin-bottom: 10px;
}

.how-to-apply p {
	margin-bottom: 10px;
}

.contact-info {
	text-align: center;
}

.contact-info p {
	margin-bottom: 5px;
}

.main-button {
	text-align: center;
}

.main-button a {
	display: inline-block;
	padding: 10px 20px;
	background-color: #4CAF50;
	color: white;
	text-decoration: none;
	border-radius: 4px;
	margin-right: 10px;
}

.apply-button {
	display: inline-block;
	padding: 10px 20px;
	background-color: white;
	color: black;
	text-decoration: none;
	border-radius: 4px;
}
</style>
</head>
<body>
	<div class="poster">
		<h1>직원 채용 공고</h1>

		<!-- 개발팀 -->
		<div>
			<p class="job-role">개발팀</p>
			<p class="job-count">구하는 인원:</p>
			<ul>
				<li>소프트웨어 엔지니어: 3명</li>
				<li>프론트엔드 개발자: 2명</li>
				<li>백엔드 개발자: 2명</li>
				<li>데이터 엔지니어: 1명</li>
				<li>시스템 관리자: 1명</li>
			</ul>
			<div class="apply-button">
				<a href="mailto:kkb3431@gmail.com?subject=개발팀 지원합니다">지원하기</a>
			</div>
		</div>

		<!-- 디자인팀 -->
		<div>
			<p class="job-role">디자인팀</p>
			<p class="job-count">구하는 인원:</p>
			<ul>
				<li>그래픽 디자이너: 2명</li>
				<li>UX/UI 디자이너: 2명</li>
				<li>일러스트레이터: 1명</li>
				<li>웹 디자이너: 1명</li>
				<li>애니메이터: 1명</li>
			</ul>
			<div class="apply-button">
				<a href="mailto:kkb3431@gmail.com?subject=디자인팀 지원합니다">지원하기</a>
			</div>
		</div>

		<!-- 마케팅팀 -->
		<div>
			<p class="job-role">마케팅팀</p>
			<p class="job-count">구하는 인원:</p>
			<ul>
				<li>마케팅 전략 담당자: 1명</li>
				<li>콘텐츠 마케터: 2명</li>
				<li>디지털 마케터: 2명</li>
				<li>소셜 미디어 전문가: 1명</li>
				<li>이벤트 기획자: 1명</li>
			</ul>
			<div class="apply-button">
				<a href="mailto:kkb3431@gmail.com?subject=마케팅팀 지원합니다">지원하기</a>
			</div>
		</div>

		<!-- 영업팀 -->
		<div>
			<p class="job-role">영업팀</p>
			<p class="job-count">구하는 인원:</p>
			<ul>
				<li>영업 담당자: 3명</li>
				<li>기업 영업 담당자: 2명</li>
				<li>해외 영업 담당자: 1명</li>
				<li>영업 지원 담당자: 1명</li>
			</ul>
			<div class="apply-button">
				<a href="mailto:kkb3431@gmail.com?subject=영업팀 지원합니다">지원하기</a>
			</div>
		</div>

		<!-- 인사팀 -->
		<div>
			<p class="job-role">인사팀</p>
			<p class="job-count">구하는 인원:</p>
			<ul>
				<li>인사 담당자: 1명</li>
				<li>채용 담당자: 2명</li>
				<li>교육 및 개발 담당자: 1명</li>
				<li>급여 및 혜택 담당자: 1명</li>
			</ul>
			<div class="apply-button">
				<a href="mailto:kkb3431@gmail.com?subject=인사팀 지원합니다">지원하기</a>
			</div>
		</div>

		<!-- 운영팀 -->
		<div>
			<p class="job-role">운영팀</p>
			<p class="job-count">구하는 인원:</p>
			<ul>
				<li>운영 매니저: 1명</li>
				<li>프로젝트 매니저: 2명</li>
				<li>고객지원 담당자: 3명</li>
				<li>물류 담당자: 2명</li>
				<li>재고 관리 담당자: 1명</li>
			</ul>
			<div class="apply-button">
				<a href="mailto:kkb3431@gmail.com?subject=운영팀 지원합니다">지원하기</a>
			</div>
		</div>

		<div class="how-to-apply">
			<h2>지원 방법</h2>
			<p>이메일로 이력서를 보내주세요. 자세한 내용은 아래 연락처로 문의해주세요.</p>
		</div>

		<div class="contact-info">
			<h2>문의 사항</h2>
			<p>이름: 김경빈</p>
			<p>이메일: kkb3431@gmail.com</p>
			<p>전화번호: 010-6375-3431</p>
		</div>
		<div class="main-button">
			<a href="/main">메인으로</a>
		</div>
	</div>
</body>
</html>
