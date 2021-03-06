<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

			<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
				<!DOCTYPE html>
				<html>

				<head>
					<meta charset="UTF-8">
					<meta http-equiv="X-UA-Compatible" content="IE=edge">
					<meta name="viewport" content="width=device-width, initial-scale=1.0">
					<title>Chi tiết sản phẩm</title>
					<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
						rel="stylesheet">
					<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>

					<link rel="stylesheet" href="../resources/assets/fontIcon/fontawesome-free-5.15.4/css/all.css">
					<link rel="stylesheet" href="../resources/assets/fontIcon/fontawesome-free-5.15.4/css/solid.css">
					<link rel="stylesheet" href="../resources/css/lib/hover.css">
					<link rel="stylesheet" href="../resources/css/general.css">
					<link rel="stylesheet" href="../resources/css/index.css">
					<link rel="stylesheet" href="../resources/css/chi-tiet-sp.css">
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
					<div class="container-fluid vpp-bg-pink">
						<div id="header">
							<div class="row p-3  vpp-bg-header  d-flex align-items-center"
								style="border-bottom: 1px solid rgb(253, 185, 188);">

								<a href="${pageContext.request.contextPath}/" class="col-2 text-center"> <img
										src="../resources/assets/img/Logo.png" alt="logo" width="100">
								</a>

								<form action="${pageContext.request.contextPath}/timkiem/"
									class="col-6 d-flex justify-content-center h-75">
									<div class="input-group w-75 vpp-bd-btn ">
										<input type="text" name="tenSP" class="form-control vpp-bd-radius "
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
							<div class="row vpp-bg-header " style="box-shadow: 0px 1px 5px rgba(0, 0, 0, 0.2);">
								<nav class="navbar navbar-expand-sm p-0">
									<button class="navbar-toggler vpp-bd-btn m-2 hvr-grow" type="button"
										data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
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

													<li><a class="dropdown-item hvr-underline-from-left hvr-icon-float"
															href="${urlLoaiSP1}"> <i
																class="fas fa-file me-2 hvr-icon"></i>
															Giấy in
														</a></li>
													<li><a class="dropdown-item hvr-underline-from-left hvr-icon-float "
															href="${urlLoaiSP2}"> <i
																class="fas fa-pen-alt me-2 hvr-icon"></i> Bút viết
														</a></li>
													<li><a class="dropdown-item hvr-underline-from-left hvr-icon-float"
															href="${urlLoaiSP3}"> <i
																class="fas fa-book me-2 hvr-icon"></i>Sách,
															sách tham khảo
														</a></li>
													<li><a class="dropdown-item hvr-underline-from-left hvr-icon-float"
															href="${urlLoaiSP4}"> <i
																class="fas fa-calculator me-2 hvr-icon"></i> Máy tính
														</a></li>
													<li><a class="dropdown-item hvr-underline-from-left hvr-icon-float"
															href="${urlLoaiSP5}"> <i
																class="fas fa-paperclip me-2 hvr-icon"></i> Kẹp giấy các
															loại
														</a></li>
													<li><a class="dropdown-item hvr-underline-from-left hvr-icon-float"
															href="${urlLoaiSP6}"> <i
																class="fas fa-envelope me-2 hvr-icon"></i> Bao thư
														</a></li>
													<li><a class="dropdown-item hvr-underline-from-left hvr-icon-float"
															href="${urlLoaiSP7}"> <i
																class="fas fa-tape me-2 hvr-icon"></i>
															Keo, băng keo
														</a></li>
													<li><a class="dropdown-item hvr-underline-from-left hvr-icon-float"
															href="${urlLoaiSP8}"> <i
																class="fas fa-drafting-compass me-2 hvr-icon"></i> Đồ
															dùng
															học sinh
														</a></li>
													<li><a class="dropdown-item hvr-underline-from-left hvr-icon-float"
															href="${urlLoaiSP9}"> <i
																class="fas fa-book-open me-2 hvr-icon"></i>Vở - Sổ
														</a></li>
													<li><a class="dropdown-item hvr-underline-from-left hvr-icon-float"
															href="${urlLoaiSP10}"> <i
																class="fas fa-gift me-2 hvr-icon"></i> Quà lưu niệm
														</a></li>
													<li><a class="dropdown-item hvr-underline-from-left hvr-icon-float"
															href="${urlLoaiSP11}"> <i
																class="fas fa-plus-circle me-2 hvr-icon"></i> Các loại
															khác
														</a></li>


												</ul>
											</li>
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
														href="${pageContext.request.contextPath}/admin/">Quản lý</a>
												</li>

											</security:authorize>

										</ul>
									</div>
								</nav>
							</div>
						</div>

						<div class="row">
							<ul class="breadcrumb p-1 ps-5 pe-5">
								<li><a href="..//html/index.html" class="vpp-text-decoration vpp-link">Trang chủ/</a>
								</li>
								<li><a href="#" class="vpp-text-decoration vpp-link">Sản
										phẩm/</a></li>
								<li>Chi tiết sản phẩm</li>
							</ul>
						</div>
						<div class="container  pt-3">
							<div id="content" class="vpp-bd-btn p-3 ps-5 pe-5">
								<div class="row">
									<div class="col-6 p-5 pt-0">
										<div id="chiTietSP" class="carousel slide bd-img" data-bs-ride="carousel">


											<div class="carousel-inner ">
												<div class="carousel-item active ">
													<img src="../resources/assets/img/sp/${tempKhachHang.urlAnhSP}" alt="img"
														class="d-block" style="width: 100%; height: 350px">
												</div>
												<div class="carousel-item ">
													<img src="../resources/assets/img/sp/${tempKhachHang.urlAnhSP}" alt="img"
														class="d-block" style="width: 100%; height: 350px">
												</div>
												<div class="carousel-item">
													<img src="../resources/assets/img/sp/${tempKhachHang.urlAnhSP}" alt="img"
														class="d-block" style="width: 100%; height: 350px">
												</div>
												<div class="carousel-item">
													<img src="../resources/assets/img/sp/${tempKhachHang.urlAnhSP}" alt="img"
														class="d-block" style="width: 100%; height: 350px">
												</div>
											</div>



											<button class="carousel-control-prev" type="button"
												data-bs-target="#chiTietSP" data-bs-slide="prev">
												<i class="fas fa-chevron-circle-left vpp-text-pink fs-1"></i>
											</button>
											<button class="carousel-control-next" type="button"
												data-bs-target="#chiTietSP" data-bs-slide="next">
												<i class="fas fa-chevron-circle-right vpp-text-pink fs-1"></i>
											</button>
										</div>
										<div class="row d-flex justify-content-between mt-2 ">

											<img src="../resources/assets/img/sp/${tempKhachHang.urlAnhSP}" alt="img" style="width: 24%"
												data-bs-target="#chiTietSP" data-bs-slide-to="0" class="active bd-img ">
											<img src="../resources/assets/img/sp/${tempKhachHang.urlAnhSP}" alt="img" style="width: 24%"
												data-bs-target="#chiTietSP" data-bs-slide-to="1" class="bd-img"> <img
												src="../resources/assets/img/sp/${tempKhachHang.urlAnhSP}" alt="img" style="width: 24%"
												data-bs-target="#chiTietSP" data-bs-slide-to="2" class="bd-img "> <img
												src="../resources/assets/img/sp/${tempKhachHang.urlAnhSP}" alt="img" style="width: 24%"
												data-bs-target="#chiTietSP" data-bs-slide-to="3" class="bd-img  ">

										</div>

									</div>
									<div class="col-6">

										<h4>${tempKhachHang.tenSP}</h4>
										<h3 class="text-danger fw-bold mt-3">${tempKhachHang.giaBan }
											đ</h3>
										<p class="text-justify LT-heigh-120"></p>
										<div class="col-3 ">
											<h5>Số lượng:</h5>
											<form:form action="${pageContext.request.contextPath}/giohang/addCart"
												modelAttribute="ChiTiet" method="POST">
												<div class="input-group ">
													<button type="button" id="btn-minus"
														class=" btn btn-danger me-2 vpp-btn-sp ">
														<i class="fas fa-minus"></i>
													</button>

					
													<input type="text" id="so-luong-mua" name="soLuong"
														class="form-control text-center p-0" value="1">
													<button type="button" id="btn-plus"
														class="btn btn-success ms-2 vpp-btn-sp ">
														<i class="fas fa-plus"></i>
													</button>
												</div>



										</div>
										<button type="button" class="btn col-4   mt-4 border-warning btn-danger">Mua
											ngay</button>

										<input type="hidden" name=idSP value="${tempKhachHang.id }">

										<input type="submit" class="btn col-4  btn-success mt-4" value="Thêm vào giỏ">

										</form:form>
									</div>
								</div>
								<div class="row">
									<div class=" mt-4 text-center">
										<h4 class="text-center vpp-text-dark">Mô tả</h4>
										<div class="d-flex justify-content-around mt-2 mb-2">
											<span class="vpp-line-pink"></span>
										</div>
										<div id="moTa" class=" mt-4 mb-5 text-center">
											${tempKhachHang.moTaSP }</div>

									</div>
								</div>
								<div class="row">
									<div class=" mt-4 text-center">
										<h4 class="text-center vpp-text-dark">Chi tiết sản phẩm</h4>
										<div class="d-flex justify-content-around mt-2 mb-2">
											<span class="vpp-line-pink"></span>
										</div>
										<div id="chiTietSanPham" class="row mt-4 mb-5">
											<table class="table table-striped table-hover ">
												<tbody id="tblBody">
													<tr>
														<td>Tên sản phẩm:</td>
														<td>${tempKhachHang.tenSP}</td>
													</tr>
													<tr>
														<td>Ngày sản xuất:</td>
														<td>${tempKhachHang.ngaySX }</td>
													</tr>
													<tr>
														<td>Trạng thái:</td>
														<td>${tempKhachHang.trangThai }</td>
													</tr>
													<tr>
														<td>Chất liệu:</td>
														<td>${tempKhachHang.chatLieu }</td>
													</tr>
													<tr>
														<td>Nhà sản xuất:</td>
														<td>${tempKhachHang.nsx.tenNSX }</td>
													</tr>

												</tbody>
											</table>

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
											<a href="#"> <img src="../resources/assets/img/Logo.png" alt="logo"
													width="100%">
											</a>
										</div>
									</div>

									<div class=" vpp-text-dark">
										<p>Cung cấp các sản phẩm văn phòng phẩm chất lượng từ các
											thương hiệu hàng đầu.</p>
										<p class="fw-bold">
											<i class="fas fa-location-arrow me-2"></i>Địa chỉ: 12 Nguyễn Văn
											Bảo, P.4, Gò Vấp, TP. HCM
										</p>
										<p class="fw-bold">
											<i class="fas fa-phone me-2"></i>Điện thoại: 099999999
										</p>
										<p class="fw-bold">
											<i class="fas fa-mail-bulk me-2"></i> Email: abcd@gmail.com
										</p>
									</div>
								</div>

								<div class="col-2  vpp-text-dark">
									<div class="mt-4">
										<div class="row fw-bold">
											<div class="col-12">Chính sách</div>
										</div>

										<div class=" vpp-text-dark mt-3">

											<a href="${pageContext.request.contextPath}/gioithieu"
												class=" d-block vpp-link mb-2 vpp-text-decoration">Giới
												thiệu</a> <a href="#"
												class="d-block mb-2 vpp-link vpp-text-decoration">Chính sách
												đổi trả</a> <a href="#"
												class="d-block mb-2 vpp-link vpp-text-decoration">Điều khoản
												dịch vụ</a> <a href="#"
												class="d-block mb-2 vpp-link vpp-text-decoration">Chính sách
												bảo mật</a> <a href="${pageContext.request.contextPath}/lienhe"
												class="d-block mb-2 vpp-link vpp-text-decoration">Liên hệ</a>


										</div>
									</div>

								</div>

								<div class="col-2 vpp-text-dark">
									<div class="mt-4">
										<div class="row fw-bold">
											<div class="col-12">Hỗ trợ khách hàng</div>
										</div>

										<div class=" vpp-text-dark mt-3">
											<a href="${pageContext.request.contextPath}/sanpham"
												class=" d-block vpp-link mb-2 vpp-text-decoration">Tất cả
												sản phẩm</a> <a href="#"
												class="d-block mb-2 vpp-link vpp-text-decoration">Khuyến mãi</a>
										</div>
									</div>

								</div>

								<div class="col-3 vpp-text-dark">
									<div class="mt-4">
										<div class="row fw-bold">
											<div class="col-12">Phương thức thanh toán</div>
										</div>

										<div class="  vpp-text-dark mt-3">
											<div class="row text-center " style="font-size: 12px;">
												<div class="col-4">
													<img src="../resources/assets/img/thanhtoan1.png" alt="tienmat"
														width="80%">
													<p class="vpp-text-dark">Tiền mặt</p>
												</div>
												<div class="col-4">
													<img src="../resources/assets/img/thanhtoan2.png" alt="tienmat"
														width="80%">
													<p class="vpp-text-dark">Banking</p>
												</div>
												<div class="col-4">
													<img src="../resources/assets/img/thanhtoan3.png" alt="tienmat"
														width="80%">
													<p class="vpp-text-dark">Tại cửa hàng</p>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<script src="../resources/js/chi-tiet-sp.js"></script>
					<script src="../js/index.js"></script>
				</body>

				</html>