<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.io.File, java.util.UUID" %>
<%@ page import = "java.awt.image.BufferedImage, javax.imageio.ImageIO" %>
<%@ page import = "com.google.zxing.qrcode.QRCodeWriter, com.google.zxing.common.BitMatrix, com.google.zxing.BarcodeFormat, com.google.zxing.client.j2se.MatrixToImageWriter" %>
<%
	String empId = request.getParameter("empId");
	int nCheck = 1;
	String savedFileName = "";
	
	//sessionId 확인
	if(empId == null || empId.equals("")){
		nCheck = 0;
	}
	else{
	//파일 설정
	File path = new File(application.getRealPath("/")+"img/");
	savedFileName = UUID.randomUUID().toString().replace("-","");
	if(!path.exists()) path.mkdirs();
	
	//QRCode 생성
	QRCodeWriter writer = new QRCodeWriter();
	BitMatrix qrCode = writer.encode(empId, BarcodeFormat.QR_CODE, 200,200);
	
	BufferedImage qrImage = MatrixToImageWriter.toBufferedImage(qrCode);
	
	ImageIO.write(qrImage, "PNG", new File(path, savedFileName+".png"));
	
	}
		
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>QR Code 생성하기</title>
</head>
<body>
<h1>직원의 QR Code가 생성되었습니다.</h1>
<%
	if(nCheck==1){
		String qrcode = request.getContextPath() + "/img/"+savedFileName + ".png";
		System.out.println("qrcode->"+qrcode);
		out.print("<a href='"+qrcode+"' download='"+ savedFileName+"'><img src='"+qrcode+"'/></a><p/>");
	}
	else{
		out.print("QR코드가 생성되지 않았습니다.");
	}
	
%>
<a href="main">Main으로 돌아가기</a>
</body>
</html>