<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cart Shop</title>
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
							class="fas fa-user"></i> ${user}
						</a>
						<!-- <div class="dropdown-menu">
							<a class="dropdown-item" href="#">Đăng nhập</a> <a
								class="dropdown-item" href="#">Đăng kí</a>

						</div> -->
					</div>
					<div class="btn-group float-right mr-4">
						<a href="/myaccount" class="text-dark mt-2" style="text-decoration: none;">
							<i class="fas fa-user"></i> My account
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End header area -->

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
	<!-- End site branding area -->

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
					href="#">SẢN PHẨM</a></li>
				<li class="nav-item pl-4 pr-4"><a class="nav-link text-dark"
					href="#">TIN TỨC</a></li>
				<li class="nav-item pl-4 pr-4"><a class="nav-link text-dark"
					href="#">LIÊN HỆ</a></li>
			</ul>
		</div>
	</nav>
	<!-- End mainmenu area -->

	<div class="product-big-title-area mt-3">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="product-bit-title text-center">
						<h2>Shopping Cart</h2>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Page title area -->

<a class="btn btn-warning text-white text-uppercase font-weight-bold mt-4 ml-4" href="/products">continue shopping</a>
	<div class="single-product-area">
		<div class="zigzag-bottom"></div>
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="product-content-right">
						<div class="woocommerce">
								<table cellspacing="0" class="shop_table cart table">
									<thead class="thead-dark">
										<tr>
											<th scope="col">Id</th>
											<th scope="col">Image</th>
											<th scope="col">Product</th>
											<th scope="col">Price</th>
											<th scope="col">Quantity</th>
											<th scope="col">Total</th>
											<th scope="col">Active</th>
										</tr>
									</thead>
									<c:forEach var="i" items="${cart.items}">
										<form action="/cart/update/${i.id}" method="post">
											<input type="hidden" name="id" value="${i.id}">
											<tr>
												<td>${i.id}</td>
												<td><img style="width: 90px; height: 90px" alt=""
													src="/img/${i.img}"></td>
												<td>${i.name}</td>
												<td>${i.price}</td>
												<td><input name="qty" value="${i.qty}"
													onblur="this.form.submit()" style="width: 50px;"></td>
												<td>${i.price * i.qty}</td>
												<td><a class="btn btn-danger"
													href="/cart/remove/${i.id}"><i
														class="fas fa-window-close"></i></a> | <a
													class="btn btn-success" href="/cart/update/${i.id}"><i
														class="fas fa-check-circle"></i></a></td>
											</tr>
										</form>
									</c:forEach>

								</table>
	<a href="/cart/clear" class="btn btn-warning float-right text-white text-uppercase font-weight-bold">Clear Cart</a>
							<div class="cart-collaterals">


								<div class="cart_totals ">
									<h2>Cart Totals</h2>

									<table cellspacing="0">
										<tbody>
											<tr class="cart-subtotal">
												<th>Cart Subtotal</th>
												<td><span class="amount">${cart.total}</span></td>
											</tr>

											<tr class="shipping">
												<th>Shipping and Handling</th>
												<td>Free Shipping</td>
											</tr>

											<tr class="order-total">
												<th>Order Total</th>
												<td><strong><span class="amount">${cart.total}</span></strong>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
								<a  class="btn btn-warning float-left text-white text-uppercase font-weight-bold"
				data-toggle="modal" data-target="#exampleModalLong">CHECK
				OUT</a>

			<!-- Modal -->
			<div class="modal fade" id="exampleModalLong" tabindex="-1"
				role="dialog" aria-labelledby="exampleModalLongTitle"
				aria-hidden="true">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLongTitle">Địa chỉ
								nhận hàng</h5>
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">
							<form action="/check/out">
								<div class="form-group">
									 <input
										type="text" name="address" class="form-control" id="exampleInputEmail1"
										aria-describedby="emailHelp" placeholder="Enter email">
								</div>
								<div class="form-group">
									 <input
										type="text" name="phone" class="form-control" id="exampleInputEmail1"
										aria-describedby="emailHelp" placeholder="Phone number">
								</div>
								<button class="btn btn-primary">Save</button>
							</form>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">Close</button>
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
	<!-- products -->



	<div class="footer-top-area">
		<div class="zigzag-bottom"></div>
		<div class="container">
			<div class="row">
				<div class="col-md-3 col-sm-6">
					<div class="footer-about-us">
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

				<div class="col-md-3 col-sm-6">
					<div class="footer-menu">
						<h2 class="footer-wid-title">User Navigation</h2>
						<ul>
							<li><a href="#">My account</a></li>
							<li><a href="#">Order history</a></li>
							<li><a href="#">Wishlist</a></li>
							<li><a href="#">Vendor contact</a></li>
							<li><a href="#">Front page</a></li>
						</ul>
					</div>
				</div>

				<div class="col-md-3 col-sm-6">
					<div class="footer-menu">
						<h2 class="footer-wid-title">Categories</h2>
						<ul>
							<li><a href="#">Mobile Phone</a></li>
							<li><a href="#">Home accesseries</a></li>
							<li><a href="#">LED TV</a></li>
							<li><a href="#">Computer</a></li>
							<li><a href="#">Gadets</a></li>
						</ul>
					</div>
				</div>

				<div class="col-md-3 col-sm-6">
					<div class="footer-newsletter">
						<h2 class="footer-wid-title">Newsletter</h2>
						<p>Sign up to our newsletter and get exclusive deals you wont
							find anywhere else straight to your inbox!</p>
						<div class="newsletter-form">
							<form action="#">
								<input type="email" placeholder="Type your email"> <input
									type="submit" value="Subscribe">
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End footer top area -->

	<div class="footer-bottom-area">
		<div class="container">
			<div class="row">
				<div class="col-sm-12 text-center">
					<div class="copyright">
						<p>

							<span class="float-left mr-4"><i class="fab fa-facebook-f"></i></span>
							<span class="float-left mr-4"><i class="fab fa-twitter"></i></span>
							<span class="float-left mr-4"><i class="fab fa-youtube"></i></span>
							<span class="float-left mr-4"><i class="fab fa-google"></i></span>
							&copy; 2021 uCommerce. All Rights Reserved. <a href="#"
								target="_blank">Lê Văn Cường</a>

						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End footer bottom area -->

	<!-- Latest jQuery form server -->
	<script src="https://code.jquery.com/jquery.min.js"></script>

	<!-- Bootstrap JS form CDN -->
	<script
		src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

	<!-- jQuery sticky menu -->
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.sticky.js"></script>

	<!-- jQuery easing -->
	<script src="js/jquery.easing.1.3.min.js"></script>

	<!-- Main Script -->
	<script src="js/main.js"></script>
</body>
</html>