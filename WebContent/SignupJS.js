function ktNhap(){ 
	var tbusername= document.getElementById("tbusername");
	var tbpassword= document.getElementById("tbpassword");
	var tbemail= document.getElementById("tbemail");
	if(frmDangKi.username.value==""){
		frmDangKi.username.style.border="solid red";
		tbusername.style.display="block";
		tbusername.style.color="red";
		tbusername.innerHTML="Vui lòng điền tên tài khoản"
		return false;
	}else if(frmDangKi.email.value==""){
		frmDangKi.email.style.border="solid red";
		tbemail.style.display="block";
		tbemail.style.color="red";
		tbemail.innerHTML="Vui lòng điền email"
		return false;
	}else if(frmDangKi.password.value==""){
		frmDangKi.password.style.border="solid red";
		tbpassword.style.display="block";
		tbpassword.style.color="red";
		tbpassword.innerHTML="Vui lòng điền mật khẩu"
		return false;
	}else{
		tbusername.style.display="none";
		tbpassword.style.display="none";
		tbemail.style.display="none";
		return true;
	}
}
function kiemtraemail(idTag)
{
	var inputTag=document.getElementById(idTag);
	var email =  /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
	var tbemail= document.getElementById("tbemail");
	if(inputTag.value.match(email)){
		tbemail.style.display="none";
		return true;
	}else{
		frmDangKi.email.style.border="solid red";
		tbemail.style.display="block";
		tbemail.innerHTML="Vui lòng điền email hợp lệ"
		tbemail.style.color="red";
		return false;
	}
}
function dodaichuoiusername(idText, minlength, maxlength)
{
	var inputText=document.getElementById(idText);
	var field = inputText.value;
	var tbusername= document.getElementById("tbusername");
	if(field.length<minlength || field.length> maxlength){
		tbusername.style.display="block";
		tbusername.innerHTML="Phải có từ "+minlength+" kí tự đến "+maxlength+" kí tự";
		tbusername.style.color="red";
		frmDangKi.username.style.border="solid red";
		return false;
	} else {
		tbusername.style.display="none";
		return true;
	}
}
function dodaichuoipass(idText, minlength, maxlength)
{
	var inputText=document.getElementById(idText);
	var field = inputText.value;
	var tbpassword= document.getElementById("tbpassword");
	if(field.length<minlength || field.length> maxlength){
		tbpassword.style.display="block";
		tbpassword.innerHTML="Phải có từ "+minlength+" kí tự đến "+maxlength+" kí tự";
		tbpassword.style.color="red";
		frmDangKi.password.style.border="solid red";
		return false;
	} else {
		tbpassword.style.display="none";
		return true;
	}
}
 	
function KTHopLe(){
	return ktNhap()&&kiemtraemail("email")&&dodaichuoiusername("username",7,30)
	&&dodaichuoipass("password",7,30);
}
