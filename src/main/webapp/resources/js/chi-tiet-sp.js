var btnMinus = document.getElementById('btn-minus');
var btnPlus = document.getElementById('btn-plus');

var soLuong = 0;
var soLuongMua = document.getElementById('so-luong-mua');
soLuong = parseInt(soLuongMua.value);

btnMinus.onclick = function () {
    if (soLuong > 0) {
        soLuong--;
        soLuongMua.value = soLuong;
    }
}

btnPlus.onclick = function () {
    if (soLuong <= 500) {
        soLuong++;
        soLuongMua.value = soLuong;
    }
}

