<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Đăng ký</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

    <link rel="stylesheet" href="../resources/css/lib/hover.css">
    <link rel="stylesheet" href="../resources/assets/fontIcon/fontawesome-free-5.15.4/css/all.css">
    <link rel="stylesheet" href="../resources/assets/fontIcon/fontawesome-free-5.15.4/css/solid.css">

    <link rel="stylesheet" href="../resources/css/dangKy.css">
    <link rel="stylesheet" href="../resources/css/general.css">
    <link rel="stylesheet" href="../resources/css/index.css">



</head>
<body>
<c:url var="urlLoaiSP1" value="/sanpham/loaisanpham">
		<c:param name="tenLoai" value="1"></c:param>
	</c:url>
	<c:url var="urlLoaiSP2" value="/sanpham/loaisanpham">
		<c:param name="tenLoai" value="2"></c:param>
	</c:url>
	<c:url var="urlLoaiSP3" value="/sanpham/loaisanpham">
		<c:param name="tenLoai" value="3"></c:param>
	</c:url>
	<c:url var="urlLoaiSP4" value="/sanpham/loaisanpham">
		<c:param name="tenLoai" value="4"></c:param>
	</c:url>
	<c:url var="urlLoaiSP5" value="/sanpham/loaisanpham">
		<c:param name="tenLoai" value="5"></c:param>
	</c:url>
	<c:url var="urlLoaiSP6" value="/sanpham/loaisanpham">
		<c:param name="tenLoai" value="6"></c:param>
	</c:url>
	<c:url var="urlLoaiSP7" value="/sanpham/loaisanpham">
		<c:param name="tenLoai" value="7"></c:param>
	</c:url>
	<c:url var="urlLoaiSP8" value="/sanpham/loaisanpham">
		<c:param name="tenLoai" value="8"></c:param>
	</c:url>
	<c:url var="urlLoaiSP9" value="/sanpham/loaisanpham">
		<c:param name="tenLoai" value="9"></c:param>
	</c:url>
	
	<c:url var="urlLoaiSP10" value="/sanpham/loaisanpham">
		<c:param name="tenLoai" value="10"></c:param>
	</c:url>
	<c:url var="urlLoaiSP11" value="/sanpham/loaisanpham">
		<c:param name="tenLoai" value="11"></c:param>
	</c:url>

<div class="container-fluid ">
        <div id="header">
			<div class="row p-3  vpp-bg-header  d-flex align-items-center"
				style="border-bottom: 1px solid rgb(253, 185, 188);">

				<a href="${pageContext.request.contextPath}/"
					class="col-2 text-center"> <img
					src="../resources/assets/img/Logo.png" alt="logo" width="100">
				</a>

				<form action="${pageContext.request.contextPath}/timkiem/"
					class="col-6 d-flex justify-content-center h-75">
					<div class="input-group w-75 vpp-bd-btn ">
						<input type="text" name="tenSP"
							class="form-control vpp-bd-radius "
							placeholder="Nhập sản phẩm cần tìm">
						<button type="submit"
							class="input-group-text vpp-text-dark vpp-bg-btn vpp-bd-radius vpp-btn-hover hvr-bounce-to-right ">
							<i class="fas fa-search"></i>Tìm
						</button>
					</div>
				</form>

				<div class="col-2">
					<div class="row">
						<c:choose>
							<c:when test="${pageContext.request.userPrincipal.name != null}">
								<div class="col-3 pe-0 d-flex align-items-center  vpp-text-pink">
									<a href="${pageContext.request.contextPath}/chiTietTaiKhoan/"
										class="vpp-text-pink"> <i
										class="fas fa-user-circle fs-1 vpp-bd-circle "></i>
									</a> <input type="hidden" name="emailloggin"
										value="<security:authentication
						property="principal.username" />">


								</div>
							</c:when>
						</c:choose>

						<div class="col-9 ps-0  ">
							<c:choose>
								<c:when test="${pageContext.request.userPrincipal.name != null}">


									<form:form action="${pageContext.request.contextPath}/logout"
										method="POST">
										<input type="submit" class="btn  btn-danger" value="Đăng xuất">
									</form:form>
								</c:when>
								<c:otherwise>
									<a href="${pageContext.request.contextPath}/login"
										class="fw-bold vpp-link vpp-text-dark hvr-underline-from-left">Đăng
										nhập</a>
									<br>
									<a href="${pageContext.request.contextPath}/dangky/"
										class="vpp-link vpp-text-dark hvr-underline-from-left">
										Đăng ký</a>


								</c:otherwise>
							</c:choose>

						</div>
					</div>
				</div>
				<div class="col-2 d-flex justify-content-around">
					<a href="${pageContext.request.contextPath}/giohang/"
						class="btn vpp-btn hvr-grow hvr-shutter-out-horizontal"> <i
						class="fas fa-shopping-cart"></i> Giỏ hàng: <span>0</span>

					</a>
				</div>



			</div>
			<div class="row vpp-bg-header "
				style="box-shadow: 0px 1px 5px rgba(0, 0, 0, 0.2);">
				<nav class="navbar navbar-expand-sm p-0">
					<button class="navbar-toggler vpp-bd-btn m-2 hvr-grow"
						type="button" data-bs-toggle="collapse"
						data-bs-target="#collapsibleNavbar">
						<i class="fas fa-bars vpp-text-pink"></i>
					</button>

					<div class="collapse navbar-collapse justify-content-center "
						id="collapsibleNavbar">

						<ul class="navbar-nav">
							<li class="nav-item"><a
								class="nav-link vpp-link fs-5 hvr-underline-from-center"
								href="${pageContext.request.contextPath}/">Trang chủ</a></li>
							<li class="nav-item vpp-dropdown "><a
								class="nav-link vpp-link fs-5 hvr-underline-from-center "
								href="${pageContext.request.contextPath}/sanpham/">Sản phẩm</a>
								<ul class="dropdown-menu">

									<li><a
										class="dropdown-item hvr-underline-from-left hvr-icon-float"
										href="${urlLoaiSP1}"> <i class="fas fa-file me-2 hvr-icon"></i>
											Giấy in
									</a></li>
									<li><a
										class="dropdown-item hvr-underline-from-left hvr-icon-float "
										href="${urlLoaiSP2}"> <i
											class="fas fa-pen-alt me-2 hvr-icon"></i> Bút viết
									</a></li>
									<li><a
										class="dropdown-item hvr-underline-from-left hvr-icon-float"
										href="${urlLoaiSP3}"> <i class="fas fa-book me-2 hvr-icon"></i>Sách,
											sách tham khảo
									</a></li>
									<li><a
										class="dropdown-item hvr-underline-from-left hvr-icon-float"
										href="${urlLoaiSP4}"> <i
											class="fas fa-calculator me-2 hvr-icon"></i> Máy tính
									</a></li>
									<li><a
										class="dropdown-item hvr-underline-from-left hvr-icon-float"
										href="${urlLoaiSP5}"> <i
											class="fas fa-paperclip me-2 hvr-icon"></i> Kẹp giấy các loại
									</a></li>
									<li><a
										class="dropdown-item hvr-underline-from-left hvr-icon-float"
										href="${urlLoaiSP6}"> <i
											class="fas fa-envelope me-2 hvr-icon"></i> Bao thư
									</a></li>
									<li><a
										class="dropdown-item hvr-underline-from-left hvr-icon-float"
										href="${urlLoaiSP7}"> <i class="fas fa-tape me-2 hvr-icon"></i>
											Keo, băng keo
									</a></li>
									<li><a
										class="dropdown-item hvr-underline-from-left hvr-icon-float"
										href="${urlLoaiSP8}"> <i
											class="fas fa-drafting-compass me-2 hvr-icon"></i> Đồ dùng
											học sinh
									</a></li>
									<li><a
										class="dropdown-item hvr-underline-from-left hvr-icon-float"
										href="${urlLoaiSP9}"> <i
											class="fas fa-book-open me-2 hvr-icon"></i>Vở - Sổ
									</a></li>
									<li><a
										class="dropdown-item hvr-underline-from-left hvr-icon-float"
										href="${urlLoaiSP10}"> <i
											class="fas fa-gift me-2 hvr-icon"></i> Quà lưu niệm
									</a></li>
									<li><a
										class="dropdown-item hvr-underline-from-left hvr-icon-float"
										href="${urlLoaiSP11}"> <i
											class="fas fa-plus-circle me-2 hvr-icon"></i> Các loại khác
									</a></li>


								</ul></li>
							<li class="nav-item"><a
								class="nav-link vpp-link fs-5 hvr-underline-from-center"
								href="${pageContext.request.contextPath}/gioithieu">Giới
									thiệu</a></li>
							<li class="nav-item"><a
								class="nav-link vpp-link fs-5 hvr-underline-from-center"
								href="${pageContext.request.contextPath}/lienhe">Liên hệ</a></li>
							<security:authorize access="hasAnyRole('EMPLOYEE','ADMIN')">
								<li class="nav-item"><a
									class="nav-link vpp-link fs-5 hvr-underline-from-center"
									href="${pageContext.request.contextPath}/admin/">Quản
										lý</a></li>

							</security:authorize>

						</ul>
					</div>
				</nav>
			</div>
		</div>

        <div id="content" class=" p3 ps-5 pe-5">
            <div class="row p-3 ps-5 vpp-bg-header">
                <div class="col-5">
                    <div class="carousel-item active ">
                        <a href="https://www.google.com/maps/place/12+Nguy%E1%BB%85n+V%C4%83n+B%E1%BA%A3o,+Ph%C6%B0%E1%BB%9Dng+4,+H%E1%BB%93+Ch%C3%AD+Minh,+Th%C3%A0nh+ph%E1%BB%91+H%E1%BB%93+Ch%C3%AD+Minh,+Vietnam/@10.8222053,106.6853107,17z/data=!4m13!1m7!3m6!1s0x317528e5496d03cf:0xa5b8e7395ec636b9!2zMTIgTmd1eeG7hW4gVsSDbiBC4bqjbywgUGjGsOG7nW5nIDQsIEjhu5MgQ2jDrSBNaW5oLCBUaMOgbmggcGjhu5EgSOG7kyBDaMOtIE1pbmgsIFZpZXRuYW0!3b1!8m2!3d10.8222053!4d106.6874994!3m4!1s0x317528e5496d03cf:0xa5b8e7395ec636b9!8m2!3d10.8222053!4d106.6874994https://www.google.com/maps/place/12+Nguy%E1%BB%85n+V%C4%83n+B%E1%BA%A3o,+Ph%C6%B0%E1%BB%9Dng+4,+H%E1%BB%93+Ch%C3%AD+Minh,+Th%C3%A0nh+ph%E1%BB%91+H%E1%BB%93+Ch%C3%AD+Minh,+Vietnam/@10.8222053,106.6853107,17z/data=!3m1!4b1!4m5!3m4!1s0x317528e5496d03cf:0xa5b8e7395ec636b9!8m2!3d10.8222053!4d106.6874994">
                        <img src="../resources/assets/img/map.png" alt="imgmap" class="d-block w-100" style="height: 60vh;">
                        </a>
                    </div>
                </div>
                <div class="col-7">
                    <div class="row">
                        <div class="col">
                             <img src="../resources/assets/img/Logo.png" alt="logo"  class="center">
                        </div>
                    </div>
                    <div class="row p-3 ps-5">
                    
                    </div>
                    <div class="row">
                        <div class="col">
                             <h5 style="text-align: center;">Chào mừng bạn đến với văn phòng phẩm VPP</h5>
                             <div class="d-flex justify-content-around mt-2 mb-2">
                                <span class="vpp-line-pink"></span>
                            </div>
                        </div>
                    </div>

                    <div class="row p-3 ps-5">
                    
                    </div>

                    <div class="row">
                    <div class="col-2"></div>
                    <div class="col-8">
                        <div class="col-2">
                         </div>
							<form:form
								action="${pageContext.request.contextPath}/dangky/dangKyKH"
								modelAttribute="vppUser" class="form-horizontal">
								<label for="id-dangly-email">Email:</label>
								<input name="email" type="text"
									class="form-control vpp-bd-radius-text mt-1 mb-4"
									placeholder="Nhập email" id="id-dangly-email" />
									<div class=" invalid-feedback text-danger">* Email không được trống và phải có
                                            dạng xxx@gmail.com</div>

								<label for="id-dangly-matkhau">Mật khẩu:</label>
								<input name="trangThai" type="password" 
									class="form-control vpp-bd-radius-text mt-1 mb-4"
									placeholder="Nhập mật khẩu" id="id-dangly-matkhau" />
									<div class=" invalid-feedback text-danger">* Mật khẩu không được trống </div>
									
								<label for="id-dangly-nhaplaimatkhau">Nhập lại mật khẩu:</label>
								<input type="password"
									class="form-control vpp-bd-radius-text mt-1 mb-4"
									placeholder="Nhập lại mật khẩu" id="id-dangly-nhaplaimatkhau" />
										<div class=" invalid-feedback text-danger">*Không được trống và phải trùng với mật khẩu</div>
									


								<label for="id-dangly-tenkhachhang">Tên khách hàng:</label>
								<input type="text" name="tenKH"
									class="form-control vpp-bd-radius-text mt-1 mb-4"
									placeholder="Nhập tên khách hàng" id="id-dangly-tenkhachhang" />
									<div class=" invalid-feedback text-danger">* Tên không
									được trống và chỉ nhập chữ</div>

								<label for="id-dangly-sdt">Số điện thoại:</label>
								<input type="text" name="sdt"
									class="form-control vpp-bd-radius-text mt-1 mb-4"
									placeholder="Nhập số điện thoại" id="id-dangly-sdt" />
									<div class=" invalid-feedback text-danger">* Số điện thoại không được để trống và chứa 10 số bắt đầu bằng số 0</div>

								<label >Giới tính:</label>
								<input type="radio" class="vpp-bd-radius mt-1"
									id="id-dangly-nam" name="gioiTinh" value="Nam" checked />
								<label for="id-dangly-nam" class="me-5">Nam</label>

								<input type="radio" class="vpp-bd-radius mt-1 ms-3"
									id="id-dangly-nu" name="gioiTinh"  value="" />
								<label for="id-dangly-nu">Nữ</label>

								<div>
									<label for="id-dangly-ngaysinh" class="mt-3 mb-1">Ngày sinh:</label> 
									<input type="date" name=ngaySinh
										class="form-control vpp-bd-radius-text mt-1 mb-4"
										placeholder="Nhập ngày sinh" id="id-dangly-ngaysinh" />
										<div class=" invalid-feedback text-danger">* Ngày sinh chưa chọn</div>
								</div>

								<label for="id-dangly-diachi">Địa chỉ:</label>
								<input type="text" name="diaChi"
									class="form-control vpp-bd-radius-text mt-1 mb-4"
									placeholder="Nhập địa chỉ" id="id-dangly-diachi" />

								<a href="${pageContext.request.contextPath}/login">
									<button id="id-btn-dangky" type="submit" 
										class="btn vpp-btn hvr-grow hvr-shutter-out-horizontal form-control">
										Đăng ký</button>
										<div class=" invalid-feedback text-danger">* Không được để trống</div>
								</a>

							</form:form>



						</div>
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
                                <img src="../resources/assets/img/Logo.png" alt="logo" width="100%">
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
                                    <img src="../resources/assets/img/thanhtoan1.png" alt="tienmat" width="80%">
                                    <p class="vpp-text-dark">Tiền mặt</p>
                                </div>
                                <div class="col-4">
                                    <img src="../resources/assets/img/thanhtoan2.png" alt="tienmat" width="80%">
                                    <p class="vpp-text-dark">Banking</p>
                                </div>
                                <div class="col-4">
                                    <img src="../resources/assets/img/thanhtoan3.png" alt="tienmat" width="80%">
                                    <p class="vpp-text-dark">Tại cửa hàng</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        

    </div>   
     <script src="../resources/js/dangKy.js"></script> 
  </body>
</html>