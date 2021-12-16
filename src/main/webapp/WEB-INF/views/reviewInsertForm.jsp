<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>

<link href="css/board.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="css/maicons.css">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet"href="vendor/owl-carousel/css/owl.carousel.css">
<link rel="stylesheet" href="vendor/animate/animate.css">
<link rel="stylesheet" href="css/theme.css">
<script src="js/jquery-3.5.1.min.js"></script>
<script src="js/bootstrap.bundle.min.js"></script>
<script src="vendor/owl-carousel/js/owl.carousel.min.js"></script>
<script src="vendor/wow/wow.min.js"></script>
<script src="js/theme.js"></script>
<style type="text/css">

@font-face {
    font-family: 'MaruBuri-Regular';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-10-21@1.0/MaruBuri-Regular.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
@font-face {
 font-family: 'NanumBarunGothic';
 font-style: normal;
 font-weight: 400;
 src: url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWeb.eot');
 src: url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWeb.eot?#iefix') format('embedded-opentype'), url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWeb.woff') format('woff'), url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWeb.ttf') format('truetype');
}
body{
	font-family: 'MaruBuri-Regular';
}

.rating .rate_radio {
    position: relative;
    display: inline-block;
    z-index: 20;
    opacity: 0.001;
    width: 60px;
    height: 60px;
    background-color: #fff;
    cursor: pointer;
    vertical-align: top;
    display: none;
}
.rating .rate_radio + label {
    position: relative;
    display: inline-block;
    margin-left: -4px;
    z-index: 10;
    width: 60px;
    height: 60px;
    background-image: url('./img/starrate.png');
    background-repeat: no-repeat;
    background-size: 60px 60px;
    cursor: pointer;
    background-color: #f0f0f0;
}
.rating .rate_radio:checked + label {
    background-color: #ff8;
}
</style>

  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
  <meta name="copyright" content="MACode ID, https://macodeid.com/">
  
  
</head>
<body>

  <!-- Back to top button -->
  <div class="back-to-top"></div>
	<%@include file="header.jsp" %>
	<form action="reviewInsertPro" method="post">
	<div class="container" style="margin: 5% auto;" >
		<h2>리뷰 등록</h2>
		<hr style="border-top:3px solid #000000">
		<div class="row" style="margin: 3% auto;">
			<div class="col">
				<label for="rtitle">
					<h5>제목 : </h5> </label>
				<input type="text" name="rtitle" placeholder="제목을 입력하세요" style="width: 100%;">
				<input type="hidden" name="rnum" value="1">
				</div>
		</div>
		<div class="row" style="margin: 3% auto;">
			<div class="col">
				<label for="id">
					<h5>작성자 : </h5> </label>
				<input type="text" name="id" value="${varSessionId}" style="width: 100%;" readonly="readonly">
			</div>
		</div>
		<div class="row" style="margin: 3% auto;">
			<div class="col">
				<label for="ptitle">
				<h5>내용 :</h5> </label>
					<textarea rows="3" name="rcontent" placeholder="내용을 입력하세요" style="width: 100%;"></textarea>
			</div>
		</div>
		<div class="row" style="margin: 3% auto;">
			<div class="col">
				<div class="rating">
	                <!-- 해당 별점을 클릭하면 해당 별과 그 왼쪽의 모든 별의 체크박스에 checked 적용 -->
	                <input type="radio" name="star" id="rating1" value="1" class="rate_radio" title="1점">
	                <label for="rating1"></label>
	                <input type="radio" name="star" id="rating2" value="2" class="rate_radio" title="2점">
	                <label for="rating2"></label>
	                <input type="radio" name="star" id="rating3" value="3" class="rate_radio" title="3점" >
	                <label for="rating3"></label>
	                <input type="radio" name="star" id="rating4" value="4" class="rate_radio" title="4점">
	                <label for="rating4"></label>
	                <input type="radio" name="star" id="rating5" value="5" class="rate_radio" title="5점">
	                <label for="rating5"></label>
           		 </div>
			</div>
		</div>
		<div style="margin: 0 auto; float: right;">
			<!-- 비어있거나 올바르지 않다면 alert 처리하기 -->	
			<input type="submit" value="작성완료" class="btn btn-sm btn-primary">
			<!-- 취소하면 정말 취소하시겠습니까 alert 처리하기 -->
			<button type="button" onclick="location.href='reviewList'" class="btn btn-sm btn-primary">취소</button>	
			
		</div>
	</div>
	</form>
	
	
	
	
	<%@include file="footer.jsp" %>
</body>
</html>