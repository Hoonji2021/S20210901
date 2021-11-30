<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="copyright" content="MACode ID, https://macodeid.com/">
    <title>침, 그리고 쓰다</title>
    <link rel="stylesheet" href="css/maicons.css">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="vendor/owl-carousel/css/owl.carousel.css">
    <link rel="stylesheet" href="vendor/animate/animate.css">
    <link rel="stylesheet" href="css/theme.css">
    <link rel="stylesheet" href="css/reservationCalendar.css">
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
</head>

<body>
    <!-- 하단에서 상단으로 바로 올라가기 버튼 -->
    <div class="back-to-top"></div>

    <div class="page-banner overlay-dark bg-image" style="background-image: url(../img/bg_image_1.jpg);">
        <div class="banner-section">
            <div class="container text-center wow fadeInUp">
                <nav aria-label="Breadcrumb">
                    <ol class="breadcrumb breadcrumb-dark bg-transparent justify-content-center py-0 mb-2">
                        <li class="breadcrumb-item"><a href="index.html">끆끅</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Reservation</li>
                    </ol>
                </nav>
                <h1 class="font-weight-normal">Reservation Calendar</h1>
            </div> <!-- .container -->
        </div> <!-- .banner-section -->
    </div> <!-- .page-banner -->

    <div class="calendar">
        <div class="header">
            <div class="year-month"></div>
            <h1>${sessionId }</h1>
            <input type="hidden" id="sessionId" value="${sessionId }">
            <c:if test="${!empty sessionId}">
	            <div>
	            	<button style="width: 150%;" onclick="window.open('makeAReservation','window_name','width=1000,height=700,location=no,status=no,scrollbars=yes');">　예약　</button>
	            </div>
            </c:if>
            <div class="nav">
                <button class="nav-btn go-prev" onclick="prevMonth()">&lt;</button>
                <button class="nav-btn go-today" onclick="goToday()">Today</button>
                <button class="nav-btn go-next" onclick="nextMonth()">&gt;</button>
            </div>
        </div>
        <div class="main">
            <div class="days">
                <div class="day list-group-item list-group-item-success">일</div>
                <div class="day list-group-item list-group-item-success">월</div>
                <div class="day list-group-item list-group-item-success">화</div>
                <div class="day list-group-item list-group-item-success">수</div>
                <div class="day list-group-item list-group-item-success">목</div>
                <div class="day list-group-item list-group-item-success">금</div>
                <div class="day list-group-item list-group-item-success">토</div>
            </div>
            <div class="dates"></div>
            <div>* 예약 수정은 달력에 표시된 자신의 예약을 클릭하거나 마이페이지에서 가능합니다 *</div>
        </div>
    </div>

    <div id="footer">
    </div>


    <script src="js/bootstrap.bundle.min.js"></script>
    <script src="vendor/owl-carousel/js/owl.carousel.min.js"></script>
    <script src="vendor/wow/wow.min.js"></script>
    <script src="js/theme.js"></script>
    <script src="js/reservationCalendar.js"></script>
</body>
</html>