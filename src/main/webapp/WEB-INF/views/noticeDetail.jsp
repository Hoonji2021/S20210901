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
</style>

  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
  <meta name="copyright" content="MACode ID, https://macodeid.com/">
  
  <title>One Health - Medical Center HTML5 Template</title>
</head>
<body>

  <!-- Back to top button -->
  <div class="back-to-top"></div>
  <%@include file="header.jsp" %>
	
	<div class="row" style=" margin: 3% auto; width: 65%; text-align: center; font-size: 18px; font-family: NanumBarunGothic;">

            <div class="col" style="border: 1px solid; padding: 15px; border-color: #DCD3D5; "><a href="/board/101">병원소개</a></div>
            <div class="col" style="border: 1px solid; padding: 15px; border-color: #DCD3D5; "><a href="/board/102">의료진소개</a></div>
            <div class="col" style="border: 1px solid; padding: 15px; border-color: #DCD3D5; "><a href="/board/103">공지사항</a></div>
            <div class="col" style="border: 1px solid; padding: 15px; border-color: #DCD3D5; background-color: #5396E4"><a href="/board/103" style="color: white;">FAQ</a></div>
            <div class="col" style="border: 1px solid; padding: 15px; border-color: #DCD3D5; color: black"><a href="/board/103">오시는길</a></div>

    </div>
    
    <table style="width: 60%; margin: 0 auto; margin-bottom: 3%; font-family: NanumBarunGothic">
    <fmt:formatDate value="${notice.ndate }" var="ndate" pattern="yy-MM-dd"/>
		<tr><th>제목</th></tr>
		<tr><td>${notice.ntitle }</td></tr>
		<tr><th>날짜</th></tr>
		<tr><td>${ndate }</td></tr>
		<tr><th>조회수</th></tr>
		<tr><td>${notice.ncount }</td></tr>
		<tr><td>
		<div><img alt="img" src="upload/${notice.nimg }"></div>
		<p>${notice.ncontent }<p></td></tr>
		<c:choose>
			<c:when test="${ varSessionState==4}">
				<tr><td colspan="2">
				<button onclick="location.href='noticeDelete?nnum=${notice.nnum}'">삭제</button>
				<button onclick="location.href='noticeUpdate?nnum=${notice.nnum}'">수정</button>
			</td></tr>
			</c:when>
		</c:choose>
		
	</table>
	
	<%@include file="footer.jsp" %>

</body>
</html>