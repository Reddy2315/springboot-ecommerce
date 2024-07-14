<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Registration Form</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
	 <style>
        /* CSS styles for the registration form container */
        .registration-container {
            width: 600px; /* Set the width of the container */
            margin: 0 auto; /* Center the container horizontally */
            padding: 20px; /* Add some padding inside the container */
            border: 2px solid #ccc; /* Add a border */
            border-radius: 10px; /* Add some border radius */
            background-color: #f9f9f9; /* Background color */
        }
        </style>
</head>
<body>
	<!-- <div class="registration-container "> -->
	<div class="container-md align-items-center justify-content-center w-50 ml-5 mt-3 p-2 border border-2 rounded bg-secondary-subtle">
	<div class="justify-content-center m-3  ">
	    <h2 class="text-center text-primary">Registration Form</h2><br>
	    <form action="login" method="get">
	    	
	        <label for="firstname" class="form-label">Full Name:</label>
	        <input type="text" id="firstname" name="firstname" class="form-control" required>
			
			
	        <label for="email" class="form-label">Email:</label>
	        <input type="email" id="email" name="email" class="form-control" required>
			
			<label for="password" class="form-label">Password:</label>
	        <input type="password" id="password" name="password" class="form-control" required>
	        
	        <label for="mobile" class="form-label">Mobile Number:</label>
	        <input type="tel" id="mobile" name="mobile" class="form-control" required>
	
	        <label for="address" class="form-label">Address:</label>
	        <textarea id="address" name="address" class="form-control" required></textarea>
	        <br><br>
	        <input type="submit" value="Register" class ="btn btn-success ">
	        <input type="reset" value="Clear" class ="btn btn-secondary ms-3">
	    </form>
	</div>
</div>
</body>
</html>