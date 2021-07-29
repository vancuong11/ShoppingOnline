<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Ustora</title>
<link href="<c:url value='/css/stylee.css' />" rel="stylesheet"></link>
<script type="text/javascript" src="/datatables-simple-demo.js"></script>
<script type="text/javascript" src="/scripts.js"></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
</head>
<body>
	<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
        <!-- Navbar Brand-->
        <a class="navbar-brand ps-3" href="/admin/home/index">Administrator</a>
        <!-- Sidebar Toggle-->
        <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i class="fas fa-bars"></i></button>
        <!-- Navbar Search-->
        <form class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
            <!-- <div class="input-group">
                <input class="form-control" type="text" placeholder="Search for..." aria-label="Search for..." aria-describedby="btnNavbarSearch" />
                <button class="btn btn-primary" id="btnNavbarSearch" type="button"><i class="fas fa-search"></i></button>
            </div> -->
        </form>
        <!-- Navbar-->
        <ul class="navbar-nav ms-auto ms-md-0 me-3 me-lg-4">
            <li class="nav-item dropdown">
                <a class="nav-link" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                <p class="text-danger text-uppercase font-weight-bold">WELCOME:
						${user}</p>
                </a>
            </li>
        </ul>
    </nav>
    <div id="layoutSidenav">
        <div id="layoutSidenav_nav">
            <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                <div class="sb-sidenav-menu">
                    <div class="nav">
                        
                        <div class="sb-sidenav-menu-heading">Interface</div>
                        <a class="nav-link collapsed" href="/product/index" data-bs-toggle="collapse" data-bs-target="#collapseLayouts" aria-expanded="false" aria-controls="collapseLayouts">
                            <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                            Products
                            <div class="sb-sidenav-collapse-arrow"></div>
                        </a>
                        <a class="nav-link" href="/category/index">
                            <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                            Categories
                        </a>
                        <a class="nav-link " href="/order/index">
                            <div class="sb-nav-link-icon"><i class="fas fa-book-open"></i></div>
                            Orders
                            <div class="sb-sidenav-collapse-arrow"></div>
                        </a>
                        <a class="nav-link" href="/orderdetail/index">
                            <div class="sb-nav-link-icon"><i class="fas fa-chart-area"></i></div>
                            Ordersdetails
                        </a>
                        <a class="nav-link" href="/account/index">
                            <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                            Account
                        </a>
                        <a class="nav-link" href="/account/login">
                            <div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
                            Logout
                        </a>
                    </div>
                </div>
            </nav>
        </div>
        <div id="layoutSidenav_content">
            <main>

            </main>

        </div>
    </div>

	
</body>
</html>