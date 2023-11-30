<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>XSHOES</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" type="image/x-icon"
	href="${pageContext.request.contextPath}/resources/img/apple-icon.png">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/templatemo.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/custom.css">
<!-- Load fonts style after rendering the layout styles -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/fontawesome.min.css">
<style>
</style>
<link rel="icon" type="image/x-icon"
	href="${pageContext.request.contextPath}/resources/favicon.ico" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="${pageContext.request.contextPath}/resources/css/styles.css"
	rel="stylesheet" />
</head>
<body>
	<nav
		class="navbar navbar-expand-lg bg-dark navbar-light d-none d-lg-block"
		id="templatemo_nav_top">
		<div class="container text-light">
			<div class="w-100 d-flex justify-content-between">
				<div>
					<i class="fa fa-envelope mx-2"></i> <a
						class="navbar-sm-brand text-light text-decoration-none"
						href="mailto:trung18f1@gmail.com">hoangquanfc2002@gmail.com</a> <i
						class="fa fa-phone mx-2"></i> <a
						class="navbar-sm-brand text-light text-decoration-none"
						href="tel:010-020-0340">0707276930</a>
				</div>
				<div>
					<a class="text-light"
						href="https://www.facebook.com/hoangquan.060502" target="_blank"
						rel="sponsored"><i class="fab fa-facebook-f fa-sm fa-fw me-2"></i></a>
					<a class="text-light" href="https://www.instagram.com/"
						target="_blank"><i class="fab fa-instagram fa-sm fa-fw me-2"></i></a>
					<a class="text-light" href="https://giayxshop.vn/" target="_blank"><i
						class="fab fa-linkedin fa-sm fa-fw"></i></a>
				</div>
			</div>
		</div>
	</nav>
	<!-- Close Top Nav -->


	<!-- Header -->
	<nav class="navbar navbar-expand-lg navbar-light shadow">
		<div
			class="container d-flex justify-content-between align-items-center">

			<a class="navbar-brand text-success logo h1 align-self-center"
				href="index.html"> XShoes </a>

			<button class="navbar-toggler border-0" type="button"
				data-bs-toggle="collapse" data-bs-target="#templatemo_main_nav"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div
				class="align-self-center collapse navbar-collapse flex-fill  d-lg-flex justify-content-lg-between"
				id="templatemo_main_nav">
				<div class="flex-fill">
					<ul
						class="nav navbar-nav d-flex justify-content-between mx-lg-auto">
						<li class="nav-item"><a class="nav-link" href="index.html">Trang
								chủ</a></li>
						<li class="nav-item"><a class="nav-link" href="about.html">Thông
								Tin</a></li>
						<li class="nav-item"><a class="nav-link" href="shop.html">Cửa
								Hàng</a></li>
						<li class="nav-item"><a class="nav-link" href="contact.html">Liên
								Hệ</a></li>
						<c:if test="${user.role == 1 }">
							<li class="nav-item"><a class="nav-link"
								href="sportEquipment/list">Manager</a></li>
						</c:if>
					</ul>
				</div>
				<div class="navbar align-self-center d-flex">
					<form action="search" method="post">
							<div class="input-group">
								<input type="text" class="form-control" id="inputMobileSearch"
									name="keyword" placeholder="Search ...">
								<div class="input-group-append">
									<button class="btn btn-outline-secondary" type="submit">
										<i class="fa fa-fw fa-search"></i>
									</button>
								</div>
							</div>
					</form>

					<a class="nav-icon d-none d-lg-inline" href="#"
						data-bs-toggle="modal" data-bs-target="#templatemo_search"> <i
						class="fa fa-fw fa-search text-dark mr-2"></i>
					</a> <a class="nav-icon position-relative text-decoration-none"
						href="cart.html"> <i
						class="fa fa-fw fa-cart-arrow-down text-dark mr-1"></i> <span
						class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark">+1</span>
					</a>
					<c:if test="${user != null}">
						<a class="nav-icon position-relative text-decoration-none row"
							href="#"> <i class="fa fa-fw fa-user text-dark mr-1">${user.username}</i>
							<span
							class="position-absolute top-0 left-50 translate-middle badge rounded-pill bg-light text-dark"></span>
						</a>
						<a class="nav-icon position-relative text-decoration-none row"
							href="http://localhost:8080/WebOnlineCK/login"> <i
							class="fas fa-sign-out-alt text-dark mr-2"></i> <span
							class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark"></span>
						</a>
					</c:if>
					<c:if test="${user == null}">
						<a class="nav-icon position-relative text-decoration-none"
							href="login"> <i class="fa fa-fw fa-user text-dark mr-4"></i>
							<span
							class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark"></span>
						</a>
					</c:if>
				</div>
			</div>

		</div>
	</nav>
	<!-- Close Header -->

	<!-- Modal -->
	<div class="modal fade bg-white" id="templatemo_search" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-lg" role="document">
			<div class="w-100 pt-1 mb-5 text-right">
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>
			<form action="" method="get"
				class="modal-content modal-body border-0 p-0">
				<div class="input-group mb-2">
					<input type="text" class="form-control" id="inputModalSearch"
						name="q" placeholder="Search ...">
					<button type="submit"
						class="input-group-text bg-success text-light">
						<i class="fa fa-fw fa-search text-white"></i>
					</button>
				</div>
			</form>
		</div>
	</div>



	<!-- Start Banner Hero -->
	<div id="template-mo-zay-hero-carousel" class="carousel slide"
		data-bs-ride="carousel">
		<ol class="carousel-indicators">
			<li data-bs-target="#template-mo-zay-hero-carousel"
				data-bs-slide-to="0" class="active"></li>
			<li data-bs-target="#template-mo-zay-hero-carousel"
				data-bs-slide-to="1"></li>
			<li data-bs-target="#template-mo-zay-hero-carousel"
				data-bs-slide-to="2"></li>
		</ol>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<div class="container">
					<div class="row p-5">
						<div class="mx-auto col-md-8 col-lg-6 order-lg-last">
							<img class="img-fluid"
								src="${pageContext.request.contextPath}/resources/img/banner_img_01.jpg"
								" alt="">
						</div>
						<div class="col-lg-6 mb-0 d-flex align-items-center">
							<div class="text-align-left align-self-center">
								<h1 class="h1 text-success">Nike</h1>
								<h3 class="h2">Thương hiệu hàng đầu</h3>
								<p>Ghi cái gì đó ở đây</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="carousel-item">
				<div class="container">
					<div class="row p-5">
						<div class="mx-auto col-md-8 col-lg-6 order-lg-last">
							<img class="img-fluid"
								src="${pageContext.request.contextPath}/resources/img/banner_img_02.jpg"
								alt="image">
						</div>
						<div class="col-lg-6 mb-0 d-flex align-items-center">
							<div class="text-align-left">
								<h1 class="h1">Adidas</h1>
								<h3 class="h2">Ghi cái gì đó ở đây</h3>
								<p>...</p>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="carousel-item">
				<div class="container">
					<div class="row p-5">
						<div class="mx-auto col-md-8 col-lg-6 order-lg-last">
							<img class="img-fluid"
								src="${pageContext.request.contextPath}/resources/img/banner_img_03.jpg"
								alt="">
						</div>
						<div class="col-lg-6 mb-0 d-flex align-items-center">
							<div class="text-align-left">
								<h1 class="h1">Puma</h1>
								<h3 class="h2">Ghi cái gì đó ở đây</h3>
								<p>...</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<a class="carousel-control-prev text-decoration-none w-auto ps-3"
			href="#template-mo-zay-hero-carousel" role="button"
			data-bs-slide="prev"> <i class="fas fa-chevron-left"></i>
		</a> <a class="carousel-control-next text-decoration-none w-auto pe-3"
			href="#template-mo-zay-hero-carousel" role="button"
			data-bs-slide="next"> <i class="fas fa-chevron-right"></i>
		</a>
	</div>
	<!-- End Banner Hero -->





	<!-- Start Featured Product -->
	<section class="bg-light">
		<div class="container py-5">
			<div class="row text-center py-3">
				<div class="col-lg-6 m-auto">
					<h1 class="h1">Sản phẩm nổi bật</h1>
					<p>Ghi cái gì đó ở đây</p>
				</div>
			</div>
			<div class="row">
				<c:forEach var="product" items="${searchResult}">

					<div class="col-12 col-md-4 mb-4">
						<div class="card h-100">
							<a href="shop-single.html"> <img
								src="${pageContext.request.contextPath}/resources/images/${product.image}"
								class="card-img-top" alt="...">
							</a>
							<div class="card-body">
								<ul class="list-unstyled d-flex justify-content-between">
									<li><i class="text-warning fa fa-star"></i> <i
										class="text-warning fa fa-star"></i> <i
										class="text-warning fa fa-star"></i> <i
										class="text-muted fa fa-star"></i> <i
										class="text-muted fa fa-star"></i></li>
									<li class="text-muted text-right">$ ${product.price}</li>
								</ul>
								<a href="shop-single.html"
									class="h2 text-decoration-none text-dark">${product.name}</a>
								<p class="card-text">${product.description}</p>
								<p class="text-muted">Reviews (24)</p>
								<a href="showDetail?sportEquipmentId=${product.id}">Xem chi tiet</a>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>

		</div>
	</section>
	<!-- End Featured Product -->


	<!-- Start Footer -->
	<footer class="bg-dark" id="tempaltemo_footer">
		<div class="container">
			<div class="row">

				<div class="col-md-4 pt-5">
					<h2 class="h2 text-success border-bottom pb-3 border-light logo">Xshoes
						Shop</h2>
					<ul class="list-unstyled text-light footer-link-list">
						<li><i class="fas fa-map-marker-alt fa-fw"></i> 33 Xô Viết
							Nghệ Tĩnh</li>
						<li><i class="fa fa-phone fa-fw"></i> <a
							class="text-decoration-none" href="tel:0707276930">0707276930</a>
						</li>
						<li><i class="fa fa-envelope fa-fw"></i> <a
							class="text-decoration-none"
							href="mailto:hoangquanfc2002@gmail.com">hoangquanfc2002@gmail.com</a>
						</li>
					</ul>
				</div>

				<div class="col-md-4 pt-5">
					<h2 class="h2 text-light border-bottom pb-3 border-light">Sản
						phẩm</h2>
					<ul class="list-unstyled text-light footer-link-list">
						<li><a class="text-decoration-none" href="#">Nike</a></li>
						<li><a class="text-decoration-none" href="#">Adidas</a></li>
						<li><a class="text-decoration-none" href="#">...</a></li>
					</ul>
				</div>

				<div class="col-md-4 pt-5">
					<h2 class="h2 text-light border-bottom pb-3 border-light">Thông
						Tin Thêm</h2>
					<ul class="list-unstyled text-light footer-link-list">
						<li><a class="text-decoration-none" href="#">Tang chủ</a></li>
						<li><a class="text-decoration-none" href="#">Về cửa hàng</a></li>
						<li><a class="text-decoration-none" href="#">Địa điểm cửa
								hàng</a></li>
						<li><a class="text-decoration-none" href="#">Câu hỏi
								thường gặp</a></li>
						<li><a class="text-decoration-none" href="#">Dịch vụ chăm
								sóc</a></li>
					</ul>
				</div>

			</div>

			<div class="row text-light mb-4">
				<div class="col-12 mb-3">
					<div class="w-100 my-3 border-top border-light"></div>
				</div>
				<div class="col-auto me-auto">
					<ul class="list-inline text-left footer-icons">
						<li
							class="list-inline-item border border-light rounded-circle text-center">
							<a rel="nofollow" class="text-light text-decoration-none"
							target="_blank" href="https://www.facebook.com/phamductrungq"><i
								class="fab fa-facebook-f fa-lg fa-fw"></i></a>
						</li>
						<li
							class="list-inline-item border border-light rounded-circle text-center">
							<a class="text-light text-decoration-none" target="_blank"
							href="https://www.instagram.com/trwwng/"><i
								class="fab fa-instagram fa-lg fa-fw"></i></a>
						</li>
						<li
							class="list-inline-item border border-light rounded-circle text-center">
							<a class="text-light text-decoration-none" target="_blank"
							href="https://giayxshop.vn/"><i
								class="fab fa-linkedin fa-lg fa-fw"></i></a>
						</li>
					</ul>
				</div>
				<div class="col-auto">
					<label class="sr-only" for="subscribeEmail">Email address</label>
					<div class="input-group mb-2">
						<input type="text" class="form-control bg-dark border-light"
							id="subscribeEmail" placeholder="Email address">
						<div class="input-group-text btn-success text-light">Subscribe</div>
					</div>
				</div>
			</div>
		</div>


	</footer>
	<!-- End Footer -->

	<!-- Start Script -->
	<script
		src="${pageContext.request.contextPath}/resource/js/jquery-1.11.0.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resource/js/jquery-migrate-1.2.1.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resource/js/bootstrap.bundle.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resource/js/templatemo.js"></script>
	<script src="${pageContext.request.contextPath}/resource/js/custom.js"></script>
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="${pageContext.request.contextPath}/resource/js/scripts.js"></script>
</body>
</html>