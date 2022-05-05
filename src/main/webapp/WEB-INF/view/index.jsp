<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Văn phòng phẩm</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="../css/lib/hover.css">
    <link rel="stylesheet" href="../assets/fontIcon/fontawesome-free-5.15.4/css/all.css">
    <link rel="stylesheet" href="../assets/fontIcon/fontawesome-free-5.15.4/css/solid.css">

    <link rel="stylesheet" href="../css/general.css">
    <link rel="stylesheet" href="../css/index.css">
</head>

<body>
    <div class="container-fluid ">
        <div id="header">
            <div class="row p-3  vpp-bg-header  d-flex align-items-center"
                style="border-bottom: 1px solid rgb(253, 185, 188);">

                <a href="./index.html" class="col-2 text-center">

                    <img src="../assets/img/Logo.png" alt="logo" width="100">
                </a>
                <div class="col-6 d-flex justify-content-center h-75">
                    <div class="input-group w-75 vpp-bd-btn ">
                        <input type="text" class="form-control vpp-bd-radius " placeholder="Nhập sản phẩm cần tìm">
                        <button type="button"
                            class="input-group-text vpp-text-dark vpp-bg-btn vpp-bd-radius vpp-btn-hover hvr-bounce-to-right "><i
                                class="fas fa-search"></i>Tìm</button>
                    </div>
                </div>
                <div class="col-2">
                    <div class="row">
                        <div class="col-3 pe-0 d-flex align-items-center  vpp-text-pink">
                            <i class="fas fa-user-circle fs-1 vpp-bd-circle "></i>
                        </div>
                        <div class="col-9 ps-0">
                            <a href="#" class="fw-bold vpp-link vpp-text-dark hvr-underline-from-left">Đăng nhập</a><br>
                            <a href="#" class="vpp-link vpp-text-dark hvr-underline-from-left"> Đăng ký</a>
                        </div>
                    </div>
                </div>
                <div class="col-2 d-flex justify-content-around">
                    <button type="button" class="btn vpp-btn hvr-grow hvr-shutter-out-horizontal">
                        <i class="fas fa-shopping-cart"></i>
                        Giỏ hàng: <span>0</span>

                    </button>
                </div>



            </div>
            <div class="row vpp-bg-header " style="box-shadow: 0px 1px 5px rgba(0, 0, 0,0.2);">
                <nav class="navbar navbar-expand-sm p-0">
                    <button class="navbar-toggler vpp-bd-btn m-2 hvr-grow" type="button" data-bs-toggle="collapse"
                        data-bs-target="#collapsibleNavbar">
                        <i class="fas fa-bars vpp-text-pink"></i>
                    </button>

                    <div class="collapse navbar-collapse justify-content-center " id="collapsibleNavbar">

                        <ul class="navbar-nav">
                            <li class="nav-item">
                                <a class="nav-link vpp-link fs-5 hvr-underline-from-center" href="./index.html">Trang
                                    chủ</a>
                            </li>
                            <li class="nav-item vpp-dropdown ">
                                <a class="nav-link vpp-link fs-5 hvr-underline-from-center " href="#">Sản phẩm</a>
                                <ul class="dropdown-menu">

                                    <li>
                                        <a class="dropdown-item hvr-underline-from-left hvr-icon-float" href="#">
                                            <i class="fas fa-file me-2 hvr-icon"></i> Giấy in
                                        </a>
                                    </li>
                                    <li>
                                        <a class="dropdown-item hvr-underline-from-left hvr-icon-float " href="#">
                                            <i class="fas fa-pen-alt me-2 hvr-icon"></i> Bút viết
                                        </a>
                                    </li>
                                    <li>
                                        <a class="dropdown-item hvr-underline-from-left hvr-icon-float" href="#">
                                            <i class="fas fa-book me-2 hvr-icon"></i>Sách, sách tham khảo
                                        </a>
                                    </li>
                                    <li>
                                        <a class="dropdown-item hvr-underline-from-left hvr-icon-float" href="#">
                                            <i class="fas fa-calculator me-2 hvr-icon"></i> Máy tính
                                        </a>
                                    </li>
                                    <li>
                                        <a class="dropdown-item hvr-underline-from-left hvr-icon-float" href="#">
                                            <i class="fas fa-paperclip me-2 hvr-icon"></i> Kẹp giấy các loại
                                        </a>
                                    </li>
                                    <li>
                                        <a class="dropdown-item hvr-underline-from-left hvr-icon-float" href="#">
                                            <i class="fas fa-envelope me-2 hvr-icon"></i> Bao thư
                                        </a>
                                    </li>
                                    <li>
                                        <a class="dropdown-item hvr-underline-from-left hvr-icon-float" href="#">
                                            <i class="fas fa-tape me-2 hvr-icon"></i> Keo, băng keo
                                        </a>
                                    </li>
                                    <li>
                                        <a class="dropdown-item hvr-underline-from-left hvr-icon-float" href="#">
                                            <i class="fas fa-drafting-compass me-2 hvr-icon"></i> Đồ dùng học sinh
                                        </a>
                                    </li>
                                    <li>
                                        <a class="dropdown-item hvr-underline-from-left hvr-icon-float" href="#">
                                            <i class="fas fa-book-open me-2 hvr-icon"></i>Vở - Sổ
                                        </a>
                                    </li>
                                    <li>
                                        <a class="dropdown-item hvr-underline-from-left hvr-icon-float" href="#">
                                            <i class="fas fa-gift me-2 hvr-icon"></i> Quà lưu niệm
                                        </a>
                                    </li>
                                    <li>
                                        <a class="dropdown-item hvr-underline-from-left hvr-icon-float" href="#">
                                            <i class="fas fa-plus-circle me-2 hvr-icon"></i> Các loại khác
                                        </a>
                                    </li>


                                </ul>


                            </li>
                            <li class="nav-item">
                                <a class="nav-link vpp-link fs-5 hvr-underline-from-center" href="#">Giới thiệu</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link vpp-link fs-5 hvr-underline-from-center" href="#">Liên hệ</a>
                            </li>

                        </ul>
                    </div>
                </nav>
            </div>
        </div>
        <div id="content" class="  p-3 ps-5 pe-5">
            <div class="slider row m-0">
                <div class="col-8 ">
                    <div id="slide" class="carousel scale" data-bs-ride="carousel">



                        <div class="carousel-inner vpp-bd-btn">
                            <div class="carousel-item vpp-bg-header ">
                                <div
                                    class="row slide-gioithieu text-center d-flex align-items-center justify-content-around flex-column-reverse ">
                                    <div class="col-12 ">

                                        <h1 class="fw-bold vpp-text-pink ">VPP
                                        </h1>


                                        <h5 class="vpp-text-dark">Chuyên cung cấp các sản phẩm văn phòng phẩm</h5>
                                        <p class="vpp-text-dark">12 Nguyễn Văn Bảo, P.4, Gò Vấp, HCM</p>
                                    </div>
                                </div>
                            </div>
                            <div class="carousel-item active ">
                                <img src="../assets/img/Slider/slide2.jpg" alt="imgSlide1" class="d-block"
                                    style="width:100%">

                            </div>
                            <div class="carousel-item">
                                <img src="../assets/img/Slider/slide3.jpg" alt="imgSlide2" class="d-block"
                                    style="width:100%">
                            </div>
                            <div class="carousel-item">
                                <img src="../assets/img/Slider/slide5.jpg" alt="imgSlide1" class="d-block"
                                    style="width:100%">
                            </div>
                        </div>


                        <button class="carousel-control-prev" type="button" data-bs-target="#slide"
                            data-bs-slide="prev">
                            <i class="fas fa-chevron-circle-left vpp-text-dark fs-1"></i>
                        </button>
                        <button class="carousel-control-next" type="button" data-bs-target="#slide"
                            data-bs-slide="next">
                            <i class="fas fa-chevron-circle-right vpp-text-dark fs-1"></i>
                        </button>
                    </div>
                </div>
                <div class="col-4 text-center p-0 ps-3">
                    <div class="row d-flex  imgSlide slide-block-sanpham hvr-grow " style="height: 15vw;">
                        <div class="col-12 imgSlide p-0 ">
                            <img src="../assets/img/Slider/slide4.jpg" alt="imgSlide" class="vpp-bd-btn imgSlide ">
                            <div class=" align-items-end p-3 sub-sanpham imgSlide">
                                <a href="#" class="">Đồ lưu niệm</a>
                            </div>
                        </div>
                    </div>
                    <div class="row d-flex align-items-end imgSlide slide-block-sanpham hvr-grow" style="height: 15vw;">
                        <div class="col-12 imgSlide p-0 ">
                            <img src="../assets/img/Slider/slide1.png" alt="imgSlide" class="vpp-bd-btn imgSlide">
                            <div class=" align-items-end p-3 sub-sanpham imgSlide">
                                <a href="#" class="">Đồ dùng học sinh</a>
                            </div>
                        </div>
                    </div>

                </div>

            </div>
            <div class="row m-0 p-3">
                <div class="col-12 p-3 vpp-bd-radius vpp-bg-light vpp-bd-btn">
                    <h4 class="text-center vpp-text-dark">Danh mục sản phẩm</h4>

                    <div class="row d-flex justify-content-around">
                        <div class="col-1  p-0 btn text-center hvr-grow ">
                            <a href="#"
                                class=" d-flex align-items-center justify-content-center vpp-bd-circle p-2 m-1 mb-2 "
                                style="height: 6vw;width: 90%;">
                                <i class="fas fa-file vpp-text-pink " style="font-size: 3vw;"></i>

                            </a>
                            <a href="#" class="vpp-link">Giấy in</a>
                        </div>

                        <div class="col-1  p-0 btn text-center hvr-grow">
                            <a href="#"
                                class=" d-flex align-items-center justify-content-center vpp-bd-circle p-2 m-1 mb-2 "
                                style="height: 6vw;width: 90%;">
                                <i class="fas fa-pen-alt vpp-text-pink" style="font-size: 3vw;"></i>
                            </a>
                            <a href="#" class="vpp-link">Bút viết</a>
                        </div>
                        <div class="col-1 p-0 btn text-center hvr-grow">
                            <a href="#"
                                class=" d-flex align-items-center justify-content-center vpp-bd-circle p-2 m-1 mb-2 "
                                style="height: 6vw;width: 90%;">
                                <i class="fas fa-book vpp-text-pink" style="font-size: 3vw;"></i>
                            </a>
                            <a href="#" class="vpp-link">Sách</a>
                        </div>
                        <div class="col-1  p-0 btn text-center hvr-grow">
                            <a href="#"
                                class=" d-flex align-items-center justify-content-center vpp-bd-circle p-2 m-1 mb-2 "
                                style="height: 6vw;width: 90%;">
                                <i class="fas fa-calculator vpp-text-pink" style="font-size: 3vw;"></i>
                            </a>
                            <a href="#" class="vpp-link">Máy tính</a>
                        </div>
                        <div class="col-1  p-0 btn text-center hvr-grow">
                            <a href="#"
                                class=" d-flex align-items-center justify-content-center vpp-bd-circle p-2 m-1 mb-2 "
                                style="height: 6vw;width: 90%;">
                                <i class="fas fa-paperclip vpp-text-pink" style="font-size: 3vw;"></i>
                            </a>
                            <a href="#" class="vpp-link">Kẹp giấy</a>
                        </div>
                        <div class="col-1  p-0 btn text-center hvr-grow">
                            <a href="#"
                                class=" d-flex align-items-center justify-content-center vpp-bd-circle p-2 m-1 mb-2 "
                                style="height: 6vw;width: 90%;">
                                <i class="fas fa-envelope vpp-text-pink" style="font-size: 3vw;"></i>
                            </a>
                            <a href="#" class="vpp-link">Bao thư</a>
                        </div>
                        <div class="col-1  p-0 btn text-center hvr-grow">
                            <a href="#"
                                class=" d-flex align-items-center justify-content-center vpp-bd-circle p-2 m-1 mb-2 "
                                style="height: 6vw;width: 90%;">
                                <i class="fas fa-tape vpp-text-pink" style="font-size: 3vw;"></i>
                            </a>
                            <a href="#" class="vpp-link">Keo, băng keo</a>
                        </div>
                        <div class="col-1 p-0 btn text-center hvr-grow">
                            <a href="#"
                                class=" d-flex align-items-center justify-content-center vpp-bd-circle p-2 m-1 mb-2 "
                                style="height: 6vw;width: 90%;">
                                <i class="fas fa-drafting-compass vpp-text-pink" style="font-size: 3vw;"></i>
                            </a>
                            <a href="#" class="vpp-link">Đồ dùng học sinh</a>
                        </div>
                        <div class="col-1 p-0 btn text-center hvr-grow">
                            <a href="#"
                                class=" d-flex align-items-center justify-content-center vpp-bd-circle p-2 m-1 mb-2 "
                                style="height: 6vw;width: 90%;">
                                <i class="fas fa-book-open vpp-text-pink" style="font-size: 3vw;"></i>
                            </a>
                            <a href="#" class="vpp-link">Vở, sổ</a>
                        </div>
                        <div class="col-1  p-0 btn text-center hvr-grow">
                            <a href="#"
                                class=" d-flex align-items-center justify-content-center vpp-bd-circle p-2 m-1 mb-2 "
                                style="height: 6vw;width: 90%;">
                                <i class="fas fa-gift vpp-text-pink" style="font-size: 3vw;"></i>
                            </a>
                            <a href="#" class="vpp-link">Quà lưu niệm</a>
                        </div>
                        <div class="col-1 p-0 btn text-center hvr-grow">
                            <a href="#"
                                class=" d-flex align-items-center justify-content-center vpp-bd-circle p-2 m-1 mb-2 "
                                style="height: 6vw;width: 90%;">
                                <i class="fas fa-plus-circle vpp-text-pink" style="font-size: 3vw;"></i>
                            </a>
                            <a href="#" class="vpp-link">Quà lưu niệm</a>
                        </div>
                    </div>
                    <div class=" mt-4 text-center">
                        <h4 class="text-center vpp-text-dark">Sản phẩm nổi bật</h4>
                        <div class="d-flex justify-content-around mt-2 mb-2">
                            <span class="vpp-line-pink"></span>
                        </div>
                        <div id="sanPhamNoiBat" class="row mt-4 mb-5">


                        </div>

                    </div>

                    <div class=" mt-4 text-center mb-5">
                        <h4 class="text-center vpp-text-dark">Giấy in</h4>
                        <div class="d-flex justify-content-around mt-2 mb-3">
                            <span class="vpp-line-pink"></span>
                        </div>
                        <div class="row mt-4 ">
                            <div class="col-3 pt-0 p-2 d-flex justify-content-around block-sanpham">
                                <div class="card pb-2 vpp-bd-hover-pink vpp-bd-btn hvr-grow-shadow" style="width:80%;">
                                    <div class="img-sp">
                                        <img class="card-img-top vpp-bd-radius-top"
                                            src="../assets/img/Slider/slide4.jpg" alt="Card image"
                                            style="width:100%; height: 9vw;">
                                    </div>
                                    <div class="card-body p-0">
                                        <a href="#" class="card-title vpp-link">
                                            <h5>Đồ lưu niệm</h5>
                                        </a>
                                        <p class="card-text text-danger fs-5 fw-bold">10,000,000đ</p>
                                        <a href="#" class="btn vpp-btn vpp-bd-btn hvr-shutter-out-horizontal">Xem chi
                                            tiết</a>
                                    </div>
                                </div>
                            </div>

                            <div class="col-3 pt-0 p-2 d-flex justify-content-around block-sanpham">
                                <div class="card pb-2 vpp-bd-hover-pink vpp-bd-btn hvr-grow-shadow" style="width:80%;">
                                    <div class="img-sp">
                                        <img class="card-img-top vpp-bd-radius-top"
                                            src="../assets/img/Slider/slide4.jpg" alt="Card image"
                                            style="width:100%; height: 9vw;">
                                    </div>
                                    <div class="card-body p-0">
                                        <a href="#" class="card-title vpp-link">
                                            <h5>Đồ lưu niệm</h5>
                                        </a>
                                        <p class="card-text text-danger fs-5 fw-bold">10,000,000đ</p>
                                        <a href="#" class="btn vpp-btn vpp-bd-btn hvr-shutter-out-horizontal">Xem chi
                                            tiết</a>
                                    </div>
                                </div>
                            </div>

                            <div class="col-3 pt-0 p-2 d-flex justify-content-around block-sanpham">
                                <div class="card pb-2 vpp-bd-hover-pink vpp-bd-btn hvr-grow-shadow" style="width:80%;">
                                    <div class="img-sp">
                                        <img class="card-img-top vpp-bd-radius-top"
                                            src="../assets/img/Slider/slide4.jpg" alt="Card image"
                                            style="width:100%; height: 9vw;">
                                    </div>
                                    <div class="card-body p-0">
                                        <a href="#" class="card-title vpp-link">
                                            <h5>Đồ lưu niệm</h5>
                                        </a>
                                        <p class="card-text text-danger fs-5 fw-bold">10,000,000đ</p>
                                        <a href="#" class="btn vpp-btn vpp-bd-btn hvr-shutter-out-horizontal">Xem chi
                                            tiết</a>
                                    </div>
                                </div>
                            </div>

                            <div class="col-3 pt-0 p-2 d-flex justify-content-around block-sanpham">
                                <div class="card pb-2 vpp-bd-hover-pink vpp-bd-btn hvr-grow-shadow" style="width:80%;">
                                    <div class="img-sp">
                                        <img class="card-img-top vpp-bd-radius-top"
                                            src="../assets/img/Slider/slide4.jpg" alt="Card image"
                                            style="width:100%; height: 9vw;">
                                    </div>
                                    <div class="card-body p-0">
                                        <a href="#" class="card-title vpp-link">
                                            <h5>Đồ lưu niệm</h5>
                                        </a>
                                        <p class="card-text text-danger fs-5 fw-bold">10,000,000đ</p>
                                        <a href="#" class="btn vpp-btn vpp-bd-btn hvr-shutter-out-horizontal">Xem chi
                                            tiết</a>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>

                    <div class=" mt-4 text-center mb-5">
                        <h4 class="text-center vpp-text-dark">Giấy in</h4>
                        <div class="d-flex justify-content-around mt-2 mb-3">
                            <span class="vpp-line-pink"></span>
                        </div>
                        <div class="row mt-4 ">
                            <div class="col-3 pt-0 p-2 d-flex justify-content-around block-sanpham">
                                <div class="card pb-2 vpp-bd-hover-pink vpp-bd-btn hvr-grow-shadow" style="width:80%;">
                                    <div class="img-sp">
                                        <img class="card-img-top vpp-bd-radius-top"
                                            src="../assets/img/Slider/slide4.jpg" alt="Card image"
                                            style="width:100%; height: 9vw;">
                                    </div>
                                    <div class="card-body p-0">
                                        <a href="#" class="card-title vpp-link">
                                            <h5>Đồ lưu niệm</h5>
                                        </a>
                                        <p class="card-text text-danger fs-5 fw-bold">10,000,000đ</p>
                                        <a href="#" class="btn vpp-btn vpp-bd-btn hvr-shutter-out-horizontal">Xem chi
                                            tiết</a>
                                    </div>
                                </div>
                            </div>

                            <div class="col-3 pt-0 p-2 d-flex justify-content-around block-sanpham">
                                <div class="card pb-2 vpp-bd-hover-pink vpp-bd-btn hvr-grow-shadow" style="width:80%;">
                                    <div class="img-sp">
                                        <img class="card-img-top vpp-bd-radius-top"
                                            src="../assets/img/Slider/slide4.jpg" alt="Card image"
                                            style="width:100%; height: 9vw;">
                                    </div>
                                    <div class="card-body p-0">
                                        <a href="#" class="card-title vpp-link">
                                            <h5>Đồ lưu niệm</h5>
                                        </a>
                                        <p class="card-text text-danger fs-5 fw-bold">10,000,000đ</p>
                                        <a href="#" class="btn vpp-btn vpp-bd-btn hvr-shutter-out-horizontal">Xem chi
                                            tiết</a>
                                    </div>
                                </div>
                            </div>

                            <div class="col-3 pt-0 p-2 d-flex justify-content-around block-sanpham">
                                <div class="card pb-2 vpp-bd-hover-pink vpp-bd-btn hvr-grow-shadow" style="width:80%;">
                                    <div class="img-sp">
                                        <img class="card-img-top vpp-bd-radius-top"
                                            src="../assets/img/Slider/slide4.jpg" alt="Card image"
                                            style="width:100%; height: 9vw;">
                                    </div>
                                    <div class="card-body p-0">
                                        <a href="#" class="card-title vpp-link">
                                            <h5>Đồ lưu niệm</h5>
                                        </a>
                                        <p class="card-text text-danger fs-5 fw-bold">10,000,000đ</p>
                                        <a href="#" class="btn vpp-btn vpp-bd-btn hvr-shutter-out-horizontal">Xem chi
                                            tiết</a>
                                    </div>
                                </div>
                            </div>

                            <div class="col-3 pt-0 p-2 d-flex justify-content-around block-sanpham">
                                <div class="card pb-2 vpp-bd-hover-pink vpp-bd-btn hvr-grow-shadow" style="width:80%;">
                                    <div class="img-sp">
                                        <img class="card-img-top vpp-bd-radius-top"
                                            src="../assets/img/Slider/slide4.jpg" alt="Card image"
                                            style="width:100%; height: 9vw;">
                                    </div>
                                    <div class="card-body p-0">
                                        <a href="#" class="card-title vpp-link">
                                            <h5>Đồ lưu niệm</h5>
                                        </a>
                                        <p class="card-text text-danger fs-5 fw-bold">10,000,000đ</p>
                                        <a href="#" class="btn vpp-btn vpp-bd-btn hvr-shutter-out-horizontal">Xem chi
                                            tiết</a>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>

                    <div class="d-flex justify-content-around mt-2 mb-3">
                        <span class="vpp-line-pink"></span>
                    </div>

                    <div class="d-flex justify-content-center">
                        <a href="#" class="btn vpp-btn fs-5  hvr-shutter-out-horizontal " style="width: 15vw;">Toàn bộ
                            sản phẩm</a>
                    </div>
                </div>

            </div>

        </div>
        <div id="footer vpp-bg-header">
            <div class="row p-3 ps-5 vpp-bg-header">
                <div class="col-5 ">
                    <div class="row  mb-3">
                        <div class="col-3">
                            <a href="#">
                                <img src="../assets/img/Logo.png" alt="logo" width="100%">
                            </a>
                        </div>
                    </div>

                    <div class=" vpp-text-dark">
                        <p>Cung cấp các sản phẩm văn phòng phẩm chất lượng từ các thương hiệu hàng đầu.</p>
                        <p class="fw-bold"><i class="fas fa-location-arrow me-2"></i>Địa chỉ: 12 Nguyễn Văn Bảo, P.4, Gò
                            Vấp, TP. HCM</p>
                        <p class="fw-bold"><i class="fas fa-phone me-2"></i>Điện thoại: 099999999</p>
                        <p class="fw-bold"><i class="fas fa-mail-bulk me-2"></i> Email: abcd@gmail.com</p>
                    </div>
                </div>

                <div class="col-2  vpp-text-dark">
                    <div class="mt-4">
                        <div class="row fw-bold">
                            <div class="col-12">
                                Chính sách
                            </div>
                        </div>

                        <div class=" vpp-text-dark mt-3">

                            <a href="#" class=" d-block vpp-link mb-2 vpp-text-decoration">Giới thiệu</a>
                            <a href="#" class="d-block mb-2 vpp-link vpp-text-decoration">Chính sách đổi trả</a>
                            <a href="#" class="d-block mb-2 vpp-link vpp-text-decoration">Điều khoản dịch vụ</a>
                            <a href="#" class="d-block mb-2 vpp-link vpp-text-decoration">Chính sách bảo mật</a>
                            <a href="#" class="d-block mb-2 vpp-link vpp-text-decoration">Liên hệ</a>


                        </div>
                    </div>

                </div>

                <div class="col-2 vpp-text-dark">
                    <div class="mt-4">
                        <div class="row fw-bold">
                            <div class="col-12">
                                Hỗ trợ khách hàng
                            </div>
                        </div>

                        <div class=" vpp-text-dark mt-3">
                            <a href="#" class=" d-block vpp-link mb-2 vpp-text-decoration">Tất cả sản phẩm</a>
                            <a href="#" class="d-block mb-2 vpp-link vpp-text-decoration">Khuyến mãi</a>
                        </div>
                    </div>

                </div>

                <div class="col-3 vpp-text-dark">
                    <div class="mt-4">
                        <div class="row fw-bold">
                            <div class="col-12">
                                Phương thức thanh toán
                            </div>
                        </div>

                        <div class="  vpp-text-dark mt-3">
                            <div class="row text-center " style="font-size: 12px;">
                                <div class="col-4">
                                    <img src="../assets/img/thanhtoan1.png" alt="tienmat" width="80%">
                                    <p class="vpp-text-dark">Tiền mặt</p>
                                </div>
                                <div class="col-4">
                                    <img src="../assets/img/thanhtoan2.png" alt="tienmat" width="80%">
                                    <p class="vpp-text-dark">Banking</p>
                                </div>
                                <div class="col-4">
                                    <img src="../assets/img/thanhtoan3.png" alt="tienmat" width="80%">
                                    <p class="vpp-text-dark">Tại cửa hàng</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
    <script src="../js/index.js"></script>
    <script src="https://unpkg.com/scrollreveal"></script>
    <script src="../js/scrollAnimation.js"></script>
</body>

</html>