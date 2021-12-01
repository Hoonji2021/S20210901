<!-- 이 파일은 관리자 페이지 네비게이션을 따로 모아둔 페이지입니다. -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

  
    <div class="row" style=" margin: 3% auto; width: 65%; text-align: center; font-size: 18px; font-family: NanumBarunGothic;">
			
            <div id="clinicOperation" class="col" style="border: 1px solid; padding: 15px; border-color: #DCD3D5;"><a id="clinicOperationA" href="clinicOperation">진료 관리</a></div>
            <div id = "reservationOperation" class="col" style="border: 1px solid; padding: 15px; border-color: #DCD3D5; "><a id="reservationOperationA" href="reservationOperation">예약 관리</a></div>
            <div id = "MemberManagement" class="col" style="border: 1px solid; padding: 15px; border-color: #DCD3D5; "><a id="MemberManagementA" href="MemberManagementMain">회원 관리</a></div>
            <div id = "EmpManagement" class="col" style="border: 1px solid; padding: 15px; border-color: #DCD3D5; "><a id="EmpManagementA" href="EmpManagementMain">의료진 관리</a></div>
            <div id = "" class="col" style="border: 1px solid; padding: 15px; border-color: #DCD3D5; "><a id="empOperationA" href="#">공지사항 관리</a></div>
            <div id = "pConsultCount" class="col" style="border: 1px solid; padding: 15px; border-color: #DCD3D5; color: black"><a id="pConsultCountA" href="pConsultCount">1:1상담 관리</a></div>
            
    </div>
     <div class="row" style=" margin: 3% auto; width: 65%; text-align: center; font-size: 18px; font-family: NanumBarunGothic;">

            <div id="punchOperation" class="col" style="border: 1px solid; padding: 15px; border-color: #DCD3D5; "><a id="punchOperationA" href="punch" >근무 기록</a></div>
            <div id="" class="col" style="border: 1px solid; padding: 15px; border-color: #DCD3D5; "><a id="empOperationA" href="#">강연&영상 관리</a></div>
            <div id="oconsultList" class="col" style="border: 1px solid; padding: 15px; border-color: #DCD3D5; "><a id="oconsultListA" href="oconsultList">공개상담 관리</a></div>
			<div id="" class="col" style="border: 1px solid; padding: 15px; border-color: #DCD3D5; "><a id="empOperationA" href="logout">로그아웃</a></div>
    </div>
