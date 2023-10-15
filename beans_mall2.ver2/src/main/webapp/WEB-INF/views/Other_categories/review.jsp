<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>지연 배송 신고</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f2f2f2;
}

h1 {
	background-color: #e74c3c;
	color: #fff;
	padding: 20px;
	text-align: center;
	font-size: 24px;
	margin: 0;
}

form {
	background-color: #fff;
	border: 1px solid #ccc;
	padding: 20px;
	max-width: 600px;
	margin: 20px auto;
	border-radius: 5px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

label {
	display: block;
	margin-bottom: 10px;
	font-weight: bold;
}

input[type="text"], textarea, input[type="file"] {
	width: 100%;
	padding: 10px;
	margin-bottom: 20px;
	border: 1px solid #ccc;
	border-radius: 3px;
}

textarea {
	resize: vertical;
}

input[type="submit"] {
	background-color: #e74c3c;
	color: #fff;
	padding: 10px 20px;
	border: none;
	font-size: 16px;
	border-radius: 3px;
	cursor: pointer;
}

input[type="submit"]:hover {
	background-color: #c0392b;
}
</style>
<script>
	document.addEventListener('DOMContentLoaded', function() {
		const titleInput = document.getElementById('subject');
		const messageInput = document.getElementById('message');
		const fileInput = document.getElementById('file'); // 추가: 파일 업로드 필드
		const submitButton = document.querySelector('input[type="submit"]');

		// 제출 버튼 클릭 이벤트 핸들러
		submitButton.addEventListener('click', function(e) {
			e.preventDefault(); // 기본 제출 동작을 막음

			const title = titleInput.value;
			const message = messageInput.value;
			const file = fileInput.files[0]; // 추가: 선택한 파일

			// FormData 객체를 사용하여 데이터 전송
			const formData = new FormData();
			formData.append('subject', title);
			formData.append('message', message);
			formData.append('file', file); // 추가: 파일 추가

			// AJAX를 사용하여 이메일 전송 요청을 서버로 보냄
			const xhr = new XMLHttpRequest();
			xhr.open('POST', '/other_categories/conditions', true);
			xhr.onreadystatechange = function() {
				if (xhr.readyState === 4) {
					if (xhr.status === 200) {
						// 이메일 전송 성공
						alert('성공적으로 메일이 발송되었습니다.');
						// window.location.href = '/'; // 성공 페이지로 이동
					} else {
						// 이메일 전송 실패
						alert('메일 전송에 실패하였습니다. 잠시후 다시 사용해주세요.');
						// window.location.href = '/other_categories/emailSorry'; // 실패 페이지로 이동
					}
				}
			};
			xhr.send(formData); // 수정: FormData 객체 전송
		});
	});
</script>
</head>
<body>
	<h1>지연 배송 신고</h1>
	<form enctype="multipart/form-data">
		<!-- 수정: 파일 업로드를 지원하도록 enctype 추가 -->
		<label for="subject">제목:</label> <input type="text" id="subject"
			name="subject" required> <label for="file">사진 첨부:</label>
		<!-- 추가: 파일 업로드 필드 -->
		<input type="file" id="file" name="file"> <label for="message">메시지:</label>
		<textarea id="message" name="message" rows="4" cols="50" required></textarea>

		<input type="submit" value="메일 보내기">
		<!-- 홈 버튼 추가 -->
		<div style="text-align: right; padding-right: 20px;">
			<a href="/main">홈으로 가기</a>
		</div>
	</form>
</body>
</html>
