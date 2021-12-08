<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<link rel="stylesheet" type="text/css" href="css/login.css">
</head>
<body>
	<form class="loginForm" id="loginForm">
		<h2>Login</h2>
		<div class="idForm">
			<input type="text" id="id" class="id" name="id" placeholder="ID">
		</div>
		<div class="passForm">
			<input type="password" id="pw" class="pw" name="pw" placeholder="PW">
		</div>
		<div class="stateForm">
			<input type="hidden" id="state" name="state" >
		</div>
		<input type="submit" id="login_submit" class="btn" value="LOG IN">
		<div>
			<button onclick="location.href='findId'">아이디 찾기</button>
			<button onclick="location.href='findPw'">비밀번호 찾기</button>
		</div>
		<div class="bottomText">
			Don't you have ID? <a href="#">sign up</a>
		</div>
	</form>
	<script src="js/login.js"></script>
	<script src="js/jquery-3.5.1.min.js"></script>
</body>

</html>