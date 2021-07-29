<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Categories</title>
<link href="<c:url value='/css/stylee.css' />" rel="stylesheet"></link>
<script type="text/javascript" src="/datatables-simple-demo.js"></script>
<script type="text/javascript" src="/scripts.js"></script>
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
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js"
	crossorigin="anonymous"></script>
</head>

<body class="sb-nav-fixed">
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
                        <a class="nav-link " href="/orders">
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
			<h3 class="text-center text-uppercase font-weight-bold">Categories</h3>
			<hr class="w-25 m-auto">
			<nav class="mt-3">
				<div class="nav nav-tabs" id="nav-tab" role="tablist">
					<a class="nav-item nav-link font-weight-bold active"
						id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab"
						aria-controls="nav-home" aria-selected="true">Categories</a> <a
						class="nav-item nav-link font-weight-bold" id="nav-profile-tab"
						data-toggle="tab" href="#nav-profile" role="tab"
						aria-controls="nav-profile" aria-selected="false">Edit Categories</a>

				</div>
			</nav>
			<div class="tab-content" id="nav-tabContent">
				<div class="tab-pane fade show active" id="nav-home" role="tabpanel"
					aria-labelledby="nav-home-tab">
					<table class="table">
				<thead class="thead-light">
					<tr>
						<th scope="col">Id</th>
						<th scope="col">Name</th>
						<th scope="col">Active</th>
					</tr>
				</thead>
				<c:forEach var="i" items="${items}">
					<tr>
						<td scope="col">${i.id}</td>
						<td scope="col">${i.name}</td>
						<td scope="col"><a class="btn btn-primary"
							href="/category/edit/${i.id}"><i class="fas fa-edit"></i> </a>| <a
							href="/category/delete/${i.id}" class="btn btn-danger"> <i
								class="fas fa-window-close"></i>
						</a></td>
					</tr>
				</c:forEach>
			</table>
				</div>
				<div class="tab-pane fade" id="nav-profile" role="tabpanel"
					aria-labelledby="nav-profile-tab">
					<form:form action="/category/index" modelAttribute="item">
				<div class="form-group ml-3">
					<label for="exampleInputEmail1">Id</label>
					<form:input path="id" disabled="disabled" type="text" class="form-control "
						id="exampleInputEmail1" aria-describedby="emailHelp" />
				</div>
				<div class="form-group ml-3">
					<label for="exampleInputEmail1">Name</label>
					<form:input path="name" cssClass="form-control "
						id="exampleInputEmail1" aria-describedby="emailHelp" />
				</div>
				<div class="ml-3">
					<button class="btn btn-primary" formaction="/category/create">Create</button>
					<button class="btn btn-success" formaction="/category/update">Update</button>
				</div>
			</form:form>
				</div>
			</div>
			


			





			</main>

		</div>
	</div>


</body>

</html>