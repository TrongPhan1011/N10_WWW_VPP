const btndangky = document.getElementById('id-btn-dangky');
const emaildangky = document.getElementById('id-dangly-email');
const matkhaudangky = document.getElementById('id-dangly-matkhau');
const matkhau2dangky = document.getElementById('id-dangly-nhaplaimatkhau');
const tenKHdangky = document.getElementById('id-dangly-tenkhachhang');
const diaChidangky = document.getElementById('id-dangly-diachi');
const sdtdangky = document.getElementById('id-dangly-sdt');
const ngaysinhdangky = document.getElementById('id-dangly-ngaysinh');

function kiemTraValEmail(){
	let email = emaildangky.value;
	if(email == '' ||!email.match('^[0-9a-zA-Z\.]{1,}\@gmail\.com$')){
		emaildangky.classList.remove('is-valid');
        emaildangky.classList.add('is-invalid');
		return false;
	}
	else{
		emaildangky.classList.remove('is-invalid');
        emaildangky.classList.add('is-valid');
		return true;
	}
}

function kiemTraMatKhau(){
	let mk = matkhaudangky.value;
	if(mk== ''){
		matkhaudangky.classList.remove('is-valid');
        matkhaudangky.classList.add('is-invalid');
		return false;
	}
	else{
		matkhaudangky.classList.remove('is-invalid');
        matkhaudangky.classList.add('is-valid');
		return true;
	}
}
function kiemTraMatKhau2(){
	let mk = matkhaudangky.value;
	let mk2 = matkhau2dangky.value;
	
	if(mk2=='' || mk2 != mk){
		matkhau2dangky.classList.remove('is-valid');
        matkhau2dangky.classList.add('is-invalid');
		return false;
	}
	else{
		matkhau2dangky.classList.remove('is-invalid');
        matkhau2dangky.classList.add('is-valid');
		return true;
	}
}
function kiemTraTen(){
	let ten = tenKHdangky.value;
	if(ten =='' || !ten.match('^[A-Za-zÀÁÂÃÈÉÊÌÍÒÓÔÕÙÚÝàáâãèéêìíòóôõùúýĂăĐđĨĩŨũƠơƯưẠ-ỹ ]+$')){
		tenKHdangky.classList.remove('is-valid');
        tenKHdangky.classList.add('is-invalid');
		return false;
	}
	else{
		tenKHdangky.classList.remove('is-invalid');
        tenKHdangky.classList.add('is-valid');
		return true;
	}
}
function kiemTraSDT(){
	let sdt = sdtdangky.value;
	if(sdt == '' || !sdt.match('^(0)[0-9]{9}')){
		sdtdangky.classList.remove('is-valid');
        sdtdangky.classList.add('is-invalid');
		return false;
	}
		else{
		sdtdangky.classList.remove('is-invalid');
        sdtdangky.classList.add('is-valid');
		return true;
	}
	
}
function kiemTraNgaySinh(){
	let ngaysinh = ngaysinhdangky.values;
	if(ngaysinh == '' || !ngaysinh.match('[0-3]{1}[0-9]{1}/[0-1]{1}[0-9]{1}/[0-9]{4}')){
		ngaysinhdangky.classList.remove('is-valid');
        ngaysinhdangky.classList.add('is-invalid');
		return false;
	}
	else{
		ngaysinhdangky.classList.remove('is-invalid');
        ngaysinhdangky.classList.add('is-valid');
		return true;
	}	
}
function kiemTraDiaChi(){
	let diachi = diaChidangky.values;
	if(diachi ==''){
		diaChidangky.classList.remove('is-valid');
        diaChidangky.classList.add('is-invalid');
		return false;
	}
	else{
		diaChidangky.classList.remove('is-invalid');
        diaChidangky.classList.add('is-valid');
		return true;
	}
}

emaildangky.onblur =  kiemTraValEmail;
function handleDangKy(){
	if(kiemTraValEmail() && kiemTraMatKhau() && kiemTraMatKhau2() && kiemTraTen() && kiemTraSDT() && kiemTraNgaySinh() && kiemTraDiaChi()){
		return true;
	}
	return false;
}
btndangky.onclick = handleDangKy;