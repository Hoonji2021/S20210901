<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="css/board.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="css/maicons.css">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="vendor/owl-carousel/css/owl.carousel.css">
<link rel="stylesheet" href="vendor/animate/animate.css">
<link rel="stylesheet" href="css/theme.css">
<script src="js/jquery-3.5.1.min.js"></script>
<script src="js/bootstrap.bundle.min.js"></script>
<script src="vendor/owl-carousel/js/owl.carousel.min.js"></script>
<script src="vendor/wow/wow.min.js"></script>
<script src="js/theme.js"></script>

<style type="text/css">
input {
	margin: .4rem;
}

@font-face {
	font-family: 'MaruBuri-Regular';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-10-21@1.0/MaruBuri-Regular.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

@font-face {
	font-family: 'NanumBarunGothic';
	font-style: normal;
	font-weight: 400;
	src:
		url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWeb.eot');
	src:
		url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWeb.eot?#iefix')
		format('embedded-opentype'),
		url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWeb.woff')
		format('woff'),
		url('//cdn.jsdelivr.net/font-nanumlight/1.0/NanumBarunGothicWeb.ttf')
		format('truetype');
}

body {
	font-family: 'MaruBuri-Regular';

}
</style>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<meta name="copyright" content="MACode ID, https://macodeid.com/">

<title>Insert title here</title>
<script type="text/javascript">
	function test() {
       
		let idcheck = $('#idcheck').val();
		 
		if(!(frm.pw.value == frm.pwChk.value)){
			alert("비밀번호가 일치하지 않습니다");
			return false;
		}
		
		if(idcheck == '0'){
			alert("중복체크를 하지 않았거나 사용할 수 없는 아이디입니다.");
			return false;
		}
		
		var state = $('#state').val();
		/* alert("state->"+state); */
	    if (state == 2) {
           var a = prompt("직원용 비밀번호를 입력하세요 ");
           if(a == '0222'){
           		return true;
           }else{
           		alert("비밀번호가 틀렸습니다");
           		return false;
           }
		} else{
		  return true;
		} 
	}
	
	/* 아이디 중복체크 */
     function sendId() {
	    if(frm.id.value == ""){
	        	 alert("아이디를 입력해주세요");
	        	 return false; 
	        	 }
	    
        let userId = $('#id').val();
    	const param = {"id" : userId}; // id가 member 객체로 들어감 
        console.log(param);
        
        $.ajax({
        	url : "memberIdChk", 
        	type : "POST",
        	data: param
        }).done(
       		function(result){
       			console.log(result);
	        	if(result === 0){
	        		alert("사용할 수 있는 아이디입니다");
	        		$('#idcheck').val('1');
	        	} else{
	        		alert("사용할 수 없는 아이디입니다");
	        		$('#idcheck').val('0');
	        	}
	    }).fail(
        	function(data){
        		console.log(data);
        		alert("오류입니다.");
        	});
	}
        
    /*     window.location.href = "memberIdChk?id=" + userId; */
   
	const autoHyphen = (target) => {
		target.value = target.value
		.replace(/[^0-9]/, '')
		.replace(/^(\d{2,3})(\d{3,4})(\d{4})$/, `$1-$2-$3`);
	}
</script>
</head>

<body>
	<!-- Back to top button -->
	<div class="back-to-top"></div>
	<%@include file="header.jsp"%>

	<div style="text-align: center; margin-top: 100px;">
		<form action="memberJoin" name="frm" onsubmit="return test()">
			<h2>회원가입</h2>
			<p>Join</p>
			<hr style="width: 30%; height: 40px">
			회원 ID <br> <input type="text" id="id" name="id"
				required="required" style="margin-left: 130px;"> <input
				type="button" onclick="sendId()" value="중복체크"
				class="btn btn-sm btn-primary"><br>
				
			<!-- 중복체크 안 하면 0, 하면 1로 바뀌도록(중복체크 안 하면 가입할 수 없게) -->
			<input type="hidden" id="idcheck" name="idcheck" value="0">

			<div style="margin-top: 2%">
				비밀번호 <br> <input type="password" name="pw" required="required">
				<br>
			</div>
			<div style="margin-top: 2%">
				비밀번호 확인 <br> <input type="password" name="pwChk"
					required="required"> <br>
			</div>
			<div style="margin-top: 2%">
				이메일 <br> <input type="text" name="email" required="required">
				<br>
			</div>
			<div style="margin-top: 2%">
				이름 <br> <input type="text" name="name" required="required">
				<br>
			</div>
			<div style="margin-top: 2%">
				주소 <br> <input type="text" name="addr" required="required">
				<br>
			</div>
			<div style="margin-top: 2%">
				핸드폰 번호 <br> <input type="text" name="phone" oninput="autoHyphen(this)" maxlength="13" required="required"><br>
			</div>
			<div style="margin-top: 3%">
				<p style="margin-bottom: 1%">회원구분</p>
				<div>
					<select name="state" id="state">
						<option value="1" selected="selected">회원</option>
						<option value="2">직원</option>
					</select>
				</div>
			</div>
			<input type="submit" value="가입하기" class="btn btn-sm btn-primary"
				style="margin-top: 5%">
		</form>
	</div>
</body>
	<%@include file="footer.jsp"%>
</html>