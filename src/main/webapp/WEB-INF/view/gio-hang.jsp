<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
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
    <link rel="stylesheet" href="../css/chi-tiet-sp.css">
    <link rel="stylesheet" href="../../css/admin/admin.css">
    <link rel="stylesheet" href="../../css/admin/admin-san-pham.css">
</head>

<body>
    <div class="container-fluid p-0 ">
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
        <div class="  vpp-bg-light-dark ps-2 ">
            <a href="#" class="vpp-link">Trang chủ</a>/Giỏ hàng

        </div>
        <div id="container">
            <div id="container-content" class=" p-3 ps-5 pe-5">
                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col">Sản phẩm</th>
                            <th scope="col" class="text-center">Số lượng</th>
                            <th scope="col">Giá</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <th scope="row"> MacBook</th>
                            <td class="text-center d-flex justify-content-center">
                                <form action="#" class="w-25">
                                    <div class="input-group ">
                                        <button type="button" class=" btn btn-danger me-2 vpp-btn-sp ">
                                            <i class="fas fa-minus"></i>
                                        </button>
                                        <input type="text" class="form-control text-center " value="0">
                                        <button type="button" class="btn btn-success ms-2 vpp-btn-sp ">
                                            <i class="fas fa-plus"></i>
                                        </button>
                                    </div>

                                </form>
                            </td>
                            <td>30.000.000</td>
                            <td>
                                <button type="button" class="btn bg-white vpp-bd-1   hvr-grow vpp-bd-color-red"><i
                                        class="fas fa-times fs-5  text-danger"></i></button>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <div id="container-content-footer" class=" text-center p-3 ps-5 pe-5">
                    <button type="button" class="btn col-3   mt-4 border-warning btn-danger">Mua ngay</button>
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