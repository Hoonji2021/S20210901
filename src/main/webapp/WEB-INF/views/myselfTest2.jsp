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
    font-family: 'GowunBatang-Regular';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2108@1.1/GowunBatang-Regular.woff') format('woff');
    font-weight: normal;
    font-style: normal;
}
@font-face {
    font-family: 'MaruBuri-Regular';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-10-21@1.0/MaruBuri-Regular.woff') format('woff');
    font-weight: normal;
    font-style: normal;
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
  <div class="back-to-top">
  </div>
    <%@include file="header.jsp" %>
    <div class="row" style=" margin: 3% auto; width: 65%; text-align: center; font-size: 18px; font-family: NanumBarunGothic;">

            <div class="col" style="border: 1px solid; padding: 13px; border-color: #DCD3D5; "><a href="myselfTest">심장질환</a></div>
            <div class="col" style="border: 1px solid; padding: 13px; border-color: #DCD3D5; background-color: #5396E4"><a href="myselfTest2" style="color: white;">우울증</a></div>
            <div class="col" style="border: 1px solid; padding: 13px; border-color: #DCD3D5; "><a href="/board/103">치료후기</a></div>
           
    </div>
    
    
    <form action="TestResult2" method="post">
    <div class="row" style="margin: 3% auto; width: 65%; text-align: center; font-size: 18px; font-family: NanumBarunGothic;">
    	<div class="container">
    		<div class="row justify-content-md-center">
				<div class="col-4" style="background-color: lightgray">성별
				</div>
				<div class="col-4" style="text-align: left;"><input type="radio" value="남자" name="gender">남자 &nbsp;
															<input type="radio" value="여자" name="gender">여자
				</div>
				
			</div>
			<div class="row justify-content-md-center">
				<div class="col-4" style="background-color: lightgray">이름</div>
				<div class="col-4" style="text-align: left;"><input type="text" name="name"></div>	
			</div>
			
			<br><p><b style="color: red;">우울증 자가진단</b> : 번호, 문항, 해당되지않음, 가끔그렇다, 자주느낀다, 항상 으로 구성<br>
										  					이 질문지는 여러분이 일상생활에서 경험할 수 있는 내용들로 구성되어 있습니다.<br>
										  					각 문장을 자세히 읽어보시고, 최근 3~4주 이내 얼마나 자주 그렇게 경험하거나 느끼시는지<br> 자신을 가장 잘 나타낸다고
										  					생각되는 번호에 표시하여 주십시오.</p>
		</div>		
		
	
	<table class="table table-striped" >
        <tr>
            <th scope="col" style="vertical-align: middle;">번호</th>
            <th scope="col" style="vertical-align: middle;">문항</th>
            <th scope="col">해당되지<br>않음</th>
            <th scope="col">가끔<br>그렇다</th>
            <th scope="col">자주<br>느낀다</th>
            <th scope="col" style="vertical-align: middle;">항상<br></th>
        </tr>
    <tbody>    
        <tr>
            <th scope="row">1</th>
            <td class="left">미래에 대한 희망이 없다.</td>
            <td><input type="radio" class="chkValue" name="myTest1" value="0" id="RadioGroup1_0" title="0" checked="checked"></td>
            <td><input type="radio" class="chkValue" name="myTest1" value="1" id="RadioGroup1_1" title="1"></td>
            <td><input type="radio" class="chkValue" name="myTest1" value="2" id="RadioGroup1_2" title="2"></td>
            <td><input type="radio" class="chkValue" name="myTest1" value="3" id="RadioGroup1_3" title="3"></td>
        </tr>
        <tr>
             <th scope="row">2</th>
            <td class="left">이유없이 죄책감이 든다.</td>
            <td><input type="radio" class="chkValue" name="myTest2" value="0" id="RadioGroup2_0" title="0" checked="checked"></td>
            <td><input type="radio" class="chkValue" name="myTest2" value="1" id="RadioGroup2_1" title="1"></td>
            <td><input type="radio" class="chkValue" name="myTest2" value="2" id="RadioGroup2_2" title="2"></td>
            <td><input type="radio" class="chkValue" name="myTest2" value="3" id="RadioGroup2_3" title="3"></td>
        </tr>
        <tr>
            <th scope="row">3</th>
            <td class="left">하루종일 우울한 기분이 든다.</td>
            <td><input type="radio" class="chkValue" name="myTest3" value="0" id="RadioGroup3_0" title="0" checked="checked"></td>
            <td><input type="radio" class="chkValue" name="myTest3" value="1" id="RadioGroup3_1" title="1"></td>
            <td><input type="radio" class="chkValue" name="myTest3" value="2" id="RadioGroup3_2" title="2"></td>
            <td><input type="radio" class="chkValue" name="myTest3" value="3" id="RadioGroup3_3" title="3"></td>
        </tr>
        <tr>
            <th scope="row">4</th>
            <td class="left">나만 소외되는 느낌이 든다.</td>
            <td><input type="radio" class="chkValue" name="myTest4" value="0" id="RadioGroup4_0" title="0" checked="checked"></td>
            <td><input type="radio" class="chkValue" name="myTest4" value="1" id="RadioGroup4_1" title="1"></td>
            <td><input type="radio" class="chkValue" name="myTest4" value="2" id="RadioGroup4_2" title="2"></td>
            <td><input type="radio" class="chkValue" name="myTest4" value="3" id="RadioGroup4_3" title="3"></td>
        </tr>
        <tr>
            <th scope="row">5</th>
            <td class="left">열등감이 생기고 그로 인해 스트레스를 받는다.</td>
            <td><input type="radio" class="chkValue" name="myTest5" value="0" id="RadioGroup5_0" title="0" checked="checked"></td>
            <td><input type="radio" class="chkValue" name="myTest5" value="1" id="RadioGroup5_1" title="1"></td>
            <td><input type="radio" class="chkValue" name="myTest5" value="2" id="RadioGroup5_2" title="2"></td>
            <td><input type="radio" class="chkValue" name="myTest5" value="3" id="RadioGroup5_3" title="3"></td>
        </tr>
        <tr>
            <th scope="row">6</th>
            <td class="left">식습관이 변하지 않았는데 갑자기 체중증가 또는 감소 증상이 나타난다.</td>
            <td><input type="radio" class="chkValue" name="myTest6" value="0" id="RadioGroup6_0" title="0" checked="checked"></td>
            <td><input type="radio" class="chkValue" name="myTest6" value="1" id="RadioGroup6_1" title="1"></td>
            <td><input type="radio" class="chkValue" name="myTest6" value="2" id="RadioGroup6_2" title="2"></td>
            <td><input type="radio" class="chkValue" name="myTest6" value="3" id="RadioGroup6_3" title="3"></td>
        </tr>
        <tr>
            <th scope="row">7</th>
            <td class="left">과수면 또는 불면증에 시달린다.</td>
            <td><input type="radio" class="chkValue" name="myTest7" value="0" id="RadioGroup7_0" title="0" checked="checked"></td>
            <td><input type="radio" class="chkValue" name="myTest7" value="1" id="RadioGroup7_1" title="1"></td>
            <td><input type="radio" class="chkValue" name="myTest7" value="2" id="RadioGroup7_2" title="2"></td>
            <td><input type="radio" class="chkValue" name="myTest7" value="3" id="RadioGroup7_3" title="3"></td>
        </tr>
        <tr>
            <th scope="row">8</th>
            <td class="left">일상생활이 불만족스럽다.</td>
            <td><input type="radio" class="chkValue" name="myTest8" value="0" id="RadioGroup8_0" title="0" checked="checked"></td>
            <td><input type="radio" class="chkValue" name="myTest8" value="1" id="RadioGroup8_1" title="1"></td>
            <td><input type="radio" class="chkValue" name="myTest8" value="2" id="RadioGroup8_2" title="2"></td>
            <td><input type="radio" class="chkValue" name="myTest8" value="3" id="RadioGroup8_3" title="3"></td>
        </tr>
        <tr>
            <th scope="row">9</th>
            <td class="left">별일 아닌 것에 대해서도 눈물이 자주난다.</td>
            <td><input type="radio" class="chkValue" name="myTest9" value="0" id="RadioGroup9_0" title="0" checked="checked"></td>
            <td><input type="radio" class="chkValue" name="myTest9" value="1" id="RadioGroup9_1" title="1"></td>
            <td><input type="radio" class="chkValue" name="myTest9" value="2" id="RadioGroup9_2" title="2"></td>
            <td><input type="radio" class="chkValue" name="myTest9" value="3" id="RadioGroup9_3" title="3"></td>
        </tr>
        <tr>
            <th scope="row">10</th>
            <td class="left">자살충동을 느껴본 적이 있다.</td>
            <td><input type="radio" class="chkValue" name="myTest10" value="0" id="RadioGroup10_0" title="0" checked="checked"></td>
            <td><input type="radio" class="chkValue" name="myTest10" value="1" id="RadioGroup10_1" title="1"></td>
            <td><input type="radio" class="chkValue" name="myTest10" value="2" id="RadioGroup10_2" title="2"></td>
            <td><input type="radio" class="chkValue" name="myTest10" value="3" id="RadioGroup10_3" title="3"></td>
        </tr>
        <tr>
            <th scope="row">11</th>
            <td class="left">건강에 대해 자신이 없고 성생활이 무의미하다.</td>
            <td><input type="radio" class="chkValue" name="myTest11" value="0" id="RadioGroup11_0" title="0" checked="checked"></td>
            <td><input type="radio" class="chkValue" name="myTest11" value="1" id="RadioGroup11_1" title="1"></td>
            <td><input type="radio" class="chkValue" name="myTest11" value="2" id="RadioGroup11_2" title="2"></td>
            <td><input type="radio" class="chkValue" name="myTest11" value="3" id="RadioGroup11_3" title="3"></td>
        </tr>
        <tr>
            <th scope="row">12</th>
            <td class="left">나 자신에 대해 싫고 추한 느낌이 든다.</td>
            <td><input type="radio" class="chkValue" name="myTest12" value="0" id="RadioGroup12_0" title="0" checked="checked"></td>
            <td><input type="radio" class="chkValue" name="myTest12" value="1" id="RadioGroup12_1" title="1"></td>
            <td><input type="radio" class="chkValue" name="myTest12" value="2" id="RadioGroup12_2" title="2"></td>
            <td><input type="radio" class="chkValue" name="myTest12" value="3" id="RadioGroup12_3" title="3"></td>
        </tr>
        <tr>
            <th scope="row">13</th>
            <td class="left">항상 피곤해서 일상생활을 할 수가 없다.</td>
            <td><input type="radio" class="chkValue" name="myTest13" value="0" id="RadioGroup13_0" title="0" checked="checked"></td>
            <td><input type="radio" class="chkValue" name="myTest13" value="1" id="RadioGroup13_1" title="1"></td>
            <td><input type="radio" class="chkValue" name="myTest13" value="2" id="RadioGroup13_2" title="2"></td>
            <td><input type="radio" class="chkValue" name="myTest13" value="3" id="RadioGroup13_3" title="3"></td>
        </tr>
        <tr>
            <th scope="row">14</th>
            <td class="left">실패자 낙오자라는 생각을 자주한다.</td>
            <td><input type="radio" class="chkValue" name="myTest14" value="0" id="RadioGroup14_0" title="0" checked="checked"></td>
            <td><input type="radio" class="chkValue" name="myTest14" value="1" id="RadioGroup14_1" title="1"></td>
            <td><input type="radio" class="chkValue" name="myTest14" value="2" id="RadioGroup14_2" title="2"></td>
            <td><input type="radio" class="chkValue" name="myTest14" value="3" id="RadioGroup14_3" title="3"></td>
        </tr>
        <tr>
            <th scope="row">15</th>
            <td class="left" style="vertical-align: middle;">어떤 것의 결정을 스스로 하지 못한다.</td>
            <td><input type="radio" class="chkValue" name="myTest15" value="0" id="RadioGroup15_0" title="0" checked="checked"></td>
            <td><input type="radio" class="chkValue" name="myTest15" value="1" id="RadioGroup15_1" title="1"></td>
            <td><input type="radio" class="chkValue" name="myTest15" value="2" id="RadioGroup15_2" title="2"></td>
            <td><input type="radio" class="chkValue" name="myTest15" value="3" id="RadioGroup15_3" title="3"></td>
        </tr>
        
        <tr>
			<td colspan="10" style="text-align: center;"><input size="2" type="hidden" name="total">
				<input type="submit" value="결과보기" class="btn btn-sm btn-primary">
			</td>
		</tr>
    </tbody>    
</table>
 </div>
</form>
    
    
   
    <%@include file="footer.jsp" %>
</body>
</html>
    