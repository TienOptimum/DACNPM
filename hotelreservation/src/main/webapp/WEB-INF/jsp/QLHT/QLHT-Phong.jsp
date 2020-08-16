<html class="no-js" lang="en">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>QLHT - Phòng</title>
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
                                                <c:if test="${pageContext.request.userPrincipal.name != null}">
                                              <span class="name">${pageContext.request.userPrincipal.name}</span>
                                                </c:if>
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
						<li class="mt-2"><a href="#"><i class="ti-user"></i> <span>TÀI KHOẢN</span></a></li>
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
											<h3 class="title">Phòng</h3>
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
                            <h4 class="title">THÊM MỚI PHÒNG</h4>
                        </div>
                        <div class="box-body">
						<!--Form start -->
                            <form id="add" action="/main/room/create" method="post" modelAttribute="roomParam">
                                <div class="row mbn-20">

									<div class="col-12 mb-20">
										<div class="row mbn-20">
										<!--Tên phòng -->
                                            <div class="col-lg-4 mb-20">
												<label>Tên phòng</label>
												<input id="roomName" type="text" name="name" class="form-control">
                                            </div>
                                        </div>
									</div>
                                    
									<div class="col-12 mb-20">
										<div class="row mbn-20">
										<!--Loại phòng -->
                                            <div class="col-lg-4 mb-20">
												<label>Loại phòng</label>
												<select class="form-control" name="kind_of_room_id">
													<optgroup label="Loại phòng">
                                                        <c:forEach var="kindofroom" items="${kindofrooms}">
                                                            <option value="${kindofroom.id}" label="${kindofroom.name}">${kindofroom.name}</option>
                                                        </c:forEach>
													</optgroup>
												</select>
                                            </div>
										<!--Cách tính tiền -->
                                            <div class="col-lg-4 mb-20">
												<label>Cách tính tiền</label>
												<select class="form-control" name="payment_method_id">
													<optgroup label="Cách tính tiền">
                                                        <c:forEach var="paymentmethod" items="${paymentmethods}">
                                                            <option value="${paymentmethod.id}" label="${paymentmethod.name}">${paymentmethod.name}</option>
                                                        </c:forEach>
													</optgroup>
												</select>
                                            </div>
                                            
                                        </div>
									</div>
									
									<!--Mô tả -->	
									<div class="col-12 mb-20">
										<div class="row mbn-20">
											<div class="col-lg-4 mb-20">
												<label>Mô tả</label>
												<input type="text" name="description" class="form-control">
											</div>
										</div>
									</div>


                                </div>
                            </form>
                            <div class="col-12 mb-20">
                                <button class="button button-primary" onclick="checkValid()"><span>Lưu</span></button>
                                <button class="button button-danger" onclick="swapFormOff('form-add')"><span>Hủy</span></button>
                            </div>
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
                            <h4 class="title">CHỈNH SỬA PHÒNG</h4>
                        </div>
                        <div class="box-body">
						<!--Form start -->
                                <div class="row mbn-20">

									<div class="col-12 mb-20">
										<div class="row mbn-20">
                                            <input id="room-id" value="" style="display: none;">
										<!--Tên phòng -->
                                            <div class="col-lg-4 mb-20">
												<label>Tên phòng</label>
												<input id="name-update" type="text" class="form-control">
                                            </div>
                                        </div>
									</div>
                                    
									<div class="col-12 mb-20">
									
										<div class="row mbn-20">
										<!--Loại phòng -->
                                            <div class="col-lg-4 mb-20">
												<label>Loại phòng</label>
												<select class="form-control" id="kindOfRoom-update">
                                                    <c:forEach var="kindofroom" items="${kindofrooms}">
                                                        <option value="${kindofroom.id}">${kindofroom.name}</option>
                                                    </c:forEach>
												</select>
                                            </div>
										<!--Cách tính tiền -->
                                            <div class="col-lg-4 mb-20">
												<label>Cách tính tiền</label>
												<select class="form-control" id="paymentMethod-update">
                                                    <c:forEach var="paymentmethod" items="${paymentmethods}">
                                                        <option value="${paymentmethod.id}">${paymentmethod.name}</option>
                                                    </c:forEach>
												</select>
                                            </div>
                                            
                                        </div>
									</div>
									
									<!--Mô tả -->	
									<div class="col-12 mb-20">
										<div class="row mbn-20">
											<div class="col-lg-4 mb-20">
												<label>Mô tả</label>
												<input id="des-update" type="text" class="form-control">
											</div>
										</div>
									</div>
									
                                    <div class="col-12 mb-20">
                                        <button onclick="update()" class="button button-primary"><span>Cập nhật</span></button>
										<button class="button button-warning" data-toggle="modal" data-target="#myModal"><span>Xóa</span></button>
										<button class="button button-danger" onclick="swapFormOff('form-edit')"><span>Hủy</span></button>
                                    </div>
                                    
                                    <!-- Modal -->
                                    <div class="modal fade" id="myModal" role="dialog">
                                        <div class="modal-dialog modal-dialog-centered">
                                            <!-- Modal content-->
                                            <div class="modal-content">
                                                <div class="modal-body">
                                                    <p>Bạn muốn xóa dữ liệu?</p>
                                                </div>
                                                <div class="modal-footer">
                                                    <button type="button" class="btn btn-default" onclick="deleteRoom()">Đồng ý</button>
                                                    <button type="button" class="btn btn-default" data-dismiss="modal">Hủy bỏ</button>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>
							<!--Form end -->
                        </div>
                    </div>
				</div>
			</div><!-- Div form edit end -->
			<!-- Div form edit end --> 
			
			<div class="row">
                <!--Basic Start-->
                <div class="col-12 mb-30">
                    <div class="box">
                        <div class="box-body">

                            <table class="table footable" data-paging="true" data-filtering="true" data-sorting="true" data-breakpoints='{ "xs": 480, "sm": 768, "md": 992, "lg": 1200, "xl": 1400 }'>
                                <thead>
                                    <tr>
                                        <th data-name="Name">Tên phòng</th>
                                        <th data-name="Type">Loại phòng</th>
                                        <th data-breakpoints="xs" >Cách tính tiền</th>
                                        <th data-breakpoints="xs sm md" >Chỉnh sửa</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="room" items="${rooms}">
                                    <tr>
                                        <td id="room-name${room.id}">${room.name}</td>
                                        <input id="kindofroom-name${room.id}" value="${room.kindOfRoom.id}" style="display: none;">
                                        <td id="td-kindofroom-name${room.id}">${room.kindOfRoom.name}</td>
                                        <input id="paymentmethod-name${room.id}" value="${room.paymentMethod.id}" style="display: none;">
                                        <td id="td-paymentmethod-name${room.id}">${room.paymentMethod.name}</td>
                                        <input id="des${room.id}" value="${room.description}" style="display:none;">
									    <td id="button${room.id}"><button id="${room.id}" class="button button-success" onclick="swapFormUpdate('form-edit','form-add',this.id)"><i class="zmdi zmdi-edit zmdi-hc-fw"></i><span>Chỉnh sửa</span></button></td>
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
        function deleteRoom() {
            var id = document.getElementById("room-id").value;
            var xhttp = new XMLHttpRequest();
            xhttp.onreadystatechange = function() {
                if (this.readyState == 4 && this.status == 200) {
                    updateViewAfterDelete();
                }
            };
            xhttp.open("POST", "/main/room/delete", true);
            xhttp.setRequestHeader("Content-type", "application/json");
            xhttp.send(JSON.stringify({id:id}));
        }
    </script>

    <script>
        function updateViewAfterDelete() {
            $('#myModal').modal('hide');
            document.getElementById("form-edit").style.display = "none";
            var id = document.getElementById("room-id").value
            document.getElementById("room-name" + id).remove();
            document.getElementById("kindofroom-name" + id).remove();
            document.getElementById("td-kindofroom-name" + id).remove();
            document.getElementById("paymentmethod-name" + id).remove();
            document.getElementById("td-paymentmethod-name" + id).remove();
            document.getElementById("button"+ id).remove();
        }
    </script>

    <script>
       function swapForm(on,off){
          var x = document.getElementById(on);
          var y = document.getElementById(off);
          x.style.display ="block";
          y.style.display ="none";
       }

        function swapFormOff(off){
          var x = document.getElementById(off);
          x.style.display ="none";
       }

       function swapFormUpdate(on,off,id){
           var x = document.getElementById(on);
           var y = document.getElementById(off);
           x.style.display ="block";
           y.style.display ="none";

           document.getElementById("room-id").value = id;
           document.getElementById("name-update").value = document.getElementById("room-name"+id).innerText;
           document.getElementById("kindOfRoom-update").value = document.getElementById("kindofroom-name"+id).value;
           document.getElementById("paymentMethod-update").value = document.getElementById("paymentmethod-name"+id).value;
           document.getElementById("des-update").value = document.getElementById("des"+id).value;
       }
    </script>

    <script>
        function update() {
            var name = document.getElementById("name-update").value;
            var xhttp = new XMLHttpRequest();
            xhttp.onreadystatechange = function() {
                if (this.readyState == 4 && this.status == 200) {
                    handleUpdate(this.responseText);
                }
            };
            xhttp.open("POST", "/main/room/check", true);
            xhttp.setRequestHeader("Content-type", "application/json");
            xhttp.send(JSON.stringify({name:name}));
        }

        function handleUpdate(responseStatus) {
            if (responseStatus == OK) {
                var room = {
                    "id": document.getElementById("room-id").value,
                    "name": document.getElementById("name-update").value,
                    "kind_of_room_id": document.getElementById("kindOfRoom-update").value,
                    "payment_method_id": document.getElementById("paymentMethod-update").value,
                    "description": document.getElementById("des-update").value
                }

                var xhttp = new XMLHttpRequest();
                xhttp.onreadystatechange = function() {
                    if (this.readyState == 4 && this.status == 200) {
                        var myObj = JSON.parse(this.responseText);
                        updateView(myObj);
                    }
                };

                xhttp.open("POST", "/main/room/update", true);
                xhttp.setRequestHeader("Content-type", "application/json");
                xhttp.send(JSON.stringify(room));
            }else{
                alert("Tên phòng đã tồn tại!");
            }
        }

        function updateView(room) {
            document.getElementById("form-edit").style.display = "none";
            var id = document.getElementById("room-id").value
            document.getElementById("room-name" + id).innerHTML = room.name;
            document.getElementById("kindofroom-name" + id).value = room.kindOfRoom.id;
            document.getElementById("td-kindofroom-name" + id).innerHTML = room.kindOfRoom.name;
            document.getElementById("paymentmethod-name" + id).value = room.paymentMethod.id;
            document.getElementById("td-paymentmethod-name" + id).innerHTML = room.paymentMethod.name;
        }

        function checkValid() {
            var name = document.getElementById("roomName").value;
            var xhttp = new XMLHttpRequest();
            xhttp.onreadystatechange = function() {
                if (this.readyState == 4 && this.status == 200) {
                    console.log(this.responseText);
                    handleCheckValid(this.responseText);
                }
            };
            xhttp.open("POST", "/main/room/check", true);
            xhttp.setRequestHeader("Content-type", "application/json");
            xhttp.send(JSON.stringify({name:name}));
        }

        const OK = 'ok';
        const FAILED = 'failed';
        function handleCheckValid(responseStatus) {
            if (responseStatus == OK) {
                submitForm();
            }else if(responseStatus == FAILED){
                alert("Tên phòng đã tồn tại!");
            }
        }

        function submitForm() {
            document.getElementById("add").submit();
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