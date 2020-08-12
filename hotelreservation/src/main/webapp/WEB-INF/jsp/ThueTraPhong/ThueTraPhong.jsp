<html class="no-js" lang="en">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Thuê-Trả Phòng</title>
    <meta name="robots" content="noindex, follow" />
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="assets/images/favicon.ico">

    <!-- CSS
	============================================ -->

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="assets/css/vendor/bootstrap.min.css">

    <!-- Icon Font CSS -->
    <link rel="stylesheet" href="assets/css/vendor/material-design-iconic-font.min.css">
    <link rel="stylesheet" href="assets/css/vendor/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/vendor/themify-icons.css">
    <link rel="stylesheet" href="assets/css/vendor/cryptocurrency-icons.css">

    <!-- Plugins CSS -->
    <link rel="stylesheet" href="assets/css/plugins/plugins.css">

    <!-- Helper CSS -->
    <link rel="stylesheet" href="assets/css/helper.css">

    <!-- Main Style CSS -->
    <link rel="stylesheet" href="assets/css/style.css">

    <!-- Custom Style CSS Only For Demo Purpose -->
    <link id="cus-style" rel="stylesheet" href="assets/css/style-primary.css">

</head>

<body>

<div class="main-wrapper">


    <!-- Header Section Start -->
    <div class="header-section">
        <div class="container-fluid">
            <div class="row justify-content-between align-items-center">

                <!-- Header Logo (Header Left) Start -->
                <div class="header-logo col-auto">
                    <a href="index.html">
                        <img src="assets/images/logo/logo.png" alt="">
                        <img src="assets/images/logo/logo-light.png" class="logo-light" alt="">
                    </a>
                </div><!-- Header Logo (Header Left) End -->

                <!-- Header Right Start -->
                <div class="header-right flex-grow-1 col-auto">
                    <div class="row justify-content-between align-items-center">

                        <!-- Side Header Toggle & Search Start -->
                        <div class="col-auto">
                            <div class="row align-items-center">

                                <!--Side Header Toggle-->
                                <div class="col-auto"><button class="side-header-toggle"><i class="zmdi zmdi-menu"></i></button></div>


                            </div>
                        </div><!-- Side Header Toggle & Search End -->

                        <!-- Header Notifications Area Start -->
                        <div class="col-auto">

                            <ul class="header-notification-area">

                                <!--User-->
                                <li class="adomx-dropdown col-auto">
                                    <a class="toggle" href="#">
                                            <span class="user">
                                        <span class="avatar">
                                            <img src="assets/images/avatar/avatar-1.jpg" alt="">
                                            <span class="status"></span>
                                            </span>
                                            <span class="name">Madison Howard</span>
                                            </span>
                                    </a>

                                    <!-- Dropdown -->
                                    <div class="adomx-dropdown-menu dropdown-menu-user">
                                        <div class="head">
                                            <h5 class="name"><a href="#">Madison Howard</a></h5>
                                            <a class="mail" href="#">mailnam@mail.com</a>
                                        </div>
                                        <div class="body">
                                            <ul>
                                                <li><a href="#"><i class="zmdi zmdi-account"></i>Profile</a></li>
                                                <li><a href="#"><i class="zmdi zmdi-email-open"></i>Inbox</a></li>
                                                <li><a href="#"><i class="zmdi zmdi-wallpaper"></i>Activity</a></li>
                                            </ul>
                                            <ul>
                                                <li><a href="#"><i class="zmdi zmdi-settings"></i>Setting</a></li>
                                                <li><a href="#"><i class="zmdi zmdi-lock-open"></i>Sing out</a></li>
                                            </ul>
                                            <ul>
                                                <li><a href="#"><i class="zmdi zmdi-paypal"></i>Payment</a></li>
                                                <li><a href="#"><i class="zmdi zmdi-google-pages"></i>Invoice</a></li>
                                            </ul>
                                        </div>
                                    </div>

                                </li>

                            </ul>

                        </div><!-- Header Notifications Area End -->

                    </div>
                </div><!-- Header Right End -->

            </div>
        </div>
    </div><!-- Header Section End -->
    <!-- Side Header Start -->
    <div class="side-header show bg-light">
        <button class="side-header-close"><i class="zmdi zmdi-close"></i></button>
        <!-- Side Header Inner Start -->
        <div class="side-header-inner custom-scroll">

            <nav class="side-header-menu" id="side-header-menu">
                <ul>
                    <li class="mt-2"><a href="/index"><i class="ti-home"></i> <span>TRANG CHÍNH</span></a></li>
                    <li class="mt-2 active"><a href="/roomrent"><i class="ti-exchange-vertical"></i> <span>THUÊ TRẢ PHÒNG</span></a></li>
                    <li class="mt-2"><a href="/main/reservation"><i class="ti-calendar"></i> <span>ĐẶT PHÒNG</span></a></li>
                    <li class="mt-2"><a href="/warehouse"><i class="fa fa-database"></i> <span>QUẢN LÝ KHO</span></a></li>
                    <li class="mt-2"><a href="/main/manager"><i class="zmdi zmdi-settings"></i> <span>QUẢN LÝ HỆ THỐNG</span></a></li>
                    <li class="mt-2"><a href="#"><i class="ti-user"></i> <span>TÀI KHOẢN</span></a></li>
                    <li class="mt-2"><a href="#"><i class="zmdi zmdi-sign-in"></i> <span>ĐĂNG XUẤT</span></a></li>

                </ul>
            </nav>

        </div><!-- Side Header Inner End -->
    </div><!-- Side Header End -->

    <!-- Content Body Start -->
    <div class="content-body">

        <!-- Page Headings Start -->
        <div class="row justify-content-between align-items-center mb-10">

            <!-- Page Heading Start -->
            <div class="col-12 col-lg-auto mb-20">
                <div class="page-heading">
                    <h3 class="title">Thuê - Trả phòng</h3>
                </div>
            </div><!-- Page Heading End -->

        </div><!-- Page Headings End -->

        <div class="row mbn-30">
            <div class="col-md-12">
            <div class="box">
                <div class="box-body">
                    <ul class="nav nav-tabs nav-justified">
                        <li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#waiting">Phòng chờ</a></li>
                        <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#rented">Phòng đang thuê</a></li>
                        <li class="nav-item"><a class="nav-link" data-toggle="tab" href="#history">Lịch sử</a></li>
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane fade show active" id="waiting">
                            <table class="table">
                                <thead>
                                <tr>
                                    <th>Tên phòng</th>
                                    <th>Trạng thái</th>
                                    <th>Tùy chọn</th>
                                </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="roomAvai" items="${roomAvais}">
                                        <tr>
                                            <td>${roomAvai.name}</td>
                                            <td>${roomAvai.roomStatus.name}</td>
                                            <td>
                                                <button class="button button-success"><span>Nhận phòng</span></button>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                        <div class="tab-pane fade" id="rented">
                            <table class="table">
                                <thead>
                                <tr>
                                    <th>Tên phòng</th>
                                    <th>Dịch vụ</th>
                                    <th>Thanh toán</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="roomRent" items="${roomRents}">
                                    <tr>
                                        <td>${roomRent.room.name}</td>
                                        <td><button class="button button-primary"><span>Thêm menu</span></button></td>
                                        <td><button class="button button-warning" onclick="handlePayment(${roomRent.id})"><span>Trả phòng</span></button></td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>

                            <label> Thanh toán </label>
                            <label id="thanhtoan"></label>
                            <label id="cachtinhtien"></label>
                        </div>
                        <div class="tab-pane fade" id="history">
                            <table class="table">
                                <thead>
                                <tr>
                                    <th>Tên phòng</th>
                                    <th>Thời gian trả phòng</th>
                                    <th>Số tiền thanh toán</th>
                                    <th>Tùy chọn</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="history" items="${histories}">
                                    <tr>
                                        <td id="his-room-name${history.id}">${history.room.name}</td>
                                        <td id="his-res-checkOut${history.id}">${history.reservation.checkOutDate}</td>
                                        <td id="his-cost${history.id}">${history.cost}</td>
                                        <td id="button${history.id}"><button id="${history.id}" class="button button-warning" onclick="showModal(this.id)"><span>Xóa</span></button></td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>

                            <!-- Modal -->
                            <div class="modal fade" id="modal-his" role="dialog">
                                <div class="modal-dialog modal-dialog-centered">
                                    <!-- Modal content-->
                                    <div class="modal-content">
                                        <div class="modal-body">
                                            <p>Bạn muốn xóa dữ liệu?</p>
                                        </div>
                                        <div class="modal-footer">
                                            <button id="button-modal" value="" type="button" class="btn btn-default" onclick="deleteHis(this.value)">Đồng ý</button>
                                            <button type="button" class="btn btn-default" data-dismiss="modal">Hủy bỏ</button>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                </div>
            </div>

        </div>

    </div><!-- Content Body End -->

    <!-- Footer Section Start -->
    <div class="footer-section">
        <div class="container-fluid">

            <div class="footer-copyright text-center">
                <p class="text-body-light">2019 @ T-Hotel</p>
            </div>

        </div>
    </div><!-- Footer Section End -->
    </div>

    <!-- JS
    ============================================ -->

    <!-- Global Vendor, plugins & Activation JS -->
    <script src="assets/js/vendor/modernizr-3.6.0.min.js"></script>
    <script src="assets/js/vendor/jquery-3.3.1.min.js"></script>
    <script src="assets/js/vendor/popper.min.js"></script>
    <script src="assets/js/vendor/bootstrap.min.js"></script>
    <!--Plugins JS-->
    <script src="assets/js/plugins/perfect-scrollbar.min.js"></script>
    <script src="assets/js/plugins/tippy4.min.js.js"></script>
    <!--Main JS-->
    <script src="assets/js/main.js"></script>

    <!-- Plugins & Activation JS For Only This Page -->

    <!--Moment-->
    <script src="assets/js/plugins/moment/moment.min.js"></script>

    <!--Echarts-->
    <script src="assets/js/plugins/chartjs/Chart.min.js"></script>
    <script src="assets/js/plugins/chartjs/chartjs.active.js"></script>

    <script>
        function handlePayment(id) {
            var xhttp = new XMLHttpRequest();
            xhttp.onreadystatechange = function() {
                if (this.readyState == 4 && this.status == 200) {
                    var myObj = JSON.parse(this.responseText);
                    displayPayment(myObj)
                }
            };
            xhttp.open("POST", "/roomrent/pay", true);
            xhttp.setRequestHeader("Content-type", "application/json");
            xhttp.send(JSON.stringify({id:id}));

            function displayPayment(res) {
                document.getElementById("thanhtoan").innerHTML = res.cost;
                document.getElementById("cachtinhtien").innerHTML = res.room.paymentMethod.price;
            }
        }

        function showModal(id) {
            document.getElementById("button-modal").value = id;
            $("#modal-his").modal("show");
        }

        function deleteHis(id) {
            var xhttp = new XMLHttpRequest();
            xhttp.onreadystatechange = function() {
                if (this.readyState == 4 && this.status == 200) {
                    updateViewAfterDeleteHis(id);
                }
            };
            xhttp.open("POST", "/main/reservation/delete/his", true);
            xhttp.setRequestHeader("Content-type", "application/json");
            xhttp.send(JSON.stringify({id:id}));
        }

        function updateViewAfterDeleteHis(id) {
            $("#modal-his").modal("hide");
            document.getElementById("his-room-name"+id).remove();
            document.getElementById("his-res-checkOut"+id).remove();
            document.getElementById("his-cost"+id).remove();
            document.getElementById("button"+id).remove();
        }
    </script>

</body>

</html>