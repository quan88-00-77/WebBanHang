<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
        <title>XSHOES</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/img/apple-icon.png">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/templatemo.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/custom.css">
        <!-- Load fonts style after rendering the layout styles -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/fontawesome.min.css">

    <style>
        th {
            text-align: center;
            background: #0dcaf0
        }

        table,
        th,
        td {
            border: 0px solid rgb(233, 224, 224);
        }

        td {
            width: 155px;
            height: 30px;
        }

        th.ttsp {
            width: 50%;
        }
    </style>
</head>

<body>
    <!-- Start Top Nav -->
    <nav class="navbar navbar-expand-lg bg-dark navbar-light d-none d-lg-block" id="templatemo_nav_top">
        <div class="container text-light">
            <div class="w-100 d-flex justify-content-between">
                <div>
                    <i class="fa fa-envelope mx-2"></i>
                    <a class="navbar-sm-brand text-light text-decoration-none"
                        href="mailto:hoangquanfc2002@gmail.com">hoangquanfc2002@gmail.com</a>
                    <i class="fa fa-phone mx-2"></i>
                    <a class="navbar-sm-brand text-light text-decoration-none" href="tel:010-020-0340">0707276930</a>
                </div>
                <div>
                    <a class="text-light" href="https://www.facebook.com/hoangquan.060502" target="_blank"
                        rel="sponsored"><i class="fab fa-facebook-f fa-sm fa-fw me-2"></i></a>
                    <a class="text-light" href="https://www.instagram.com/" target="_blank"><i
                            class="fab fa-instagram fa-sm fa-fw me-2"></i></a>
                    <a class="text-light" href="https://giayxshop.vn/" target="_blank"><i
                            class="fab fa-linkedin fa-sm fa-fw"></i></a>
                </div>
            </div>
        </div>
    </nav>
    <!-- Close Top Nav -->

    <!-- Header -->
    <nav class="navbar navbar-expand-lg navbar-light shadow">
        <div class="container d-flex justify-content-between align-items-center">

            <a class="navbar-brand text-success logo h1 align-self-center" href="index.html">
                XShoes
            </a>

            <button class="navbar-toggler border-0" type="button" data-bs-toggle="collapse" data-bs-target="#templatemo_main_nav"
             aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="align-self-center collapse navbar-collapse flex-fill  d-lg-flex justify-content-lg-between" id="templatemo_main_nav">
                <div class="flex-fill">
                    <ul class="nav navbar-nav d-flex justify-content-between mx-lg-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="${pageContext.request.contextPath}/home">Trang chủ</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="about.html">Thông Tin</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="shop.html">Cửa Hàng</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="contact.html">Liên Hệ</a>
                        </li>
                    </ul>
                </div>
                <div class="navbar align-self-center d-flex">
                    <div class="d-lg-none flex-sm-fill mt-3 mb-4 col-7 col-sm-auto pr-3">
                        <div class="input-group">
                            <input type="text" class="form-control" id="inputMobileSearch" placeholder="Search ...">
                            <div class="input-group-text">
                                <i class="fa fa-fw fa-search"></i>
                            </div>
                        </div>
                    </div>
                    <a class="nav-icon d-none d-lg-inline" href="#" data-bs-toggle="modal" data-bs-target="#templatemo_search">
                        <i class="fa fa-fw fa-search text-dark mr-2"></i>
                    </a>
                    <a class="nav-icon position-relative text-decoration-none" href="cart.html">
                        <i class="fa fa-fw fa-cart-arrow-down text-dark mr-1"></i>
                        <span class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark">+1</span>
                    </a>
                    <a class="nav-icon position-relative text-decoration-none" href="login.html">
                        <i class="fa fa-fw fa-user text-dark mr-3"></i>
                        <span class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark"></span>
                    </a>
                </div>
            </div>

        </div>
    </nav>
    <!-- Close Header -->

    <!-- Modal -->
    <div class="modal fade bg-white" id="templatemo_search" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="w-100 pt-1 mb-5 text-right">
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form action="" method="get" class="modal-content modal-body border-0 p-0">
                <div class="input-group mb-2">
                    <input type="text" class="form-control" id="inputModalSearch" name="q" placeholder="Search ...">
                    <button type="submit" class="input-group-text bg-success text-light">
                        <i class="fa fa-fw fa-search text-white"></i>
                    </button>
                </div>
            </form>
        </div>
    </div><br>

    <div class="row">
        <div class="col-md-4"></div>
        <div class="col-md-2"><button type="button" class="btn btn-warning" style="width: 100%; margin-bottom: 5px;">Giỏ hàng</button></div>
        <div class="col-md-2"><button type="button" class="btn btn-warning" style="width: 100%;">Đơn hàng</button></div>
        <div class="col-md-4"></div>
    </div><br>

    <div class="comtainer">
        <div class="row">
            <div class="col-md-1"></div>
            <div class="col-md-10">
                <table>
                    <thead>
                        <tr>
                            <th>Sản phẩm</th>
                            <th class="ttsp"></th>
                            <th>Giá</th>
                            <th>Số lượng</th>
                            <th>Tổng</th>
                            <th></th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td><center><i class="fas fa-times"></i></center></td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="col-md-1"></div>
        </div><hr>
        
        <div class="row">
            <div class="col-md-1"></div>
            <div class="col-md-2">Tổng giỏ hàng</div>
            <div class="col-md-2">Tạm tính</div>
            <div class="col-md-6"><input type="text" style="width: 100%;" disabled></div>
            <div class="col-md-1"></div>
        </div><br>

        <div class="row">
            <div class="col-md-1"></div>
            <div class="col-md-2"></div>
            <div class="col-md-2">Phí ship</div>
            <div class="col-md-6"><input type="text" style="width: 100%;" disabled value="30.000"></div>
            <div class="col-md-1"></div>
        </div><br>

        <div class="row">
            <div class="col-md-1"></div>
            <div class="col-md-2"></div>
            <div class="col-md-2">Tổng tiền</div>
            <div class="col-md-6"><input type="text" style="width: 100%;" disabled "></div>
            <div class="col-md-1"></div>
        </div><br>

        <div class="row">
            <div class="col-md-1"></div>
            <div class="col-md-2"></div>
            <div class="col-md-2"></div>
            <div class="col-md-6"><button type="button" class="btn btn-info" style="width: 100%;"><i class="fas fa-money-bill-wave"></i> Tiến hành thanh toán</button></div>
            <div class="col-md-1"></div>
        </div><br>

        <div class="row">
            <div class="col-md-1"></div>
            <div class="col-md-2"></div>
            <div class="col-md-2"></div>
            <div class="col-md-6"><button type="button" class="btn btn-info" style="width: 100%;"><i class="fas fa-shopping-bag"></i> Mua thêm sản phẩm khác</button></div>
            <div class="col-md-1"></div>
        </div><br>
    </div><hr>


        <!-- Start Footer -->
        <footer class="bg-dark" id="tempaltemo_footer">
            <div class="container">
                <div class="row">
    
                    <div class="col-md-4 pt-5">
                        <h2 class="h2 text-success border-bottom pb-3 border-light logo">Xshoes Shop</h2>
                        <ul class="list-unstyled text-light footer-link-list">
                            <li>
                                <i class="fas fa-map-marker-alt fa-fw"></i>
                                33 Xô Viết Nghệ Tĩnh
                            </li>
                            <li>
                                <i class="fa fa-phone fa-fw"></i>
                                <a class="text-decoration-none" href="tel:0707276930">0707276930</a>
                            </li>
                            <li>
                                <i class="fa fa-envelope fa-fw"></i>
                                <a class="text-decoration-none" href="mailto:hoangquanfc2002@gmail.com">hoangquanfc2002@gmail.com</a>
                            </li>
                        </ul>
                    </div>
    
                    <div class="col-md-4 pt-5">
                        <h2 class="h2 text-light border-bottom pb-3 border-light">Sản phẩm</h2>
                        <ul class="list-unstyled text-light footer-link-list">
                            <li><a class="text-decoration-none" href="#">Nike</a></li>
                            <li><a class="text-decoration-none" href="#">Adidas</a></li>
                            <li><a class="text-decoration-none" href="#">...</a></li>
                        </ul>
                    </div>
    
                    <div class="col-md-4 pt-5">
                        <h2 class="h2 text-light border-bottom pb-3 border-light">Thông Tin Thêm</h2>
                        <ul class="list-unstyled text-light footer-link-list">
                            <li><a class="text-decoration-none" href="#">Tang chủ</a></li>
                            <li><a class="text-decoration-none" href="#">Về cửa hàng</a></li>
                            <li><a class="text-decoration-none" href="#">Địa điểm cửa hàng</a></li>
                            <li><a class="text-decoration-none" href="#">Câu hỏi thường gặp</a></li>
                            <li><a class="text-decoration-none" href="#">Dịch vụ chăm sóc</a></li>
                        </ul>
                    </div>
    
                </div>
    
                <div class="row text-light mb-4">
                    <div class="col-12 mb-3">
                        <div class="w-100 my-3 border-top border-light"></div>
                    </div>
                    <div class="col-auto me-auto">
                        <ul class="list-inline text-left footer-icons">
                            <li class="list-inline-item border border-light rounded-circle text-center">
                                <a rel="nofollow" class="text-light text-decoration-none" target="_blank" href="https://www.facebook.com/phamductrungq"><i class="fab fa-facebook-f fa-lg fa-fw"></i></a>
                            </li>
                            <li class="list-inline-item border border-light rounded-circle text-center">
                                <a class="text-light text-decoration-none" target="_blank" href="https://www.instagram.com/trwwng/"><i class="fab fa-instagram fa-lg fa-fw"></i></a>
                            </li>
                            <li class="list-inline-item border border-light rounded-circle text-center">
                                <a class="text-light text-decoration-none" target="_blank" href="https://giayxshop.vn/"><i class="fab fa-linkedin fa-lg fa-fw"></i></a>
                            </li>
                        </ul>
                    </div>
                    <div class="col-auto">
                        <label class="sr-only" for="subscribeEmail">Email address</label>
                        <div class="input-group mb-2">
                            <input type="text" class="form-control bg-dark border-light" id="subscribeEmail" placeholder="Email address">
                            <div class="input-group-text btn-success text-light">Subscribe</div>
                        </div>
                    </div>
                </div>
            </div>
    
    
        </footer>
        <!-- End Footer -->
</body>
<script src="${pageContext.request.contextPath}/resources/js/jquery-1.11.0.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery-migrate-1.2.1.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/templatemo.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/custom.js"></script>
</html>