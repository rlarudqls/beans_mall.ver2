<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>상품 매진 안내</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 800px;
            margin: 0 auto;
            background-color: #fff;
            padding: 20px;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
            border-radius: 5px;
        }

        h1 {
            color: #333;
            text-align: center;
        }

        p {
            color: #666;
            text-align: center;
        }

        button {
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            display: block;
            margin: 0 auto;
            transition: background-color 0.3s;
        }

        button:hover {
            background-color: #0056b3;
        }

        .back-button {
            background-color: #ccc;
            display: block;
            margin: 20px auto;
            padding: 10px 20px;
            border: none;
            color: #333;
            cursor: pointer;
            transition: background-color 0.3s, color 0.3s;
        }

        .back-button:hover {
            background-color: #999;
            color: #fff;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>해당 상품은 매진되었습니다.</h1>
        <p>상품 재고 추가 주문을 원하시면 아래 버튼을 클릭해주세요:</p>
        <button type="button" onclick="requestAdditionalStock()">상품 재고 추가 주문 요청하기</button>

        <br>

        <!-- 뒤로 가기 버튼 -->
        <button class="back-button" onclick="goBack()">뒤로 가기</button>
    </div>

    <script>
        function requestAdditionalStock() {
            alert("상품 재고 추가 주문 요청이 접수되었습니다.");
        }

        function goBack() {
            window.location.href = "/category/women_shoes"; 
        }
    </script>
</body>
</html>
