
<html class="no-js" lang="en">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>QLHT-Cách tính tiền</title>
    <meta name="robots" content="noindex, follow" />
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Favicon -->
    <link rel="shortcut icon" type="image/x-icon" href="../assets/images/favicon.ico">

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
                        <li class="mt-2"><a href="/index"><i class="ti-home"></i> <span>TRANG CHÍNH</span></a></li>
					    <li class="mt-2"><a href="/roomrent"><i class="ti-exchange-vertical"></i> <span>THUÊ TRẢ PHÒNG</span></a></li>
					    <li class="mt-2"><a href="/main/reservation"><i class="ti-calendar"></i> <span>ĐẶT PHÒNG</span></a></li>
                        <li class="mt-2"><a href="/warehouse"><i class="fa fa-database"></i> <span>QUẢN LÝ KHO</span></a></li>
						<li class="mt-2 active"><a href="/main/manager"><i class="zmdi zmdi-settings"></i> <span>QUẢN LÝ HỆ THỐNG</span></a></li>
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
				<div class="col-auto">
					<div class="row align-items-center">
                        <!--Side Header Toggle-->
                        <div class="col-auto">
                            <div class="page-heading">
                                <h3 class="title">Cách tính tiền</h3>
                            </div>
                        </div>
                        <!--Header Search-->
                        <div class="col-auto">
                            <div class="page-heading">
                                <button class="button button-round button-success" onclick="swapForm('form-add','form-edit')"><span>Thêm mới</span></button>
                            </div>
                        </div>
                        <!--Footer Search-->
					</div>
				</div><!-- Page Heading End -->
            </div>

			<!--Div form add start -->
            <div class="row" id="form-add" style="display: none;">
                <div class="col-12 mb-30">
					<div class="box">
                        <div class="box-head">
                            <h4 class="title">THÊM MỚI CÁCH TÍNH</h4>
                        </div>
                        <div class="box-body">
						<!--Form start -->
                            <form action="/main/paymentmethod/create" method="post" modelAttribute="paymentMethod">
                                <div class="row mbn-20">
									<div class="col-12 mb-20">
										<div class="row mbn-20">
										<!--Tên menu-->
                                            <div class="col-lg-4 mb-20">
												<label>Tên cách tính</label>
												<input type="text" name="name" class="form-control">
                                            </div>				
                                        </div>
									</div>
                                    
									<div class="col-12 mb-20">
										<div class="row mbn-20">
										<!--Giờ block đầu -->
                                            <div class="col-lg-4 mb-20">
												<label>Giá</label>
												<input type="number" name="price" class="form-control">
                                            </div>
										<!--Giờ nhận phòng -->
                                            <div class="col-lg-4 mb-20">
												<label>Giờ nhận phòng</label>
												<input type="text" name="checkInTime" maxlength="5" class="form-control">
                                            </div>
										<!--Giá trả phòng -->
											 <div class="col-lg-4 mb-20">
												<label>Giờ trả phòng</label>
												<input type="text" name="checkOutTime" maxlength="5" class="form-control">
                                            </div>
                                        </div>
									</div>
									
									<!--Phụ thu quá giờ -->
									<div class="col-12 mb-20">
										<div class="row mbn-20">
										<!--Phụ thu quá giờ-->
                                            <div class="col-lg-4 mb-20">
												<label>Phụ thu quá giờ</label>
												<input type="number" name="surcharge" class="form-control">
                                            </div>
                                        </div>
									</div>
									
									<!--Giá cuối tuần và ngày lễ-->
									<div class="col-12 mb-20">
										<div class="row mbn-20">
                                            <div class="col-lg-4 mb-20">
												<label>Giá cuối tuần và ngày lễ</label>
												<input type="number" name="priceForHoliday" class="form-control">
                                            </div>
                                        </div>
									</div>

                                    <div class="col-12 mb-20">
                                        <input type="submit" value="Thêm" class="button button-primary">                                   
                                    </div>

                                </div>
                            </form>
                            <button class="button button-danger" onclick="turnOffForm('form-add')"><span>Hủy</span></button>
							<!--Form end --> 
                        </div>
                    </div>
				</div>
            </div>
            <!-- Div form add end --> 
			
			<!-- Div form edit start -->
			<div class="row" id="form-edit" style="display: none;">
                <div class="col-12 mb-30">
					<div class="box">
                        <div class="box-head">
                            <h4 class="title">CHỈNH SỬA CÁCH TÍNH</h4>
                        </div>
                         <div class="box-body">
						<!--Form start -->
                            <form>
                                <div class="row mbn-20">
                                    <div class="col-12 mb-20">
                                        <div class="row mbn-20">
                                            <!--Tên menu-->
                                            <div class="col-lg-4 mb-20">
                                                <label>Tên cách tính</label>
                                                <input type="text" name="name" class="form-control">
                                            </div>
                                        </div>
                                    </div>

                                    <div class="col-12 mb-20">
                                        <div class="row mbn-20">
                                            <div class="col-lg-4 mb-20">
                                                <label>Giá</label>
                                                <input type="number" name="price" class="form-control">
                                            </div>
                                            <div class="col-lg-4 mb-20">
                                                <label>Giờ nhận phòng</label>
                                                <input type="text" name="checkInTime" maxlength="5" class="form-control">
                                            </div>
                                            <div class="col-lg-4 mb-20">
                                                <label>Giờ trả phòng</label>
                                                <input type="text" name="checkOutTime" maxlength="5" class="form-control">
                                            </div>
                                        </div>
                                    </div>

                                    <!--Phụ thu quá giờ -->
                                    <div class="col-12 mb-20">
                                        <div class="row mbn-20">
                                            <!--Phụ thu quá giờ-->
                                            <div class="col-lg-4 mb-20">
                                                <label>Phụ thu quá giờ</label>
                                                <input type="number" name="surcharge" class="form-control">
                                            </div>

                                        </div>
                                    </div>

                                    <!--Giá cuối tuần và ngày lễ-->
                                    <div class="col-12 mb-20">
                                        <div class="row mbn-20">
                                            <div class="col-lg-4 mb-20">
                                                <label>Giá cuối tuần và ngày lễ</label>
                                                <input type="number" name="priceForHoliday" class="form-control">
                                            </div>

                                        </div>
                                    </div>

                                    <div class="col-12 mb-20">
                                        <button onclick="update()" class="button button-primary"><span>Cập nhật</span></button>
                                        <button class="button button-warning"><span>Xóa</span></button>
                                        <button class="button button-danger" onclick="swapFormOff('form-add')"><span>Hủy</span></button>
                                    </div>

                                </div>
                            </form>
							<!--Form end -->
                        </div>
                    </div>
				</div>
			</div>
			<!-- Div form edit end --> 
			
			<div class="row">
                <!--Basic Start-->
                <div class="col-12 mb-30">
                    <div class="box">
                        <div class="box-body">

                            <table class="table footable" data-paging="true" data-filtering="true" data-sorting="true" data-breakpoints='{ "xs": 480, "sm": 768, "md": 992, "lg": 1200, "xl": 1400 }'>
                                <thead>
                                    <tr>
                                        <th data-name="Name">Cách tính tiền</th>
                                        <th data-name="Type">Giá</th>
                                        <th data-breakpoints="xs" >Phụ thu</th>
                                        <th data-breakpoints="xs" >Chỉnh sửa</th>

                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="paymentmethod" items="${paymentmethods}">
                                        <tr>
                                            <td>${paymentmethod.name}</td>
                                            <td>${paymentmethod.price}</td>
                                            <td>${paymentmethod.surcharge}₫/Giờ</td>
									        <td><button class="button button-success" onclick="swapForm('form-edit','form-add')"><i class="zmdi zmdi-edit zmdi-hc-fw"></i><span>Chỉnh sửa</span></button></td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <!--Basic End-->
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

<script>
   function swapForm(on,off){
      var x = document.getElementById(on);
	  var y = document.getElementById(off);
      x.style.display ="block";
	  y.style.display ="none";
   }
   
    function turnOffForm(off){
      var x = document.getElementById(off);
      x.style.display ="none";
   }
</script>

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
	<script src="../assets/js/plugins/moment/moment.min.js"></script>
	
	
    <script src="../assets/js/plugins/daterangepicker/daterangepicker.js"></script>
    <script src="../assets/js/plugins/daterangepicker/daterangepicker.active.js"></script>
    <script src="../assets/js/plugins/inputmask/bootstrap-inputmask.js"></script>
	
	<script src="../assets/js/plugins/footable/footable.min.js"></script>
    <script src="../assets/js/plugins/footable/footable.active.js"></script>

</body>

</html>