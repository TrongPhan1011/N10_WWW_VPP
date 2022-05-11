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
    <title>Tai khoan (admin)</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="../../resources/css/lib/hover.css">
    <link rel="stylesheet" href="../../resources/assets/fontIcon/fontawesome-free-5.15.4/css/all.css">
    <link rel="stylesheet" href="././resources/assets/fontIcon/fontawesome-free-5.15.4/css/solid.css">

    <link rel="stylesheet" href="../../resources/css/general.css">
    <link rel="stylesheet" href="../../resources/css/admin/admin.css">
    <link rel="stylesheet" href="../../resources/css/index.css">
    <link rel="stylesheet" href="../../resources/css/admin/admin-don-hang.css">

</head>

<body>
    <div class="container-fluid ">
        <div id="header" class=" row p-2 ps-5 pe-5 vpp-bg-header">
            <div class="col-4">

                <a href="./admin.html">
                    <img src="../../resources/assets/img/Logo.png" alt="logo" width="100">

                </a>

            </div>
            <div class="col-8 d-flex justify-content-end">


                <div class="row">
                    <div class="col-12 pe-0 ms-1 d-flex align-items-center  vpp-text-pink">
                        <i class="fas fa-user-circle fs-1 vpp-bd-circle "></i>

                        <a href="#" class="fw-bold vpp-link vpp-text-dark hvr-underline-from-left">Thông tin</a><br>

                    </div>
                </div>

            </div>

        </div>
        <div id="content ">
            <div class="row ">
                <div class="col-2 ps-5 vpp-bg-dark vpp-admin-menu ">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link text-white vpp-link fs-5 hvr-underline-from-left" href="./index.html">Đơn
                                hàng</a>
                        </li>
                        <li class="nav-item  vpp-dropdown ">
                            <a class="nav-link text-white vpp-link fs-5 hvr-underline-from-left " href="#">Đơn hàng</a>

                        </li>
                        <li class="nav-item  vpp-dropdown ">
                            <a class="nav-link text-white vpp-link fs-5 hvr-underline-from-left " href="#">Sản phẩm</a>

                        </li>
                        <li class="nav-item  vpp-dropdown ">
                            <a class="nav-link text-white vpp-link fs-5 hvr-underline-from-left " href="#">Nhân viên</a>

                        </li>
                        <li class="nav-item  vpp-dropdown ">
                            <a class="nav-link text-white vpp-link fs-5 hvr-underline-from-left " href="#">Khách
                                hàng</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-white vpp-link fs-5 hvr-underline-from-left" href="#">Thông báo</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-white vpp-link fs-5 hvr-underline-from-left" href="">Website</a>
                        </li>

                    </ul>
                </div>

                <div class="col-10 p-0">
                    <div class=" ps-2 vpp-bg-light-dark ">
                        <a href="#" class="vpp-link">Chi tiết tài khoản</a> : <security:authentication
						property="principal.username" />
						
                    </div>
                    <div class="container mt-3">
                        <!-- Nav tabs -->


                        <!-- Tab panes -->
                        <div class="tab-content vpp-bd-ad-btn">
                            <div id="home" class="container  tab-pane active"><br>
                                <div class="row" id="id-admin">
                                    <div class="col-2 text-center">
                                        <div class="vpp-bd-radius" id="avt_admin">
                                            <img src="../../resources/assets/img/thanhtoan1.png" width="75%" height="200px">
                                        </div>
                                        <br>
                                        <input type="button" class=" btn vpp-btn" value="Chọn hình">
                                    </div>
                                    <div class="col-9">
                                    <c:url var="updateLink" value="/admin/chiTietTaiKhoan/update">
                                        
                                </c:url>
                                        <form:form action="${ updateLink}" modelAttribute="thongtinNV" method="POST" cssClass="needs-validation"  name="myform">
                                            <h4 class="vpp-text-dark">Thông tin nhân viên:</h4>
                                            <div class="row">

                                                <div class="col-6">
                                                    <div class="row  ">
                                                        <div class="col-4">
                                                            <label class="form-label" for="id-admin-manv">
                                                                Mã nhân viên:
                                                            </label>
                                                        </div>
                                                        <div class="col-6 ">
                                                            <form:input type="text" path="id" id="id-admin-manv" name="manhanvien"
                                                                class="form-control vpp-bd-1" />
                                                        </div>
                                                    </div>
                                                    <div class="row mt-3 ">
                                                        <div class="col-4">
                                                            <label class="form-label" for="id-admin-TenNV">
                                                                Họ tên:
                                                            </label>
                                                        </div>
                                                        <div class="col-6 ">
                                                            <form:input type="text"  path="tenNV" id="id-admin-TenNV"
                                                                class="form-control vpp-bd-1"/>
                                                                <div class="invalid-feedback">
                                                                        Vui lòng điền tên nhân viên. Tên nhân viên không
                                                                        có ký tự đặt biệt và số
                                                                    </div>
                                                        </div>
                                                    </div>
                                                    <div class="row mt-3 ">
                                                        <div class="col-4">
                                                            <label class="form-label" for="id-admin-SĐT">
                                                                SĐT:
                                                            </label>
                                                        </div>
                                                        <div class="col-6 ">
                                                            <form:input type="text" path="sdt" id="id-admin-SĐT"
                                                                class="form-control vpp-bd-1"/>
                                                                <div class="invalid-feedback">
                                                                        Vui lòng nhập số điện thoại. Số điện thoại gồm 10 ký tự số
                                                                    </div>
                                                        </div>
                                                    </div>
                                                    <div class="row mt-3 ">
                                                        <div class="col-4">
                                                            <label class="form-label" for="id-admin-ngaySinh">
                                                                Ngày sinh:
                                                            </label>
                                                        </div>
                                                        <div class="col-6 ">
                                                            <form:input type="date" path="ngaySinh" id="id-admin-ngaySinh"
                                                                class="form-control vpp-bd-1" />
                                                                 <div class="invalid-feedback">
                                                                        Vui lòng chọn ngày sinh. Từ 18 tuổi trở lên
                                                                    </div>
                                                        </div>
                                                    </div>
                                                    <div class="row mt-3 ">
                                                        <div class="col-4">
                                                            <label class="form-label" for="id-admin-diachi">
                                                                Địa chỉ:
                                                            </label>
                                                        </div>
                                                        <div class="col-6 ">
                                                            <form:input type="text" path="diaChi" id="id-admin-diaChi"
                                                                class="form-control vpp-bd-1"/>
                                                        </div>
                                                    </div>

                                                </div>
                                                <div class="col-6">
                                                    <div class="row  ">
                                                        <div class="col-4">
                                                            <label class="form-label" for="id-admin-chucvu">
                                                                Chức vụ:
                                                            </label>
                                                        </div>
                                                        <div class="col-6 ">
                                                            <form:input type="text" path="chucVu" id="id-admin-chucvu"
                                                                class="form-control vpp-bd-1" disabled="true" />
                                                        </div>
                                                    </div>
                                                    <div class="row mt-3 ">
                                                        <div class="col-4">
                                                            <label class="form-label" for="id-admin-gioitinh">
                                                                Giới tính:
                                                            </label>
                                                        </div>
                                                        <div class="col-6 ">
                                                            <form:select id="id-admin-gioitinh" path="gioiTinh"
                                                                class="form-control form-select vpp-bd-1">
                                                                <form:option value="0">Nam</form:option>
                                                                <form:option value="1">Nữ</form:option>
                                                            </form:select>
                                                        </div>
                                                    </div>
                                                    <div class="row mt-3 ">
                                                        <div class="col-4">
                                                            <label class="form-label" for="id-admin-email">
                                                                Email:
                                                            </label>
                                                        </div>
                                                        <div class="col-6 ">
                                                            <form:input type="email" path="email" id="id-admin-email"
                                                                class="form-control vpp-bd-1" />
                                                                        <div class="invalid-feedback">
                                                                        Vui lòng điền email
                                                                       
                                                                    </div>
                                                        </div>
                                                    </div>
                                                     <div class="row mt-3 ">
                                                        <div class="col-4">
                                                            <label class="form-label" for="id-admin-pass">
                                                                Mật khẩu mới:
                                                            </label>
                                                        </div>
                                                        <div class="col-6 ">
                                                            <input type="password" name="matkhaumoi"  id="id-admin-pass"
                                                                class="form-control vpp-bd-1 " />
                                                                        <div class="invalid-feedback">
                                                                        Vui lòng điền mật khẩu mới
                                                                       
                                                                    </div>
                                                        </div>
                                                    </div>



                                                </div>
                                                <div class="col-12 pe-2 ps-5" ">
                                                              

                                                                <div class="row m-0 mt-4 d-flex justify-content-center">
                                                                    <div class="col-4 pt-3 pr-3 pl-3 ">
                                                                        <button type="submit"
                                                                            class="btn vpp-btn hvr-shutter-out-horizontal vpp-btn don-da-duyet form-control"
                                                                            id="btnluuthongtin">Lưu thông tin</button>
                                                                    </div>
                                                                </div>
                                                                <div class="row m-0 mt-4 d-flex justify-content-center">
                                                                    <div class="col-4 pb-3 ">
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



                            </table>

                        </div>
                        <div id="menu1" class="container tab-pane fade"><br>
                            <h3>Danh sách đơn hàng đang chờ nhận hàng</h3>



                            <div class="row mt-4">
                                <div class="col-12  d-flex justify-content-center">
                                    <ul class="pagination ">
                                        <li class="page-item disabled"><a
                                                class="page-link pagin  hvr-shutter-out-horizontal"
                                                href="#">Previous</a>
                                        </li>
                                        <li class="page-item "><a class="page-link pagin-active " href="#">1</a>
                                        </li>
                                        <li class="page-item  "><a class="page-link pagin  hvr-shutter-out-horizontal"
                                                href="#">2</a>
                                        </li>
                                        <li class="page-item  "><a class="page-link pagin  hvr-shutter-out-horizontal"
                                                href="#">3</a>
                                        </li>
                                        <li class="page-item  "><a class="page-link pagin  hvr-shutter-out-horizontal"
                                                href="#">Next</a>
                                        </li>
                                    </ul>
                                </div>


                            </div>
                        </div>

                    </div>
                </div>

                <div class="row m-0 p-2 mt-1 text-center vpp-bg-light-dark">
                    <p>Nhóm 10 - <span>Thiết bị văn phòng phẩm</span> </p>

                </div>
            </div>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>

 <script src="../../resources/js/admin-nhanvienJS.js">

    </script>

</body>

</html>