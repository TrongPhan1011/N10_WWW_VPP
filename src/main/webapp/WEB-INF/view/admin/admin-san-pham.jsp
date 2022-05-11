<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quan ly san pham</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="../../resources/css/lib/hover.css">
<link rel="stylesheet"
	href="../../resources/assets/fontIcon/fontawesome-free-5.15.4/css/all.css">
<link rel="stylesheet"
	href="../../resources/assets/fontIcon/fontawesome-free-5.15.4/css/solid.css">

<link rel="stylesheet" href="../../resources/css/general.css">
<link rel="stylesheet" href="../../resources/css/admin/admin.css">
<link rel="stylesheet" href="../../resources/css/index.css">
<link rel="stylesheet"
	href="../../resources/css/admin/admin-san-pham.css">

</head>

<body>
	<div class="container-fluid ">
		<div id="header" class=" row p-2 ps-5 pe-5 vpp-bg-header">
			<div class="col-4">

				<a href="./admin.html"> <img
					src="../../resources/assets/img/Logo.png" alt="logo" width="100">

				</a>

			</div>
			<div class="col-8 d-flex justify-content-end">


				<div class="row">
					<div
						class="col-12 pe-0 ms-1 d-flex align-items-center  vpp-text-pink">
						<i class="fas fa-user-circle fs-1 vpp-bd-circle "></i> <a href="#"
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
							href="./index.html">Tổng quan</a></li>
						<li class="nav-item  vpp-dropdown "><a
							class="nav-link text-white vpp-link fs-5 hvr-underline-from-left "
							href="#">Đơn hàng</a></li>
						<li class="nav-item  vpp-dropdown "><a
							class="nav-link text-white vpp-link fs-5 hvr-underline-from-left "
							href="./san-pham.html">Sản phẩm</a></li>
						<li class="nav-item  vpp-dropdown "><a
							class="nav-link text-white vpp-link fs-5 hvr-underline-from-left "
							href="#">Nhân viên</a></li>
						<li class="nav-item  vpp-dropdown "><a
							class="nav-link text-white vpp-link fs-5 hvr-underline-from-left "
							href="#">Khách hàng</a></li>
						<li class="nav-item"><a
							class="nav-link text-white vpp-link fs-5 hvr-underline-from-left"
							href="#">Thông báo</a></li>
						<li class="nav-item"><a
							class="nav-link text-white vpp-link fs-5 hvr-underline-from-left"
							href="">Website</a></li>

					</ul>
				</div>

				<div class="col-10 p-0">
					<div class=" ps-2 vpp-bg-light-dark ">
						<a href="${pageContext.request.contextPath}/admin/"
							class="vpp-link">Trang chủ/</a> <a
							href="${pageContext.request.contextPath}/admin/sanpham/"
							class="vpp-link">Sản phẩm</a>
					</div>

					<div class="container-fluid p-2">
						<div class="row d-flex justify-content-around">
							<div class="col-6">
								<form:form method="GET" action="${pageContext.request.contextPath}/admin/sanpham/timkiem">
									
													
									<div class="input-group w-100 vpp-bd-btn ">
										<input name="timkiem" type="text" class="form-control vpp-bd-radius "
											placeholder="Nhập sản phẩm cần tìm">
										<button type="submit"
											class="input-group-text vpp-text-dark vpp-bg-btn vpp-bd-radius vpp-btn-hover hvr-bounce-to-right ">
											<i class="fas fa-search"></i>Tìm
										</button>
									</div>
								</form:form>
							</div>
						</div>

						<div class="row m-0 mt-4">							

							<div class="col-3">
								<select name="selectLoaiSP" id="select-Loai-SP"
									class="form-select vpp-bd-1 vpp-bd-radius">
									<option value="0">Loại sản phẩm</option>
									<c:forEach var="loaiSP" items="${dsLoaiSP}">
										<option value="${loaiSP.id}">${loaiSP.tenLoai}</option>

									</c:forEach>

								</select>
							</div>
						</div>

						<div class="row mt-2 p-2  m-0 vpp-bd-1 vpp-bd-radius">
							<div class="col-12 p-0">
								<div class="row m-0 d-flex justify-content-between">
									<h4 class="col-4 p-0">Danh sách sản phẩm</h4>
									<button type="button"
										class=" col-2 btn hvr-shutter-out-horizontal vpp-btn don-da-duyet"
										data-bs-toggle="modal" data-bs-target="#myModal">Thêm
										sản phẩm</button>
									<div class="modal fade " id="myModal">
										<div class="modal-dialog modal-lg ">
											<div class="modal-content vpp-bd-1">

												<!-- Modal Header -->
												<div class="modal-header">
													<div class="w-100 d-flex justify-content-center ">
														<h4>Thông tin sản phẩm</h4>
													</div>
													<button type="button" class="btn-close"
														data-bs-dismiss="modal"></button>
												</div>


												<div class="modal-body">
													<form:form id="formSP"
														action="${pageContext.request.contextPath}/admin/sanpham/saveSanPham?${_csrf.parameterName}=${_csrf.token}"
														modelAttribute="FormSanPham" method="POST"
														enctype="multipart/form-data">
														<input type="hidden" name="id" value='-1' />
														<div class="row m-0 ">
															<div class="col-6 pr-3 ps-3 pe-5 vpp-bd-right">
																<div>
																	<label for="id-admin-TenSP">Tên sản phẩm:</label> <input
																		type="text" id="id-admin-TenSP " name="tenSP"
																		class="form-control  vpp-bd-btn mt-1 mb-3"
																		placeholder="Nhập tên sản phẩm">
																	<div class=" invalid-feedback text-danger">* Tên
																		sản phẩm không được trống</div>

																</div>

																<div>
																	<label for="id-admin-loaiSP">Loại sản phẩm</label> <select
																		id="id-admin-loaiSP " name="loaiSP.id"
																		class="form-control form-select vpp-bd-btn mt-1 mb-3">
																		<c:forEach var="loaiSP" items="${dsLoaiSP}">
																			<option value="${loaiSP.id}">
																				${loaiSP.tenLoai}</option>

																		</c:forEach>

																	</select>
																</div>

																<div>

																	<label for="id-admin-NSX">Nhà sản xuất</label> <select
																		name="nsx.id" id="id-admin-NSX"
																		class="form-control form-select vpp-bd-btn mt-1 mb-3">
																		<c:forEach var="nsx" items="${dsNSX}">
																			<option value="${nsx.id}">${nsx.tenNSX}</option>

																		</c:forEach>

																	</select>
																</div>

																<div>

																	<label for="id-admin-giaGoc">Giá gốc:</label> 
																	<input
																		name="giaGoc" type="number" id="id-admin-giaGoc"
																		
																		class="form-control vpp-bd-btn mt-1 mb-3" min="1000"
																		value="1000">
																	<div class=" invalid-feedback text-danger">* Giá
																		gốc không được trống và phải lớn hơn 0</div>

																</div>

																<div>

																	<label for="id-admin-giaBan">Giá bán:</label> <input
																		type="number" id="id-admin-giaBan"
																		name="giaBan"
																		class="form-control vpp-bd-btn mt-1 mb-3" min="1000"
																		value="1000">
																	<div class=" invalid-feedback text-danger">* Giá
																		bán không được trống và phải lớn hơn 0</div>

																</div>

																<div>

																	<label for="id-admin-soluong">Số lượng:</label> <input
																		type="number" name="soLuongTon" id="id-admin-solong "
																		class="form-control  vpp-bd-btn mt-1 mb-3" min="1"
																		value="1">
																	<div class=" invalid-feedback text-danger">* Số
																		lượng không được trống và phải lớn hơn 0</div>

																</div>

																<div>

																	<label for="id-admin-mota">Mô tả:</label>
																	<textarea class="form-control vpp-bd-btn"
																		id="id-admin-mota " name="moTaSP"
																		placeholder="Mô tả sản phẩm"></textarea>
																	<div class=" invalid-feedback text-danger">* Mô
																		tả sản phẩm không được trống</div>
																</div>




															</div>
															<div class="col-6 pe-2 ps-5">

																<div>

																	<label for="id-admin-ChatLieu">Chất liệu:</label> <input
																		type="text" id="id-admin-ChatLieu " name="chatLieu"
																		class="form-control  vpp-bd-btn mt-1 mb-3"
																		placeholder="Chất liệu">
																	<div class=" invalid-feedback text-danger">* Chất
																		liệu sản phẩm không được trống</div>

																</div>

																<div>
																	<label for="id-admin-file">Chọn ảnh sản phẩm:</label> <input
																		name="fileImage" type="file" id="id-admin-file"
																		class="form-control  vpp-bd-btn" accept="image/png">
																	<div class=" invalid-feedback text-danger">* Chưa
																		chọn ảnh</div>


																</div>


																<div id="adminSPIMG"
																	class="d-none justify-content-between mt-3 p-2 pb-4 vpp-bd-bottom">
																	<img src="" alt="img1" class="vpp-bd-1 " width="23%"
																		height="50vh">
																</div>


																<div class="row m-0 mt-3 vpp-bd-bottom">
																	<div class="col-12 p-0">

																		<p>Trạng thái:</p>
																		<select name="trangThai" id=""
																			class="form-select vpp-bd-btn">
																			<option value="0">Còn hàng</option>
																			<option value="1">Hết hàng hàng</option>
																		</select>
																		<h5 class="mt-3">
																			Đã bán: <span id="spDaBan">0</span>
																		</h5>
																	</div>
																</div>

																<div class="row m-0 mt-4 d-flex justify-content-center">
																	<div class="col-12 p-0 ">
																		<button id="adminBtnLuu" type="submit"
																			class="btn vpp-btn hvr-shutter-out-horizontal vpp-btn don-da-duyet form-control">Lưu
																			thông tin</button>
																	</div>
																</div>
																<div class="row m-0 mt-4 d-flex justify-content-center">
																	<div class="col-12 p-0 ">
																		<button type="button"
																			class="btn vpp-btn hvr-shutter-out-horizontal vpp-btn  form-control"
																			data-bs-dismiss="modal">Huỷ</button>
																	</div>
																</div>



															</div>
														</div>
														<input type="hidden" name="${_csrf.parameterName}"
															value="${_csrf.token}" />
													</form:form>
												</div>



											</div>
										</div>
									</div>
								</div>

								<div class="row m-0 mt-4">
									<div class="col-12 p-0">

										<table class="table table-striped text-center">
											<thead>
												<tr>
													<th>ID</th>
													<th>Tên sản phẩm</th>
													<th>Loại</th>
													<th>Đã bán</th>
													<th>Số lượng tồn</th>
													<th style="min-width: 200px">Chức năng</th>


												</tr>
											</thead>
											<tbody>

												<c:forEach var="sp" items="${dsTatCaSP}">




													<tr>
														<td>${sp.id}</td>
														<td align="left">${sp.tenSP}</td>
														<td>${sp.loaiSP.tenLoai}</td>
														<td>${sp.soLuongBan}</td>
														<td>${sp.soLuongTon}</td>
														<td>
															<div class="row m-0 d-flex justify-content-center">
																<div class="col-2 p-0 ms-1 me-1 ">
																	<c:url var="deleteUrl" value="/admin/sanpham/delete">
																		<c:param name="sanPhamId" value="${ sp.id}"></c:param>
																	</c:url>
																	<button type="button"
																		onclick="showInfoSP(${sp.id},'${sp.tenSP}',${sp.soLuongTon},${sp.soLuongBan},'${sp.moTaSP}',${sp.giaBan},
																		'${sp.giaGoc}','${sp.chatLieu}','${sp.trangThai}','${sp.urlAnhSP}',${sp.loaiSP.id},${sp.nsx.id})"
																		data-bs-toggle="modal" data-bs-target="#myModal"
																		class="btn bg-white vpp-bd-1 form-control hvr-grow"
																		title="Chi tiết sản phẩm">
																		<i class="fas fa-info fs-5 vpp-text-pink "></i>
																	</button>

																</div>
																<div class="col-2 p-0 me-1">
																	<button type="button"
																		class="btnUpdateSP btn bg-white vpp-bd-1 form-control hvr-grow vpp-bd-color-blue"
																		title="Chi tiết sản phẩm" data-bs-toggle="modal"
																		data-bs-target="#myModal"
																		onclick="clickUpdate(${sp.id},'${sp.tenSP}',${sp.soLuongTon},${sp.soLuongBan},'${sp.moTaSP}',${sp.giaBan},
																		'${sp.giaGoc}','${sp.chatLieu}','${sp.trangThai}','${sp.urlAnhSP}',${sp.loaiSP.id},${sp.nsx.id})">
																		<i class="fas fa-pencil-alt fs-5 vpp-text-blue"></i>
																	</button>

																</div>

																<security:authorize access="hasAnyRole('ADMIN')">
																	<div class="col-2 p-0 me-1 ">
																		<a href="${deleteUrl}"
																			class="btn bg-white vpp-bd-1 form-control hvr-grow vpp-bd-color-red"
																			title="Chi tiết sản phẩm"> <i
																			class="fas fa-times fs-5  vpp-text-red"></i>
																		</a>

																	</div>

																</security:authorize>

															</div>
														</td>

													</tr>
												</c:forEach>






											</tbody>

										</table>



									</div>

								</div>





							</div>
						</div>


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

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<script src="../../resources/js/adminSanPham.js"></script>

</body>
</html>