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
<script type="text/javascript">
/* input 체크여부 확인 함수 */
function check(index){
	var i = index;
	console.log("index의 값은 -> "+i);
	if(document.getElementById("input_check"+i).checked){
		document.getElementById("input_check"+i).value = '1';
		console.log("value값은 -> "+document.getElementById("input_check"+i).value);
	}else{
		document.getElementById("input_check"+i).value = '0';
		console.log("value값은 -> "+document.getElementById("input_check"+i).value);		
	}
	
}

/* value 값을 받고 삭제하기위해 check 값과 비교 후 삭제하는 함수 */
function memberdel() {
 	 if(confirm("정말 삭제하시겠습니까?")){
 		alert("삭제 성공");
 		return true; 
 	 } else {
		alert("삭제 실패");
 	    return false; 
	}
}

</script>

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
#MemberManagementMain{
	border: 1px solid; padding: 15px; border-color: #DCD3D5; background-color: #5396E4;
}
#MemberManagementMainA{
	color: white;
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
  <%@include file="empOperationNav.jsp" %>
<div style="text-align: center; font-family: 'GowunBatang-Regular';">
		<select name="searchOption" >
		<optgroup label="검색방식" >
			<option id="searchById">아이디</option>
			<option id="searchByEmail">이메일</option>
			<option id="searchByName">이름</option>
			<option id="searchByPhone">연락처</option>
			</optgroup>
		</select>
		<input type="search">
		<button>검색</button>
	</div>    <p>
	<table style="width: 70%; margin: 0 auto; margin-bottom: 3%">

	
	<c:choose>
		<c:when test="${varSessionState==4}">
			<thead>
			<tr style="font-family: NanumBarunGothic">
				<th>ID</th>
				<th>Email</th>
				<th>이름</th>
				<th>주소</th>
				<th>연락처</th>
				<th>가입일</th>
				<th>회원삭제</th>
			</tr>	
		</thead>
		<tbody>
				<c:forEach items="${memberList}" var="memberlist" varStatus="status" >
					<tr style="font-family: NanumBarunGothic; border-bottom: 1px solid #ddd;">
						<td style="width: 5%; border-right: 1px solid #ddd; border-left:1px solid #ddd;">${memberlist.id}</td>
						<td style="width: 10%; border-right: 1px solid #ddd;">${memberlist.email }</td>
						<td style="width: 5%; border-right: 1px solid #ddd;">${memberlist.name }</td>
						<td style="width: 23%; text-align: left; border-right: 1px solid #ddd;">${memberlist.addr }</td>
						<td style="width: 20%; border-right: 1px solid #ddd;">${memberlist.phone }</td>
						<td style="width: 15%; border-right: 1px solid #ddd;"><fmt:formatDate value="${memberlist.regdate}" pattern="yyyy-MM-dd"/></td>
						<!-- member삭제 -->
						<td style="width: 6%; border-right: 1px solid #ddd;">
							<form id="fr" action="memberManagementDelete"  onsubmit="return memberdel()">
								<input type="hidden"   id="input_checkId${status.index}"  name="id"  value="${memberlist.id}"  >
								<input type="checkbox" id="input_check${status.index}" value="0" onclick="check(${status.index})">
								<input type="submit" value="삭제">
							</form>	
						</td>
						
					</tr>
				</c:forEach>
		</tbody>
	</table>
	<div style="margin: 0 auto; text-align: center;">
	<c:if test="${pg.startPage > pg.pageBlock}">
		<a class="btn btn-primary btn-sm" href="MemberManagementMain?currentPage=${pg.startPage - pg.pageBlock }">[이전]</a>
	</c:if>
	<c:forEach var="i" begin="${pg.startPage }" end="${pg.endPage }">
		<a class="btn btn-primary btn-sm" href="MemberManagementMain?currentPage=${i}">[${i}]</a>
	</c:forEach>
	<c:if test="${pg.endPage > pg.totalPage }">
		<a class="btn btn-primary btn-sm" href="MemberManagementMain?currentPage=${pg.startPage + pg.pageBlock}">[다음]</a>
	</c:if>
	</div> 
		</c:when>
		<c:when test="${varSessionState!=4 }">
			<div style="text-align: center;">
				<h1>접근 권한이 없습니다.</h1>
			</div>
		</c:when>
	</c:choose>
		
	 <%@include file="footer.jsp" %>
	
</body>
</html>