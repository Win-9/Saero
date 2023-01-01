function CheckValid() {

	var name = document.getElementById("name");
	var age = document.getElementById("age");
	var fileName = document.getElementById("fileName");
	var shelter = document.getElementById("shelterLocation");
	var detect = document.getElementById("detectLocation");
	
	// 이름체크
	if (name.value.length == 0) {
		alert("이름 입력은 필수입니다.");
		name.select();
		name.focus();
		return false;
	}
	
	// 나이체크
	if (name.value.length == 0) {
		alert("나이 입력은 필수입니다.");
		name.select();
		name.focus();
		return false;
	}
	
	if (isNaN(age.value)) {
		alert("나이는 숫자만 입력 가능합니다. 나이를 모를시 0를 입력하세요");
		age.select();
		age.focus();
		return false;
	}
	
	//파일체크
	if (fileName.value.length == 0) {
		alert("사진 등록은 필수입니다.");
		fileName.select();
		fileName.focus();
		return false;
	}

	
	// 보호장소 체크
	if (shelter.value.length == 0) {
		alert("보호장소 기입은 필수 입니다.");
		shelter.select();
		shelter.focus();
		return false;
	}
	
	// 발견장소 체크
	if (detect.value.length == 0) {
		alert("발견장소 기입은 필수입니다.");
		detect.select();
		detect.focus();
		return false;
	}
	
	 document.addForm.submit()

}
