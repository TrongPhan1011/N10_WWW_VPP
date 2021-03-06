<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@ taglib prefix="security"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Quan ly</title>
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

                                    <a href="${pageContext.request.contextPath}/admin/"> <img src="../../resources/assets/img/Logo.png" alt="logo"
                                            width="100">

                                    </a>

                                </div>
                                <div class="col-8 d-flex justify-content-end">


                                    <div class="row">
                                        <div class="col-12 pe-0 ms-1 d-flex align-items-center  vpp-text-pink">
                                            <i class="fas fa-user-circle fs-1 vpp-bd-circle "></i> <a href="${pageContext.request.contextPath}/admin/chiTietTaiKhoan/"
                                                class="fw-bold vpp-link vpp-text-dark hvr-underline-from-left">Th??ng
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
                                                    href="${pageContext.request.contextPath}/admin/">T???ng quan</a></li>
                                            <li class="nav-item  vpp-dropdown "><a
                                                    class="nav-link text-white vpp-link fs-5 hvr-underline-from-left "
                                                    href="${pageContext.request.contextPath}/admin/donhang/">????n h??ng</a></li>
                                            <li class="nav-item  vpp-dropdown "><a
                                                    class="nav-link text-white vpp-link fs-5 hvr-underline-from-left "
                                                    href="${pageContext.request.contextPath}/admin/sanpham/">S???n ph???m</a></li>

                                            <security:authorize access="hasAnyRole('ADMIN')">
                                                <li class="nav-item  vpp-dropdown "><a
                                                        class="nav-link text-white vpp-link fs-5 hvr-underline-from-left "
                                                        href="${pageContext.request.contextPath}/admin/nhanvien/">Nh??n vi??n</a></li>

                                                <li class="nav-item  vpp-dropdown "><a
                                                        class="nav-link text-white vpp-link fs-5 hvr-underline-from-left "
                                                        href="${pageContext.request.contextPath}/admin/khachhang/">Kh??ch h??ng</a></li>

                                            </security:authorize>
                                            
                                            <li class="nav-item"><a
                                                    class="nav-link text-white vpp-link fs-5 hvr-underline-from-left"
                                                    href="${pageContext.request.contextPath}">VPP Website</a></li>

                                        </ul>
                                    </div>

				<div class="col-10 p-0">
					<div class=" ps-2 vpp-bg-light-dark ">
						<a href="#" class="vpp-link">Nh??n vi??n</a>
					</div>

					<div class="container-fluid p-2">
						<div class="row d-flex justify-content-around">
							<div class="col-6 pt-2">
								<div class="input-group w-100 vpp-bd-btn ">
									<input type="text" class="form-control vpp-bd-radius "
										placeholder="Nh???p th??ng tin c???n t??m" id="myInput">

								</div>
							</div>
						</div>

						<div class="row m-0 mt-4">
							<div class="col-3 p-0">
								<select name="selectTrangThai" id="select-Trang-Thai"
									onchange="getselect()"
									class="form-select vpp-bd-1 vpp-bd-radius">
									<option value="0"></option>
									<option value="1">??ang l??m vi???c</option>
									<option value="2">???? ngh???</option>


								</select>
							</div>


						</div>

						<div class="row mt-2 p-2  m-0 vpp-bd-1 vpp-bd-radius">
							<div class="col-12 p-0">
								<div class="row m-0 d-flex justify-content-between">
									<h4 class="col-4 p-0">Danh s??ch nh??n vi??n</h4>
									<button type="button"
										class=" col-2 btn hvr-shutter-out-horizontal vpp-btn don-da-duyet"
										data-bs-toggle="modal" data-bs-target="#myModal">Th??m
									</button>
									<div class="modal fade " id="myModal">
										<div class="modal-dialog modal-lg ">
											<div class="modal-content vpp-bd-1">

												<!-- Modal Header -->
												<div class="modal-header">
													<div class="w-100 d-flex justify-content-center ">
														<h4>Th??ng tin nh??n vi??n</h4>
													</div>
													<button type="button" class="btn-close"
														data-bs-dismiss="modal"></button>
												</div>

												<div class="modal-body">
													<c:url var="saveUrl" value="/admin/nhanvien/saveNV" />
													<form:form action="${saveUrl}" modelAttribute="nhanvien"
														method="POST" cssClass="needs-validation" name="myform">

														<div class="row m-0 ">
															<div class="col-6 pr-3 ps-3 pe-5 vpp-bd-right">
																<div>
																	<label for="id-admin-TenNV">T??n nh??n vi??n:</label> <input
																		name="id" type="hidden" value="0"> <input
																		name="tenNV" type="text" id="id-admin-TenNV"
																		class="form-control  vpp-bd-btn mt-1 mb-3"
																		placeholder="Nh???p t??n nh??n vi??n" required>
																	<div class="invalid-feedback">Vui l??ng ??i???n t??n
																		nh??n vi??n. T??n nh??n vi??n kh??ng c?? k?? t??? ?????t bi???t v?? s???
																	</div>
																</div>
																<div>
																	<label for="id-admin-email">Email:</label> <input
																		name="email" type="email" id="id-admin-email"
																		class="form-control  vpp-bd-btn mt-1 mb-3"
																		placeholder="Nh???p email" required>
																	<div class="invalid-feedback">Vui l??ng ??i???n email
																	</div>
																</div>
																<label for="id-admin-chucVu">Ch???c v???:</label> <select
																	name="chucVu" id="id-admin-chucVu"
																	class="form-control form-select vpp-bd-btn mt-1 mb-3">
																	<option value="0">Nh??n vi??n</option>
																	<option value="1">Qu???n l??</option>


																</select> <label for="id-admin-gioiTinh">Gi???i t??nh:</label> <select
																	name="gioiTinh" id="id-admin-gioiTinh"
																	class="form-control form-select vpp-bd-btn mt-1 mb-3">
																	<option value="0">Nam</option>
																	<option value="1">N???</option>


																</select>
																<div>
																	<label for="id-admin-ngaySinh">Ng??y sinh:</label> <input
																		name="ngaySinh" type="date" id="id-admin-ngaySinh"
																		class="form-control vpp-bd-btn mt-1 mb-3" required>
																	<div class="invalid-feedback">Vui l??ng ch???n ng??y
																		sinh. T??? 18 tu???i tr??? l??n</div>
																</div>

																<div>
																	<label for="id-admin-S??T">S??T:</label> <input
																		name="sdt" type="text" id="id-admin-S??T"
																		class="form-control  vpp-bd-btn mt-1 mb-3" required>
																	<div class="invalid-feedback">Vui l??ng nh???p s???
																		??i???n tho???i. S??? ??i???n tho???i g???m 10 k?? t??? s???</div>
																</div>
																<div>
																	<label for="id-admin-diaChi">?????a ch???:</label>
																	<textarea name="diaChi" class="form-control vpp-bd-btn"
																		id="id-admin-diaChi" name="admin-diaChi"
																		placeholder="?????a ch???" required></textarea>
																	<div class="invalid-feedback">Vui l??ng ??i???n ?????a
																		ch???</div>
																</div>


															</div>
															<div class="col-6 pe-2 ps-5"">


																<div class="row m-0 mt-4 d-flex justify-content-center">
																	<div class="col-12 p-0 ">
																		<button type="submit"
																			class="btn vpp-btn hvr-shutter-out-horizontal vpp-btn don-da-duyet form-control"
																			id="btnluuthongtin">L??u th??ng tin</button>
																	</div>
																</div>
																<div class="row m-0 mt-4 d-flex justify-content-center">
																	<div class="col-12 p-0 ">
																		<button type="button"
																			class="btn vpp-btn hvr-shutter-out-horizontal vpp-btn  form-control"
																			data-bs-dismiss="modal">Hu???</button>
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

										<table class="table table-striped text-center" id="myTable">
											<thead>
												<tr>
													<th>M?? NV</th>
													<th>T??n nh??n vi??n</th>
													<th>Email</th>
													<th>Ch???c v???</th>
													<th>Gi???i t??nh</th>
													<th>Ng??y sinh</th>
													<th>S??T</th>
													<th>?????a ch???</th>
													<th>Tr???ng th??i</th>
													<th>Ch???c n??ng</th>



												</tr>
											</thead>
											<tbody>
												<c:forEach var="nhanvien" items="${dsNV }">
													<tr>
														<td>${nhanvien.id }</td>
														<td>${nhanvien.tenNV }</td>
														<td>${nhanvien.email }</td>
														<td>${nhanvien.chucVu }</td>
														<td>${nhanvien.gioiTinh }</td>
														<td>${nhanvien.ngaySinh }</td>
														<td class="">${nhanvien.sdt }</td>
														<td>${nhanvien.diaChi }</td>
														<td>${nhanvien.trangThai }</td>
														<td><c:url var="deleteLink"
																value="/admin/nhanvien/delete">
																<c:param name="nhanvienID" value="${nhanvien.id}" />
															</c:url> <c:url var="updateLink"
																value="/admin/nhanvien/showFormForUpdate">
																<c:param name="nhanvienID" value="${nhanvien.id}" />
															</c:url>
															<div class="row m-0 d-flex justify-content-center">

																<div class="col-4 p-0 me-1">
																	<button id="btnupdate" type="button"
																		class=" btn bg-white vpp-bd-1 form-control hvr-grow vpp-bd-color-red"
																		data-bs-toggle="modal" data-bs-target="#myModal"
																		title="Chi ti???t s???n ph???m">
																		<i class="fas fa-pencil-alt fs-5 vpp-text-blue"></i>
																	</button>

																</div>
																<div class="col-4 p-0 me-1 ">
																	<security:authorize
																		access="hasAnyRole('ADMIN')">
																		<button
																			onclick=" if (!(confirm('B???n mu???n x??a nh??n vi??n n??y?'))) return false; else window.location.href='${deleteLink}';"
																			type="button"
																			class="btn bg-white vpp-bd-1 form-control hvr-grow vpp-bd-color-red"
																			title="Chi ti???t s???n ph???m">
																			<i class="fas fa-times fs-5  vpp-text-red"></i>
																		</button>
																	</security:authorize>
																</div>
															</div></td>

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
							Nh??m 10 - <span>Thi???t b??? v??n ph??ng ph???m</span>
						</p>

					</div>
				</div>
			</div>
		</div>

		<script
			src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
		<script>

            $('#btnupdate ').click(function () {
                
                var id =$(this).closest('tr').find('td').eq(0).text();
                var ten =$(this).closest('tr').find('td').eq(1).text();
                var email =$(this).closest('tr').find('td').eq(2).text();
                var chucvu =$(this).closest('tr').find('td').eq(3).text();
               
                var gioitinh =$(this).closest('tr').find('td').eq(4).text();
                var ngaysinh =$(this).closest('tr').find('td').eq(5).text();
                var sdt =$(this).closest('tr').find('td').eq(6).text();
                var diachi =$(this).closest('tr').find('td').eq(7).text();
                $('input[name="id"]').val(id);
                if(chucvu=='Nh??n vi??n'){
                    $('select[name="chucVu"]').val(0);}
                else{$('select[name="chucVu"]').val(1);}
                if(gioitinh=='Nam'){
                    $('select[name="gioiTinh"]').val(0);}
                else{$('select[name="gioiTinh"]').val(1);}
              
                $('input[name="tenNV"]').val(ten);
                $('input[name="email"]').val(email);
                $('input[name="id"]').val(id);
                
               
                $('input[name="ngaySinh"]').val(ngaysinh);
                $('input[name="sdt"]').val(sdt);
                $('textarea[name="diaChi"]').val(diachi);
             
                
            });
       
    </script>
		<script src="../../resources/js/admin-nhanvienJS.js">

    </script>
</body>

</html>