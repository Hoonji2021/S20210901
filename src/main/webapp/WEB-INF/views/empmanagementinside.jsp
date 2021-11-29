<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
  <%@include file="empOperationNav.jsp" %>	
	<!-- <div class="row" style="margin: 3% auto; width: 65%; text-align: center; font-size: 18px; font-family: NanumBarunGothic;">
		<div class="col" style="border: 1px solid; padding: 15px; border-color: #DCD3D5; "><a href="MemberManagementInside">회원관리</a></div>
        <div class="col" style="border: 1px solid; padding: 15px; border-color: #DCD3D5; "><a href="EmpManagementInside">직원관리</a></div>
	</div> -->
	
	<table style="width: 70%; margin: 0 auto; margin-bottom: 3%">
	<%-- <div>Pconsult(1대1상담) 게시물 개수 : ${totalCnt}</div> --%>
		<thead>
			<tr style="font-family: NanumBarunGothic">
				<th>ID</th>
				<th>Email</th>
				<th>이름</th>
				<th>주소</th>
				<th>연락처</th>
				<th>입사일</th>
				<th>직원번호</th>
				<th>부서</th>
			</tr>	
		</thead>
		<tbody>
		
		<c:forEach items="${empList}" var="emplist" >
			<tr style="font-family: NanumBarunGothic; border-bottom: 1px solid #ddd;">
				<td style="width: 5%; border-right: 1px solid #ddd; border-left:1px solid #ddd;">${emplist.id}</td>
				<td style="width: 10%; border-right: 1px solid #ddd;">${emplist.email }</td>
				<td style="width: 5%; border-right: 1px solid #ddd;">${emplist.name }</td>
				<td style="width: 23%; text-align: left; border-right: 1px solid #ddd;">${emplist.addr }</td>
				<td style="width: 20%; border-right: 1px solid #ddd;">${emplist.phone }</td>
				<td style="width: 15%; border-right: 1px solid #ddd;"><fmt:formatDate value="${emplist.regdate}" pattern="yyyy-MM-dd"/></td>
				<td style="width: 5%; border-right: 1px solid #ddd;">${emplist.empno }</td>
				<td style="width: 5%; border-right: 1px solid #ddd;">${emplist.dept }</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	
	 <%@include file="footer.jsp" %>
	
</body>
</html>