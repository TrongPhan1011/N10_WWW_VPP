<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html lang="vi">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tài khoản</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="../resources/css/lib/hover.css">
    <link rel="stylesheet" href="../resources/assets/fontIcon/fontawesome-free-5.15.4/css/all.css">
    <link rel="stylesheet" href="../resources/assets/fontIcon/fontawesome-free-5.15.4/css/solid.css">

    <link rel="stylesheet" href="../resources/css/general.css">
    <link rel="stylesheet" href="../resources/css/admin/admin.css">
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
            <div class=" row vpp-bg-light-dark ">
                <div class="col-12">
                    <a href="#" class="vpp-link">Tài khoản</a>
                </div>
                
            </div>
            <p></p>
        </div>
         <c:url var="updateLink" value="/chiTietTaiKhoan/updateKH">
          </c:url>
        <div class="container vpp-bd-btn ps-5 pe-5 mb-4">
         <form:form action="${updateLink}" modelAttribute="thongtinKH" method="POST" cssClass="needs-validation"  name="myform" >
            <div class="row text-center mt-4"><h3>Thông tin khách hàng</h3></div>
            <p></p>
           <input type="hidden" name="id" value="${update.id}" >
                <div class="row m-0">
                  <div class="col-6 pe-5">
                    <div class="row">
                        <div class="col-4">
                            <label for="name" class="form-label ">Tên đăng nhập (email): </label>
                        </div>
                        <div class="col-8">
                            <input type="text" id="id-taikhoan-emailKH" class=" form-control vpp-bd-btn" placeholder="Tên đăng nhập" name="email" value="${update.email}" readonly>
                            <div class=" invalid-feedback text-danger">* Email không được trống và phải có
                                            dạng xxx@gmail.com</div>
                            
                        </div>
                       
                        
                    </div>
                  </div>
                  <div class="col-6 ps-5">
                    <div class="row">
                        <div class="col-4">
                            <label for="password" class="form-label ">Mật khẩu: </label>
                        </div>
                        <div class="col-8">
                            <input type="password" id="id-taikhoan-matkhauKH" class=" form-control vpp-bd-btn" placeholder="Mật khẩu" name="trangThai">
                            <a href="#">Thay đổi mật khẩu</a>
                            <div class=" invalid-feedback text-danger">* Mật khẩu không được trống </div>
                        </div>
                    </div>
                  </div>
                  
                </div>
                <p></p>
                <div class="row m-0">
                    <div class="col-6 pe-5">
                      <div class="row">
                          <div class="col-4">
                              <label for="hoten" class="form-label">Họ tên: </label>
                          </div>
                          <div class="col-8">
                              <input type="text" id="id-taikhoan-hotenKH" class=" form-control vpp-bd-btn" placeholder="Họ tên khách hàng" name="tenKH" value="${update.tenKH}">
                              <div class=" invalid-feedback text-danger">* Tên không
									được trống và chỉ nhập chữ</div>
                          </div>
                         
                          
                      </div>
                    </div>
                    <div class="col-6 ps-5">
                      <div class="row">
                          <div class="col-4">
                              <label for="gioitinh" class="form-label ">Giới tính: </label>
                          </div>
                          <div class="col-8">
                             <select name="gioiTinh" id="" class="form-select vpp-bd-btn" value="${update.gioiTinh}">
                                <option value="nam">Nam</option>
                                <option value="nu">Nữ</option>
                             </select>
                          </div>
                      </div>
                    </div>
                    
                  </div>
                  <p></p>
                  <div class="row m-0">
                    <div class="col-6 pe-5">
                      <div class="row">
                          <div class="col-4 mt-4">
                              <label for="sdt" class="form-label ">Số  điện thoại: </label>
                          </div>
                          <div class="col-8 mt-4">
                              <input type="text" id="id-taikhoan-sdtKH" class=" form-control vpp-bd-btn" placeholder="Số điện thoại" name="sdt" value="${update.sdt}">
                              <div class=" invalid-feedback text-danger">* Số điện thoại không được để trống và chứa 10 số bắt đầu bằng số 0</div>
                          </div>
                         
                          
                      </div>
                    </div>
                    <div class="col-6 ps-5">
                      <div class="row">
                            <div class="col-4 mt-4">
                                <label for="diachi" class="form-label ">Địa chỉ: </label>
                            </div>
                            <div class="col-8 mt-4">
                                <input type="text" id="id-taikhoan-diachiKH" class=" form-control vpp-bd-btn" placeholder="Địa chỉ" name="diaChi" value="${update.diaChi}">
                                <div class=" invalid-feedback text-danger">* Không được để trống</div>
                            </div>
                            
                        </div>
                    </div>
                    
                  </div>
                  <p></p>
                  <div class="row m-0">
                    <div class="col-6 pe-5">
                      <div class="row">
                          <div class="col-4 mt-4">
                              <label for="ngaysinh" class="form-label ">Ngày sinh: </label>
                          </div>
                          <div class="col-8 mt-4">
                              <input type="date" id="id-taikhoan-ngaysinhKH" class=" form-control vpp-bd-btn" placeholder="Ngày sinh" name="ngaySinh" value="${update.ngaySinh}">
                              <div class=" invalid-feedback text-danger">* Ngày sinh chưa chọn</div>
                          </div>
                          
                      </div>
                    </div>
                    <div class="col-6 ps-5">
                        
                      </div>
                    
                    
                  </div>
                  <p></p>
                  
                  <div class="row m-0 mt-4">
                      <div class="col-6 text-end">
                      <a href="${pageContext.request.contextPath}/">
                        <button type="button" class="btn vpp-btn fs-5  hvr-shutter-out-horizontal">Hủy bỏ</button>
                        </a>
                      </div>
                      <div class="col-6 text-start vpp-bd-radius">
                      <a href="${pageContext.request.contextPath}/" class="vpp-text-pink" >
                        <button id="id-btnluu" type="submit" class="btn fs-5  btn-info">Lưu thông tin</button>
                        </a>
                      </div>
                   
                  </div>
                  <p></p>
              </form:form>

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
                                <img src="../resources/assets/img/thanhtoan1.png" alt="tienmat" width="90%">
                                <p class="vpp-text-dark">Tiền mặt</p>
                            </div>
                            <div class="col-4">
                                <img src="../resources/assets/img/thanhtoan2.png" alt="tienmat" width="90%">
                                <p class="vpp-text-dark">Banking</p>
                            </div>
                            <div class="col-4">
                                <img src="../resources/assets/img/thanhtoan3.png" alt="tienmat" width="90%">
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
    <script src="../resources/js/index.js"></script>
    <script src="https://unpkg.com/scrollreveal"></script>
    <script src="../resources/js/scrollAnimation.js"></script>
     <script src="../resources/js/taiKhoanKhachHang.js"></script> 
</body>

</html>