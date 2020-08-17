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
                    <li class="mt-2"><a href="/index"><i class="ti-home"></i> <span>TRANG CHÍNH</span></a></li>
                    <li class="mt-2 active"><a href="/roomrent"><i class="ti-exchange-vertical"></i> <span>THUÊ TRẢ PHÒNG</span></a></li>
                    <li class="mt-2"><a href="/main/reservation"><i class="ti-calendar"></i> <span>ĐẶT PHÒNG</span></a></li>
                    <li class="mt-2"><a href="/warehouse"><i class="fa fa-database"></i> <span>QUẢN LÝ KHO</span></a></li>
                    <li class="mt-2"><a href="/main/manager"><i class="zmdi zmdi-settings"></i> <span>QUẢN LÝ HỆ THỐNG</span></a></li>
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
                    <h3 class="title">Thuê - Trả phòng</h3>
                </div>
            </div><!-- Page Heading End -->

        </div><!-- Page Headings End -->

        <div class="row" id="form-add" style="display: none;">

            <div class="col-12 mb-30">

                <div class="box">
                    <div class="box-head">
                        <h4 class="title">Nhận phòng</h4>
                    </div>
                    <div class="box-body">
                        <form >
                            <div class="row mbn-20">

                                <div class="col-12 mb-20">
                                    <div class="row mbn-20">
                                        <input id="room-reservation" value="" style="display: none;">
                                        <!--Tên khách hàng -->
                                        <div class="col-lg-4 mb-20">
                                            <label>Họ tên khách hàng</label>
                                            <input id="name-cus" type="text"  class="form-control">
                                        </div>
                                        <!--Số điện thoại -->
                                        <div class="col-lg-4 mb-20">
                                            <label>Số điện thoại</label>
                                            <input id="phone" type="number"  class="form-control">
                                        </div>

                                    </div>
                                </div>

                                <!--Date -->
                                <div class="col-12 mb-20">
                                    <div class="row mbn-20">
                                        <!--Ngày trả phòng -->
                                        <div class="col-lg-4 mb-20">
                                            <h6 class="mb-15">Ngày trả phòng</h6>
                                            <input id="check-out-date" type="datetime-local" >
                                        </div>

                                    </div>
                                </div>

                                <!--Tiền trả trước -->
                                <div class="col-12 mb-20">
                                    <label>Tiền trả trước</label>
                                    <input id="tien-tra-truoc" type="number" class="form-control">
                                </div>
                            </div>
                        </form>
                        <div class="col-12 mb-20">
                            <button class="button button-primary" onclick="handleReservation()">Nhận phòng</button>
                            <button class="button button-danger" onclick="turnOffForm('form-add')"><span>Hủy</span></button>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="row" id="form-menu" style="display: none;">
            <div class="col-12 mb-30">
                <div class="box">
                    <div class="box-head">
                        <h4 class="title">Thêm Menu</h4>
                    </div>
                    <div class="box-body">
                        <form>
                            <div class="row mbn-20">
                                <div class="col-12 mb-20">
                                    <div class="row mbn-20">
                                        <!--Loại Menu -->
                                        <div class="col-lg-2 mb-20">
                                            <label>Loại menu</label>
                                                <input id="reservation-menu" value="" style="display:none;">
                                                <select class="form-control" id="type-menu">
                                                    <c:forEach var="menu" items="${menus}">
                                                        <option value="${menu.id}">${menu.name}</option>
                                                    </c:forEach>
                                                </select>
                                            <input id="amount-menu" type="number" class="form-control">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form>
                        <div class="col-12 mb-20">
                            <button class="button button-primary" onclick="handleAddMenu()">Thêm dịch vụ</button>
                            <button class="button button-danger" onclick="turnOffForm('form-menu')"><span>Hủy</span></button>
                        </div>
                    </div>
                </div>
            </div>
        </div>

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
                                    <th>Thông tin phòng</th>
                                    <th>Tùy chọn</th>
                                </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="roomAvai" items="${roomAvais}">
                                        <tr>
                                            <td id="room-avai-name${roomAvai.id}">${roomAvai.name}</td>
                                            <td id="room-avai-des${roomAvai.id}">${roomAvai.description}</td>
                                            <td id="button-room-avai${roomAvai.id}">
                                                <button id="${roomAvai.id}" class="button button-success" onclick="turnOnForm('form-add',this.id)"><span>Nhận phòng</span></button>
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
                                  <td><button class="button button-primary" onclick="turnOnFormMenu(${roomRent.id})"><span>Thêm menu</span></button></td>
                                  <td><button class="button button-warning" onclick="handlePayment(${roomRent.id})"><span>Trả phòng</span></button></td>
                              </tr>
                          </c:forEach>
                          </tbody>
                      </table>
							<!-- Thanh toán -->
                      <div class="col-md-4 order-md-2 mb-4" id="payment" style="display: none;">
                          <h4 class="d-flex justify-content-between align-items-center mb-3">
                              <span class="text-muted">Thanh toán</span>
                          </h4>
                          <ul class="list-group mb-3">
                              <li class="list-group-item d-flex justify-content-between lh-condensed">
                                  <div>
                                      <h6 class="my-0">Thời gian nhận phòng</h6>
                                  </div>
                                  <strong id="checkin"></strong>
                              </li>
                              <li class="list-group-item d-flex justify-content-between lh-condensed">
                                  <div>
                                      <h6 class="my-0">Thời gian trả phòng</h6>
                                  </div>
                                  <strong id="checkout"></strong>
                              </li>
                              <li class="list-group-item d-flex justify-content-between lh-condensed">
                                  <div>
                                      <h6 class="my-0">Tiền phòng</h6>
                                  </div>
                                  <strong id="cachtinhtien"></strong>
                              </li>
                              <li class="list-group-item d-flex justify-content-between lh-condensed">
                                  <div>
                                      <h6 class="my-0">Phụ thu</h6>
                                  </div>
                                  <strong id="phuthu"></strong>
                              </li>
                              <li class="list-group-item d-flex justify-content-between lh-condensed">
                                  <div>
                                      <h6 class="my-0">Tiền menu</h6>
                                  </div>
                                  <strong id="tienmenu"></strong>
                              </li>
                              <li class="list-group-item d-flex justify-content-between lh-condensed">
                                  <div>
                                      <h6 class="my-0">Tổng tiền</h6>
                                  </div>
                                  <strong id="tongtien"></strong>
                              </li>

                              <li class="list-group-item d-flex justify-content-between lh-condensed">
                                  <div>
                                      <h6 class="my-0">Tiền đã trả trước</h6>
                                  </div>
                                  <strong id="tientratruoc"></strong>
                              </li>

                              <li class="list-group-item d-flex justify-content-between">
                                  <span>Tiền cần thanh toán</span>
                                  <strong id="thanhtoan"></strong>
                              </li>
                          </ul>
                          <div class="card p-2">
                              <button  class="btn btn-secondary" onclick="confirmPay()">Xác nhận</button>
                          </div>
                      </div>
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
	</div>
	<!-- Content Body End -->

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
            document.getElementById("payment").style.display ="block";
			
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
			
            function displayPayment(bill) {
                document.getElementById("thanhtoan").innerHTML = bill.total_pay;
                document.getElementById("cachtinhtien").innerHTML = bill.room_price;
                var checkIn = bill.checkInDate;
                var d = new Date(checkIn);
				document.getElementById("checkin").innerHTML = d.getDate() + "/" + (d.getMonth()+1) + "/" + d.getFullYear() +" " + d.getHours() +":" + d.getMinutes();
                var checkOut = bill.checkOutDate;
                var d = new Date(checkOut);
                document.getElementById("checkout").innerHTML = d.getDate() + "/" + (d.getMonth()+1) + "/" + d.getFullYear() +" " + d.getHours() +":" + d.getMinutes();
                document.getElementById("phuthu").innerHTML = bill.surcharge;
                document.getElementById("tienmenu").innerHTML = bill.menu_price;
                document.getElementById("tientratruoc").innerHTML = bill.deposits;
                document.getElementById("tongtien").innerText = bill.total_cost;
            }
        }

        function confirmPay() {
            document.getElementById("payment").style.display ="none";
            window.location.replace("/roomrent");
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
		
		function turnOffForm(off){
			var x = document.getElementById(off);
			x.style.display ="none";
		}
		
		function turnOnForm(on,id){
			var x = document.getElementById(on);
            document.getElementById("room-reservation").value = id;
			x.style.display ="block";
		}

		function handleReservation() {
            var checkOut = document.getElementById("check-out-date").value;
            var id = document.getElementById("room-reservation").value;

            var checkIn = new Date();
            var xhttp = new XMLHttpRequest();
            xhttp.onreadystatechange = function() {
                if (this.readyState == 4 && this.status == 200) {
                    handleCheckValid(this.responseText);
                }
            };
            xhttp.open("POST", "/main/reservation/room/checkOffline", true);
            xhttp.setRequestHeader("Content-type", "application/json");
            xhttp.send(JSON.stringify({checkIn:checkIn,checkOut:checkOut,id:id}));
        }

        function reservationOffline() {
            var dd = new Date();
            dd.setHours(0,0,0,0);


            var reservationOffline = {
                nameCus:document.getElementById("name-cus").value,
                phone:document.getElementById("phone").value,
                check_in_date:dd,
                check_out_date:document.getElementById("check-out-date").value,
                tien_tra_truoc:document.getElementById("tien-tra-truoc").value,
                room_id:document.getElementById("room-reservation").value
            }
            return reservationOffline;
        }

        const OK = 'ok';
        const FAILED = 'failed';
        function handleCheckValid(responseStatus) {
            if (responseStatus == OK) {
                var xhttp = new XMLHttpRequest();
                xhttp.onreadystatechange = function() {
                    if (this.readyState == 4 && this.status == 200) {
                        window.location.replace("/roomrent");
                    }
                };
                xhttp.open("POST", "/main/reservation/createOffline", true);
                xhttp.setRequestHeader("Content-type", "application/json");
                xhttp.send(JSON.stringify(reservationOffline()));
            }else {
                alert("Phòng đã được đặt trước trong khoảng thời gian đã chọn!");
            }
        }

        function turnOnFormMenu(id) {
            document.getElementById("form-menu").style.display = "block";
            document.getElementById("reservation-menu").value = id;
        }

        function handleAddMenu() {
            var menu_id = document.getElementById("type-menu").value;
            var amount = document.getElementById("amount-menu").value;
            var id = document.getElementById("reservation-menu").value;

            var xhttp = new XMLHttpRequest();
            xhttp.onreadystatechange = function() {
                if (this.readyState == 4 && this.status == 200) {
                    afterAddMenu();
                }
            };
            xhttp.open("POST", "/main/reservation/addMenu", true);
            xhttp.setRequestHeader("Content-type", "application/json");
            xhttp.send(JSON.stringify({menu_id:menu_id,amount:amount,id:id}));
        }
        
        function afterAddMenu() {
            document.getElementById("form-menu").style.display = "none";
        }
    </script>

</body>

</html>