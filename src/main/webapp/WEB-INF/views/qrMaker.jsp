<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>직원 QR코드 생성기</title>
</head>
<body>
<h1>직원 QR코드 생성기</h1>
<form action="qrcode" method="post">
	직원 ID : <input readonly="readonly" name="sessionId" value = "${sessionId }" style="width:150px">
	<input type="submit" value="QR코드 생성">
</form>
</body>
</html>