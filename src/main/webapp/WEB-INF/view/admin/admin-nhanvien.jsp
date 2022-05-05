
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta charset="ISO-8859-1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quan ly</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="../../css/lib/hover.css">
    <link rel="stylesheet" href="../../assets/fontIcon/fontawesome-free-5.15.4/css/all.css">
    <link rel="stylesheet" href="../../assets/fontIcon/fontawesome-free-5.15.4/css/solid.css">

    <link rel="stylesheet" href="../../css/general.css">
    <link rel="stylesheet" href="../../css/admin/admin.css">
    <link rel="stylesheet" href="../../css/index.css">
    <link rel="stylesheet" href="../../css/admin/admin-san-pham.css">

</head>

<body>
    <div class="container-fluid ">
        <div id="header" class=" row p-2 ps-5 pe-5 vpp-bg-header">
            <div class="col-4">

                <a href="./admin.html">
                    <img src="../../assets/img/Logo.png" alt="logo" width="100">

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
                            <a class="nav-link text-white vpp-link fs-5 hvr-underline-from-left"
                                href="./index.html">Tổng quan</a>
                        </li>
                        <li class="nav-item  vpp-dropdown ">
                            <a class="nav-link text-white vpp-link fs-5 hvr-underline-from-left " href="#">Đơn hàng</a>

                        </li>
                        <li class="nav-item  vpp-dropdown ">
                            <a class="nav-link text-white vpp-link fs-5 hvr-underline-from-left "
                                href="./san-pham.html">Sản phẩm</a>

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
                        <a href="#" class="vpp-link">Nhân viên</a>
                    </div>

                    <div class="container-fluid p-2">
                        <div class="row d-flex justify-content-around">
                            <div class="col-6">
                                <div class="input-group w-100 vpp-bd-btn ">
                                    <input type="text" class="form-control vpp-bd-radius "
                                        placeholder="Nhập tên nhân viên cần tìm">
                                    <button type="button"
                                        class="input-group-text vpp-text-dark vpp-bg-btn vpp-bd-radius vpp-btn-hover hvr-bounce-to-right ">
                                        <i class="fas fa-search"></i>Tìm</button>
                                </div>
                            </div>
                        </div>

                        <div class="row m-0 mt-4">
                            <div class="col-3 p-0">
                                <select name="selectTrangThai" id="select-Trang-Thai" class="form-select vpp-bd-1 vpp-bd-radius">
                                    <option value="0">Đang làm việc</option> 
                                    <option value="1">Đã nghỉ việc</option>
                                    

                                </select>
                            </div>

                        
                        </div>

                        <div class="row mt-2 p-2  m-0 vpp-bd-1 vpp-bd-radius">
                            <div class="col-12 p-0">
                                <div class="row m-0 d-flex justify-content-between">
                                    <h4 class="col-4 p-0">Danh sách nhân viên</h4>
                                    <button type="button" class=" col-2 btn hvr-shutter-out-horizontal vpp-btn don-da-duyet" data-bs-toggle="modal" data-bs-target="#myModal">Thêm </button>
                                    <div class="modal fade " id="myModal">
                                        <div class="modal-dialog modal-lg ">
                                          <div class="modal-content vpp-bd-1">
                                      
                                            <!-- Modal Header -->
                                            <div class="modal-header">
                                              <div class="w-100 d-flex justify-content-center ">
                                                  <h4>Thông tin nhân viên</h4>
                                              </div>
                                              <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                                            </div>
                                      
                                            <div class="modal-body">
                                                <form action="#">
                                                <div class="row m-0 " >
                                                    <div class="col-6 pr-3 ps-3 pe-5 vpp-bd-right">
                                                        <label for="id-admin-TenNV" >Tên nhân viên:</label>
                                                        <input type="text" id="id-admin-TenNV" class="form-control  vpp-bd-btn mt-1 mb-3" placeholder="Nhập tên nhân viên">

                                                        <label for="id-admin-chucVu" >Chức vụ</label>
                                                        <select name="admin-selectSP" id="id-admin-chucVu" class="form-control form-select vpp-bd-btn mt-1 mb-3">
                                                            <option value="0">123</option>
                                                            <option value="1">123</option>
                                                            <option value="2">123</option>

                                                        </select>

                                                        <label for="id-admin-gioiTinh" >Giới tính</label>
                                                        <select name="admin-NSX" id="id-admin-gioiTinh" class="form-control form-select vpp-bd-btn mt-1 mb-3">
                                                            <option value="0">Nam</option>
                                                            <option value="1">Nữ</option>
                                                            

                                                        </select>

                                                        <label for="id-admin-ngaySinh" >Ngày sinh</label>
                                                        <input type="date" id="id-admin-ngaySinh" class="form-control vpp-bd-btn mt-1 mb-3" min="1000" value="1000">


                                                        <label for="id-admin-SĐT" >SĐT</label>
                                                        <input type="text" id="id-admin-SĐT" class="form-control  vpp-bd-btn mt-1 mb-3" min="0" value="0">

                                                        <label for="id-admin-diaChi" >Địa chỉ</label>
                                                        <textarea class="form-control vpp-bd-btn" id="id-admin-diaChi" name="admin-diaChi" placeholder="Địa chỉ"></textarea>




                                                    </div>
                                                    <div class="col-6 pe-2 ps-5">
                                                        <label for="id-admin-file" >Chọn ảnh  (Tối đa 4 ảnh):</label>
                                                        <input type="file" id="id-admin-file" class="form-control  vpp-bd-btn" >

                                                        <div class="d-flex justify-content-between mt-3 p-2 pb-4 vpp-bd-bottom">
                                                            <img src="../../assets/img/Slider/slide1.png" alt="img1" class="vpp-bd-1 " width="23%" height="50vh">
                                                            <img src="../../assets/img/Slider/slide1.png" alt="img1" class="vpp-bd-1 " width="23%" height="50vh">
                                                            <img src="../../assets/img/Slider/slide1.png" alt="img1" class="vpp-bd-1 " width="23%" height="50vh">
                                                            <img src="../../assets/img/Slider/slide1.png" alt="img1" class="vpp-bd-1" width="23%" height="50vh">


                                                        </div>


                                                        <!-- <div class="row m-0 mt-3 vpp-bd-bottom">
                                                            <div class="col-12 p-0">
                                                               
                                                                <p>Trạng thái:</p>
                                                                <select name="selectTinhTrang" id="" class="form-select vpp-bd-btn">
                                                                    <option value="0">Còn hàng</option>
                                                                    <option value="1">Hết hàng hàng</option>
                                                                </select>
                                                                <h5 class="mt-3" >Đã bán: <span>50</span></h5>
                                                            </div>
                                                        </div> -->

                                                        <div class="row m-0 mt-4 d-flex justify-content-center">
                                                            <div class="col-12 p-0 ">
                                                                <button type="button" class="btn vpp-btn hvr-shutter-out-horizontal vpp-btn don-da-duyet form-control">Lưu thông tin</button>
                                                            </div>
                                                        </div>
                                                        <div class="row m-0 mt-4 d-flex justify-content-center">
                                                            <div class="col-12 p-0 ">
                                                                <button type="button" class="btn vpp-btn hvr-shutter-out-horizontal vpp-btn  form-control"  data-bs-dismiss="modal">Huỷ</button>
                                                            </div>
                                                        </div>

                                                        

                                                    </div>
                                                </div>
                                            </form>
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
                                                    <th>Mã NV</th>
                                                    <th>Tên nhân viên</th>
                                                    <th>Chức vụ</th>
                                                    <th>Giới tính</th>
                                                    <th>Ngày sinh</th>
                                                    <th>SĐT</th>
                                                    <th>Địa chỉ</th>
                                                    <th>Chức năng</th>


                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>1</td>
                                                    <td>Lê Tuấn Tài</td>
                                                    <td>Nhân viên</td>
                                                    <td>Nam</td>
                                                    <td>13/08/2001</td>
                                                    <td class="">0949218446</td>
                                                    <td>Nguyễn Thái Sơn, P4, Gò Vấp, TP HCM</td>
                                                    <td>
                                                        <div class="row m-0 d-flex justify-content-center">
                                                            <div class="col-3 p-0 ms-1 me-1 ">
                                                                <button type="button" class="btn bg-white vpp-bd-1 form-control hvr-grow" title="Chi tiết sản phẩm"><i class="fas fa-info fs-5 vpp-text-pink "></i></button>                                                            

                                                            </div>
                                                            <div class="col-3 p-0 me-1">
                                                                <button type="button" class="btn bg-white vpp-bd-1 form-control hvr-grow vpp-bd-color-blue" title="Chi tiết sản phẩm"><i class="fas fa-pencil-alt fs-5 vpp-text-blue"></i></button>                                                            

                                                            </div>
                                                            <div class="col-3 p-0 me-1 ">
                                                                <button type="button" class="btn bg-white vpp-bd-1 form-control hvr-grow vpp-bd-color-red" title="Chi tiết sản phẩm"><i class="fas fa-times fs-5  vpp-text-red"></i></button>                                                            

                                                            </div>
                                                        </div>
                                                    </td>

                                                </tr>

                                                

                                            </tbody>

                                        </table>



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



</body>

</html>