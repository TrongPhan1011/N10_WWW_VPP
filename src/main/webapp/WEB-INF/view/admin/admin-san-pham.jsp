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
						<a href="${pageContext.request.contextPath}/admin/"
							class="vpp-link">Trang ch???/</a> <a
							href="${pageContext.request.contextPath}/admin/sanpham/"
							class="vpp-link">S???n ph???m</a>
					</div>

					<div class="container-fluid p-2">
						<div class="row d-flex justify-content-around">
							<div class="col-6">
								<form:form method="GET" action="${pageContext.request.contextPath}/admin/sanpham/timkiem">
									
													
									<div class="input-group w-100 vpp-bd-btn ">
										<input name="timkiem" type="text" class="form-control vpp-bd-radius "
											placeholder="Nh???p s???n ph???m c???n t??m">
										<button type="submit"
											class="input-group-text vpp-text-dark vpp-bg-btn vpp-bd-radius vpp-btn-hover hvr-bounce-to-right ">
											<i class="fas fa-search"></i>T??m
										</button>
									</div>
								</form:form>
							</div>
						</div>

						<div class="row m-0 mt-4">							

							<div class="col-3">
								<select name="selectLoaiSP" id="select-Loai-SP"
									class="form-select vpp-bd-1 vpp-bd-radius">
									<option value="0">Lo???i s???n ph???m</option>
									<c:forEach var="loaiSP" items="${dsLoaiSP}">
										<option value="${loaiSP.id}">${loaiSP.tenLoai}</option>

									</c:forEach>

								</select>
							</div>
						</div>

						<div class="row mt-2 p-2  m-0 vpp-bd-1 vpp-bd-radius">
							<div class="col-12 p-0">
								<div class="row m-0 d-flex justify-content-between">
									<h4 class="col-4 p-0">Danh s??ch s???n ph???m</h4>
									<button type="button"
										class=" col-2 btn hvr-shutter-out-horizontal vpp-btn don-da-duyet"
										data-bs-toggle="modal" data-bs-target="#myModal">Th??m
										s???n ph???m</button>
									<div class="modal fade " id="myModal">
										<div class="modal-dialog modal-lg ">
											<div class="modal-content vpp-bd-1">

												<!-- Modal Header -->
												<div class="modal-header">
													<div class="w-100 d-flex justify-content-center ">
														<h4>Th??ng tin s???n ph???m</h4>
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
																	<label for="id-admin-TenSP">T??n s???n ph???m:</label> <input
																		type="text" id="id-admin-TenSP " name="tenSP"
																		class="form-control  vpp-bd-btn mt-1 mb-3"
																		placeholder="Nh???p t??n s???n ph???m">
																	<div class=" invalid-feedback text-danger">* T??n
																		s???n ph???m kh??ng ???????c tr???ng</div>

																</div>

																<div>
																	<label for="id-admin-loaiSP">Lo???i s???n ph???m</label> <select
																		id="id-admin-loaiSP " name="loaiSP.id"
																		class="form-control form-select vpp-bd-btn mt-1 mb-3">
																		<c:forEach var="loaiSP" items="${dsLoaiSP}">
																			<option value="${loaiSP.id}">
																				${loaiSP.tenLoai}</option>

																		</c:forEach>

																	</select>
																</div>

																<div>

																	<label for="id-admin-NSX">Nh?? s???n xu???t</label> <select
																		name="nsx.id" id="id-admin-NSX"
																		class="form-control form-select vpp-bd-btn mt-1 mb-3">
																		<c:forEach var="nsx" items="${dsNSX}">
																			<option value="${nsx.id}">${nsx.tenNSX}</option>

																		</c:forEach>

																	</select>
																</div>

																<div>

																	<label for="id-admin-giaGoc">Gi?? g???c:</label> 
																	<input
																		name="giaGoc" type="number" id="id-admin-giaGoc"
																		
																		class="form-control vpp-bd-btn mt-1 mb-3" min="1000"
																		value="1000">
																	<div class=" invalid-feedback text-danger">* Gi??
																		g???c kh??ng ???????c tr???ng v?? ph???i l???n h??n 0</div>

																</div>

																<div>

																	<label for="id-admin-giaBan">Gi?? b??n:</label> <input
																		type="number" id="id-admin-giaBan"
																		name="giaBan"
																		class="form-control vpp-bd-btn mt-1 mb-3" min="1000"
																		value="1000">
																	<div class=" invalid-feedback text-danger">* Gi??
																		b??n kh??ng ???????c tr???ng v?? ph???i l???n h??n 0</div>

																</div>

																<div>

																	<label for="id-admin-soluong">S??? l?????ng:</label> <input
																		type="number" name="soLuongTon" id="id-admin-solong "
																		class="form-control  vpp-bd-btn mt-1 mb-3" min="1"
																		value="1">
																	<div class=" invalid-feedback text-danger">* S???
																		l?????ng kh??ng ???????c tr???ng v?? ph???i l???n h??n 0</div>

																</div>

																<div>

																	<label for="id-admin-mota">M?? t???:</label>
																	<textarea class="form-control vpp-bd-btn"
																		id="id-admin-mota " name="moTaSP"
																		placeholder="M?? t??? s???n ph???m"></textarea>
																	<div class=" invalid-feedback text-danger">* M??
																		t??? s???n ph???m kh??ng ???????c tr???ng</div>
																</div>




															</div>
															<div class="col-6 pe-2 ps-5">

																<div>

																	<label for="id-admin-ChatLieu">Ch???t li???u:</label> <input
																		type="text" id="id-admin-ChatLieu " name="chatLieu"
																		class="form-control  vpp-bd-btn mt-1 mb-3"
																		placeholder="Ch???t li???u">
																	<div class=" invalid-feedback text-danger">* Ch???t
																		li???u s???n ph???m kh??ng ???????c tr???ng</div>

																</div>

																<div>
																	<label for="id-admin-file">Ch???n ???nh s???n ph???m:</label> <input
																		name="fileImage" type="file" id="id-admin-file"
																		class="form-control  vpp-bd-btn" accept="image/png">
																	<div class=" invalid-feedback text-danger">* Ch??a
																		ch???n ???nh</div>


																</div>


																<div id="adminSPIMG"
																	class="d-none justify-content-between mt-3 p-2 pb-4 vpp-bd-bottom">
																	<img src="" alt="img1" class="vpp-bd-1 " width="23%"
																		height="50vh">
																</div>


																<div class="row m-0 mt-3 vpp-bd-bottom">
																	<div class="col-12 p-0">

																		<p>Tr???ng th??i:</p>
																		<select name="trangThai" id=""
																			class="form-select vpp-bd-btn">
																			<option value="0">C??n h??ng</option>
																			<option value="1">H???t h??ng h??ng</option>
																		</select>
																		<h5 class="mt-3">
																			???? b??n: <span id="spDaBan" class="d-none"></span>
																		</h5>
																	</div>
																</div>

																<div class="row m-0 mt-4 d-flex justify-content-center">
																	<div class="col-12 p-0 ">
																		<button id="adminBtnLuu" type="submit"
																			class="btn vpp-btn hvr-shutter-out-horizontal vpp-btn don-da-duyet form-control">L??u
																			th??ng tin</button>
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
													<th>T??n s???n ph???m</th>
													<th>Lo???i</th>
													<th>???? b??n</th>
													<th>S??? l?????ng t???n</th>
													<th style="min-width: 200px">Ch???c n??ng</th>


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
																		title="Chi ti???t s???n ph???m">
																		<i class="fas fa-info fs-5 vpp-text-pink "></i>
																	</button>

																</div>
																<div class="col-2 p-0 me-1">
																	<button type="button"
																		class="btnUpdateSP btn bg-white vpp-bd-1 form-control hvr-grow vpp-bd-color-blue"
																		title="Chi ti???t s???n ph???m" data-bs-toggle="modal"
																		data-bs-target="#myModal"
																		onclick="clickUpdate(${sp.id},'${sp.tenSP}',${sp.soLuongTon},${sp.soLuongBan},'${sp.moTaSP}',${sp.giaBan},
																		'${sp.giaGoc}','${sp.chatLieu}','${sp.trangThai}','${sp.urlAnhSP}',${sp.loaiSP.id},${sp.nsx.id})">
																		<i class="fas fa-pencil-alt fs-5 vpp-text-blue"></i>
																	</button>

																</div>

																<security:authorize access="hasAnyRole('ADMIN')">
																	<div class="col-2 p-0 me-1 ">
																		<a href="${deleteUrl}"
																		onclick=" if (!(confirm('B???n c?? ch???c mu???n x??a s???n ph???m n??y kh??ng?'))) return false;
																		 window.location.href='${deleteUrl}';"
																			class="btn bg-white vpp-bd-1 form-control hvr-grow vpp-bd-color-red"
																			title="Chi ti???t s???n ph???m"> <i
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
							Nh??m 10 - <span>Thi???t b??? v??n ph??ng ph???m</span>
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