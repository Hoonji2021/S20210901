const form = document.querySelector("#loginForm");
const id = document.querySelector("#id");
const pw = document.querySelector("#pw");

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
		
		if(data.length === 0) {
			dataId = "";
			dataPw = "";
		} else if(data.length > 0) {
			for(var i=0; i<data.length; i++) {
				dataId = data[0].id
				dataPw = data[0].pw
			}
		}
		
		if (dataId === id.value && dataPw === pw.value) {
			
			form.id = id.value;
			form.action = "main";
			form.method = "POST";
			form.submit();
		} else if(dataId === id.value && dataPw !== pw.value) {
			alert("비밀번호가 틀렸습니다");
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