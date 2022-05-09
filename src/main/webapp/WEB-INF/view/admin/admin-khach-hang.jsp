<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Quản lý</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="../resources/css/lib/hover.css">
<link rel="stylesheet"
	href="../resources/assets/fontIcon/fontawesome-free-5.15.4/css/all.css">
<link rel="stylesheet"
	href="../resources/assets/fontIcon/fontawesome-free-5.15.4/css/solid.css">

<link rel="stylesheet" href="../resources/css/general.css">
<link rel="stylesheet" href="../resources/css/admin/admin.css">
<link rel="stylesheet" href="../resources/css/index.css">
<link rel="stylesheet" href="../resources/css/admin/admin-san-pham.css">

</head>

<body>
	<div class="container-fluid ">
		<div id="header" class=" row p-2 ps-5 pe-5 vpp-bg-header">
			<div class="col-4">

				<a href="./admin.html"> <img
					src="../resources/assets/img/Logo.png" alt="logo" width="100">

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
						<a href="#" class="vpp-link">Khách hàng</a>
					</div>

					<div class="container-fluid p-2">
						<div class="row d-flex justify-content-around">
							<div class="col-6">
								<div class="input-group w-100 vpp-bd-btn ">
									<input type="text" class="form-control vpp-bd-radius "
										placeholder="Nhập tên khách hàng cần tìm">
									<button type="button"
										class="input-group-text vpp-text-dark vpp-bg-btn vpp-bd-radius vpp-btn-hover hvr-bounce-to-right ">
										<i class="fas fa-search"></i>Tìm
									</button>
								</div>
							</div>
						</div>

						<div class="row m-0 mt-4">
							<div class="col-3 p-0">
								<select name="selectTrangThai" id="select-Trang-Thai"
									class="form-select vpp-bd-1 vpp-bd-radius">
									<option value="0">Đã mua hàng</option>
									<option value="1">Chưa mua hàng</option>


								</select>
							</div>


						</div>

						<div class="row mt-2 p-2  m-0 vpp-bd-1 vpp-bd-radius">
							<div class="col-12 p-0">
								<div class="row m-0 d-flex justify-content-between">
									<h4 class="col-4 p-0">Danh sách khách hàng</h4>
									
									<div class="modal fade " id="myModal">
										<div class="modal-dialog modal-lg ">
											<div class="modal-content vpp-bd-1">

												<!-- Modal Header -->
												<div class="modal-header">
													<div class="w-100 d-flex justify-content-center ">
														<h4>Thông tin khách hàng</h4>
													</div>
													<button type="button" class="btn-close"
														data-bs-dismiss="modal"></button>
												</div>

												<div class="modal-body">
													<form:form action="capNhatKhachHang"
														modelAttribute="khachHang" method="POST"
														class="">
														<form:hidden path="id" />
														<div class="row m-0 ">

															<div class="col-6 pr-3 ps-3 pe-5 vpp-bd-right">
																<form:label for="id-admin-TenKH" path="tenKH">Tên khách hàng: </form:label>
																<form:input type="text" id="id-admin-TenKH" path="tenKH"
																	class="form-control  vpp-bd-btn mt-1 mb-3 is-invalid"
																	placeholder="Nhập tên khách hàng"
																	aria-describedby="inputGroupPrepend3 validationServerUsernameFeedback" />


																<form:label for="id-admin-emailKH" path="email">Email</form:label>
																<form:input type="text" id="id-admin-emailKH"
																	path="email" class="form-control  vpp-bd-btn mt-1 mb-3"
																	placeholder="Nhập email khách hàng" />

																<form:label for="id-admin-gioiTinhKH" path="gioiTinh">Giới tính</form:label>
																<form:select name="admin-NSX" id="id-admin-gioiTinhKH"
																	path="gioiTinh"
																	class="form-control form-select vpp-bd-btn mt-1 mb-3">
																	<form:option value="0">Nam</form:option>
																	<form:option value="1">Nữ</form:option>


																</form:select>

																<form:label for="id-admin-ngaySinhKH" path="ngaySinh">Ngày sinh</form:label>
																<form:input type="date" id="id-admin-ngaySinhKH"
																	path="ngaySinh"
																	class="form-control vpp-bd-btn mt-1 mb-3" min="1000"
																	value="1000" />

																<form:label for="id-admin-ngayThamGia"
																	path="ngayThamGia">Ngày tham gia</form:label>
																<form:input type="date" id="id-admin-ngayThamGia"
																	path="ngayThamGia"
																	class="form-control vpp-bd-btn mt-1 mb-3" min="1000"
																	value="1000" />

															</div>
															<div class="col-6 pe-2 ps-5">
																<label for="id-admin-SĐTKH">SĐT</label>
																<form:input type="text" id="id-admin-SĐTKH" path="sdt"
																	class="form-control  vpp-bd-btn mt-1 mb-3"
																	placeholder="Số điện thoại" />

																<label for="id-admin-diaChiKH">Địa chỉ</label>
																<form:textarea class="form-control vpp-bd-btn"
																	path="diaChi" id="id-admin-diaChiKH"
																	name="admin-diaChi" placeholder="Địa chỉ" />
																</textarea>

																
																<div class="row m-0 mt-4 d-flex justify-content-center">
																	<div class="col-12 p-0 ">
																		<button type="submit"
																			onclick="window.location.href='themHoacCapNhatKhachHang';"
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
													<th>Mã KH</th>
													<th>Tên khách hàng</th>
													<th>Email</th>
													<th>SĐT</th>
													<th>Giới tính</th>
													<th>Ngày sinh</th>
													<th>Địa chỉ</th>
													<th>Chức năng</th>

												</tr>
											</thead>
											<tbody>
												<c:forEach var="tempKH" items="${dsKhachHang}">
													<c:url var="updateLink" value="/khachhang/capNhatKhachHang">
														<c:param name="khachHangId" value="${tempKH.id}" />
													</c:url>
													
													<c:url var="deleteLink" value="/khachhang/xoaKhachHang">
														<c:param name="khachHangId" value="${tempKH.id}" />
													</c:url>
													<tr>
														<td>${tempKH.id }</td>
														<td>${tempKH.tenKH }</td>
														<td>${tempKH.email }</td>
														<td>${tempKH.sdt }</td>
														<td>${tempKH.gioiTinh }</td>
														<td>${tempKH.ngaySinh }</td>
														<td>${tempKH.diaChi }</td>

														<td>
															<div class="row m-0 d-flex justify-content-center">
																<div class="col-3 p-0 ms-1 me-1 ">
																	<button type="button"
																		class="btn bg-white vpp-bd-1 form-control hvr-grow"
																		title="Chi tiết khách hàng">
																		<i class="fas fa-info fs-5 vpp-text-pink "></i>
																	</button>

																</div>
																<div class="col-3 p-0 me-1">
																	<button type="button" data-bs-toggle="modal" data-bs-target="#myModal"
																		class="btn bg-white vpp-bd-1 form-control hvr-grow vpp-bd-color-blue"
																		title="Cập nhật khách hàng" id="btnupdate">
																		<i class="fas fa-pencil-alt fs-5 vpp-text-blue"></i>
																	</button>

																</div>
																<div class="col-3 p-0 me-1 ">
																	<button type="button"
																		class="btn bg-white vpp-bd-1 form-control hvr-grow vpp-bd-color-red"
																		title="Xóa khách hàng" onclick=" if (!(confirm('Bạn có chắc muốn xóa khách hàng này không?'))) return false;
																		 window.location.href='${deleteLink}';">
																		<i class="fas fa-times fs-5  vpp-text-red"></i>
																	</button>

																</div>
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
		
		<script src="../resources/js/admin-khachhang.js"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>

            $('#btnupdate ').click(function () {
                var id =$(this).closest('tr').find('td').eq(0).text();
                var ten =$(this).closest('tr').find('td').eq(1).text();
                var email =$(this).closest('tr').find('td').eq(2).text();
                var sdt =$(this).closest('tr').find('td').eq(3).text();
                var gioitinh =$(this).closest('tr').find('td').eq(4).text();
                var ngaysinh =$(this).closest('tr').find('td').eq(5).text();
                var diachi =$(this).closest('tr').find('td').eq(6).text();
                
                alert(id);
                $('form[name="id"]').val(id);
                $('input[name="tenKH"]').val(ten);
                $('input[name="email"]').val(email);
                if(gioitinh=="Nam")
                	$('select[name="gioiTinh"]').val(0);
                else
                	$('select[name="gioiTinh"]').val(1);
                $('input[name="ngaySinh"]').val(ngaysinh);
                $('input[name="sdt"]').val(sdt);
                $('textarea[name="diaChi"]').val(diachi);
                        
            });
       
    </script>
</body>
</html>