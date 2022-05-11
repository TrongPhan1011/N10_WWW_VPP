<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

            <%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
                <!DOCTYPE html>
                <html lang="en">

                <head>
                    <meta charset="UTF-8">
                    <meta http-equiv="X-UA-Compatible" content="IE=edge">
                    <meta name="viewport" content="width=device-width, initial-scale=1.0">
                    <title>Quan ly</title>
                    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
                        rel="stylesheet">
                    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
                    <link rel="stylesheet" href="../resources/css/lib/hover.css">
                    <link rel="stylesheet" href="../resources/assets/fontIcon/fontawesome-free-5.15.4/css/all.css">
                    <link rel="stylesheet" href="../resources/assets/fontIcon/fontawesome-free-5.15.4/css/solid.css">

                    <link rel="stylesheet" href="../resources/css/general.css">
                    <link rel="stylesheet" href="../resources/css/admin/admin.css">
                    <link rel="stylesheet" href="../resources/css/index.css">

                </head>

                <body>

                    <security:authorize access="hasAnyRole('CUSTOMER')">
                        <span>Bạn không có quyền truy cập nội dung trang này</span>
                    </security:authorize>
                    <security:authorize access="hasAnyRole('EMPLOYEE', 'ADMIN')">
                        <div class="container-fluid ">
                            <div id="header" class=" row p-2 ps-5 pe-5 vpp-bg-header">
                                <div class="col-4">

                                    <a href="${pageContext.request.contextPath}/admin/"> <img src="../resources/assets/img/Logo.png" alt="logo"
                                            width="100">

                                    </a>

                                </div>
                                <div class="col-8 d-flex justify-content-end">


                                    <div class="row">
                                        <div class="col-12 pe-0 ms-1 d-flex align-items-center  vpp-text-pink">
                                            <i class="fas fa-user-circle fs-1 vpp-bd-circle "></i> <a href="${pageContext.request.contextPath}/admin/chiTietTaiKhoan/"
                                                class="fw-bold vpp-link vpp-text-dark hvr-underline-from-left">Thông
                                                tin</a><br>

                                        </div>
                                    </div>

                                </div>

                            </div>
                            <div id="content ">
                                <div class="row ">
                                    <div class="col-2 ps-5 vpp-bg-dark vpp-admin-menu ">
                                        <ul class="navbar-nav">
                                            <li class="nav-item"><a
                                                    class="nav-link text-white vpp-link fs-5 hvr-underline-from-left"
                                                    href="${pageContext.request.contextPath}/admin/">Tổng quan</a></li>
                                            <li class="nav-item  vpp-dropdown "><a
                                                    class="nav-link text-white vpp-link fs-5 hvr-underline-from-left "
                                                    href="${pageContext.request.contextPath}/admin/donhang/">Đơn hàng</a></li>
                                            <li class="nav-item  vpp-dropdown "><a
                                                    class="nav-link text-white vpp-link fs-5 hvr-underline-from-left "
                                                    href="${pageContext.request.contextPath}/admin/sanpham/">Sản phẩm</a></li>

                                            <security:authorize access="hasAnyRole('ADMIN')">
                                                <li class="nav-item  vpp-dropdown "><a
                                                        class="nav-link text-white vpp-link fs-5 hvr-underline-from-left "
                                                        href="${pageContext.request.contextPath}/admin/nhanvien/">Nhân viên</a></li>

                                                <li class="nav-item  vpp-dropdown "><a
                                                        class="nav-link text-white vpp-link fs-5 hvr-underline-from-left "
                                                        href="${pageContext.request.contextPath}/admin/khachhang/">Khách hàng</a></li>

                                            </security:authorize>
                                            
                                            <li class="nav-item"><a
                                                    class="nav-link text-white vpp-link fs-5 hvr-underline-from-left"
                                                    href="${pageContext.request.contextPath}">VPP Website</a></li>

                                        </ul>
                                    </div>

                                    <div class="col-10 p-0">
                                        <div class=" ps-2 vpp-bg-light-dark ">
                                            <a href="#" class="vpp-link">Tổng quan</a>
                                        </div>

                                        <div class=" row m-0 p-3 ps-4 pe-3  d-flex justify-content-between">
                                            <div class="col-12">
                                                <div class="row" style="height: 15vh;">
                                                    <div class="col-1  vpp-bd-btn p-3">
                                                        <img src="./resources/assets/img/Logo.png" alt="img"
                                                            style="width: 100%; height: 100%;">
                                                    </div>
                                                    <div class="col-11" style="height: 15vh;">
                                                        <div class="row p-2 m-0 ms-2 vpp-bd-btn h-100">
                                                            <div
                                                                class=" col-4 d-flex flex-column justify-content-between">
                                                                <p>
                                                                    Mã nhân viên: <span>NV001</span>
                                                                </p>
                                                                <p>
                                                                    Họ tên: <span>Nguyễn Văn A</span>
                                                                </p>
                                                                <p>
                                                                    Giới tính: <span>Nam</span>
                                                                </p>
                                                            </div>
                                                            <div
                                                                class=" col-4 d-flex flex-column justify-content-between">
                                                                <p>
                                                                    Ngày sinh: <span>10/11/2001</span>
                                                                </p>
                                                                <p>
                                                                    Sđt: <span>0987654321</span>
                                                                </p>
                                                                <p>
                                                                    Chức vụ: <span>Nhân viên</span>
                                                                </p>
                                                            </div>
                                                            <div
                                                                class=" col-4 d-flex flex-column justify-content-between">
                                                                <p>
                                                                    Email: <span>abc@gmail.com</span>
                                                                </p>
                                                                <p>
                                                                    Địa chỉ: <span>12 Nguyễn Văn bảo,P4, Gò Vấp,
                                                                        TP.HCM</span>
                                                                </p>

                                                            </div>


                                                        </div>

                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                        <div class=" row m-0 p-3 ps-4 pe-4  d-flex justify-content-between">
                                            <div class="col-3 vpp-bd-btn p-2 don-cho-duyet">
                                                <div class="row m-0 ">

                                                    <div
                                                        class=" col-4  p-0 btn text-center d-flex flex-column justify-content-center h-100">
                                                        <a href="#"
                                                            class=" d-flex align-items-center justify-content-center bg-white vpp-bd-circle p-2 m-1 mb-2 "
                                                            style="height: 5vw; width: 5vw"> <i
                                                                class="fas fa-info vpp-text-pink "
                                                                style="font-size: 2vw;"></i>
                                                        </a>


                                                    </div>
                                                    <div class="col-8">
                                                        <p>Đơn hàng chờ duyệt</p>
                                                        <h2>5</h2>
                                                        <a href="#" class="vpp-link vpp-text-decoration">Xem chi
                                                            tiết</a>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="col-4 vpp-bd-btn p-2 don-da-duyet">
                                                <div class="row m-0 ">

                                                    <div
                                                        class=" col-4  p-0 btn text-center d-flex flex-column justify-content-center h-100">
                                                        <a href="#"
                                                            class=" d-flex align-items-center justify-content-center bg-white vpp-bd-circle p-2 m-1 mb-2 "
                                                            style="height: 5vw; width: 5vw"> <i
                                                                class="fas fa-check vpp-text-pink "
                                                                style="font-size: 2vw;"></i>
                                                        </a>


                                                    </div>
                                                    <div class="col-8">
                                                        <p>Đơn hàng đã duyệt</p>
                                                        <h2>5</h2>
                                                        <a href="#" class="vpp-link vpp-text-decoration">Xem chi
                                                            tiết</a>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-4 vpp-bd-btn p-2 don-da-ban">
                                                <div class="row m-0 ">

                                                    <div
                                                        class=" col-4  p-0 btn text-center d-flex flex-column justify-content-center h-100">
                                                        <a href="#"
                                                            class=" d-flex align-items-center justify-content-center bg-white vpp-bd-circle p-2 m-1 mb-2 "
                                                            style="height: 5vw; width: 5vw"> <i
                                                                class="fas fa-shopping-cart  vpp-text-pink "
                                                                style="font-size: 2vw;"></i>
                                                        </a>


                                                    </div>
                                                    <div class="col-8">
                                                        <p>Đơn hàng đã bán</p>
                                                        <h2>5</h2>
                                                        <a href="#" class="vpp-link vpp-text-decoration">Xem chi
                                                            tiết</a>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                        <h3 class="text-center m-4 mb-5">Sản phẩm bán chạy trong
                                            tháng</h3>


                                        <!-- Carousel -->
                                        <div id="demo" class="carousel slide" data-bs-ride="carousel">



                                            <!-- The slideshow/carousel -->
                                            <div class="carousel-inner ps-5 pe-5">
                                                <div class="carousel-item active">
                                                    <div class="d-flex justify-content-around text-center">
                                                        <div
                                                            class="col-3 pt-0 p-2 d-flex justify-content-around block-sanpham">
                                                            <div class="card pb-2 vpp-bd-hover-pink vpp-bd-btn "
                                                                style="width: 80%;">
                                                                <div class="img-sp">
                                                                    <img class="card-img-top vpp-bd-radius-top"
                                                                        src="../../assets/img/Slider/slide4.jpg"
                                                                        alt="Card image"
                                                                        style="width: 100%; height: 9vw;">
                                                                </div>
                                                                <div class="card-body p-0">
                                                                    <a href="#" class="card-title vpp-link">
                                                                        <h5>Đồ lưu niệm</h5>
                                                                    </a>
                                                                    <p class="card-text text-danger fs-5 fw-bold">
                                                                        10,000,000đ</p>
                                                                    <a href="#"
                                                                        class="btn vpp-btn vpp-bd-btn hvr-shutter-out-horizontal">Xem
                                                                        chi tiết</a>
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div
                                                            class="col-3 pt-0 p-2 d-flex justify-content-around block-sanpham">
                                                            <div class="card pb-2 vpp-bd-hover-pink vpp-bd-btn "
                                                                style="width: 80%;">
                                                                <div class="img-sp">
                                                                    <img class="card-img-top vpp-bd-radius-top"
                                                                        src="../../assets/img/Slider/slide4.jpg"
                                                                        alt="Card image"
                                                                        style="width: 100%; height: 9vw;">
                                                                </div>
                                                                <div class="card-body p-0">
                                                                    <a href="#" class="card-title vpp-link">
                                                                        <h5>Đồ lưu niệm</h5>
                                                                    </a>
                                                                    <p class="card-text text-danger fs-5 fw-bold">
                                                                        10,000,000đ</p>
                                                                    <a href="#"
                                                                        class="btn vpp-btn vpp-bd-btn hvr-shutter-out-horizontal">Xem
                                                                        chi tiết</a>
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div
                                                            class="col-3 pt-0 p-2 d-flex justify-content-around block-sanpham">
                                                            <div class="card pb-2 vpp-bd-hover-pink vpp-bd-btn "
                                                                style="width: 80%;">
                                                                <div class="img-sp">
                                                                    <img class="card-img-top vpp-bd-radius-top"
                                                                        src="../../assets/img/Slider/slide4.jpg"
                                                                        alt="Card image"
                                                                        style="width: 100%; height: 9vw;">
                                                                </div>
                                                                <div class="card-body p-0">
                                                                    <a href="#" class="card-title vpp-link">
                                                                        <h5>Đồ lưu niệm</h5>
                                                                    </a>
                                                                    <p class="card-text text-danger fs-5 fw-bold">
                                                                        10,000,000đ</p>
                                                                    <a href="#"
                                                                        class="btn vpp-btn vpp-bd-btn hvr-shutter-out-horizontal">Xem
                                                                        chi tiết</a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div
                                                            class="col-3 pt-0 p-2 d-flex justify-content-around block-sanpham">
                                                            <div class="card pb-2 vpp-bd-hover-pink vpp-bd-btn "
                                                                style="width: 80%;">
                                                                <div class="img-sp">
                                                                    <img class="card-img-top vpp-bd-radius-top"
                                                                        src="../../assets/img/Slider/slide4.jpg"
                                                                        alt="Card image"
                                                                        style="width: 100%; height: 9vw;">
                                                                </div>
                                                                <div class="card-body p-0">
                                                                    <a href="#" class="card-title vpp-link">
                                                                        <h5>Đồ lưu niệm</h5>
                                                                    </a>
                                                                    <p class="card-text text-danger fs-5 fw-bold">
                                                                        10,000,000đ</p>
                                                                    <a href="#"
                                                                        class="btn vpp-btn vpp-bd-btn hvr-shutter-out-horizontal">Xem
                                                                        chi tiết</a>
                                                                </div>
                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>
                                                <div class="carousel-item ">
                                                    <div class="d-flex justify-content-around text-center">
                                                        <div
                                                            class="col-3 pt-0 p-2 d-flex justify-content-around block-sanpham">
                                                            <div class="card pb-2 vpp-bd-hover-pink vpp-bd-btn "
                                                                style="width: 80%;">
                                                                <div class="img-sp">
                                                                    <img class="card-img-top vpp-bd-radius-top"
                                                                        src="../../assets/img/Slider/slide4.jpg"
                                                                        alt="Card image"
                                                                        style="width: 100%; height: 9vw;">
                                                                </div>
                                                                <div class="card-body p-0">
                                                                    <a href="#" class="card-title vpp-link">
                                                                        <h5>Đồ lưu niệm</h5>
                                                                    </a>
                                                                    <p class="card-text text-danger fs-5 fw-bold">
                                                                        10,000,000đ</p>
                                                                    <a href="#"
                                                                        class="btn vpp-btn vpp-bd-btn hvr-shutter-out-horizontal">Xem
                                                                        chi tiết</a>
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div
                                                            class="col-3 pt-0 p-2 d-flex justify-content-around block-sanpham">
                                                            <div class="card pb-2 vpp-bd-hover-pink vpp-bd-btn "
                                                                style="width: 80%;">
                                                                <div class="img-sp">
                                                                    <img class="card-img-top vpp-bd-radius-top"
                                                                        src="../../assets/img/Slider/slide4.jpg"
                                                                        alt="Card image"
                                                                        style="width: 100%; height: 9vw;">
                                                                </div>
                                                                <div class="card-body p-0">
                                                                    <a href="#" class="card-title vpp-link">
                                                                        <h5>Đồ lưu niệm</h5>
                                                                    </a>
                                                                    <p class="card-text text-danger fs-5 fw-bold">
                                                                        10,000,000đ</p>
                                                                    <a href="#"
                                                                        class="btn vpp-btn vpp-bd-btn hvr-shutter-out-horizontal">Xem
                                                                        chi tiết</a>
                                                                </div>
                                                            </div>
                                                        </div>

                                                        <div
                                                            class="col-3 pt-0 p-2 d-flex justify-content-around block-sanpham">
                                                            <div class="card pb-2 vpp-bd-hover-pink vpp-bd-btn "
                                                                style="width: 80%;">
                                                                <div class="img-sp">
                                                                    <img class="card-img-top vpp-bd-radius-top"
                                                                        src="../../assets/img/Slider/slide4.jpg"
                                                                        alt="Card image"
                                                                        style="width: 100%; height: 9vw;">
                                                                </div>
                                                                <div class="card-body p-0">
                                                                    <a href="#" class="card-title vpp-link">
                                                                        <h5>Đồ lưu niệm</h5>
                                                                    </a>
                                                                    <p class="card-text text-danger fs-5 fw-bold">
                                                                        10,000,000đ</p>
                                                                    <a href="#"
                                                                        class="btn vpp-btn vpp-bd-btn hvr-shutter-out-horizontal">Xem
                                                                        chi tiết</a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div
                                                            class="col-3 pt-0 p-2 d-flex justify-content-around block-sanpham">
                                                            <div class="card pb-2 vpp-bd-hover-pink vpp-bd-btn "
                                                                style="width: 80%;">
                                                                <div class="img-sp">
                                                                    <img class="card-img-top vpp-bd-radius-top"
                                                                        src="../../assets/img/Slider/slide4.jpg"
                                                                        alt="Card image"
                                                                        style="width: 100%; height: 9vw;">
                                                                </div>
                                                                <div class="card-body p-0">
                                                                    <a href="#" class="card-title vpp-link">
                                                                        <h5>Đồ lưu niệm</h5>
                                                                    </a>
                                                                    <p class="card-text text-danger fs-5 fw-bold">
                                                                        10,000,000đ</p>
                                                                    <a href="#"
                                                                        class="btn vpp-btn vpp-bd-btn hvr-shutter-out-horizontal">Xem
                                                                        chi tiết</a>
                                                                </div>
                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>


                                            </div>

                                            <!-- Left and right controls/icons -->
                                            <button class="carousel-control-prev" type="button" data-bs-target="#demo"
                                                data-bs-slide="prev" style="width: 5vw;">

                                                <i class="fas fa-chevron-circle-left fs-1"></i>
                                            </button>
                                            <button class="carousel-control-next" type="button" data-bs-target="#demo"
                                                data-bs-slide="next" style="width: 5vw;">
                                                <i class="fas fa-chevron-circle-right fs-1"></i>
                                            </button>


                                        </div>
                                        <div class="row m-0 p-2 mt-1 text-center vpp-bg-light-dark">
                                            <p>
                                                Nhóm 10 - <span>Thiết bị văn phòng phẩm</span>
                                            </p>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </security:authorize>

                </body>

                </html>