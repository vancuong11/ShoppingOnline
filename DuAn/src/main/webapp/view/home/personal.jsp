<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Personal</title>
</head>
<!-- Google Fonts -->
<link
	href='http://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,700,600'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300'
	rel='stylesheet' type='text/css'>
<link href='http://fonts.googleapis.com/css?family=Raleway:400,100'
	rel='stylesheet' type='text/css'>

<!-- Bootstrap -->
<!-- <link rel="stylesheet" href="css/bootstrap.min.css"> -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>
<link href="https://use.fontawesome.com/releases/v5.0.4/css/all.css"
	rel="stylesheet">
<!-- Custom CSS -->
<link href="<c:url value='/css/owl.carousel.css' />" rel="stylesheet"></link>
<link href="<c:url value='/css/style.css' />" rel="stylesheet"></link>
<link href="<c:url value='/css/responsive.css' />" rel="stylesheet"></link>
<body>
	<div class="header-area">
		<div class="container">
			<div class="row">
				<div class="col-md-8"></div>

				<div class="col-md-4 ">

					<div class="btn-group float-right">
						<a class="btn dropdown-toggle" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false"> <i
							class="fas fa-user"></i> ${username}
						</a>
						<!-- <div class="dropdown-menu">
                            <a class="dropdown-item" href="#">Đăng nhập</a>
                            <a class="dropdown-item" href="#">Đăng kí</a>

                        </div> -->
					</div>
					<div class="btn-group float-right mr-4">
						<a href="/myaccount" class="text-dark mt-2"
							style="text-decoration: none;"> <i class="fas fa-user"></i>
							My account
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="card-body">
		<div class="row">
			<div class=" col-md-4 text-center">
				<a href="#"><img src="img/logo.png" alt=""></a>
			</div>
			<div class="col-md-6 text-center mt-4">
				<form class="form-group my-2 w-100 my-lg-0">
					<div class="input-group">
						<input type="text" class="form-control border-secondary"
							id="inputEmail4" placeholder="Search...">
						<div class="input-group-prepend">
							<button class="border  ">
								<span class=""><i class="fas fa-search"></i></span>
							</button>
						</div>
					</div>
				</form>
			</div>
			<div class=" col-md-2 text-center">
				<li
					class="taikhoan nav-item dropdown justify-content-end mr-3 pr-3 mt-4">
					<a class="nav-link text-dark mr-3 pr-3" href="#" role="button"
					aria-haspopup="true" aria-expanded="false"> <i
						class="fas fa-shopping-cart">
							<div style="position: relative;">
								<span style="position: absolute; top: -28px; right: -15px;"
									class="badge badge-light">${cart.count}</span>
							</div>
					</i>
				</a>
				</li>
			</div>
		</div>
	</div>
	<!-- nav -->
	<nav class="navbar navbar-expand-lg navbar-light bg-light p-0  ">
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarMenu" aria-controls="navbarMenu"
			aria-expanded="false" aria-label="Toggle Navigation">
			<span class="navbar-toggler-icon"> </span>
		</button>
		<div class="collapse navbar-collapse" id="navbarMenu">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active pl-4 pr-4 "><a
					class="nav-link text-dark" href="#">TRANG CHỦ </a></li>
				<li class="nav-item pl-4 pr-4"><a class="nav-link text-dark"
					href="#">GIỚI THIỆU</a></li>
				<li class="nav-item pl-4 pr-4"><a class="nav-link text-dark"
					href="/products">SẢN PHẨM</a></li>
				<li class="nav-item pl-4 pr-4"><a class="nav-link text-dark"
					href="#">TIN TỨC</a></li>
				<li class="nav-item pl-4 pr-4"><a class="nav-link text-dark"
					href="#">LIÊN HỆ</a></li>
			</ul>
		</div>
	</nav>
	<!--  -->
	<div class="product-big-title-area mt-3">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="product-bit-title text-center">
						<h2>My Account</h2>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- breadcrumds -->
	<div class="container ">
		<nav aria-label="breadcrumb">
			<ol class="breadcrumb bg-light mt-3 ml-auto mr-auto">
				<li class="breadcrumb-item">Trang chủ</li>
				<li class="breadcrumb-item active" aria-current="page">My
					account</li>
			</ol>
		</nav>
		<h3>${message}</h3>
		<!-- tab pane -->
		<!-- List group -->

		<div class="row mt-4">
			<div class="col-md-3">
				<div class="nav flex-column nav-pills" id="v-pills-tab"
					role="tablist" aria-orientation="vertical">
					<a class="nav-link active"
						id="v-pills-profile-tab" data-toggle="pill"
						href="#v-pills-profile" role="tab" aria-controls="v-pills-profile"
						aria-selected="false"><i class="fas fa-shopping-bag"></i> Đơn
						Hàng</a> 
					<a class="nav-link  " id="v-pills-home-tab"
						data-toggle="pill" href="#v-pills-home" role="tab"
						aria-controls="v-pills-home" aria-selected="true"><i
						class="fas fa-user"></i> Thông Tin Cá Nhân</a> 
						<!-- <a class="nav-link" id="v-pills-messages-tab"
						data-toggle="pill" href="#v-pills-messages" role="tab"
						aria-controls="v-pills-messages" aria-selected="false"><i
						class="fas fa-unlock"></i> Đổi mật khẩu</a> -->
						 <a class="nav-link"
						
						href="/account/login" 
						 ><i
						class="fas fa-sign-out-alt"></i> Đăng Xuất</a>
				</div>

			</div>
			<div class="col-md-9">
				<!-- Tab panes -->
				<div class="tab-content" id="v-pills-tabContent">
					
					<!--  -->
					<div class="tab-pane fade show active" id="v-pills-profile" role="tabpanel"
						aria-labelledby="v-pills-profile-tab">
						<table class="table table-bordered">
							<thead class="thead-dark">
								<tr>
									<th scope="col">Mã đơn hàng</th>
									<th scope="col">Tên hàng</th>
									<th scope="col">Ngày đặt</th>
									
									<th scope="col">Giá</th>
									
									<th scope="col">Số lượng</th>
									<th scope="col">Hoạt động</th>
									<th></th>
									
								</tr>
							</thead>
							<tbody>
							<c:forEach var="i" items="${list}">
								<tr>
									<th scope="row">${i.order.id}</th>
									<td><a class="text-dark" href="/detailshop/${i.product.id}">${i.product.name}</a></td>
									<td>${i.order.createDate}</td>
									
									<td>${i.price}</td>
									
									<td>${i.quantity}</td>
									<td>${i.order.active?'Đã Giao Hàng':'Đang Giao Hàng'}</td>
									<td>
									<a href="/detele/orders/${i.id}" class="btn btn-danger">
										<i class="fas fa-window-close"></i>
								</a>
									</td>
								</tr>
								</c:forEach>
								<!-- <tr>
								<td colspan="5">
									<span class="text-dark text-uppercase font-weight-bold float-right">Tổng tiền:<b></b></span>
									</td> 
								</tr> -->
							</tbody>
						</table>
							
					</div>
					<!--  -->
					
					<div class="tab-pane fade  " id="v-pills-home"
						role="tabpanel" aria-labelledby="v-pills-home-tab">
						<form action="/updateAccount" method="post">
							<div class="form-row">
								<div class="form-group col-md-6">
									<label for="inputEmail4">Username</label> <input type="text"
										name="username" value="${username}" class="form-control"
										id="inputEmail4">
								</div>
								<div class="form-group col-md-6">
									<label for="inputPassword4">Fullname</label> <input type="text"
										class="form-control" value="${full}" name="fullname"
										id="inputPassword4">
								</div>
								</div>
								<div class="form-group">
									<label for="inputEmail4">Password</label> <input
										style="position: relative;" value="${password}" type="password"
										name="password" class="form-control"
										id="pass" placeholder="Password"><i 
										style="position: absolute; top: 140px; left: 810px"
										class="fas fa-eye-slash " onclick="myfunction()"></i>

								</div>
							
								
							<div class="form-group">
								<label for="inputAddress">Email</label> <input type="email"
									name="email" class="form-control" value="${email}"
									id="inputAddress">
							</div>

							<button
								class="btn btn-warning float-left text-white text-uppercase font-weight-bold">change
								information</button>
						</form>
					</div>
					<!-- <div class="tab-pane fade" id="v-pills-messages" role="tabpanel"
						aria-labelledby="v-pills-messages-tab">
						
					</div> -->
				</div>
			</div>
		</div>
	</div>

	<!-- footer -->
	<div class="footer-top-area mt-5">
		<div class="zigzag-bottom "></div>
		<div class="container ">
			<div class="row ">
				<div class="col-md-3 col-sm-6 ">
					<div class="footer-about-us ">
						<h2>
							u<span>Stora</span>
						</h2>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
							Perferendis sunt id doloribus vero quam laborum quas alias
							dolores blanditiis iusto consequatur, modi aliquid eveniet
							eligendi iure eaque ipsam iste, pariatur omnis sint! Suscipit,
							debitis, quisquam. Laborum commodi veritatis magni at?</p>

					</div>
				</div>

				<div class="col-md-3 col-sm-6 ">
					<div class="footer-menu ">
						<h2 class="footer-wid-title ">User Navigation</h2>
						<ul>
							<li><a href="# ">My account</a></li>
							<li><a href="# ">Order history</a></li>
							<li><a href="# ">Wishlist</a></li>
							<li><a href="# ">Vendor contact</a></li>
							<li><a href="# ">Front page</a></li>
						</ul>
					</div>
				</div>

				<div class="col-md-3 col-sm-6 ">
					<div class="footer-menu ">
						<h2 class="footer-wid-title ">Categories</h2>
						<ul>
							<li><a href="# ">Mobile Phone</a></li>
							<li><a href="# ">Home accesseries</a></li>
							<li><a href="# ">LED TV</a></li>
							<li><a href="# ">Computer</a></li>
							<li><a href="# ">Gadets</a></li>
						</ul>
					</div>
				</div>

				<div class="col-md-3 col-sm-6 ">
					<div class="footer-newsletter ">
						<h2 class="footer-wid-title ">Newsletter</h2>
						<p>Sign up to our newsletter and get exclusive deals you wont
							find anywhere else straight to your inbox!</p>
						<div class="newsletter-form ">
							<form action="# ">
								<input type="email " placeholder="Type your email ">
								<button type="submit">Subscribe</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End footer top area -->

	<div class="footer-bottom-area ">
		<div class="container ">
			<div class="row ">
				<div class="col-sm-12 text-center ">
					<div class="copyright ">
						<p>

							<span class="float-left mr-4 "><i
								class="fab fa-facebook-f "></i></span> <span class="float-left mr-4 "><i
								class="fab fa-twitter "></i></span> <span class="float-left mr-4 "><i
								class="fab fa-youtube "></i></span> <span class="float-left mr-4 "><i
								class="fab fa-google "></i></span> &copy; 2021 uCommerce. All Rights
							Reserved. <a href="# " target="_blank ">Lê Văn Cường</a>

						</p>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
<script type="text/javascript">
	var x = true;
	function myfunction() {

		if (x) {
			document.getElementById('pass').type = 'text';
			x = false;
		} else {
			document.getElementById('pass').type = 'password';
			x = true;
		}
	}
		
</script>
</html>