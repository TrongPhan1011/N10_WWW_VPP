
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta charset="ISO-8859-1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Don hang (admin)</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="../../css/lib/hover.css">
    <link rel="stylesheet" href="../../assets/fontIcon/fontawesome-free-5.15.4/css/all.css">
    <link rel="stylesheet" href="../../assets/fontIcon/fontawesome-free-5.15.4/css/solid.css">

    <link rel="stylesheet" href="../../css/general.css">
    <link rel="stylesheet" href="../../css/admin/admin.css">
    <link rel="stylesheet" href="../../css/index.css">
    <link rel="stylesheet" href="../../css/admin/admin-don-hang.css">

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
                        <a href="#" class="vpp-link">Đơn hàng</a>
                    </div>
                    <div class="container mt-3">
                        <!-- Nav tabs -->
                        <ul class="nav nav-tabs ">
                            <li class="nav-item ">
                                <a class=" nav-link active " data-bs-toggle="tab" href="#home">Đơn chờ
                                    chuyển</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" data-bs-toggle="tab" href="#menu1">Đơn đang chờ nhận
                                    hàng</a>
                            </li>
                        </ul>

                        <!-- Tab panes -->
                        <div class="tab-content vpp-bd-ad-btn">
                            <div id="home" class="container  tab-pane active"><br>
                                <h3>Danh sách đơn hàng đang chờ vận chuyển</h3>
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th>STT</th>
                                            <th>Ngày đặt</th>
                                            <th>Địa chỉ</th>
                                            <th>Số điện thoại</th>
                                            <th>Chức năng</th>
                                        </tr>

                                    </thead>
                                    <tbody>
                                        <tr data-toggle="collapse" data-target="#demo1" class="accordion-toggle">
                                            <td>1</td>
                                            <td>19-05-2022</td>
                                            <td>12, Nguyễn Văn Bảo</td>
                                            <td>0329218740</td>
                                            <td>
                                                <button type="button"
                                                    class="btn vpp-bg-btn vpp-bd-radius vpp-text-dark vpp-btn-danhan">Đã
                                                    nhận</button>
                                                <button type="button"
                                                    class="btn vpp-bg-btn vpp-text-dark vpp-btn-huydon">Hủy
                                                    đơn</button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="12" class="hiddenRow">
                                                <div class="accordian-body collapse" id="demo1">
                                                    <table class="table table-striped">
                                                        <thead>
                                                            <tr>
                                                                <th>STT</th>
                                                                <th>Tên sản phẩm</th>
                                                                <th>Loại</th>
                                                                <th>Giá</th>
                                                                <th>Số lượng mua</th>
                                                            </tr>

                                                        </thead>

                                                        <tbody>
                                                            <tr>
                                                                <td>1</td>
                                                                <td>Sản phẩm 1</td>
                                                                <td>Bút viết</td>
                                                                <td>10.000đ</td>
                                                                <td>12</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>

                                        </tr>




                                    </tbody>


                                </table>
                                <div class="row mt-4">
                                    <div class="col-12  d-flex justify-content-center">
                                        <ul class="pagination ">
                                            <li class="page-item disabled"><a
                                                    class="page-link pagin  hvr-shutter-out-horizontal"
                                                    href="#">Previous</a>
                                            </li>
                                            <li class="page-item "><a class="page-link pagin-active " href="#">1</a>
                                            </li>
                                            <li class="page-item  "><a
                                                    class="page-link pagin  hvr-shutter-out-horizontal" href="#">2</a>
                                            </li>
                                            <li class="page-item  "><a
                                                    class="page-link pagin  hvr-shutter-out-horizontal" href="#">3</a>
                                            </li>
                                            <li class="page-item  "><a
                                                    class="page-link pagin  hvr-shutter-out-horizontal"
                                                    href="#">Next</a>
                                            </li>
                                        </ul>
                                    </div>


                                </div>
                            </div>
                            <div id="menu1" class="container tab-pane fade"><br>
                                <h3>Danh sách đơn hàng đang chờ nhận hàng</h3>
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th>STT</th>
                                            <th>Ngày đặt</th>
                                            <th>Địa chỉ</th>
                                            <th>Số điện thoại</th>
                                            <th>Chức năng</th>
                                        </tr>

                                    </thead>
                                    <tbody>
                                        <tr data-toggle="collapse" data-target="#demo1" class="accordion-toggle">
                                            <td>1</td>
                                            <td>19-05-2022</td>
                                            <td>12, Nguyễn Văn Bảo</td>
                                            <td>0329218740</td>
                                            <td>
                                                <button type="button"
                                                    class="btn vpp-bg-btn vpp-bd-radius vpp-text-dark vpp-btn-danhan">Đã
                                                    nhận</button>
                                                <button type="button"
                                                    class="btn vpp-bg-btn vpp-text-dark vpp-btn-huydon">Hủy
                                                    đơn</button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td colspan="12" class="hiddenRow">
                                                <div class="accordian-body collapse" id="demo1">
                                                    <table class="table table-striped">
                                                        <thead>
                                                            <tr>
                                                                <th>STT</th>
                                                                <th>Tên sản phẩm</th>
                                                                <th>Loại</th>
                                                                <th>Giá</th>
                                                                <th>Số lượng mua</th>
                                                            </tr>

                                                        </thead>

                                                        <tbody>
                                                            <tr>
                                                                <td>1</td>
                                                                <td>Sản phẩm 1</td>
                                                                <td>Bút viết</td>
                                                                <td>10.000đ</td>
                                                                <td>15</td>
                                                            </tr>
                                                        </tbody>
                                                    </table>

                                        </tr>




                                    </tbody>


                                </table>
                                <div class="row mt-4">
                                    <div class="col-12  d-flex justify-content-center">
                                        <ul class="pagination ">
                                            <li class="page-item disabled"><a
                                                    class="page-link pagin  hvr-shutter-out-horizontal"
                                                    href="#">Previous</a>
                                            </li>
                                            <li class="page-item "><a class="page-link pagin-active " href="#">1</a>
                                            </li>
                                            <li class="page-item  "><a
                                                    class="page-link pagin  hvr-shutter-out-horizontal" href="#">2</a>
                                            </li>
                                            <li class="page-item  "><a
                                                    class="page-link pagin  hvr-shutter-out-horizontal" href="#">3</a>
                                            </li>
                                            <li class="page-item  "><a
                                                    class="page-link pagin  hvr-shutter-out-horizontal"
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



</body>

</html>