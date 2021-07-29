<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Ustora</title>

    <!-- Google Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,700,600' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,100' rel='stylesheet' type='text/css'>

    <!-- Bootstrap -->
    <!-- <link rel="stylesheet" href="css/bootstrap.min.css"> -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <link href="https://use.fontawesome.com/releases/v5.0.4/css/all.css" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="<c:url value='/css/owl.carousel.css' />" rel="stylesheet"></link>
    <link href="<c:url value='/css/style.css' />" rel="stylesheet"></link>
    <link href="<c:url value='/css/responsive.css' />" rel="stylesheet"></link>
</head>

<body>

    <div class="header-area">
        <div class="container">
            <div class="row">
                <div class="col-md-8">
                </div>

                <div class="col-md-4 ">

                    <div class="btn-group float-right">
                        <a class="btn dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fas fa-user"></i> Login
                        </a>
                        <div class="dropdown-menu">
                            <a class="dropdown-item" href="/account/login">Đăng nhập</a>
                            <a class="dropdown-item" href="/account/register">Đăng kí</a>

                        </div>
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
    <!-- header -->
    <div class="card-body">
        <div class="row">
            <div class=" col-md-4 text-center">
                <a href="#"><img src="/img/logo.png" alt=""></a>
            </div>
            <div class="col-md-6 text-center mt-4">
                <form class="form-group my-2 w-100 my-lg-0">
                    <div class="input-group">
                        <input type="text" name="keywords" value="${keywords}" class="form-control border-secondary" id="inputEmail4" placeholder="Search...">
                        <div class="input-group-prepend">
                            <button class="border  ">
                        <span class=""><i class="fas fa-search"></i></span>
                    </button>
                        </div>
                    </div>
                </form>
            </div>
            <div class=" col-md-2 text-center">
                <li class="taikhoan nav-item dropdown justify-content-end mr-3 pr-3 mt-4">
                    <a class="nav-link text-dark mr-3 pr-3" href="#" role="button" aria-haspopup="true" aria-expanded="false"> <i class="fas fa-shopping-cart">
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
    <!-- End header -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light p-0  ">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarMenu" aria-controls="navbarMenu" aria-expanded="false" aria-label="Toggle Navigation">
            <span class="navbar-toggler-icon"> </span>
        </button>
        <div class="collapse navbar-collapse" id="navbarMenu">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active pl-4 pr-4 "><a class="nav-link text-dark" href="#">TRANG CHỦ </a></li>
                <li class="nav-item pl-4 pr-4"><a class="nav-link text-dark" href="#">GIỚI THIỆU</a></li>
                <li class="nav-item pl-4 pr-4"><a class="nav-link text-dark" href="#">SẢN PHẨM</a></li>
                <li class="nav-item pl-4 pr-4"><a class="nav-link text-dark" href="#">TIN TỨC</a></li>
                <li class="nav-item pl-4 pr-4"><a class="nav-link text-dark" href="#">LIÊN HỆ</a></li>
            </ul>
        </div>
    </nav>

    <!-- End mainmenu area -->

    <div class="slider-area mt-3">
        <!-- Slider xem lai img-->

        <div id="carouselExampleFade" class="carousel slide carousel-fade" data-ride="carousel">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img style="height: 550px;" class="d-block w-100" src="/img/1.jpg" alt="First slide">
                </div>
                <div class="carousel-item">
                    <img style="height: 550px;" class="d-block w-100" src="/img/2.png" alt="Second slide">
                </div>
                <div class="carousel-item">
                    <img style="height: 550px;" class="d-block w-100" src="/img/3.png" alt="Third slide">
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleFade" role="button" data-slide="prev"> <span class="carousel-control-prev-icon" aria-hidden="true"></span> <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleFade" role="button" data-slide="next"> <span class="carousel-control-next-icon" aria-hidden="true"></span> <span class="sr-only">Next</span>
            </a>
        </div>
        <!-- ./Slider -->
    </div>
    <!-- End slider area -->

    <div class="promo-area">
        <div class="zigzag-bottom"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-sm-6">
                    <div class="single-promo promo1">
                        <i class="fas fa-sync-alt"></i>
                        <p>30 Days return</p>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="single-promo promo2">
                        <i class="fa fa-truck"></i>
                        <p>Free shipping</p>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="single-promo promo3">
                        <i class="fa fa-lock"></i>
                        <p>Secure payments</p>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="single-promo promo4">
                        <i class="fa fa-gift"></i>
                        <p>New products</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End promo area -->

    <div class="maincontent-area">
        <div class="container">
            <h2 class="section-title">Latest Products</h2>
            <!-- danh muc -->
            <div class="dropdown">
                <button style="width: 250px;" class="btn btn-warning dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  Danh Mục
                </button>
                <div style="width: 250px;" class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                    <a class="dropdown-item" href="#">Điện thoại</a>
                    <a class="dropdown-item" href="#">Laptop</a>
                    <a class="dropdown-item" href="#">Phụ kiện</a>
                </div>
            </div>
            <!--  -->
            <div class="row">
            	<c:forEach var="i" items="${page.content}">
                <div class="col-md-3 col-6 mt-4">
                    <div class="sanpham">
                        <div class="sanpham_image">
                            <img style="height: 300px" class=" w-100 ml-auto mr-auto" src="/img/${i.image}" alt="Card image">
                            <div class="product-hover">
                                <a href="/cart/add/${i.id}" class="add-to-cart-link"><i class="fa fa-shopping-cart"></i> Add to cart
                                <!--  -->
                                <!--  -->
                                </a>
                                <a href="" class="view-details-link"><i class="fa fa-link"></i> See details</a>
                            </div>
                        </div>

                        <h2><a href="">${i.name}</a></h2>

                        <div class="product-carousel-price">
                            <ins>$${i.price}</ins> <del>$100.00</del>
                        </div>
                    </div>
                </div>
                </c:forEach>        
            </div>
        </div>
        <%-- <nav aria-label="Page navigation example text-center">
				<ul class="pagination">
					<li class="page-item ${p == 0?'disabled':''}"><a
						class="page-link " href="/home/?p=${page.number-1}"
						aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
							<span class="sr-only">Previous</span>
					</a></li>
					<li class="page-item ${p == page.totalPages -1?'disabled':''}">
						<a class="page-link " href="/home/?p=${page.number+1}"
						aria-label="Next"> <span aria-hidden="true">&raquo;</span> <span
							class="sr-only">Next</span>
					</a>
					</li>
				</ul>
			</nav> --%>
    </div>
    </div>
    <!-- End main content area -->

    <div class="brands-area ">
        <div class="container ">
            <div class="row ">
                <div class="col-md-12 ">
                    <div style=" padding-left:19px;padding-right:2px;width:100%; ">
                        <marquee onmouseout="this.start() " direction="left " behavior="50 " scrollamount="5 " height="60 " onmouseover="this.stop() " scrolldelay="50 " width=100%>

                            <a href="# " target="blank "><img style="width: 220px; height: 60px; " src="/img/brand1.png " /></a>
                            <a href="# " target="blank "><img style="width: 220px; height: 60px; " src="/img/brand2.png " /></a>
                            <a href="# " target="blank "><img style="width: 220px; height: 60px; " src="/img/brand3.png " /></a>
                            <a href="# " target="blank "><img style="width: 220px; height: 60px; " src="/img/brand4.png " /></a>
                            <a href="# " target="blank "><img style="width: 220px; height: 60px; " src="/img/brand5.png " /></a>
                            <a href="# " target="blank "><img style="width: 220px; height: 60px; " src="/img/brand6.png " /></a>

                        </marquee>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End brands area -->

    <div class="product-widget-area ">
        <div class="zigzag-bottom "></div>
        <div class="container ">
            <div class="row ">
                <div class="col-md-4 ">
                    <div class="single-product-widget ">
                        <h2 class="product-wid-title ">Top Sellers</h2>
                        <a href=" " class="wid-view-more ">View All</a>
                        <c:forEach var="i" items="${list}">
                        <div class="single-wid-product ">
                            <a href="#"><img src="/img/${i.image} " alt=" " class="product-thumb "></a>
                            <h2><a href="#">${i.name}</a></h2>
                            <div class="product-wid-rating ">
                                <i class="fa fa-star "></i>
                                <i class="fa fa-star "></i>
                                <i class="fa fa-star "></i>
                                <i class="fa fa-star "></i>
                                <i class="fa fa-star "></i>
                            </div>
                            <div class="product-wid-price ">
                                <ins>$${i.price}</ins> 
                            </div>
                        </div>
                        </c:forEach>
                        
                    </div>
                </div>
                <div class="col-md-4 ">
                    <div class="single-product-widget ">
                        <h2 class="product-wid-title ">Recently Viewed</h2>
                        <a href="# " class="wid-view-more ">View All</a>
                        <c:forEach var="i" items="${SS}">
                        <div class="single-wid-product ">
                            <a href="# "><img src="/img/${i.image} " alt=" " class="product-thumb "></a>
                            <h2><a href="# ">${i.name}</a></h2>
                            <div class="product-wid-rating ">
                                <i class="fa fa-star "></i>
                                <i class="fa fa-star "></i>
                                <i class="fa fa-star "></i>
                                <i class="fa fa-star "></i>
                                <i class="fa fa-star "></i>
                            </div>
                            <div class="product-wid-price ">
                                <ins>$${i.price}</ins> 
                            </div>
                        </div>
                        </c:forEach>
                    </div>
                </div>
                <div class="col-md-4 ">
                    <div class="single-product-widget ">
                        <h2 class="product-wid-title ">Top New</h2>
                        <a href="# " class="wid-view-more ">View All</a>
                        <c:forEach var="i" items="${list}">
                        <div class="single-wid-product ">
                            <a href="# "><img src="/img/${i.image} " alt=" " class="product-thumb "></a>
                            <h2><a href="#">${i.name}</a></h2>
                            <div class="product-wid-rating ">
                                <i class="fa fa-star "></i>
                                <i class="fa fa-star "></i>
                                <i class="fa fa-star "></i>
                                <i class="fa fa-star "></i>
                                <i class="fa fa-star "></i>
                            </div>
                            <div class="product-wid-price ">
                                <ins>$${i.price}</ins> 
                            </div>
                        </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End product widget area -->

    <div class="footer-top-area ">
        <div class="container ">
            <div class="row ">
                <div class="col-md-3 col-sm-6 ">
                    <div class="footer-about-us ">
                        <h2>u<span>Stora</span></h2>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perferendis sunt id doloribus vero quam laborum quas alias dolores blanditiis iusto consequatur, modi aliquid eveniet eligendi iure eaque ipsam iste, pariatur omnis sint!
                            Suscipit, debitis, quisquam. Laborum commodi veritatis magni at?</p>

                    </div>
                </div>

                <div class="col-md-3 col-sm-6 ">
                    <div class="footer-menu ">
                        <h2 class="footer-wid-title ">User Navigation </h2>
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
                        <p>Sign up to our newsletter and get exclusive deals you wont find anywhere else straight to your inbox!</p>
                        <div class="newsletter-form ">
                            <form action="# ">
                                <input type="email " placeholder="Type your email ">
                                <button type="submit"> Subscribe</button>
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

                            <span class="float-left mr-4 "><i class="fab fa-facebook-f "></i></span>
                            <span class="float-left mr-4 "><i class="fab fa-twitter "></i></span>
                            <span class="float-left mr-4 "><i class="fab fa-youtube "></i></span>
                            <span class="float-left mr-4 "><i class="fab fa-google "></i></span> &copy; 2021 uCommerce. All Rights Reserved. <a href="# " target="_blank ">Lê Văn Cường</a>

                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End footer bottom area -->

    <!-- Latest jQuery form server -->
    <script src="https://code.jquery.com/jquery.min.js "></script>

    <!-- Bootstrap JS form CDN -->
    <!-- <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js "></script> -->

    <!-- jQuery sticky menu -->
    <script src="js/owl.carousel.min.js "></script>
    <script src="js/jquery.sticky.js "></script>

    <!-- jQuery easing -->
    <script src="js/jquery.easing.1.3.min.js "></script>

    <!-- Main Script -->
    <script src="js/main.js "></script>

    <!-- Slider -->
    <script type="text/javascript " src="js/bxslider.min.js "></script>
    <script type="text/javascript " src="js/script.slider.js "></script>
</body>
</html>