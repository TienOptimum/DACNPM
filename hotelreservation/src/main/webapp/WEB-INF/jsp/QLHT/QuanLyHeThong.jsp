<html class="no-js" lang="en">
<%@ page contentType="text/html; charset=UTF-8" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Quản lý hệ thống</title>
    <meta name="robots" content="noindex, follow" />
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="assets/images/favicon.ico">

    <!-- CSS
	============================================ -->

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="../assets/css/vendor/bootstrap.min.css">

    <!-- Icon Font CSS -->
    <link rel="stylesheet" href="../assets/css/vendor/material-design-iconic-font.min.css">
    <link rel="stylesheet" href="../assets/css/vendor/font-awesome.min.css">
    <link rel="stylesheet" href="../assets/css/vendor/themify-icons.css">
    <link rel="stylesheet" href="../assets/css/vendor/cryptocurrency-icons.css">

    <!-- Plugins CSS -->
    <link rel="stylesheet" href="../assets/css/plugins/plugins.css">

    <!-- Helper CSS -->
    <link rel="stylesheet" href="../assets/css/helper.css">

    <!-- Main Style CSS -->
    <link rel="stylesheet" href="../assets/css/style.css">

    <!-- Custom Style CSS Only For Demo Purpose -->
    <link id="cus-style" rel="stylesheet" href="../assets/css/style-primary.css">

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
                                            <img src="../assets/images/avatar/avatar-1.jpg" alt="">
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
					    <li class="mt-2"><a href="/roomrent"><i class="ti-exchange-vertical"></i> <span>THUÊ TRẢ PHÒNG</span></a></li>
					<li class="mt-2"><a href="/main/reservation"><i class="ti-calendar"></i> <span>ĐẶT PHÒNG</span></a></li>
                        <li class="mt-2"><a href="/warehouse"><i class="fa fa-database"></i> <span>QUẢN LÝ KHO</span></a></li>
						<li class="mt-2 active"><a href="/main/manager"><i class="zmdi zmdi-settings"></i> <span>QUẢN LÝ HỆ THỐNG</span></a></li>
						<li class="mt-2"><a href="#"><i class="ti-user"></i> <span>TÀI KHOẢN</span></a></li>
						<li class="mt-2"><a onclick="document.forms['logoutForm'].submit()"><i class="zmdi zmdi-sign-in"></i><span>ĐĂNG XUẤT</span></a></li>
                  
                    </ul>
                </nav>

            </div><!-- Side Header Inner End -->
        </div><!-- Side Header End -->

        <!-- Content Body Start -->
        <div class="content-body">

            <!-- Top Report Wrap Start -->
            <div class="row">
                <!-- Top Report Start -->
                <div class="col-md-3 col-12 mb-30">
				<a href="/main/paymentMethod">
                    <div class="card " style="width: 13rem; box-shadow: 0 3px 3px rgba(0,0,0,0.12), 0 1px 2px rgba(0,0,0,0.24);">    
                        <!-- Content -->
                        <div class="card-body text-center">
                            <i style="font-size: 40px;color: #03a9f4" class="zmdi zmdi-memory"></i>
                        </div>

                        <!-- Footer -->
                        <div class="card-footer text-center">
						<span>Cách tính tiền</span>
                        </div>
                    </div>
				</a>
				
                </div><!-- Top Report End -->

                <!-- Top Report Start -->
                <div class="col-md-3 col-12 mb-30">
                    <a href="/main/kindofroom">
                    <div class="card" style="width: 13rem; box-shadow: 0 3px 3px rgba(0,0,0,0.12), 0 1px 2px rgba(0,0,0,0.24);">    
                        <!-- Content -->
                        <div class="card-body text-center">
                            <i style="font-size: 40px;color: #03a9f4" class="zmdi zmdi-home"></i>
                        </div>

                        <!-- Footer -->
                        <div class="card-footer text-center">
						<span>Loại phòng</span>
                        </div>
                    </div>
				</a>
                </div><!-- Top Report End -->

                <!-- Top Report Start -->
                <div class="col-md-3 col-12 mb-30">
                    <a href="/main/room">
                    <div class="card" style="width: 13rem; box-shadow: 0 3px 3px rgba(0,0,0,0.12), 0 1px 2px rgba(0,0,0,0.24);">    
                        <!-- Content -->
                        <div class="card-body text-center">
                           <i style="font-size: 40px;color: #03a9f4" class="zmdi zmdi-airline-seat-individual-suite"></i>
                        </div>

                        <!-- Footer -->
                        <div class="card-footer text-center">
							<span>Phòng</span>
                        </div>
                    </div>
				</a>
                </div><!-- Top Report End -->

                <!-- Top Report Start -->
                <div class="col-md-3 col-12 mb-30">
                   <a href="/main/menu">
                    <div class="card" style="width: 13rem; box-shadow: 0 3px 3px rgba(0,0,0,0.12), 0 1px 2px rgba(0,0,0,0.24);">    
                        <!-- Content -->
                        <div class="card-body text-center">
                          <i style="font-size: 40px;color: #03a9f4" class="zmdi zmdi-menu"></i>
                        </div>

                        <!-- Footer -->
                        <div class="card-footer text-center">
						<span>Menu</span>
                        </div>
                    </div>
				</a>
                </div><!-- Top Report End -->
            </div><!-- Top Report Wrap End -->
			
			 <!-- Bottom Report Wrap Start -->
            <div class="row">
                <!-- Top Report Start -->
                <div class="col-md-3 col-12 mb-30">
				<a href="#">
                    <div class="card " style="width: 13rem; box-shadow: 0 3px 3px rgba(0,0,0,0.12), 0 1px 2px rgba(0,0,0,0.24);">    
                        <!-- Content -->
                        <div class="card-body text-center">
                            <i style="font-size: 40px;color: #03a9f4" class="ti-pie-chart"></i>
                        </div>

                        <!-- Footer -->
                        <div class="card-footer text-center">
							<span>Tài khoản phụ</span>
                        </div>
                    </div>
				</a>
				
                </div><!-- Top Report End -->

                <!-- Top Report Start -->
                <div class="col-md-3 col-12 mb-30">
                    <a href="#">
                    <div class="card" style="width: 13rem; box-shadow: 0 3px 3px rgba(0,0,0,0.12), 0 1px 2px rgba(0,0,0,0.24);">    
                        <!-- Content -->
                        <div class="card-body text-center">
                            <i style="font-size: 40px;color: #03a9f4" class="zmdi zmdi-chart"></i>
                        </div>

                        <!-- Footer -->
                        <div class="card-footer text-center">
							<span>Thống kê</span>
                        </div>
                    </div>
				</a>
                </div><!-- Top Report End -->

                <!-- Top Report Start -->
                <div class="col-md-3 col-12 mb-30">
                    <a href="#">
                    <div class="card" style="width: 13rem; box-shadow: 0 3px 3px rgba(0,0,0,0.12), 0 1px 2px rgba(0,0,0,0.24);">    
                        <!-- Content -->
                        <div class="card-body text-center">
                           <i style="font-size: 40px;color: #03a9f4" class="fa fa-history"></i>
                        </div>

                        <!-- Footer -->
                        <div class="card-footer text-center">
						<span>Lịch sử</span>
                        </div>
                    </div>
				</a>
                </div><!-- Top Report End -->

                <!-- Top Report Start -->
                <div class="col-md-3 col-12 mb-30">
                   <a href="#">
                    <div class="card" style="width: 13rem; box-shadow: 0 3px 3px rgba(0,0,0,0.12), 0 1px 2px rgba(0,0,0,0.24);">    
                        <!-- Content -->
                        <div class="card-body text-center">
                          <i style="font-size: 40px;color: #03a9f4" class="ti-settings"></i>
                        </div>

                        <!-- Footer -->
                        <div class="card-footer text-center">
							<span>Thiết lập khác</span>
                        </div>
                    </div>
				</a>
                </div><!-- Top Report End -->
            </div><!-- Bottom Report Wrap End -->

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

    </div>

    <!-- JS
============================================ -->

    <!-- Global Vendor, plugins & Activation JS -->
    <script src="../assets/js/vendor/modernizr-3.6.0.min.js"></script>
    <script src="../assets/js/vendor/jquery-3.3.1.min.js"></script>
    <script src="../assets/js/vendor/popper.min.js"></script>
    <script src="../assets/js/vendor/bootstrap.min.js"></script>
    <!--Plugins JS-->
    <script src="../assets/js/plugins/perfect-scrollbar.min.js"></script>
    <script src="../assets/js/plugins/tippy4.min.js.js"></script>
    <!--Main JS-->
    <script src="../assets/js/main.js"></script>

    <!-- Plugins & Activation JS For Only This Page -->

    <!--Moment-->
    <script src="../assets/js/plugins/moment/moment.min.js"></script>

    <!--Echarts-->
    <script src="../assets/js/plugins/chartjs/Chart.min.js"></script>
    <script src="../assets/js/plugins/chartjs/chartjs.active.js"></script>

    <!--VMap-->
    <script src="../assets/js/plugins/vmap/jquery.vmap.min.js"></script>
    <script src="../assets/js/plugins/vmap/maps/jquery.vmap.world.js"></script>
    <script src="../assets/js/plugins/vmap/maps/samples/jquery.vmap.sampledata.js"></script>
    <script src="../assets/js/plugins/vmap/vmap.active.js"></script>

</body>

</html>