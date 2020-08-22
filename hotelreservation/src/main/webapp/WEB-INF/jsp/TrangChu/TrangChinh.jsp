<html class="no-js" lang="en">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>T - Hotel</title>
    <meta name="robots" content="noindex, follow"/>
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
<c:if test="${pageContext.request.userPrincipal.name != null}">
    <form id="logoutForm" method="POST" action="${contextPath}/logout">
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
    </form>
</c:if>
<div class="main-wrapper">


    <!-- Header Section Start -->
    <div class="header-section">
        <div class="container-fluid">
            <div class="row justify-content-between align-items-center">

                <!-- Header Logo (Header Left) Start -->
                <div class="header-logo col-auto">
                    <a href="/index">
                        <img src="../assets/images/logo/thotel.png" alt="">
                    </a>
                </div><!-- Header Logo (Header Left) End -->

                <!-- Header Right Start -->
                <div class="header-right flex-grow-1 col-auto">
                    <div class="row justify-content-between align-items-center">

                        <!-- Side Header Toggle & Search Start -->
                        <div class="col-auto">
                            <div class="row align-items-center">

                                <!--Side Header Toggle-->
                                <div class="col-auto">
                                    <button class="side-header-toggle"><i class="zmdi zmdi-menu"></i></button>
                                </div>


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
                                             <span class="name">${pageContext.request.userPrincipal.name}</span>
                                            </span>
                                    </a>
                                    

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
                    <li class="mt-2 active"><a href="/index"><i class="ti-home"></i>
                        <span>TRANG CHÍNH</span></a></li>
                    <li class="mt-2"><a href="/roomrent"><i class="ti-exchange-vertical"></i> <span>THUÊ TRẢ PHÒNG</span></a>
                    </li>
                    <li class="mt-2"><a href="/main/reservation"><i class="ti-calendar"></i> <span>ĐẶT PHÒNG</span></a></li>
                    <li class="mt-2"><a href="/warehouse"><i class="fa fa-database"></i> <span>QUẢN LÝ KHO</span></a></li>
                    <li class="mt-2"><a href="/main/manager"><i class="zmdi zmdi-settings"></i> <span>QUẢN LÝ HỆ THỐNG</span></a>
                    </li>
                    <li class="mt-2"><a href="/user"><i class="ti-user"></i> <span>TÀI KHOẢN</span></a></li>
                    <li class="mt-2"><a onclick="document.forms['logoutForm'].submit()"><i class="zmdi zmdi-sign-in"></i><span>ĐĂNG XUẤT</span></a></li>

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
                    <h3>Thông tin hệ thống</h3>
                </div>
            </div><!-- Page Heading End -->

        </div><!-- Page Headings End -->

        <!-- Top Report Wrap Start -->
        <div class="row">
            <!-- Top Report Start -->
            <div class="col-xlg-3 col-md-6 col-12 mb-30">
                <div class="top-report">

                    <!-- Head -->
                    <div class="head">
                        <h4>Lượt Thuê</h4>
                        <a href="#" class="view"><i class="zmdi zmdi-eye"></i></a>
                    </div>

                    <!-- Content -->
                    <div class="content">
                        <h5>Hôm nay</h5>
                        <h2>0 Lượt</h2>
                    </div>

                    <!-- Footer -->
                    <div class="footer">
                        <button class="button button-info"><span><i class="ti-reload"></i>Cập nhật</span></button>
                    </div>

                </div>
            </div><!-- Top Report End -->

            <!-- Top Report Start -->
            <div class="col-xlg-3 col-md-6 col-12 mb-30">
                <div class="top-report">

                    <!-- Head -->
                    <div class="head">
                        <h4>Phòng Chờ</h4>
                        <a href="#" class="view"><i class="zmdi zmdi-eye"></i></a>
                    </div>

                    <!-- Content -->
                    <div class="content">
                        <h5>Hôm nay</h5>
                        <h2>1 Phòng</h2>
                    </div>

                    <!-- Footer -->
                    <div class="footer">
                        <button class="button button-info"><span><a href="/roomrent"><i class="ti-key"></i>Thuê phòng</span></button>
                    </div>

                </div>
            </div><!-- Top Report End -->

            <!-- Top Report Start -->
            <div class="col-xlg-3 col-md-6 col-12 mb-30">
                <div class="top-report">

                    <!-- Head -->
                    <div class="head">
                        <h4>Phòng đang thuê</h4>
                        <a href="#" class="view"><i class="zmdi zmdi-eye"></i></a>
                    </div>

                    <!-- Content -->
                    <div class="content">
                        <h5>Hôm nay</h5>
                        <h2>5 Phòng</h2>
                    </div>
                </div>
            </div><!-- Top Report End -->

        </div><!-- Top Report Wrap End -->

        <div class="row mbn-30">

            <!-- Revenue Statistics Chart Start -->
            <div class="col-md-8 mb-30">
                <div class="box">
                    <div class="box-head">
                        <h4 class="title">Revenue Statistics</h4>
                    </div>
                    <div class="box-body">
                        <div class="chart-legends-1 row">
                            <div class="chart-legend-1 col-12 col-sm-4">
                                <h5 class="title">Total Come-in</h5>
                                <h3 class="value text-secondary">$5000,000</h3>
                            </div>
                            <div class="chart-legend-1 col-12 col-sm-4">
                                <h5 class="title">Total View</h5>
                                <h3 class="value text-primary">10000,000</h3>
                            </div>
                        </div>
                        <div class="chartjs-revenue-statistics-chart">
                            <canvas id="chartjs-revenue-statistics-chart"></canvas>
                        </div>
                    </div>
                </div>
            </div><!-- Revenue Statistics Chart End -->

            <!-- Market Trends Chart Start -->
            <div class="col-md-4 mb-30">
                <div class="box">
                    <div class="box-head">
                        <h4 class="title">Market Trends</h4>
                    </div>
                    <div class="box-body">
                        <div class="chartjs-market-trends-chart">
                            <canvas id="chartjs-market-trends-chart"></canvas>
                        </div>
                    </div>
                </div>
            </div><!-- Market Trends Chart End -->

        </div><!-- Recent Transaction End -->

    </div>

</div><!-- Content Body End -->


<!-- Footer Section Start -->
<div class="footer-section">
    <div class="container-fluid">

        <div class="footer-copyright text-center">
            <p class="text-body-light">2020 &copy; T-Hotel</p>
        </div>

    </div>
</div><!-- Footer Section End -->


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

<!--VMap-->
<script src="assets/js/plugins/vmap/jquery.vmap.min.js"></script>
<script src="assets/js/plugins/vmap/maps/jquery.vmap.world.js"></script>
<script src="assets/js/plugins/vmap/maps/samples/jquery.vmap.sampledata.js"></script>
<script src="assets/js/plugins/vmap/vmap.active.js"></script>

</body>

</html>