<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
@charset "UTF-8";

* {
	margin: 0;
	padding: 0;
}

a {
	text-decoration: none;
}

ul {
	list-style: none;
}
/* 화면 전체 렙 */
.wrapper {
	width: 100%;
}
/* content 랩 */
.wrap {
	width: 1080px;
	margin: auto;
}
/* 홈페이지 기능 네비 */
.top_gnb_area {
	width: 100%;
	height: 50px;
	background-color: #f0f0f1;
	position: relative;
}

.top_gnb_area .list {
	position: absolute;
	top: 0px;
	right: 0;
}

.top_gnb_area .list li {
	list-style: none;
	float: left;
	padding: 13px 15px 0 10px;
	font-weight: 900;
	cursor: pointer;
}

/* 관리제 페이지 상단 현페이지 정보 */
.admin_top_wrap {
	height: 110px;
	line-height: 110px;
	background-color: #333;
	margin-bottom: 15px;
}

.admin_top_wrap>span {
	margin-left: 30px;
	display: inline-block;
	color: white;
	font-size: 50px;
	font-weight: bolder;
}
/* 관리자 wrap(네비+컨텐츠) */
.admin_wrap {
	
}

/* 관리자페이지 네비 영역 */
.admin_navi_wrap {
	width: 20%;
	height: 300px;
	float: left;
	height: 100%;
}

.admin_navi_wrap li {
	display: block;
	height: 80px;
	line-height: 80px;
	text-align: center;
}

.admin_navi_wrap li a {
	display: block;
	height: 100%;
	width: 95%;
	margin: 0 auto;
	cursor: pointer;
	font-size: 30px;
	font-weight: bolder;
}

.admin_navi_wrap li a:link {
	color: black;
}

.admin_navi_wrap li a:visited {
	color: black;
}

.admin_navi_wrap li a:active {
	color: black;
}

.admin_navi_wrap li a:hover {
	color: black;
}

.admin_list_01 {
	background-color: #c8c8c8;
}

/* 관리자페이지 컨텐츠 영역 */
.admin_content_wrap {
	display: flex;
	justify-content: center;
	align-items: center;
	min-height: 100vh;
}

.admin_content_wrap {
	max-width: 1200px;
	margin: 0 auto;
}

.admin_content_main {
	width: 80%;
	max-width: 800px;
}
/* 관리자 컨텐츠 제목 영역 */
.admin_content_subject {
	font-size: 40px;
	font-weight: bolder;
	padding-left: 15px;
	background-color: #333;
	height: 80px;
	line-height: 80px;
	color: white;
}
/* 관리자 컨텐츠 메인 영역 */
.form_section {
	width: 95%;
	margin-left: 2%;
	margin-top: 20px;
	border: 1px solid #dbdde2;
	background-color: #efefef;
}

.form_section_title {
	padding: 20px 35px;
}

.form_section_title label {
	display: block;
	font-size: 20px;
	font-weight: 800;
}

.form_section_content {
	padding: 20px 35px;
	border-top: 1px solid #dbdde2;
}

.form_section_content input {
	width: 98%;
	height: 25px;
	font-size: 20px;
	padding: 5px 1%;
}

.form_section_content select {
	width: 98%;
	height: 35px;
	font-size: 20px;
	text-align-last: center;
}

.ck-content { /* ckeditor 높이 */
	height: 270px;
}

.ui-datepicker-trigger { /* 캘린더 css 설정 */
	margin-left: 25px;
	width: 14%;
	height: 38px;
	font-weight: 600;
	background-color: #dfe8f5;
	font-size: 15px;
	cursor: pointer;
}

input[name='publeYear'] {
	width: 80%;
	text-align: center;
}

.authorId_btn { /* 판매자 선택 css 설정 */
	margin-left: 20px;
	width: 14%;
	height: 38px;
	font-weight: 600;
	background-color: #dfe8f5;
	font-size: 15px;
	cursor: pointer;
}

#authorName_input {
	width: 80%;
	text-align: center;
}

.form_section_content select { /* 카테고리 css 설정 */
	width: 92%;
	height: 35px;
	font-size: 20px;
	text-align-last: center;
	margin-left: 5px;
}

.cate_wrap span {
	font-weight: 600;
}

.cate_wrap:not(:first-child) {
	margin-top: 20px;
}

.ck_warn { /* 입력란 공란 경고 태그 */
	display: none;
	padding-top: 10px;
	text-align: center;
	color: #e05757;
	font-weight: 300;
}

.step_val { /* 할인 가격 문구 */
	display: block;
	padding-top: 5px;
	font-weight: 500;
}

/* 버튼 영역 */
.btn_section {
	text-align: center;
	margin: 80px 0;
}

.btn {
	min-width: 180px;
	padding: 4px 30px;
	font-size: 25px;
	font-weight: 600;
	line-height: 40px;
}

.enroll_btn {
	background-color: #dbdde2;
	margin-left: 15px;
}

#enrollBtn:hover {
	background-color: #c9cbd0;
}

/* footer navai 영역 */
.footer_nav {
	width: 100%;
	height: 50px;
}

.footer_nav_container {
	width: 100%;
	height: 100%;
	background-color: #8EC0E4;
}

.footer_nav_container>ul {
	font-weight: bold;
	float: left;
	list-style: none;
	position: relative;
	padding-top: 10px;
	line-height: 27px;
	font-family: dotum;
	margin-left: 10px;
}

.footer_nav_container>ul>li {
	display: inline;
	width: 45px;
	height: 19px;
	padding: 10px 9px 0 10px;
}

.footer_nav_container>ul>span {
	margin: 0 4px;
}
/* footer 영역 */
.footer {
	width: 100%;
	height: 130px;
	background-color: #D4DFE6;
	padding-bottom: 50px;
}

.footer_container {
	width: 100%;
	height: 100%;
	margin: auto;
}

.footer_left>img {
	width: 150%;
	height: 130px;
	margin-left: -20px;
	margin-top: -12px;
}

.footer_left {
	float: left;
	width: 170px;
	margin-left: 20px;
	margin-top: 30px;
}

.footer_right {
	float: left;
	width: 680px;
	margin-left: 70px;
	margin-top: 30px;
}

/* float 속성 해제 */
.clearfix {
	clear: both;
}
</style>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" />
<script src="https://code.jquery.com/jquery-3.4.1.js"
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	crossorigin="anonymous"></script>
<script
	src="https://cdn.ckeditor.com/ckeditor5/26.0.0/classic/ckeditor.js"></script>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="//code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<style type="text/css">
#result_card img {
	max-width: 100%;
	height: auto;
	display: block;
	padding: 5px;
	margin-top: 10px;
	margin: auto;
}

#result_card {
	position: relative;
}

.imgDeleteBtn {
	position: absolute;
	top: 0;
	right: 5%;
	background-color: #ef7d7d;
	color: wheat;
	font-weight: 900;
	width: 30px;
	height: 30px;
	border-radius: 50%;
	line-height: 26px;
	text-align: center;
	border: none;
	display: block;
	cursor: pointer;
}
</style>
</head>
<body>

	<%@include file="../includes/admin/header.jsp"%>

	<div class="admin_content_wrap">
		<div class="admin_content_main">
			<form action="/admin/goodsEnroll" method="post" id="enrollForm">
				<div class="form_section">
					<div class="form_section_title">
						<label>상품명</label>
					</div>
					<div class="form_section_content">
						<input name="beanName"> <span
							class="ck_warn beanName_warn">상품명을 입력해주세요.</span>
					</div>
				</div>
				<div class="form_section">
					<div class="form_section_title">
						<label>판매자</label>
					</div>
					<div class="form_section_content">
						<input id="authorName_input" readonly="readonly"> <input
							id="authorId_input" name="authorId" type="hidden">
						<button class="authorId_btn">판매자 선택</button>
						<span class="ck_warn authorId_warn">판매자를 선택해주세요</span>
					</div>
				</div>
				<div class="form_section">
					<div class="form_section_title">
						<label>판촉일</label>
					</div>
					<div class="form_section_content">
						<input name="publeYear" autocomplete="off" readonly="readonly">
						<span class="ck_warn publeYear_warn">판촉일을 선택해주세요.</span>
					</div>
				</div>
				<div class="form_section">
					<div class="form_section_title">
						<label>판촉회사</label>
					</div>
					<div class="form_section_content">
						<input name="publisher"> <span
							class="ck_warn publisher_warn">판촉회사를 입력해주세요.</span>
					</div>
				</div>
				<div class="form_section">
					<div class="form_section_title">
						<label>상품 카테고리</label>
					</div>
					<div class="form_section_content">
						<div class="cate_wrap">
							<span>대분류</span> <select class="cate1">
								<option selected value="none">선택</option>
							</select>
						</div>
						<div class="cate_wrap">
							<span>중분류</span> <select class="cate2">
								<option selected value="none">선택</option>
							</select>
						</div>
						<div class="cate_wrap">
							<span>소분류</span> <select class="cate3" name="cateCode">
								<option selected value="none">선택</option>
							</select>
						</div>
						<span class="ck_warn cateCode_warn">카테고리를 선택해주세요.</span>
					</div>
				</div>
				<div class="form_section">
					<div class="form_section_title">
						<label>상품 가격</label>
					</div>
					<div class="form_section_content">
						<input name="beanPrice" value="0"> <span
							class="ck_warn beanPrice_warn">상품 가격을 입력해주세요.</span>
					</div>
				</div>
				<div class="form_section">
					<div class="form_section_title">
						<label>상품 재고</label>
					</div>
					<div class="form_section_content">
						<input name="beanStock" value="0"> <span
							class="ck_warn beanStock_warn">상품 재고를 입력해주세요.</span>
					</div>
				</div>
				<div class="form_section">
					<div class="form_section_title">
						<label>상품 할인율</label>
					</div>
					<div class="form_section_content">
						<input id="discount_interface" maxlength="2" value="0"> <input
							name="beanDiscount" type="hidden" value="0"> <span
							class="step_val">할인 가격 : <span class="span_discount"></span></span>
						<span class="ck_warn beanDiscount_warn">1~99 숫자를 입력해주세요.</span>
					</div>
				</div>
				<div class="form_section">
					<div class="form_section_title">
						<label>상품 소개</label>
					</div>
					<div class="form_section_content bit">
						<textarea name="beanIntro" id="beanIntro_textarea"></textarea>
						<span class="ck_warn beanIntro_warn">상품 소개를 입력해주세요.</span>
					</div>
				</div>
				<div class="form_section">
					<div class="form_section_title">
						<label>상품 목차</label>
					</div>
					<div class="form_section_content bct">
						<textarea name="beanContents" id="beanContents_textarea"></textarea>
						<span class="ck_warn beanContents_warn">상품 목차를 입력해주세요.</span>
					</div>
				</div>

				<div class="form_section">
					<div class="form_section_title">
						<label>상품 이미지</label>
					</div>
					<div class="form_section_content">
						<input type="file" id="fileItem" name='uploadFile'
							style="height: 40px;">
						<div id="uploadResult"></div>
					</div>
				</div>

			</form>
			<div class="btn_section">
				<button id="cancelBtn" class="btn">취 소</button>
				<button id="enrollBtn" class="btn enroll_btn">등 록</button>
			</div>
		</div>
	</div>


	<script>

	let enrollForm = $("#enrollForm")
	
/* 취소 버튼 */
$("#cancelBtn").click(function(){
	
	location.href="/admin/goodsManage"
	
});

/* 상품 등록 버튼 */
$("#enrollBtn").on("click", function(e) {
  e.preventDefault();

  /* 체크 변수 */
  let beanNameCk = false;
  let authorIdCk = false;
  let publeYearCk = false;
  let publisherCk = false;
  let cateCodeCk = false;
  let priceCk = false;
  let stockCk = false;
  let discountCk = false;
  let introCk = false;
  let contentsCk = false;

  /* 체크 대상 변수 */
  let beanName = $("input[name='beanName']").val();
  let authorId = $("input[name='authorId']").val();
  let publeYear = $("input[name='publeYear']").val();
  let publisher = $("input[name='publisher']").val();
  let cateCode = $("select[name='cateCode']").val();
  let beanPrice = $("input[name='beanPrice']").val();
  let beanStock = $("input[name='beanStock']").val();
  let beanDiscount = $("#discount_interface").val();
  let beanIntro = $(".bit p").html();
  let beanContents = $(".bct p").html();

  /* 공란 체크 */
  if (beanName) {
    $(".beanName_warn").css("display", "none");
    beanNameCk = true;
  } else {
    $(".beanName_warn").css("display", "block");
    beanNameCk = false;
  }

  if (authorId) {
    $(".authorId_warn").css("display", "none");
    authorIdCk = true;
  } else {
    $(".authorId_warn").css("display", "block");
    authorIdCk = false;
  }

  if (publeYear) {
    $(".publeYear_warn").css("display", "none");
    publeYearCk = true;
  } else {
    $(".publeYear_warn").css("display", "block");
    publeYearCk = false;
  }

  if (publisher) {
    $(".publisher_warn").css("display", "none");
    publisherCk = true;
  } else {
    $(".publisher_warn").css("display", "block");
    publisherCk = false;
  }

  if (cateCode != "none") {
    $(".cateCode_warn").css("display", "none");
    cateCodeCk = true;
  } else {
    $(".cateCode_warn").css("display", "block");
    cateCodeCk = false;
  }

  if (beanPrice != 0) {
    $(".beanPrice_warn").css("display", "none");
    priceCk = true;
  } else {
    $(".beanPrice_warn").css("display", "block");
    priceCk = false;
  }

  if (beanStock != 0) {
    $(".beanStock_warn").css("display", "none");
    stockCk = true;
  } else {
    $(".beanStock_warn").css("display", "block");
    stockCk = false;
  }

  if (!isNaN(beanDiscount)) {
    $(".beanDiscount_warn").css("display", "none");
    discountCk = true;
  } else {
    $(".beanDiscount_warn").css("display", "block");
    discountCk = false;
  }

  if (beanIntro != '<br data-cke-filler="true">') {
    $(".beanIntro_warn").css("display", "none");
    introCk = true;
  } else {
    $(".beanIntro_warn").css("display", "block");
    introCk = false;
  }

  if (beanContents != '<br data-cke-filler="true">') {
    $(".beanContents_warn").css("display", "none");
    contentsCk = true;
  } else {
    $(".beanContents_warn").css("display", "block");
    contentsCk = false;
  }

  /* 최종 확인 */
  if (
    beanNameCk &&
    authorIdCk &&
    publeYearCk &&
    publisherCk &&
    cateCodeCk &&
    priceCk &&
    stockCk &&
    discountCk &&
    introCk &&
    contentsCk
  ) {
	  enrollForm.submit();
  } else {
    return false;
  }
});



/* 위지윅 적용 */
 
	/* 책 소개 */
	ClassicEditor
		.create(document.querySelector('#beanIntro_textarea'))
		.catch(error=>{
			console.error(error);
		});
		
	/* 책 목차 */	
	ClassicEditor
	.create(document.querySelector('#beanContents_textarea'))
	.catch(error=>{
		console.error(error);
	});

/* 캘린더 위젯 적용 */

	/* 설정 */
	const config = {
		dateFormat: 'yy-mm-dd',
		showOn : "button",
		buttonText:"날짜 선택",
	    prevText: '이전 달',
	    nextText: '다음 달',
	    monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
	    monthNamesShort: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
	    dayNames: ['일','월','화','수','목','금','토'],
	    dayNamesShort: ['일','월','화','수','목','금','토'],
	    dayNamesMin: ['일','월','화','수','목','금','토'],
	    yearSuffix: '년',
        changeMonth: true,
        changeYear: true
	}

	/* 캘린더 */
	$(function() {
	  $( "input[name='publeYear']" ).datepicker(config);
	});
	
/* 작가 선택 버튼 */
	$('.authorId_btn').on("click",function(e){
		
		e.preventDefault();
		
		let popUrl = "/admin/authorPop";
		let popOption = "width = 650px, height=550px, top=300px, left=300px, scrollbars=yes";
		
		window.open(popUrl,"판매자 찾기",popOption);	
		
	});


/* 카테고리 */
	let cateList = JSON.parse('${cateList}');

	let cate1Array = new Array();
	let cate2Array = new Array();
	let cate3Array = new Array();
	let cate1Obj = new Object();
	let cate2Obj = new Object();
	let cate3Obj = new Object();
	
	let cateSelect1 = $(".cate1");		
	let cateSelect2 = $(".cate2");
	let cateSelect3 = $(".cate3");
	
	/* 카테고리 배열 초기화 메서드 */
	function makeCateArray(obj,array,cateList, tier){
		for(let i = 0; i < cateList.length; i++){
			if(cateList[i].tier === tier){
				obj = new Object();
				
				obj.cateName = cateList[i].cateName;
				obj.cateCode = cateList[i].cateCode;
				obj.cateParent = cateList[i].cateParent;
				
				array.push(obj);				
				
			}
		}
	}	
	
	/* 배열 초기화 */
	makeCateArray(cate1Obj,cate1Array,cateList,1);
	makeCateArray(cate2Obj,cate2Array,cateList,2);
	makeCateArray(cate3Obj,cate3Array,cateList,3);
	
	/*
	$(document).ready(function(){
		console.log(cate1Array);
		console.log(cate2Array);
		console.log(cate3Array);
	});
	*/
	
	/* 대분류 <option> 태그 */
	for(let i = 0; i < cate1Array.length; i++){
		cateSelect1.append("<option value='"+cate1Array[i].cateCode+"'>" + cate1Array[i].cateName + "</option>");
	}
	
	
	/* 중분류 <option> 태그 */
	$(cateSelect1).on("change",function(){
		
		let selectVal1 = $(this).find("option:selected").val();	
		
		cateSelect2.children().remove();
		cateSelect3.children().remove();
		
		cateSelect2.append("<option value='none'>선택</option>");
		cateSelect3.append("<option value='none'>선택</option>");
		
		for(let i = 0; i < cate2Array.length; i++){
			if(selectVal1 === cate2Array[i].cateParent){
				cateSelect2.append("<option value='"+cate2Array[i].cateCode+"'>" + cate2Array[i].cateName + "</option>");	
			}
		}// for
		
	});
	
	/* 소분류 <option>태그 */
	$(cateSelect2).on("change",function(){
		
		let selectVal2 = $(this).find("option:selected").val();
		
		cateSelect3.children().remove();
		
		cateSelect3.append("<option value='none'>선택</option>");		
		
		for(let i = 0; i < cate3Array.length; i++){
			if(selectVal2 === cate3Array[i].cateParent){
				cateSelect3.append("<option value='"+cate3Array[i].cateCode+"'>" + cate3Array[i].cateName + "</option>");	
			}
		}// for		
		
	});		
	
	
	/* 할인율 Input 설정 */
	
	$("#discount_interface").on("propertychange change keyup paste input", function(){
		
		let userInput = $("#discount_interface");
		let discountInput = $("input[name='beanDiscount']");
		
		let discountRate = userInput.val();					// 사용자가 입력한 할인값
		let sendDiscountRate = discountRate / 100;			// 서버에 전송할 할인값
		let goodsPrice = $("input[name='beanPrice']").val();			// 원가
		let discountPrice = goodsPrice * (1 - sendDiscountRate);		// 할인가격
		
		if(!isNaN(discountRate)){
			$(".span_discount").html(discountPrice);		
			discountInput.val(sendDiscountRate);				
		}

		
	});	
	
	$("input[name='beanPrice']").on("change", function(){
		
		let userInput = $("#discount_interface");
		let discountInput = $("input[name='beanDiscount']");
		
		let discountRate = userInput.val();					// 사용자가 입력한 할인값
		let sendDiscountRate = discountRate / 100;			// 서버에 전송할 할인값
		let goodsPrice = $("input[name='beanPrice']").val();			// 원가
		let discountPrice = goodsPrice * (1 - sendDiscountRate);		// 할인가격
		
		if(!isNaN(discountRate)){
			$(".span_discount").html(discountPrice);	
		}
		
		
	});

	/* 할인값 처리 */
	$("input[name='beanPrice']").on("change", function(){
		
		let userInput = $("#discount_interface");
		let discountInput = $("input[name='beanDiscount']");
		
		let discountRate = userInput.val();					// 사용자가 입력한 할인값
		let sendDiscountRate = discountRate / 100;			// 서버에 전송할 할인값
		let goodsPrice = $("input[name='beanPrice']").val();			// 원가
		let discountPrice = goodsPrice * (1 - sendDiscountRate);		// 할인가격
		
		if(!isNaN(discountRate)){
			$(".span_discount").html(discountPrice);	
		}
		
		
	});
	
	/* 이미지 업로드 */
	$("input[type='file']").on("change", function(e){
		
		/* 이미지 존재시 삭제 */
		if($(".imgDeleteBtn").length > 0){
			deleteFile();
		}
		
		let formData = new FormData();
		let fileInput = $('input[name="uploadFile"]');
		let fileList = fileInput[0].files;
		let fileObj = fileList[0];
		
		if(!fileCheck(fileObj.name, fileObj.size)){
			return false;
		}
		
		formData.append("uploadFile", fileObj);
		
		$.ajax({
			url: '/admin/uploadAjaxAction',
	    	processData : false,
	    	contentType : false,
	    	data : formData,
	    	type : 'POST',
	    	dataType : 'json',
	    	success : function(result){
	    		console.log(result);
	    		showUploadImage(result);
	    	},
	    	error : function(result){
	    		alert("이미지 파일이 아닙니다.");
	    	}
		});		

		
	});
		
	/* var, method related with attachFile */
	let regex = new RegExp("(.*?)\.(jpg|png)$");
	let maxSize = 1048576; //1MB	
	
	function fileCheck(fileName, fileSize){

		if(fileSize >= maxSize){
			alert("파일 사이즈 초과");
			return false;
		}
			  
		if(!regex.test(fileName)){
			alert("해당 종류의 파일은 업로드할 수 없습니다.");
			return false;
		}
		
		return true;		
		
	}	
	
	
	/* 이미지 출력 */
	function showUploadImage(uploadResultArr){
		
		/* 전달받은 데이터 검증 */
		if(!uploadResultArr || uploadResultArr.length == 0){return}
		
		let uploadResult = $("#uploadResult");
		
		let obj = uploadResultArr[0];
		
		let str = "";
		
		let fileCallPath = encodeURIComponent(obj.uploadPath.replace(/\\/g, '/') + "/s_" + obj.uuid + "_" + obj.fileName);
		//replace 적용 하지 않아도 가능
		//let fileCallPath = encodeURIComponent(obj.uploadPath + "/s_" + obj.uuid + "_" + obj.fileName);
		
		str += "<div id='result_card'>";
		str += "<img src='/display?fileName=" + fileCallPath +"'>";
		str += "<div class='imgDeleteBtn' data-file='" + fileCallPath + "'>x</div>";
		str += "<input type='hidden' name='imageList[0].fileName' value='"+ obj.fileName +"'>";
		str += "<input type='hidden' name='imageList[0].uuid' value='"+ obj.uuid +"'>";
		str += "<input type='hidden' name='imageList[0].uploadPath' value='"+ obj.uploadPath +"'>";		
		str += "</div>";		
		
   		uploadResult.append(str);     
        
	}	
	
	
	/* 이미지 삭제 버튼 동작 */
	$("#uploadResult").on("click", ".imgDeleteBtn", function(e){
		
		deleteFile();
		
	});
	
	/* 파일 삭제 메서드 */
	function deleteFile(){
		
		let targetFile = $(".imgDeleteBtn").data("file");
		
		let targetDiv = $("#result_card");
		
		$.ajax({
			url: '/admin/deleteFile',
			data : {fileName : targetFile},
			dataType : 'text',
			type : 'POST',
			success : function(result){
				console.log(result);
				
				targetDiv.remove();
				$("input[type='file']").val("");
				
			},
			error : function(result){
				console.log(result);
				
				alert("파일을 삭제하지 못하였습니다.")
			}
		});
	}
	
	
</script>

</body>
</html>