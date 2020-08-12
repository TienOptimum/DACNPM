<html class="no-js" lang="en">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>QLHT - Loại Phòng</title>
    <meta name="robots" content="noindex, follow" />
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
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
					    <li class="mt-2"><a href="/main/reservation"><i class="ti-calendar"></i> <span>ĐẶT PHÒNG</span></a></li>
                        <li class="mt-2"><a href="/warehouse"><i class="fa fa-database"></i> <span>QUẢN LÝ KHO</span></a></li>
						<li class="mt-2 active"><a href="/main/manager"><i class="zmdi zmdi-settings"></i> <span>QUẢN LÝ HỆ THỐNG</span></a></li>
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
											<h3 class="title">Loại phòng</h3>
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

			<!--Div Form start -->
            <div class="row" id="form-add" style="display: none;">

                <div class="col-12 mb-30">
					
					<div class="box">
                        <div class="box-head">
                            <h4 class="title">THÊM MỚI LOẠI PHÒNG</h4>
                        </div>
                        <div class="box-body">
						<!--Form start -->
                            <form action="/main/kindofroom/create" method="post" modelAttribute="kindofroom">
                                <div class="row mbn-20">

									<div class="col-12 mb-20">
										<div class="row mbn-20">
										<!--Tên phòng -->
                                            <div class="col-lg-4 mb-20">
												<label>Tên loại phòng</label>
												<input type="text" name="name" class="form-control">
                                            </div>
                                          
                                        </div>
									</div>
                                    
									<div class="col-12 mb-20">
									
										<div class="row mbn-20">
										<!--Loại phòng -->
                                            <div class="col-lg-4 mb-20">
												<label>Mô tả</label>
												<input type="text" name="description" class="form-control">
                                            </div>
                                        </div>
									</div>

                                    <div class="col-12 mb-20">
                                        <input type="submit" value="Thêm" class="button button-primary">
                                    </div>
                                </div>
                            </form>
                            <button class="button button-danger" onclick="swapFormOff('form-add')"><span>Hủy</span></button>
							<!--Form end --> 
                        </div>
                    </div>
					
				</div>
                    
            </div>
            <!-- Div Form end --> 
			
			<!-- Div Form edit start --> 
			  <div class="row" id="form-edit" style="display: none;">

                <div class="col-12 mb-30">
					
					<div class="box">
                        <div class="box-head">
                            <h4 class="title">CHỈNH SỬA LOẠI PHÒNG</h4>
                        </div>
                        <div class="box-body">
                            <div class="row mbn-20">

                                <div class="col-12 mb-20">
                                    <div class="row mbn-20">
                                        <input id="kindofroom-id" value="" style="display: none;">
										<!--Tên phòng -->
                                        <div class="col-lg-4 mb-20">
                                            <label>Tên loại phòng</label>
												<input id="name-update" type="text" class="form-control">
                                        </div>
                                    </div>
                                </div>
                                    
                                <div class="col-12 mb-20">
                                    <div class="row mbn-20">
                                        <!--Loại phòng -->
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
                                                <button type="button" class="btn btn-default" onclick="deleteKindOfRoom()">Đồng ý</button>
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
			<!-- Div Form edit end --> 
			
			
			<div class="row">

                <!--Basic Start-->
                <div class="col-12 mb-30">
                    <div class="box">
                        <div class="box-body">

                            <table class="table footable" data-paging="true" data-filtering="true" data-sorting="true" data-breakpoints='{ "xs": 480, "sm": 768, "md": 992, "lg": 1200, "xl": 1400 }'>
                                <thead>
                                    <tr>
                                        <th data-name="Name">Tên loại phòng</th>
                                        <th data-name="Type">Mô tả</th>
                                        <th data-breakpoints="xs sm md" >Chỉnh sửa</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="kindofroom" items="${kindofrooms}">
                                    <tr>
                                        <td id="kindofroom-name${kindofroom.id}">${kindofroom.name}</td>
                                        <td id="kindofroom-des${kindofroom.id}">${kindofroom.description}</td>
										<td id="button${kindofroom.id}"><button id="${kindofroom.id}" class="button button-success" onclick="swapFormUpdate('form-edit','form-add',this.id)"><i class="zmdi zmdi-edit zmdi-hc-fw"></i><span>Chỉnh sửa</span></button></td>
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

        </div><!-- Content Body End -->

        <!-- Footer Section Start -->
        <div class="footer-section">
            <div class="container-fluid">

                <div class="footer-copyright text-center">
                    <p class="text-body-light">2019 &copy; T-Hotel</p>
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

   function swapFormUpdate(on,off,id){
       var x = document.getElementById(on);
       var y = document.getElementById(off);
       x.style.display ="block";
       y.style.display ="none";

       document.getElementById("kindofroom-id").value = id;
       document.getElementById("name-update").value = document.getElementById("kindofroom-name"+id).innerText;
       document.getElementById("des-update").value = document.getElementById("kindofroom-des"+id).innerText;
   }
   
    function swapFormOff(off){
      var x = document.getElementById(off);
      x.style.display ="none";
   }

   function deleteKindOfRoom() {
       var id = document.getElementById("kindofroom-id").value;
       var xhttp = new XMLHttpRequest();
       xhttp.onreadystatechange = function() {
           if (this.readyState == 4 && this.status == 200) {
               updateViewAfterDelete();
           }
       };
       xhttp.open("POST", "/main/kindofroom/delete", true);
       xhttp.setRequestHeader("Content-type", "application/json");
       xhttp.send(JSON.stringify({id:id}));
   }

   function updateViewAfterDelete() {
       $('#myModal').modal('hide');
       document.getElementById("form-edit").style.display = "none";
       var id = document.getElementById("kindofroom-id").value
       document.getElementById("kindofroom-name" + id).remove();
       document.getElementById("kindofroom-des" + id).remove();
       document.getElementById("button"+ id).remove();
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
        function update() {
            var kindofroom = {
                "id": document.getElementById("kindofroom-id").value,
                "name": document.getElementById("name-update").value,
                "description": document.getElementById("des-update").value
            }

            var xhttp = new XMLHttpRequest();
            xhttp.onreadystatechange = function() {
                if (this.readyState == 4 && this.status == 200) {
                    var myObj = JSON.parse(this.responseText);
                    updateView(myObj);
                }
            };

            xhttp.open("POST", "/main/kindofroom/update", true);
            xhttp.setRequestHeader("Content-type", "application/json");
            xhttp.send(JSON.stringify(kindofroom));
        }

        function updateView(kindOfRoom) {
            document.getElementById("form-edit").style.display = "none";
            var id = document.getElementById("kindofroom-id").value
            document.getElementById("kindofroom-name" + id).innerHTML = kindOfRoom.name;
            document.getElementById("kindofroom-des" + id).innerHTML = kindOfRoom.description;
        }
    </script>
</body>

</html>