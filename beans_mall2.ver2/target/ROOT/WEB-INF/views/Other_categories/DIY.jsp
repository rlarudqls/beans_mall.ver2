<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>나만의 DIY</title>
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

select, button, input[type="number"] {
	padding: 0.5rem;
	margin: 0.5rem 0;
}

#clothingShape {
	/* 옷의 형태를 표시할 공간 스타일 추가 가능 */
	text-align: center;
	margin-bottom: 1rem;
}

canvas {
	border: 1px solid #ccc;
	display: block;
	margin: 0 auto;
	background-color: #fff;
	border-radius: 10px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
}

#drawingTools {
	display: flex;
	justify-content: center;
	align-items: center;
	margin-top: 1rem;
}

#colorPicker {
	margin-right: 1rem;
}

#lineWidth {
	padding: 0.5rem;
	margin-right: 1rem;
	border: 1px solid #ccc;
	border-radius: 5px;
}

#designButtons {
	margin-top: 1rem;
	text-align: center;
}

#saveDesignButton, #emailLink {
	background-color: #2196F3;
	color: #fff;
	padding: 1rem 2rem;
	border-radius: 5px;
	cursor: pointer;
	text-decoration: none;
	display: inline-block;
}

#emailLink:hover, #saveDesignButton:hover {
	background-color: #1976D2;
}
</style>
</head>
<body>
	<header>
		<h1>나만의 DIY</h1>
	</header>

	<div id="container">
		<label for="clothingType">옷 종류:</label> <select id="clothingType"
			onchange="changeClothingType()">
			<option value="T-shirt">티셔츠</option>
			<option value="Hoodie">반바지</option>
		</select>

		<!-- 옷 크기 선택 박스 추가 -->
		<label for="clothingSize">옷 크기:</label> <select id="clothingSize"
			onchange="changeClothingSize()">
			<option value="SS">SS</option>
			<option value="S">S</option>
			<option value="M">M</option>
			<option value="L">L</option>
			<option value="XL">XL</option>
		</select>

		<div id="clothingShape">
			<!-- 옷의 형태를 표시할 공간 -->
		</div>

		<div id="tools">
			<!-- ... 이전 도구들 유지 ... -->
		</div>

		<canvas id="canvas" width="400" height="400"></canvas>

		<!-- 그림 그리기 도구 추가 -->
		<div id="drawingTools">
			<input type="color" id="colorPicker"
				onchange="changeColor(this.value)" value="#000000">
		</div>

		<div id="designButtons">
			<button id="saveDesignButton" onclick="saveDesign()">디자인 저장</button>
			<a href="/main" id="homeLink"
				style="background-color: #2196F3; color: #fff; padding: 1rem 2rem; border-radius: 5px; cursor: pointer; text-decoration: none; display: inline-block;">홈</a>
			<a id="emailLink" onclick="sendEmail()">메일로 보내기</a>
			<!-- 홈버튼 추가 -->
		</div>
	</div>

	<script>
    // 상의와 하의 이미지 경로
    const clothingImages = {
        "T-shirt": "/beans_mall/src/main/webapp/resources/img/빈스몰 반팔티 도안.jpg",
        "Hoodie": "/beans_mall/src/main/webapp/resources/img/빈스몰 반바지 도안.jpg"
    };

    const clothingData = {
            "T-shirt": {
                "SS": { width: 100, height: 150 },
                "S": { width: 120, height: 160 },
                "M": { width: 140, height: 170 },
                "L": { width: 160, height: 180 },
                "XL": { width: 180, height: 190 }
            },
            "Hoodie": {
                "SS": { width: 120, height: 160 },
                "S": { width: 140, height: 170 },
                "M": { width: 160, height: 180 },
                "L": { width: 180, height: 190 },
                "XL": { width: 200, height: 200 }
            }
        };

        const canvas = document.getElementById("canvas");
        const ctx = canvas.getContext("2d");
        let drawing = false;
        let color = "black";
        let lineWidth = 2;
        let selectedClothingType = "T-shirt";
        let selectedClothingSize = "SS";

        function changeClothingType() {
            selectedClothingType = document.getElementById("clothingType").value;
            drawClothingShape();
        }

        function changeClothingSize() {
            selectedClothingSize = document.getElementById("clothingSize").value;
            drawClothingShape();
        }

        function drawClothingShape() {
            const clothingShape = document.getElementById("clothingShape");
            const clothingWidth = clothingData[selectedClothingType][selectedClothingSize].width;
            const clothingHeight = clothingData[selectedClothingType][selectedClothingSize].height;

            // 옷 형태 윤곽을 나타내는 코드를 작성합니다.
            // 예: clothingShape.innerHTML = "<img src='옷 이미지 경로' width='" + clothingWidth + "' height='" + clothingHeight + "' />";

            // 옷 종류에 따라 배경 이미지를 설정합니다.
            if (selectedClothingType === "T-shirt") {
                canvas.style.backgroundImage = 'url("/resources/img/빈스몰 반팔티 도안.jpg")';
            } else if (selectedClothingType === "Hoodie") {
                canvas.style.backgroundImage = 'url("/resources/img/빈스몰 반바지 도안.jpg")';
            } else {
                // 다른 옷 종류에 대한 처리 추가 가능
                canvas.style.backgroundImage = 'none'; // 배경 이미지 제거
            }
        }

        canvas.addEventListener("mousedown", (e) => {
            drawing = true;
            ctx.beginPath();
            ctx.moveTo(e.clientX - canvas.offsetLeft, e.clientY - canvas.offsetTop);
        });

        canvas.addEventListener("mousemove", (e) => {
            if (!drawing) return;
            ctx.lineTo(e.clientX - canvas.offsetLeft, e.clientY - canvas.offsetTop);
            ctx.strokeStyle = color;
            ctx.lineWidth = lineWidth;
            ctx.stroke();
        });

        canvas.addEventListener("mouseup", () => {
            drawing = false;
        });

        function changeColor(newColor) {
            color = newColor;
        }

        function changeLineWidth(newWidth) {
            lineWidth = newWidth;
        }

        function clearCanvas() {
            ctx.clearRect(0, 0, canvas.width, canvas.height);
        }

        function saveDesign() {
            const designData = canvas.toDataURL(); // 이미지 데이터 URL로 변환
            const a = document.createElement("a");
            a.href = designData;
            a.download = "design.png"; // 파일 이름 지정
            a.style.display = "none";
            document.body.appendChild(a);
            a.click();
            document.body.removeChild(a);
        }

        function sendEmail() {
            const subject = "주문 제작 문의"; // 이메일 제목
            const body = "옷 종류: " + selectedClothingType + "\n옷 사이즈: " + selectedClothingSize + "\n디자인 데이터: [첨부 파일]"; // 이메일 본문
            const mailtoLink = "mailto:kkb3431@gmail.com?subject=" + encodeURIComponent(subject) + "&body=" + encodeURIComponent(body);

            // 이메일 클라이언트 열기
            window.location.href = mailtoLink;
        }
        function drawClothingShape() {
            const clothingShape = document.getElementById("clothingShape");
            const clothingWidth = clothingData[selectedClothingType][selectedClothingSize].width;
            const clothingHeight = clothingData[selectedClothingType][selectedClothingSize].height;

            // 옷 형태 윤곽을 나타내는 코드를 작성합니다.
            // 예: clothingShape.innerHTML = "<img src='옷 이미지 경로' width='" + clothingWidth + "' height='" + clothingHeight + "' />";
            
            // 문구 추가
            clothingShape.innerHTML = "<p>당신만의 매력을 표출할 수 있는 옷을 제작해보세요</p>";

            // 옷 종류에 따라 배경 이미지를 설정합니다.
            if (selectedClothingType === "T-shirt") {
                canvas.style.backgroundImage = 'url("/resources/img/빈스몰 반팔티 도안.jpg")';
            } else if (selectedClothingType === "Hoodie") {
                canvas.style.backgroundImage = 'url("/resources/img/빈스몰 반바지 도안.jpg")';
            } else {
                // 다른 옷 종류에 대한 처리 추가 가능
                canvas.style.backgroundImage = 'none'; // 배경 이미지 제거
            }
        }
        // 초기 옷 형태 그리기
        drawClothingShape();
</script>
</body>
</html>
