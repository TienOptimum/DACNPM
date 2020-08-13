<html class="no-js" lang="en">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Đặt phòng</title>
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

    <div class="main-wrapper">


        <!-- Header Section Start -->
        <div class="header-section">
            <div class="container-fluid">
                <div class="row justify-content-between align-items-center">

                    <!-- Header Logo (Header Left) Start -->
                    <div class="header-logo col-auto">
                        <a href="/index">
                            <img src="../assets/images/logo/logo.png" alt="">
                            <img src="../assets/images/logo/logo-light.png" class="logo-light" alt="">
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
					    <li class="mt-2 active"><a href="/main/reservation"><i class="ti-calendar"></i> <span>ĐẶT PHÒNG</span></a></li>
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
				<div class="col-auto">
					<div class="row align-items-center">

                                    <!--Side Header Toggle-->
                                    <div class="col-auto">
										<div class="page-heading">
											<h3 class="title">Đặt phòng</h3>
										</div>
									</div>

                                    <!--Header Search-->
                                    <div class="col-auto">
                                        <div class="page-heading">
											<button class="button button-round button-success" onclick="swapFormOn('form-add')"><span>Thêm mới</span></button>
										</div>
                                    </div>
									<!--Footer Search-->

					</div>                
				</div><!-- Page Heading End -->
		

            </div>

			<!--Form start -->
            <div class="row" id="form-add" style="display: none;">

                <div class="col-12 mb-30">
					
					<div class="box">
                        <div class="box-head">
                            <h4 class="title">THÊM MỚI ĐẶT PHÒNG</h4>
                        </div>
                        <div class="box-body">
                            <form id="add" action="/main/reservation/create" method="post" modelAttribute="reservation">
                                <div class="row mbn-20">

									<div class="col-12 mb-20">
										<div class="row mbn-20">
										<!--Tên khách hàng -->
                                            <div class="col-lg-4 mb-20">
												<label>Họ tên khách hàng</label>
												<input type="text" name="customerName" class="form-control">
                                            </div>
										<!--Số điện thoại -->
                                            <div class="col-lg-4 mb-20">
												<label>Số điện thoại</label>
												<input type="number" name="phone" class="form-control">
                                            </div>
                                            
                                        </div>
									</div>
                                    
									<!--Date -->
									<div class="col-12 mb-20">
									
										<div class="row mbn-20">
										<!--Ngày nhận phòng -->
                                            <div class="col-lg-4 mb-20">
												<h6 class="mb-15">Ngày nhận phòng</h6>
<%--												<input type="text" class="form-control input-date-single" id="checkInDate" name="checkInDate">--%>
                                                <input type="datetime-local" id="checkInDate" name="checkInDate">
                                            </div>
										<!--Ngày trả phòng -->
                                            <div class="col-lg-4 mb-20">
												<h6 class="mb-15">Ngày trả phòng</h6>
<%--												<input type="text" class="form-control input-date-single" id="checkOutDate" name="checkOutDate">--%>
                                                <input type="datetime-local" id="checkOutDate" name="checkOutDate">
                                            </div>
                                            
                                        </div>
									</div>
									
									<!--Tiền trả trước -->
									<div class="col-12 mb-20">
                                        <label>Tiền trả trước</label>
                                        <input type="number" name="deposits" class="form-control">
                                    </div>
									
									<!--Loại phòng -->
									<div class="col-12 mb-20">
										<h6 class="mb-15">Loại phòng</h6>
										<div class="adomx-checkbox-radio-group inline">
                                            <c:forEach var="room" items="${rooms}">
											<label class="adomx-checkbox"><input type="checkbox" class="checkRoom" value="${room.id}"> <i class="icon"></i>${room.name} ${room.kindOfRoom.name}</label>
                                            </c:forEach>
										</div>
									</div>
									<!--Ghi chú -->
									<div class="col-12 mb-20">
                                        <textarea class="form-control" name="note" placeholder="Ghi chú"></textarea>
                                    </div>
                                </div>
                            </form>
                            <div class="col-12 mb-20">
                                <button class="button button-primary" onclick="test()">Lưu</button>
                                <button class="button button-danger" onclick="swapFormOff('form-add')"><span>Hủy</span></button>
                            </div>
                        </div>
                    </div>
				</div>
            </div>
            <!--Form end -->

            <div class="row" id="form-edit" style="display: none;">

                <div class="col-12 mb-30">

                    <div class="box">
                        <div class="box-head">
                            <h4 class="title">CHỈNH SỬA ĐẶT PHÒNG</h4>
                        </div>
                        <div class="box-body">
                            <form action="/main/reservation/create" method="post" modelAttribute="reservation">
                                <div class="row mbn-20">

                                    <div class="col-12 mb-20">
                                        <div class="row mbn-20">
                                            <input id="reservation-id" value="" style="display: none;">
                                            <!--Tên khách hàng -->
                                            <div class="col-lg-4 mb-20">
                                                <label>Họ tên khách hàng</label>
                                                <input type="text" id="cus-update" class="form-control">
                                            </div>
                                            <!--Số điện thoại -->
                                            <div class="col-lg-4 mb-20">
                                                <label>Số điện thoại</label>
                                                <input type="number" id="phone-update" class="form-control">
                                            </div>

                                        </div>
                                    </div>

                                    <!--Date -->
                                    <div class="col-12 mb-20">

                                        <div class="row mbn-20">
                                            <!--Ngày nhận phòng -->
                                            <div class="col-lg-4 mb-20">
                                                <h6 class="mb-15">Ngày nhận phòng</h6>
                                                <%--<input type="text" class="form-control input-date-single" id="checkInDate" name="checkInDate">--%>
                                                <input type="datetime-local" id="checkInDate-update">
                                            </div>
                                            <!--Ngày trả phòng -->
                                            <div class="col-lg-4 mb-20">
                                                <h6 class="mb-15">Ngày trả phòng</h6>
                                                <%--<input type="text" class="form-control input-date-single" id="checkOutDate" name="checkOutDate">--%>
                                                <input type="datetime-local" id="checkOutDate-update">
                                            </div>
                                        </div>
                                    </div>

                                    <!--Tiền trả trước -->
                                    <div class="col-12 mb-20">
                                        <label>Tiền trả trước</label>
                                        <input type="number" id="deposits-update" class="form-control">
                                    </div>

                                    <!--Loại phòng -->
                                    <div class="col-12 mb-20">
                                        <h6 class="mb-15">Loại phòng</h6>
                                        <div class="adomx-checkbox-radio-group inline">
                                            <c:forEach var="room" items="${rooms}">
                                                <label class="adomx-checkbox"><input id="room-id-update${room.id}" type="checkbox" class="checkRoom" value="${room.id}"> <i class="icon"></i>${room.name} ${room.kindOfRoom.name}</label>
                                            </c:forEach>
                                        </div>
                                    </div>
                                    <!--Ghi chú -->
                                    <div class="col-12 mb-20">
                                        <textarea class="form-control" id="note-update"></textarea>
                                    </div>
                                </div>
                            </form>
                            <div class="col-12 mb-20">
                                <button class="button button-primary" onclick="checkValid()">Lưu</button>
                                <button class="button button-danger" onclick="swapFormOff('form-edit')"><span>Hủy</span></button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
			
			<div class="row">

                <!--Basic Start-->
                <div class="col-12 mb-30">
                    <div class="box">
                        <div class="box-body">

                            <table class="table footable" data-paging="true" data-filtering="true" data-sorting="true" data-breakpoints='{ "xs": 480, "sm": 768, "md": 992, "lg": 1200, "xl": 1400 }'>
                                <thead>
                                    <tr>
                                        <th data-name="Name">Tên phòng</th>
                                        <th data-name="DateIn">Ngày nhận phòng</th>
                                        <th data-breakpoints="xs" data-name="DateOut">Ngày trả phòng</th>
                                        <th data-breakpoints="xs" data-name="CusName">Họ tên khách hàng</th>
                                        <th data-breakpoints="xs sm" >Nhận phòng</th>
                                        <th data-breakpoints="xs sm md" >Chỉnh sửa</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="historyReservation" items="${historyReservations}">
                                    <tr>
                                        <td id="history-room-name${historyReservation.id}"> ${historyReservation.room.name}</td>
                                        <td id="history-res-checkin-date${historyReservation.id}"> ${historyReservation.reservation.checkInDate}</td>
                                        <td id="history-res-checkout-date${historyReservation.id}"> ${historyReservation.reservation.checkOutDate}</td>
                                        <td id="history-res-cus-name${historyReservation.id}"> ${historyReservation.reservation.customerName}</td>
                                        <input id="history-res-phone${historyReservation.id}" value="${historyReservation.reservation.phone}" style="display: none;">
                                        <input id="history-res-deposits${historyReservation.id}" value="${historyReservation.reservation.deposits}" style="display: none;">
                                        <input id="history-res-note${historyReservation.id}" value="${historyReservation.reservation.note}" style="display: none;">
                                        <td id="button-start${historyReservation.id}"><button id="${historyReservation.id}" class="button button-round button-danger" onclick="start(this.id)"><span>Nhận phòng</span></button></td>
                                        <td id="button${historyReservation.id}"><button id="${historyReservation.id}" class="button button-success" onclick="swapFormUpdate('form-edit','form-add',this.id)"><span>Chỉnh sửa</span></button></td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>

                        </div>
                    </div>
                </div>
                <!--Basic End-->
            </div>
			
			</div>

            </div>


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

<script>
   function swapFormOn(on){
      var x = document.getElementById(on);
      x.style.display ="block";
   }
   
    function swapFormOff(off){
       var x = document.getElementById(off);
       x.style.display ="none";
   }
   
   function swapFormUpdate(on,off,id) {
       var x = document.getElementById(on);
       var y = document.getElementById(off);
       x.style.display ="block";
       y.style.display ="none";

       document.getElementById("reservation-id").value = id;
       document.getElementById("cus-update").value = document.getElementById("history-res-cus-name"+id).innerText;
       document.getElementById("phone-update").value = document.getElementById("history-res-phone"+id).value;
       document.getElementById("checkInDate-update").value = document.getElementById("history-res-checkin-date"+id).innerText;
       document.getElementById("checkOutDate-update").vale = document.getElementById("history-res-checkout-date"+id).innerText;
       document.getElementById("deposits-update").value = document.getElementById("history-res-deposits"+id).value;
       document.getElementById("note-update").value = document.getElementById("history-res-note"+id).value;
   }
   
   function start(id) {
       var xhttp = new XMLHttpRequest();
       xhttp.onreadystatechange = function() {
           if (this.readyState == 4 && this.status == 200) {
               window.location.replace("/roomrent");
           }
       };
       xhttp.open("POST", "/main/reservation/start", true);
       xhttp.setRequestHeader("Content-type", "application/json");
       xhttp.send(JSON.stringify({id:id}));
   }
   
   function deleteRes() {

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

    <script src="../assets/js/plugins/moment/moment.min.js"></script>

    <script src="../assets/js/plugins/daterangepicker/daterangepicker.js"></script>
    <script src="../assets/js/plugins/daterangepicker/daterangepicker.active.js"></script>
    <script src="../assets/js/plugins/inputmask/bootstrap-inputmask.js"></script>

    <script src="../assets/js/plugins/footable/footable.min.js"></script>
    <script src="../assets/js/plugins/footable/footable.active.js"></script>

    <script>
        function checkValid() {
            var checkIn = document.getElementById("checkInDate").value;
            var checkOut = document.getElementById("checkOutDate").value;
            var xhttp = new XMLHttpRequest();
            xhttp.onreadystatechange = function() {
                if (this.readyState == 4 && this.status == 200) {
                    handleCheckValid(this.responseText);
                }
            };
            xhttp.open("POST", "/main/reservation/room/check", true);
            xhttp.setRequestHeader("Content-type", "application/json");
            xhttp.send(JSON.stringify({checkIn:checkIn,checkOut:checkOut}));
        }
        const OK = 'ok';
        const FAILED = 'failed';
        function handleCheckValid(responseStatus) {
            if (responseStatus == OK) {
                // handleCheck();
                submitForm();
            }else {
                alert("Phòng được đặt đã trùng lịch!");
            }
        }

        function submitForm() {
            document.getElementById("add").submit();
        }

        function checkRoom() {
            var inputs = document.getElementsByClassName("checkRoom");
            var arr = Array.from(inputs);
            var result = []
            for (let i = 0; i < arr.length ; i++){
                if (arr[i].checked == true){
                    result.push(arr[i].value)
                }
            }
            return result;
        }

        // function handleCheck() {
        //     $.ajax({
        //         url: "/main/reservation/checkedRoom",
        //         type: 'POST',
        //         dataType: 'json',
        //         data: JSON.stringify(checkRoom())
        //         ,
        //         headers : {
        //             'Accept' : 'application/json',
        //             'Content-Type' : 'application/json'
        //         },
        //     }).done(function(ketqua) {
        //         console.log(ketqua)
        //     });
        // }

        function test() {
            var xhttp = new XMLHttpRequest();
            xhttp.onreadystatechange = function() {
                if (this.readyState == 4 && this.status == 200) {
                    checkValid();
                }
            };
            xhttp.open("POST", "/main/reservation/checkedRoom", true);
            xhttp.setRequestHeader("Content-type", "application/json");
            xhttp.send(JSON.stringify(checkRoom()));
        }
    </script>
</body>

</html>