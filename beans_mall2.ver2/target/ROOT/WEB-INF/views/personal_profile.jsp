<%@ page import="com.beans_mall.VO.MemberVO"%><%@ page language="java"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>개인 프로필</title>
<link rel="stylesheet" href="/resources/css/main.css">
</head>
<body>
	<div class="wrapper">
		<div class="container">
			<h1>개인 프로필</h1>
			<% 
                // 세션에서 회원 정보 가져오기
                MemberVO member = (MemberVO) session.getAttribute("member");
                if (member != null) {
            %>
			<div class="profile">
				<p>
					아이디:
					<%= member.getMemberId() %></p>
				<p>
					이름:
					<%= member.getMemberName() %></p>
				<p>
					이메일:
					<%= member.getMemberMail() %></p>
				<p>
					주소:
					<%= member.getMemberAddr1() %>
					<%= member.getMemberAddr2() %>
					<%= member.getMemberAddr3() %></p>
				<!-- 필요한 회원 정보를 추가 -->
			</div>
			<% } else { %>
			<p>로그인이 필요합니다.</p>
			<% } %>
		</div>
	</div>
</body>
</html>
