<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<script src="./jquery-3.4.1.min.js"></script>
	<link rel="stylesheet" href="./bootstrapt/css/bootstrap.min.css" />
	<link rel="stylesheet" href="./bootstrapt/css/bootstrap.css" />
	<script src="./bootstrapt/js/bootstrap.min.js"></script>
	<script type="text/javascript">
		$(window).scroll(function(event){
			if(jQuery(window).scrollTop() > jQuery(".banner").offset().top) {
				jQuery("#chase").css("position", "fixed");
			}else if((jQuery(window).scrollTop() < jQuery(".banner").offset().top)) {
				jQuery("#chase").css("position", "static");
			}
		});
		function getBMICal(){
			var vWeight = $('#weight').val();
			var vHeight = $('#height').val();
			/* alert("Vdeptno->"+Vdeptno); */
			$.ajax({
				url:"getBmiCal",  
				data:{weight : vWeight, height:vHeight},
				dataType:'text',
				success:function(data){
					 /* alert("success ajax Data"+data);   */
					 $('#BMI').val(data);     /*  input Tag */
					
				}
			});
		}
	</script>
	
</head>
<body> 
  <div class="modal fade" id="modalRegisterForm0" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
  aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header text-center">
        <h4 class="modal-title w-100 font-weight-bold">BMI 계산기</h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"> 
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body mx-3">
        <div class="md-form mb-5">
          <i class="fas fa-user prefix grey-text"></i>
          <input type="text" id="height" class="form-control validate">
          <label data-error="wrong" data-success="right" for="orangeForm-name">신장(cm)</label>
        </div>
        <div class="md-form mb-5">
          <i class="fas fa-envelope prefix grey-text"></i>
          <input type="text" id="weight" class="form-control validate">
          <label data-error="wrong" data-success="right" for="orangeForm-email">체중(kg)</label>
        </div>
		  <div class="md-form mb-4">
          	<img src="img/modal/height_sc.jpg" style="height: 150px; width: 430px;">
          <label data-error="wrong"></label>
        </div>
      </div>
      <div class="modal-footer d-flex justify-content-center">	
					<input type="button" id="btn_BMI"     value="계산하기"  onclick="getBMICal()">
					<input type="text"  id="BMI" style="width: 70px;" >
				</div>	
    </div>
  </div>
</div>
  <div class="modal fade" id="modalRegisterForm1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
  aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header text-center">
        <h4 class="modal-title w-100 font-weight-bold">키 계산기</h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body mx-3">
        <div class="md-form mb-5">
          <i class="fas fa-user prefix grey-text"></i>
          <input type="text" id="orangeForm-name" class="form-control validate">
          <label data-error="wrong" data-success="right" for="orangeForm-name">Your name</label>
        </div>
        <div class="md-form mb-5">
          <i class="fas fa-envelope prefix grey-text"></i>
          <input type="email" id="orangeForm-email" class="form-control validate">
          <label data-error="wrong" data-success="right" for="orangeForm-email">Your email</label>
        </div>

        <div class="md-form mb-4">
          <i class="fas fa-lock prefix grey-text"></i>
          <input type="password" id="orangeForm-pass" class="form-control validate">
          <label data-error="wrong" data-success="right" for="orangeForm-pass">Your password</label>
        </div>

      </div>
      <div class="modal-footer d-flex justify-content-center">
        <button class="btn btn-deep-orange">Sign up</button>
      </div>
    </div>
  </div>
</div>
	<div class="banner" style="position: absolute; z-index: 120;  margin: 0; border: 0; padding: 0; top: 50px; right: 1px; ">
			<div class="text-center" id="chase" style="position:absolute; width: 120px;  height: 300px; background-color: white-space; z-index: 120; border-radius: 30px; margin-top: 120px; right:0px; ">
				 <a href="" class="btn btn-default btn-rounded mb-4" data-toggle="modal" style="width: 100px; height: 100px; margin: 0; border: 0; padding: 0; border-radius: 30px;  " data-target="#modalRegisterForm0"><img src="img/modal/BMI.png" style="width: 120px; height: 120px; border-radius: 30px; "></a>
			 	  <a href="" class="btn btn-default btn-rounded mb-4" data-toggle="modal" style="width: 100px; height: 100px; margin: 0; border: 0; padding: 0; border-radius: 30px; "data-target="#modalRegisterForm1"><img src="img/modal/height.png" style="width: 120px; height: 120px; border-radius: 30px; "></a>
			</div>	    
	</div>
</body>