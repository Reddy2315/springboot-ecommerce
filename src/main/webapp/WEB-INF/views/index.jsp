<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Online-Shopping Home</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
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
        border-radius: 0.25rem; /* Example: Adding border-radius */
        /* Add any other custom styles */
    }
    </style>
</head>
<body>
    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-light bg-white fixed-top">
        <div class="container-fluid ms-2">
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
                        <a class="nav-link" href="#">Products</a>
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

    <!-- Header -->
    <header class="bg-light py-5">
        <div class="container-fluid">
            <div class="row align-items-center">
                <div class="col-lg-12 mb-4 mt-5">
                    <!-- Carousel -->
                    <div id="carouselExampleSlidesOnly" class="carousel slide" data-bs-ride="carousel">
                        <div class="carousel-inner">
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
                <div class="col-lg-12 scroll-container">
                    <div class="scroll-text text-danger">
                        <h4 class="mb-0">Don't miss, Offers close soon!....</h4>
                    </div>
                </div>
            </div>
        </div>
    </header>

	<div class="container-fluid">
    <h2 class="my-4">Product List</h2>
    <div class="row">
        <div th:each="product : ${products}" class="col-lg-4 col-md-6 mb-4">
            <div class="card h-100">
                <img th:src="@{/images/default-product.jpg}" class="card-img-top" alt="Product Image">
                <div class="card-body">
                    <h4 class="card-title" th:text="${product.name}">Product Name</h4>
                    <h5 th:text="'$' + ${product.price}">Price</h5>
                    <p class="card-text" th:text="${product.description}">Product Description</p>
                </div>
            </div>
        </div>
    </div>
	</div>
	

    <!-- Page Content -->
    <div class="container-fluid ms-0 me-0">
        <!-- Featured Products -->
        <h2 class="my-4">Featured Products</h2>

        <div class="row">
		    <div class="col-lg-3 col-md-6 mb-4">
		        <div class="card h-100">
		            <a href="#"><img class="card-img-top" src="https://cdn.dxomark.com/wp-content/uploads/medias/post-157488/Google-Pixel-8-Pro-2-featured-image-packshot-review-Recovered.jpg" alt="Google-Pixel-8-Pro"></a>
		            <div class="card-body">
		                <h4 class="card-title">
		                    <a href="#">Product One</a>
		                </h4>
		                <h5>$24.99</h5>
		                <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur!</p>
		            </div>
		            <div class="card-footer">
		                <small class="text-muted">★ ★ ★ ★ ☆</small>
		            </div>
		        </div>
		    </div>
    
	    	<!-- Repeat this block three more times for each product -->
		    <div class="col-lg-3 col-md-6 mb-4">
		        <div class="card h-100">
		            <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
		            <div class="card-body">
		                <h4 class="card-title">
		                    <a href="#">Product Two</a>
		                </h4>
		                <h5>$29.99</h5>
		                <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur!</p>
		            </div>
		            <div class="card-footer">
		                <small class="text-muted">★ ★ ★ ★ ☆</small>
		            </div>
		        </div>
		    </div>
		    <div class="col-lg-3 col-md-6 mb-4 ">
		        <div class="card h-100">
		            <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
		            <div class="card-body">
		                <h4 class="card-title">
		                    <a href="#">Product Three</a>
		                </h4>
		                <h5>$29.99</h5>
		                <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur!</p>
		            </div>
		            <div class="card-footer">
		                <small class="text-muted">★ ★ ★ ★ ☆</small>
		            </div>
		        </div>
		    </div>
		    <div class="col-lg-3 col-md-6 mb-4 ">
		        <div class="card h-100">
		            <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
		            <div class="card-body">
		                <h4 class="card-title">
		                    <a href="#">Product Four</a>
		                </h4>
		                <h5>$29.99</h5>
		                <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur!</p>
		            </div>
		            <div class="card-footer">
		                <small class="text-muted">★ ★ ★ ★ ☆</small>
		            </div>
		        </div>
		    </div>
		</div>
        <!-- More product cards -->
		<div class="row">
		    <div class="col-lg-3 col-md-6 mb-4">
		        <div class="card h-100">
		            <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
		            <div class="card-body">
		                <h4 class="card-title">
		                    <a href="#">Product One</a>
		                </h4>
		                <h5>$24.99</h5>
		                <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur!</p>
		            </div>
		            <div class="card-footer">
		                <small class="text-muted">★ ★ ★ ★ ☆</small>
		            </div>
		        </div>
		    </div>
    
	    	<!-- Repeat this block three more times for each product -->
		    <div class="col-lg-3 col-md-6 mb-4">
		        <div class="card h-100">
		            <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
		            <div class="card-body">
		                <h4 class="card-title">
		                    <a href="#">Product Two</a>
		                </h4>
		                <h5>$29.99</h5>
		                <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur!</p>
		            </div>
		            <div class="card-footer">
		                <small class="text-muted">★ ★ ★ ★ ☆</small>
		            </div>
		        </div>
		    </div>
		    <div class="col-lg-3 col-md-6 mb-4 ">
		        <div class="card h-100">
		            <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
		            <div class="card-body">
		                <h4 class="card-title">
		                    <a href="#">Product Three</a>
		                </h4>
		                <h5>$29.99</h5>
		                <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur!</p>
		            </div>
		            <div class="card-footer">
		                <small class="text-muted">★ ★ ★ ★ ☆</small>
		            </div>
		        </div>
		    </div>
		    <div class="col-lg-3 col-md-6 mb-4 ">
		        <div class="card h-100">
		            <a href="#"><img class="card-img-top" src="http://placehold.it/700x400" alt=""></a>
		            <div class="card-body">
		                <h4 class="card-title">
		                    <a href="#">Product Four</a>
		                </h4>
		                <h5>$29.99</h5>
		                <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Amet numquam aspernatur!</p>
		            </div>
		            <div class="card-footer">
		                <small class="text-muted">★ ★ ★ ★ ☆</small>
		            </div>
		        </div>
		    </div>
		</div>
					
        <!-- /.row -->

   </div>
    <!-- /.container -->

    <!-- Footer -->
    <footer class="py-5 bg-dark">
        <div class="container-fluid ms-2">
            <p class="m-0 text-center text-white">Copyright &copy; Online-Shopping Store 2024</p>
        </div>
        <!-- /.container -->
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
</body>
</html>
