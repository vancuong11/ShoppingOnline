<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Detail Shop</title>
</head>
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
<link href="<c:url value='/css/style.css'/>" rel="stylesheet"></link>
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
                            <a class="dropdown-item" href="#">Đăng nhập</a>
                            <a class="dropdown-item" href="#">Đăng kí</a>

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
				<a href="#"><img src="/img/logo.png" alt=""></a>
			</div>
			<div class="col-md-6 text-center mt-4">
				<form class="form-group my-2 w-100 my-lg-0">
					<div class="input-group">
						<input type="text" name="keywords" value="${keywords}"
							class="form-control border-secondary" id="inputEmail4"
							placeholder="Search...">
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
					href="/products">SẢN PHẨM</a></li>
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
						<h2>Shop</h2>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- breadcurmd -->
	<div class="container">
		<nav aria-label="breadcrumb">
			<ol class="breadcrumb bg-light mt-4 ml-auto mr-auto">
				<li class="breadcrumb-item">Trang chủ</li>
				<li class="breadcrumb-item active" aria-current="page">Thông
					tin</li>
			</ol>
		</nav>
		<!--  -->
	</div>

	<div class="single-product-area">
		<div class="container">

			<div class="row">
				<div class="col-md-4">
					<div class="single-sidebar">
						<h2 class="sidebar-title">Search Products</h2>
						<form action="">
							<input type="text" placeholder="Search products..."> <input
								type="submit" value="Search">
						</form>
					</div>

					<div class="single-sidebar">
						<h2 class="sidebar-title">Products</h2>
						<c:forEach var="i" items="${SS}">
						<div class="thubmnail-recent">
							<img src="/img/${i.image}" class="recent-thumb" alt="">
							<h2>
								<a href="">${i.name }</a>
							</h2>
							<div class="product-sidebar-price">
								<ins>$${i.price}</ins>
								<del>$100.00</del>
							</div>
						</div>
						</c:forEach>
					</div>

				</div>
				<div class="col-md-8">
					<div class="product-content-right">
						<div class="product-breadcroumb">
							<span>Home</span> /<span>${list.name}</span>
						</div>

						<div class="row">
							<div class="col-sm-6">
								<div class="product-images">
									<div class="product-main-img">
										<img class="largeImage" src="/img/${list.image}"
											alt="1st image description">
									</div>

									<div class="product-gallery">
										<img src="/img/${list.image}" alt="2st image description">
										<img src="/img/${list.hinh1}" alt="2st image description">
										<img src="/img/${list.hinh2}" alt="3st image description">
									</div>
								</div>
							</div>

							<div class="col-sm-6">
								<div class="product-inner">
									<h2 class="product-name text-uppercase font-weight-bold">${list.name}</h2>
									<div class="product-inner-price">
										<ins>${list.price}</ins>
										<del>$100.00</del>
									</div>
									<div>
										<p>${list.dicription}</p>
									</div>

									<a href="/cart/add/${list.id}"
										class="btn btn-warning float-left text-white text-uppercase font-weight-bold"><i
										class="fa fa-shopping-cart"></i> Add to cart</a>


								</div>
							</div>
						</div>
						<h2 class="related-products-title mt-3">Related Products</h2>
						<div class="row">
							<c:forEach var="i" items="${page.content}">
								<div class="col-md-4 col-6 mt-4">
									<div class="sanpham">
										<div class="sanpham_image">
											<img style="height: 300px" class=" w-100 ml-auto mr-auto"
												src="/img/${i.image}" alt="Card image">
											<div class="product-hover">
												<a href="/cart/add/${i.id}" class="add-to-cart-link"><i
													class="fa fa-shopping-cart"></i> Add to cart</a> <a
													href="/detailshop/${i.id}" class="view-details-link"><i
													class="fa fa-link"></i> See details</a>
											</div>
										</div>

										<h2>
											<a href="">${i.name}</a>
										</h2>

										<div class="product-carousel-price">
											<ins>$${i.price}</ins>
											<del>$100.00</del>
										</div>
									</div>
								</div>
							</c:forEach>
							<nav aria-label="Page navigation example text-center">
								<ul class="pagination">
									<li class="page-item ${p == 0?'disabled':''}"><a
										class="page-link " href="/detailshop/${list.id}/?p=${page.number-1}"
										aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
											<span class="sr-only">Previous</span>
									</a></li>
									<li class="page-item ${p == page.totalPages -1?'disabled':''}">
										<a class="page-link " href="/detailshop/${list.id}/?p=${page.number+1}"
										aria-label="Next"> <span aria-hidden="true">&raquo;</span>
											<span class="sr-only">Next</span>
									</a>
									</li>
								</ul>
							</nav>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>


	<div class="footer-top-area">
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
<!-- thumbnail -->
<script>
	$('.product-gallery img').click(
			function() {
				$('.largeImage')
						.attr(
								'src',
								$(this).attr('src').replace('product-gallery',
										'large'));
				$('#description').html($(this).attr('alt'));
			});
</script>

</html>