<html class="no-js" lang="en">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Quản lý menu</title>
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
                        <a href="index.html">
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
                                <h3 class="title">Menu</h3>
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
                            <h4 class="title">THÊM MỚI MENU</h4>
                        </div>
                        <div class="box-body">
						<!--Form start -->
                            <form action="/main/menu/create" method="post" modelAttribute="menu">
                                <div class="row mbn-20">
									
									<div class="col-12 mb-20">
									
										<div class="row mbn-20">
										<!--Tên menu-->
                                            <div class="col-lg-4 mb-20">
												<label>Tên menu</label>
												<input type="text" class="form-control" name="name">
                                            </div>				
											<!--Loại menu -->
                                            <div class="col-lg-4 mb-20">
												<label>Loại menu</label>
												<select class="form-control" name="type">
                                                    <option value="Đồ ăn">Đồ ăn</option>
                                                    <option value="Đồ uống">Đồ uống</option>
                                                    <option value="Loại khác">Loại khác</option>
												</select>
                                            </div>

                                        </div>
									</div>
                                    
									<div class="col-12 mb-20">
									
										<div class="row mbn-20">
										<!--Giá nhập -->
                                            <div class="col-lg-4 mb-20">
												<label>Giá nhập</label>
												<input type="number" name="entryPrice" class="form-control">
                                            </div>
										<!--Giá bán -->
                                            <div class="col-lg-4 mb-20">
												<label>Giá bán</label>
												<input type="number" name="price" class="form-control">
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
                            <h4 class="title">CHỈNH SỬA MENU</h4>
                        </div>
                        <div class="box-body">
						<!--Form start -->
                            <div class="row mbn-20">
									
                                <div class="col-12 mb-20">
									
                                    <div class="row mbn-20">
                                        <input id="menu-id" value="" style="display: none;">
										<!--Tên menu-->
                                        <div class="col-lg-4 mb-20">
                                            <label>Tên menu</label>
                                                <input id="name-update" type="text" class="form-control">
                                        </div>
											<!--Loại menu -->
                                        <div class="col-lg-4 mb-20">
                                            <label>Loại menu</label>
                                            <select class="form-control" id="type-update">
                                                <option value="Đồ ăn">Đồ ăn</option>
                                                <option value="Đồ uống">Đồ uống</option>
                                                <option value="Loại khác">Loại khác</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                                    
									<div class="col-12 mb-20">
										<div class="row mbn-20">
										<!--Giá nhập -->
                                            <div class="col-lg-4 mb-20">
												<label>Giá nhập</label>
												<input id="entryPrice-update" type="number" class="form-control">
                                            </div>
										<!--Giá bán -->
                                            <div class="col-lg-4 mb-20">
												<label>Giá bán</label>
												<input id="price-update" type="number" class="form-control">
                                            </div>
                                        </div>
									</div>

                                    <div class="col-12 mb-20">
                                        <button onclick="update()" class="button button-primary"><span>Cập nhật</span></button>
										<button class="button button-warning" data-toggle="modal" data-target="#myModal"><span>Xóa</span></button>
										<button class="button button-danger" onclick="turnOffForm('form-edit')"><span>Hủy</span></button>
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
                                                <button type="button" class="btn btn-default" onclick="deleteMenu()">Đồng ý</button>
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
                                        <th data-name="Name">Tên menu</th>
                                        <th data-name="Type">Loại menu</th>
                                        <th data-breakpoints="xs" >Giá nhập</th>
                                        <th data-breakpoints="xs" >Giá bán</th>
                                        <th data-breakpoints="xs sm md" >Chỉnh sửa</th>
                                    </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="menu" items="${menus}">
                                    <tr>
                                        <td id="menu-name${menu.id}">${menu.name}</td>
                                        <td id="menu-type${menu.id}">${menu.type}</td>
                                        <td id="menu-entry-price${menu.id}">${menu.entryPrice}</td>
                                        <td id="menu-price${menu.id}">${menu.price}</td>
									    <td id="button${menu.id}"><button id="${menu.id}" class="button button-success" onclick="swapFormUpdate('form-edit','form-add',this.id)"><i class="zmdi zmdi-edit zmdi-hc-fw"></i><span>Chỉnh sửa</span></button></td>
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

   function swapFormUpdate(on,off,id){
       var x = document.getElementById(on);
       var y = document.getElementById(off);
       x.style.display ="block";
       y.style.display ="none";

       document.getElementById("menu-id").value = id;
       document.getElementById("name-update").value = document.getElementById("menu-name"+id).innerText;
       document.getElementById("type-update").value = document.getElementById("menu-type"+id).innerText;
       document.getElementById("entryPrice-update").value = document.getElementById("menu-entry-price"+id).innerHTML;
       document.getElementById("price-update").value = document.getElementById("menu-price"+id).innerHTML;
   }

   function update() {
       var menu = {
           "id": document.getElementById("menu-id").value,
           "name": document.getElementById("name-update").value,
           "type": document.getElementById("type-update").value,
           "entryPrice": document.getElementById("entryPrice-update").value,
           "price": document.getElementById("price-update").value
       }

       var xhttp = new XMLHttpRequest();
       xhttp.onreadystatechange = function() {
           if (this.readyState == 4 && this.status == 200) {
               var myObj = JSON.parse(this.responseText);
               updateView(myObj);
           }
       };

       xhttp.open("POST", "/main/menu/update", true);
       xhttp.setRequestHeader("Content-type", "application/json");
       xhttp.send(JSON.stringify(menu));
   }

   function updateView(menu) {
       document.getElementById("form-edit").style.display = "none";
       var id = document.getElementById("menu-id").value
       document.getElementById("menu-name" + id).innerHTML = menu.name;
       document.getElementById("menu-type" + id).innerHTML = menu.type;
       document.getElementById("menu-entry-price" + id).innerHTML = menu.entryPrice;
       document.getElementById("menu-price" + id).innerHTML = menu.price;
   }

   function deleteMenu() {
       var id = document.getElementById("menu-id").value;
       var xhttp = new XMLHttpRequest();
       xhttp.onreadystatechange = function() {
           if (this.readyState == 4 && this.status == 200) {
               updateViewAfterDelete();
           }
       };
       xhttp.open("POST", "/main/menu/delete", true);
       xhttp.setRequestHeader("Content-type", "application/json");
       xhttp.send(JSON.stringify({id:id}));
   }

   function updateViewAfterDelete() {
       $('#myModal').modal('hide');
       document.getElementById("form-edit").style.display = "none";
       var id = document.getElementById("menu-id").value
       document.getElementById("menu-name" + id).remove();
       document.getElementById("menu-type" + id).remove();
       document.getElementById("menu-entry-price" + id).remove();
       document.getElementById("menu-price" + id).remove();
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