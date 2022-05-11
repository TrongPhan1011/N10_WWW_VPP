function clickUpdate(id,tenSP,soLuongTon,soLuongBan,moTaSP,giaBan,
    giaGoc,chatLieu,trangThai,urlAnhSP,loaiSP, nsx) {
    $('input[name="id"]').val(id);
    $('select[name="loaiSP.id"]').val(loaiSP);
    $('select[name="nsx.id"]').val(nsx);
    $('input[name="tenSP"]').val(tenSP);
    $('input[name="giaGoc"]').val(giaGoc);
    $('input[name="soLuongTon"]').val(soLuongTon);
    $('input[name="fileImage"]').val(urlAnhSP);

    $('textarea[name="moTaSP"]').val(moTaSP);
    $('input[name="giaBan"]').val(giaBan);
    $('input[name="chatLieu"]').val(chatLieu);
    if(trangThai=='Hết hàng'){
        $('select[name="trangThai"]').val(1);}
    else{$('select[name="trangThai"]').val(0);}

    $('#spDaBan').html(soLuongBan);




    }

    $(".modal").on("hidden.bs.modal", function(){
        $('#formSP').trigger('reset');
        $('#spDaBan').html(0);
        
});

function showInfoSP(id,tenSP,soLuongTon,soLuongBan,moTaSP,giaBan,
    giaGoc,chatLieu,trangThai,urlAnhSP,loaiSP, nsx) {
    
    $('input[name="id"]').val(id);

    $('select[name="loaiSP.id"]').val(loaiSP);
    $('select[name="nsx.id"]').val(nsx);
    $('input[name="tenSP"]').val(tenSP);
    $('input[name="giaGoc"]').val(giaGoc);
    $('input[name="soLuongTon"]').val(soLuongTon);
    $('textarea[name="moTaSP"]').val(moTaSP);
    $('input[name="giaBan"]').val(giaBan);
    $('input[name="chatLieu"]').val(chatLieu);
    if(trangThai=='Hết hàng'){
        $('select[name="trangThai"]').val(1);}
    else{$('select[name="trangThai"]').val(0);}




    $('select[name="fileImage"]').addClass('d-none');


    $('#adminSPIMG').html(`<img src="../../resources/assets/img/sp/${urlAnhSP}"
    alt="img1" class="vpp-bd-1 " width="30%" height="70vh">`);
    $('#adminSPIMG').removeClass('d-none');
    $('#adminSPIMG').addClass('d-flex');


    $('#adminBtnLuu').addClass('d-none');






    $('#spDaBan').html(soLuongBan);





}

function resetModal(){

    $(".modal").on("hidden.bs.modal", function(){
        $('#formSP').trigger('reset');
        $('#spDaBan').html(0);

        $('select[name="fileImage"]').removeClass('d-none');

        $('#adminSPIMG').addClass('d-none');
        $('#adminSPIMG').removeClass('d-flex');


        $('#adminBtnLuu').removeClass('d-none');

        $('input[name="id"]').val('-1');
    });
}
resetModal();



//validation

const tenSanPham = $('input[name="tenSP"]');

const giaGocSP = $('input[name="giaGoc"]');
const giaBanSP = $('input[name="giaBan"]');
const soluongSP =  $('input[name="soLuongTon"]');
const motaSanPham = $('textarea[name="moTaSP"]');
const chatLieuSP =  $('input[name="chatLieu"]');
const fileIMGSP =  $('select[name="fileImage"]');

function checkTenSP(){
    let tenSP = tenSanPham.val();
     if(tenSP == ''){
        tenSanPham.removeClass('is-valid');
        tenSanPham.addClass('is-invalid');
         return false;
     }
     else {
 
        tenSanPham.removeClass('is-invalid');
        tenSanPham.addClass('is-valid');
         return true;
     }
}
function checkMoTa(){
    let txtMota = motaSanPham.val();
     if(txtMota == ''){
        motaSanPham.removeClass('is-valid');
        motaSanPham.addClass('is-invalid');
         return false;
     }
     else {
 
        motaSanPham.removeClass('is-invalid');
        motaSanPham.addClass('is-valid');
         return motaSanPham;
     }
}

function checkGiaGoc(){
    let txtGiaGoc = giaGocSP.val();
     if(txtGiaGoc =='' || parseInt(txtGiaGoc) <= 1000){
        giaGocSP.removeClass('is-valid');
        giaGocSP.addClass('is-invalid');
         return false;
     }
     else {
 
        giaGocSP.removeClass('is-invalid');
        giaGocSP.addClass('is-valid');
         return true;
     }
}
function checkGiaBan(){
    let txtGiaban = giaBanSP.val();
     if(txtGiaban==''|| parseInt(txtGiaban) <= 1000){
        giaBanSP.removeClass('is-valid');
        giaBanSP.addClass('is-invalid');
         return false;
     }
     else {
 
        giaBanSP.removeClass('is-invalid');
        giaBanSP.addClass('is-valid');
         return true;
     }
}
function checkSoLuongTon(){
    let txtSoLuongTon = soluongSP.val();
     if(txtSoLuongTon == ''||parseInt(txtSoLuongTon) <= 0){
        soluongSP.removeClass('is-valid');
        soluongSP.addClass('is-invalid');
         return false;
     }
     else {
 
        soluongSP.removeClass('is-invalid');
        soluongSP.addClass('is-valid');
         return true;
     }
}
function checkChatLieu(){
    let txtChatLieu = chatLieuSP.val();
     if(txtChatLieu == ''){
        chatLieuSP.removeClass('is-valid');
        chatLieuSP.addClass('is-invalid');
         return false;
     }
     else {
 
        chatLieuSP.removeClass('is-invalid');
        chatLieuSP.addClass('is-valid');
         return true;
     }
}

function checkAnh(){
    let txtIMG = fileIMGSP.val();
     if(txtIMG == ''){
        fileIMGSP.removeClass('is-valid');
        fileIMGSP.addClass('is-invalid');
         return false;
     }
     else {
 
        fileIMGSP.removeClass('is-invalid');
        fileIMGSP.addClass('is-valid');
         return true;
     }
}


tenSanPham.blur(checkTenSP);
giaGocSP.blur(checkGiaGoc);
giaBanSP.blur(checkGiaBan)
motaSanPham.blur(checkMoTa);
soluongSP.blur(checkSoLuongTon);
chatLieuSP.blur(checkChatLieu);

fileIMGSP.blur(checkAnh);



function checkClickLuu(){
    if(!checkTenSP()||!checkGiaGoc()||!checkGiaBan()||!checkSoLuongTon()||!checkMoTa()||!checkChatLieu()||!checkAnh())
        return false;
    return true;
}

const btnLuu = $('#adminBtnLuu');
btnLuu.click(checkClickLuu);



