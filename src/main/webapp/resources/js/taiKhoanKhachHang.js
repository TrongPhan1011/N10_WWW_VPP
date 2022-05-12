const btnluu = document.getElementById('id-btnluu');
const email = document.getElementById('id-taikhoan-emailKH');
const hoten = document.getElementById('id-taikhoan-hotenKH');
const matkhau = document.getElementById('id-taikhoan-matkhauKH');
const sdt = document.getElementById('id-taikhoan-sdtKH');
const diachi= document.getElementById('id- taikhoan-diachiKH');
const ngaysinh= document.getElementById('id- taikhoan-ngaysinhKH');

function kiemTraValEmail(){
	let email1 = email.value;
	if(email1 == '' ||!email1.match('^[0-9a-zA-Z\.]{1,}\@gmail\.com$')){
		email.classList.remove('is-valid');
        email.classList.add('is-invalid');
		return false;
	}
	else{
		email.classList.remove('is-invalid');
        email.classList.add('is-valid');
		return true;
	}
}
function kiemTraMatKhau(){
	let mk = matkhau.value;
	if(mk== ''){
		matkhau.classList.remove('is-valid');
        matkhau.classList.add('is-invalid');
		return false;
	}
	else{
		matkhau.classList.remove('is-invalid');
        matkhau.classList.add('is-valid');
		return true;
	}
}
function kiemTraTen(){
	let ten = hoten.value;
	if(ten =='' || !ten.match('^[A-Za-zÀÁÂÃÈÉÊÌÍÒÓÔÕÙÚÝàáâãèéêìíòóôõùúýĂăĐđĨĩŨũƠơƯưẠ-ỹ ]+$')){
		hoten.classList.remove('is-valid');
        hoten.classList.add('is-invalid');
		return false;
	}
	else{
		hoten.classList.remove('is-invalid');
        hoten.classList.add('is-valid');
		return true;
	}
}
function kiemTraSDT(){
	let sdt1 = sdt.value;
	if(sdt1 == '' || !sdt1.match('^(0)[0-9]{9}')){
		sdt.classList.remove('is-valid');
        sdt.classList.add('is-invalid');
		return false;
	}
		else{
		sdt.classList.remove('is-invalid');
        sdt.classList.add('is-valid');
		return true;
	}
	
}

function kiemTraNgaySinh(){
	let ngaysinh1 = ngaysinh.values;
	if(ngaysinh1 == '' || !ngaysinh1.match('[0-3]{1}[0-9]{1}/[0-1]{1}[0-9]{1}/[0-9]{4}')){
		ngaysinh.classList.remove('is-valid');
        ngaysinh.classList.add('is-invalid');
		return false;
	}
	else{
		ngaysinh.classList.remove('is-invalid');
        ngaysinh.classList.add('is-valid');
		return true;
	}	
}
function kiemTraDiaChi(){
	let diachi1 = diachi.values;
	if(diachi1 ==''){
		diachi.classList.remove('is-valid');
        diachi.classList.add('is-invalid');
		return false;
	}
	else{
		diachi.classList.remove('is-invalid');
        diachi.classList.add('is-valid');
		return true;
	}
}
email.onblur =  kiemTraValEmail;
function handleLuu(){
	if(kiemTraValEmail() && kiemTraMatKhau()  && kiemTraTen() && kiemTraSDT() && kiemTraNgaySinh() && kiemTraDiaChi()){
		return true;
	}
	return false;
}
btnluu.onclick = handleLuu;

