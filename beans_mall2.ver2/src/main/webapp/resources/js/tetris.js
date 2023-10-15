// Tetris 게임 로직 구현

// Tetris 게임 보드
var board = [];
for (var row = 0; row < 20; row++) {
    board[row] = [];
    for (var col = 0; col < 10; col++) {
        board[row][col] = 0;
    }
}

// 현재 블록
var currentBlock = {
    shape: [],
    row: 0,
    col: 0
};

// 새로운 블록 생성
function createNewBlock() {
    // 블록 모양을 랜덤하게 선택
    var shapes = [
        [[1, 1, 1, 1]], // I 블록
        [[1, 1], [1, 1]], // O 블록
        [[1, 1, 0], [0, 1, 1]], // S 블록
        [[0, 1, 1], [1, 1, 0]], // Z 블록
        [[1, 1, 1], [0, 0, 1]], // L 블록
        [[1, 1, 1], [1, 0, 0]], // J 블록
        [[1, 1, 1], [0, 1, 0]] // T 블록
    ];
    var randomShapeIndex = Math.floor(Math.random() * shapes.length);
    currentBlock.shape = shapes[randomShapeIndex];
    currentBlock.row = 0;
    currentBlock.col = Math.floor(Math.random() * (10 - currentBlock.shape[0].length + 1));
}

// 블록을 게임 보드에 추가
function addBlockToBoard() {
    var shape = currentBlock.shape;
    var row = currentBlock.row;
    var col = currentBlock.col;
    for (var i = 0; i < shape.length; i++) {
        for (var j = 0; j < shape[i].length; j++) {
            if (shape[i][j] === 1) {
                board[row + i][col + j] = 1;
            }
        }
    }
}

// 블록을 게임 보드에서 제거
function removeBlockFromBoard() {
    var shape = currentBlock.shape;
    var row = currentBlock.row;
    var col = currentBlock.col;
    for (var i = 0; i < shape.length; i++) {
        for (var j = 0; j < shape[i].length; j++) {
            if (shape[i][j] === 1) {
                board[row + i][col + j] = 0;
            }
        }
    }
}

// 블록을 아래로 이동
function moveBlockDown() {
    removeBlockFromBoard();
    currentBlock.row++;
    if (isCollision()) {
        currentBlock.row--;
        addBlockToBoard();
        createNewBlock();
        if (isGameOver()) {
            alert("Game Over!");
            location.reload();
        }
        // 쿠폰 생성
        generateCoupon();
    }
    addBlockToBoard();
    drawBoard();
}

// 블록을 왼쪽으로 이동
function moveBlockLeft() {
    removeBlockFromBoard();
    currentBlock.col--;
    if (isCollision()) {
        currentBlock.col++;
    }
    addBlockToBoard();
    drawBoard();
}

// 블록을 오른쪽으로 이동
function moveBlockRight() {
    removeBlockFromBoard();
    currentBlock.col++;
    if (isCollision()) {
        currentBlock.col--;
    }
    addBlockToBoard();
    drawBoard();
}

// 블록을 회전
function rotateBlock() {
    removeBlockFromBoard();
    var shape = currentBlock.shape;
    var rotatedShape = [];
    var rows = shape.length;
    var cols = shape[0].length;
    for (var col = 0; col < cols; col++) {
        var newRow = [];
        for (var row = rows - 1; row >= 0; row--) {
            newRow.push(shape[row][col]);
        }
        rotatedShape.push(newRow);
    }
    currentBlock.shape = rotatedShape;
    if (isCollision()) {
        currentBlock.shape = shape;
    }
    addBlockToBoard();
    drawBoard();
}

// 충돌 검사
function isCollision() {
    var shape = currentBlock.shape;
    var row = currentBlock.row;
    var col = currentBlock.col;
    for (var i = 0; i < shape.length; i++) {
        for (var j = 0; j < shape[i].length; j++) {
            if (shape[i][j] === 1) {
                if (row + i >= 20 || col + j < 0 || col + j >= 10 || board[row + i][col + j] === 1) {
                    return true;
                }
            }
        }
    }
    return false;
}

// 게임 보드 그리기
function drawBoard() {
    var boardContainer = document.getElementById("tetris-board");
    boardContainer.innerHTML = "";
    for (var row = 0; row < 20; row++) {
        for (var col = 0; col < 10; col++) {
            var cell = document.createElement("div");
            cell.className = "cell";
            if (board[row][col] === 1) {
                cell.className += " filled-cell";
            }
            boardContainer.appendChild(cell);
        }
    }
}

// 키 이벤트 처리
document.addEventListener("keydown", function(event) {
    if (event.code === "ArrowDown") {
        moveBlockDown();
    } else if (event.code === "ArrowLeft") {
        moveBlockLeft();
    } else if (event.code === "ArrowRight") {
        moveBlockRight();
    } else if (event.code === "ArrowUp") {
        rotateBlock();
    }
});

// 게임 시작
createNewBlock();
setInterval(moveBlockDown, 500);

// 쿠폰 생성
function generateCoupon() {
    var randomNumber = Math.random();
    var coupon = "";
    if (randomNumber < 0.9) {
        coupon = generateRandomCoupon(16);
        showCoupon(coupon, "1000원권");
    } else if (randomNumber < 0.99) {
        coupon = generateRandomCoupon(16);
        showCoupon(coupon, "10000원권");
    } else if (randomNumber < 0.999) {
        coupon = generateRandomCoupon(16);
        showCoupon(coupon, "100000원권");
    } else {
        coupon = generateRandomCoupon(16);
        showCoupon(coupon, "1000000원권");
    }
}

// 랜덤 쿠폰 번호 생성
function generateRandomCoupon(length) {
    var characters = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";
    var coupon = "";
    for (var i = 0; i < length; i++) {
        coupon += characters.charAt(Math.floor(Math.random() * characters.length));
    }
    return coupon;
}

// 쿠폰 보여주기
function showCoupon(coupon, amount) {
    setTimeout(function() {
        alert("Congratulations! You got a coupon: " + amount + "\nCoupon Code: " + coupon);
    }, 10000);
}



// 10초 후에 쿠폰 생성
setTimeout(generateCoupon, 10000);

