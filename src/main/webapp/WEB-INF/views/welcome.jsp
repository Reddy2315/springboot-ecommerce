<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Online-Shopping Home</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Other meta tags and CSS links -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">

    <style>
        .scroll-container {
            overflow: hidden;
            white-space: nowrap;
            position: relative;
        }

        .scroll-text {
            display: inline-block;
            animation: scroll-left 20s linear infinite;
            padding-right: 100%;
        }

        @keyframes scroll-left {
            0% {
                transform: translateX(100%);
            }
            100% {
                transform: translateX(-100%);
            }
        }

        .carousel-item img {
            width: inherit;
            height: 450px;
            object-fit: cover;
        }

        .carousel-inner {
            text-align: center;
        }
        
        .card-img-top {
        max-width: 100%;
        height: auto;
        border-radius: 0.25rem;
        }
        
        a {
		    color: black;
		    text-decoration: none;
		}
		a:hover, a:focus {
		    color: gray;
		    text-decoration: none;
		}
    </style>
</head>
<body>
    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-light bg-white fixed-top">
        <div class="container-fluid">
            <a class="navbar-brand fw-bold text-primary" href="/">Online-Shopping</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-end" id="navbarResponsive">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link" href="/">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/product/list">Products</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">About</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Contact</a>
                    </li>
                </ul>
                <form class="container d-flex ms-auto">
                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success" type="submit">Search</button>
                </form>
                <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link" href="#">Cart</a>
                    </li>
                    <% 
                        String username = (String) session.getAttribute("userName");
                        if (username == null) { 
                    %>
                    <li class="nav-item">
                        <a class="nav-link" href="login">Login</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="register">Register</a>
                    </li>
                    <% } else { %>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            Welcome, <%= username %>!
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="#">My Profile</a></li>
                            <li><a class="dropdown-item" href="logout">Logout</a></li>
                        </ul>
                    </li>
                    <% } %>
                </ul>
            </div>
        </div>
    </nav>
<div class ="bg-light">
    <!-- Header -->
    <header class="bg-light py-3 mx-0 my-3">
        <div class="container-fluid bg-white mt-3">
            <div class="row align-items-center">
                <div class="col-lg-12 my-3 mx-0">
                    <!-- Carousel -->
                    <div id="carouselExampleSlidesOnly" class="carousel slide" data-bs-ride="carousel">
                        <div class="carousel-inner mt-2">
                            <div class="carousel-item active">
                                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSc6DyOHLsghI9lFalg73Q9FoxQv6UwVEQIeA&s" class="d-block mx-auto" alt="...">
                            </div>
                            <div class="carousel-item">
                                <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTN7j781XRbvJasAntQdbChWs_scJcASRZSg&s" class="d-block mx-auto" alt="...">
                            </div>
                            <div class="carousel-item">
                                <img src="https://www.cleanmetrics.com/assets/images/clothing.jpg" class="d-block mx-auto" alt="...">
                            </div>
                        </div>
                        <!-- Carousel Controls -->
                        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleSlidesOnly" data-bs-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Previous</span>
                        </button>
                        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleSlidesOnly" data-bs-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Next</span>
                        </button>
                        <!-- End Carousel Controls -->
                    </div>
                    <!-- End Carousel -->
                </div>
                <div class="col-lg-12 scroll-container my-0">
                    <div class="scroll-text text-danger">
                        <h4 class="mb-0">Don't miss, Offers close soon!....</h4>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!-- Page Content -->
    <div class="container-fluid">
    	<div class="bg-white my-3">
        <!-- Featured Products -->
        <h2 class="my-3 ms-2 text-danger-emphasis">New Arrivals</h2>

        <div class="row">
		    <div class="col-lg-3 col-md-6 mb-4 bg-white">
		        <div class="card h-100">
		            <a  href="javascript:void(0);" class="text-decoration-none" onclick="submitProductForm('google pixel 8 pro');">
		                <img src="images/google pixel 8 pro.jpg" class="card-img-top" alt=""/>
		            </a>
		            <div class="card-body">
		                <h4 class="card-title">
		                    <a href="javascript:void(0);" onclick="submitProductForm('google pixel 8 pro');">google pixel 8 pro</a>
		                </h4>
		                <span class="text-decoration-line-through fs-5 fw-medium text-secondary">₹123999</span>
		                <h5 class="fw-medium">₹103999</h5>
		                <p class="card-text">12 GB RAM | 128 GB ROM </p>
		            </div>
		            <div class="card-footer">
				   <small class="text-muted">
				        <!-- Full stars -->
				        <i class="bi bi-star-fill"></i>
				        <i class="bi bi-star-fill"></i>
				        <i class="bi bi-star-fill"></i>
				        <i class="bi bi-star-fill"></i>
				        <!-- Half star -->
				        <i class="bi bi-star-half"></i>
				    </small>

                	</div>
		        </div>
		    </div>
		    
		    <form id="productForm" action="/product" method="post" style="display:none;">
		        <input type="hidden" name="productName" id="productName" value="" />
		    </form>
		</div>

            <!-- More product cards -->
        </div>
        <!-- /.row -->
    </div>
    <!-- /.container -->

</div>
    <!-- Footer -->
    <footer class="py-4 bg-dark me-0">
        <div class="container-fluid">
            <p class="text-center text-white">Copyright &copy; Online-Shopping Store 2024</p>
        </div>
        <!-- /.container -->
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
	<script>
        function submitProductForm(productName) {
            document.getElementById('productName').value = productName;
            document.getElementById('productForm').submit();
        }
    </script>
</body>
</html>
