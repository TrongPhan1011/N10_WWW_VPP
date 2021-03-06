<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

            <%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
                <!DOCTYPE html>
                <html lang="en">

                <head>
                    <meta charset="UTF-8">
                    <meta http-equiv="X-UA-Compatible" content="IE=edge">
                    <meta name="viewport" content="width=device-width, initial-scale=1.0">
                    <title>Đăng nhập</title>
                    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
                        rel="stylesheet">
                    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
                    <link rel="stylesheet" href="./resources/css/lib/hover.css">
                    <link rel="stylesheet" href="./resources/assets/fontIcon/fontawesome-free-5.15.4/css/all.css">
                    <link rel="stylesheet" href="/resources/assets/fontIcon/fontawesome-free-5.15.4/css/solid.css">

                    <link rel="stylesheet" href="./resources/css/general.css">
                    <link rel="stylesheet" href="./resources/css/admin/admin.css">
                    <link rel="stylesheet" href="./resources/css/index.css">

                    <style>

                    </style>
                </head>

                <body>
                    <div class="container-fluid  d-flex justify-content-center flex-column" id=""
                        style="height:100vh; width:100% ;   background-image: linear-gradient(to right, rgb(255, 255, 255) , rgb(252, 145, 229));">
                        <div class="row vpp-dangnhap  d-flex justify-content-center ">
                            <div class="col-6 vpp-bd-btn p-4" style="background-color: #fff;">

                                <div class="d-flex justify-content-center w-100">
                                    <a href="${pageContext.request.contextPath}/" class="col-2 text-center">

                                        <img src="./resources/assets/img/Logo.png" alt="logo" width="100">
                                    </a>

                                </div>
                                <h2 style="font-style: bold; text-align: center;">Đăng nhập</h2>

                                <!-- <c:if test="${param.error != null}">
                                    <i class="text-danger">Tên đăng nhập hoặc mật khẩu không đungs</i>
                                </c:if> -->
                                <form:form action="${pageContext.request.contextPath}/authenticateTheUser">
                                    <div>
                                        <label for="id-dangnhap-email" class="form-label">Email:</label>
                                        <input name="username" type="text" class="form-control vpp-bd-btn mt-1 mb-4"
                                            placeholder="Nhập email" id="id-dangnhap-email" required />
                                        <div class=" invalid-feedback text-danger">* Email không được trống và phải có
                                            dạng xxx@gmail.com</div>

                                    </div>
                                    <div>
                                        <label for="id-dangnhap-matkhau" class="form-label">Mật khẩu:</label>
                                        <input name="password" type="password" class="form-control vpp-bd-btn mt-1 mb-4"
                                            placeholder="Nhập mật khẩu" id="id-dangnhap-matkhau" required />
                                        <div class="invalid-feedback text-danger">* Mật khẩu không đúng</div>
                                    </div>

                                    <div class="row mb-4">
                                        <div class=" col-8"></div>
                                        <div class="col-4">
                                            <a href="#" class="vpp-link vpp-text-dark hvr-underline-from-left"
                                                style="font-style: italic;">Quên mật khẩu?</a>
                                        </div>
                                    </div>
                                    <div class="row m-0">
                                        <button id="id-btn-dangnhap" type="submit"
                                            class="btn vpp-btn  fs-5  hvr-shutter-out-horizontal">
                                            Đăng nhập
                                        </button>
                                    </div>



                                </form:form>

                                <div class="m-0 text-center mt-4">
                                    <p class="d-inline">Bạn chưa có tài khoản?</p>
                                    <a href="${pageContext.request.contextPath}/dangky/"
                                        class="vpp-link vpp-text-dark vpp-text-decoration">Tạo tài khoản</a>
                                </div>

                            </div>
                        </div>
                    </div>


                    <script src="./resources/js/dangNhap.js"></script>
                </body>

                </html>