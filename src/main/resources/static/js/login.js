const form = document.querySelector("#loginForm");
const id = document.querySelector("#id");
const pw = document.querySelector("#pw");
const state3 = document.querySelector("#state3");

function doSubmit(event){
    event.preventDefault();
    submitAjax();
}

const submitAjax = () => {
   const param = {"id":id.value, "pw":pw.value};
   
   $.ajax({
      url: "loginDo",
        type: "POST",
        data: param
   }).done(function(data) {
      console.log(data);
      let dataId = "";
      let dataPw = "";
      let dataState = 0;
      
      if(data.length === 0) {
         dataId = "";
         dataPw = "";
         dataState = 0;
      } else if(data.length > 0) {
         for(var i=0; i<data.length; i++) {
            dataId = data[0].id;
            dataPw = data[0].pw;
            dataState = data[0].state;
         }
      }
      
      console.log(dataId);
      console.log(dataPw);
      state.value = dataState;
      console.log(state.value);
      console.log(state);
      
      if(dataState === 3) {
         alert("탈퇴 회원입니다");
      } else if (dataId === id.value && dataPw === pw.value && dataState === 1 || dataState === 2) {
	      form.id = dataId;
	      form.state = state.value;
         alert("로그인 성공");
         
         
         
         form.action = "main";
         form.method = "POST";
         form.submit();
      } else if(dataId === id.value && dataPw !== pw.value) {
         alert("비밀번호가 틀렸습니다");
      } else if(dataId === id.value && dataPw === pw.value && dataState === 4) {
         alert("관리자 로그인");
         form.id = id.value;
         form.state = dataState;
         form.action = "main";
         form.method = "POST";
         form.submit();
      } else {
         alert("아이디가 틀렸습니다");
      } 
   }).fail(function() {
         alert("오류가 발생하였습니다");
         history.back();
      }
   );
}

form.addEventListener("submit", doSubmit);