<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Product Details</title>
    <!-- <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/5.3.2/css/bootstrap.min.css"> -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
     <!-- Other meta tags and CSS links -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">
    <style>
        /* Custom styles for product details page */
        body {
            background-color: #f8f9fa;
        }
        .container-fluid {
            padding: 30px;
        }
        h2, h4, h5 {
            color: #333;
        }
        .product-image {
            border: 1px solid #ccc;
            border-radius: 5px;
            box-shadow: 0 0 5px rgba(0,0,0,0.1);
            width: 600px;
            height: 600px;
        }
        
        .product-price {
            font-weight: bold;
            color: #dc3545; /* Red color for price */
        }
        /* Style for back button */
        .back-button {
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <div class="container-fluid bg-white mx-0">
        <!-- Back arrow button -->
        <a href="javascript:history.back()" class="btn btn-secondary back-button mt-0 text-decoration-none">&lt; Back</a>
        <p class="display-4 text-decoration-underline">Product Details:-</p>
        <h2 class="my-4 display-5 text-primary fw-semibold "> ${product.name}</h2>
        <div class="row">
            <div class="col-lg-6 mb-4">
                <!-- Debugging: Output image path -->
               <%--  <p>Image Path: ${product.image}</p> --%>
                <!-- Ensure image is responsive with img-fluid class and apply custom styles -->
                <%-- <img src="<c:url value='${product.image}' />" class="img-fluid product-image" alt="${product.name}"> --%>
            		<img src="/images/google pixel 8 pro.jpg" class="img-fluid product-image" alt="Google Pixel 8 Pro">
            </div>
            <div class="col-lg-6 mb-4">
            	<span class="text-decoration-line-through fs-3 fw-medium text-secondary">₹123999</span>
                <h4 class="text-black text-capitalize fs-3 fw-bolder">₹${product.price}</h4>
                <span class="fw-semibold text-capitalize fs-2">Description:</span>
                <h5 class="text-secondary text-capitalize fs-3 ms-5 ms-5 font-monospace">${product.description}</h5>
				 
				 <div class="card-footer fw-semibold text-capitalize fs-3 mt-2">
                <!-- Star rating -->
                	<span>${product.rating}</span>
					   <span class="text-muted ms-2" >
					        <!-- Full stars -->
					        <i class="bi bi-star-fill"></i>
					        <i class="bi bi-star-fill"></i>
					        <i class="bi bi-star-fill"></i>
					        <i class="bi bi-star-fill"></i>
					        <!-- Half star -->
					        <i class="bi bi-star-half"></i>
					    </span>
	
	                	
                </div>
                <div class="row container-fluid p-3">
			    <div class="col-3">
			        <input type="submit" class="btn btn-warning text-light fs-4 mt-3 p-2" value="Add Cart"/>
			    </div>
			    <div class="col-9">
			        <input type="submit" class="btn btn-info text-light fs-4 mt-3 p-2" value="Buy Now"/>
			    </div>
			</div>	
                <!-- Add more product details here if needed -->
            </div>
            

        </div>
    </div>
    
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
</body>
</html>
