
var btn = document.getElementById('btnluuthongtin');

function checkten() {
    var str = document.getElementById("id-admin-TenNV");
    validateTen(str.value);
    var regexName = /^[a-zA-Z ]{2,}$/g;
    if (!regexName.test(validateTen(str.value)) || str.value == '') {

        str.classList.add('is-invalid');
        return false;
    }
    str.classList.add('is-valid');
    str.classList.remove('is-invalid');

    return true;
}
function checksdt() {
    var str = document.getElementById("id-admin-SĐT")
    if (!validateSDT(str.value)) {
        str.classList.add('is-invalid');
        str.classList.remove('is-valid');

        return false;
    }
    str.classList.add('is-valid');
    str.classList.remove('is-invalid');

    return true;
}
function validateTen(str) {

    if (str === null || str === undefined) return str;
    str = str.toLowerCase();
    str = str.replace(/à|á|ạ|ả|ã|â|ầ|ấ|ậ|ẩ|ẫ|ă|ằ|ắ|ặ|ẳ|ẵ/g, "a");
    str = str.replace(/è|é|ẹ|ẻ|ẽ|ê|ề|ế|ệ|ể|ễ/g, "e");
    str = str.replace(/ì|í|ị|ỉ|ĩ/g, "i");
    str = str.replace(/ò|ó|ọ|ỏ|õ|ô|ồ|ố|ộ|ổ|ỗ|ơ|ờ|ớ|ợ|ở|ỡ/g, "o");
    str = str.replace(/ù|ú|ụ|ủ|ũ|ư|ừ|ứ|ự|ử|ữ/g, "u");
    str = str.replace(/ỳ|ý|ỵ|ỷ|ỹ/g, "y");
    str = str.replace(/đ/g, "d");
    return str;
}

function validateSDT(sdt) {
    return /(((\+|)84)|0)(3|5|7|8|9)+([0-9]{8})\b/.test(sdt);
}
function tinhtuoi() {
    var ngaySinh = document.getElementById('id-admin-ngaySinh')
    var birthDate = ngaySinh.value;
    birthDate = new Date(birthDate);
    todayDate = new Date()
    totalAge = Date.now() - birthDate.getTime();
    ageYear = new Date(totalAge);
    ageYear = Math.abs(ageYear.getUTCFullYear() - 1970);
    if (ageYear < 18) {
        ngaySinh.classList.add('is-invalid');
        ngaySinh.classList.remove('is-valid');

        return false;
    }

    ngaySinh.classList.add('is-valid');
    ngaySinh.classList.remove('is-invalid');

    return true;

}

function validateDiachi() {
    var diachi = document.getElementById('id-admin-diaChi')
    if (diachi.value == '') {
        diachi.classList.add('is-invalid');
        diachi.classList.remove('is-valid');

        return false;
    }
    diachi.classList.add('is-valid');
    diachi.classList.remove('is-invalid');

    return true;

}
function validatEemail() {
    var email=document.getElementById('id-admin-email')
    var x = document.myform.email.value;
    var atposition = x.indexOf("@");
    var dotposition = x.lastIndexOf(".");
    if (atposition < 1 || dotposition < (atposition + 2)
            || (dotposition + 2) >= x.length) {
                email.classList.add('is-invalid');
                email.classList.remove('is-valid');
        return false;
    }
    email.classList.add('is-valid');
    email.classList.remove('is-invalid');
    return true;
}
tenNV = document.getElementById("id-admin-TenNV")
tenNV.onblur = checkten;

sdt = document.getElementById("id-admin-SĐT")
sdt.onblur = checksdt;

ngaysinh = document.getElementById("id-admin-ngaySinh")
ngaysinh.onblur = tinhtuoi;
var diachi = document.getElementById('id-admin-diaChi')
diachi.onblur = validateDiachi;
var email=document.getElementById('id-admin-email')
email.onblur=validatEemail;

//fillter input
$(document).ready(function() {
  $('#myInput').on('keyup', function(event) {
    event.preventDefault();
    /* Act on the event */
    var tukhoa = $(this).val().toLowerCase();
    $('#myTable tr').filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(tukhoa)>-1);
    });

  });
});
//filler trang thai
function getselect(){
	var trangthai2 = document.getElementById('select-Trang-Thai');
	var giatri = trangthai2.options[trangthai2.selectedIndex].text;

$('#myTable tr').filter(function() {
      $(this).toggle($(this).text().indexOf(giatri)>-1);
    });
};



