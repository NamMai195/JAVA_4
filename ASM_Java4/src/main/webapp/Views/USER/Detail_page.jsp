<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Detail Page</title>
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
</head>
<body>

	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container">
            <a class="navbar-brand" href="#">ONLINE ENTERTAINMENT</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
					<li class="nav-item"><a class="nav-link text-success fw-bold"
						href="#">Home</a></li>
					<li class="nav-item">  <a class="nav-link text-success fw-bold" href="Favourite.jsp">My Favorites</a></li>
					<li class="nav-item"><div class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle text-success fw-bold" href="#" id="myAccountDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">My Account</a>
                    <ul class="dropdown-menu" aria-labelledby="myAccountDropdown">
                        <li><a class="dropdown-item" href="Login.jsp">Login</a></li>
                        <li><a class="dropdown-item" href="Forgot_Password.jsp">Forgot Password</a></li>
                        <li><a class="dropdown-item" href="Registration.jsp">Registration</a></li>
                        <li><a class="dropdown-item" href="#">Logoff</a></li>
                        <li><a class="dropdown-item" href="Change_Password.jsp">Change Password</a></li>
                        <li><a class="dropdown-item" href="Edit_Profile.jsp">Edit Profile</a></li>
                    </ul>
                </div></li>
				</ul>
            </div>
        </div>
    </nav>

	
	<div class="container mt-4">
    <div class="row">
        <!-- Main Video Section -->
        <div class="col-md-8">
            <div class="card border-warning mb-3">
                <div class="card-body text-center border border-warning" style="height: 300px; display: flex; align-items: center; justify-content: center;">
                    <span>VIDEO</span>
                </div>
                <div class="card-footer bg-light">
                    <h5 class="fw-bold text-success">Video Title</h5>
                    <p class="mb-1">DESCRIPTION</p>
                    <div class="d-flex gap-2">
                        <button class="btn btn-primary">Like</button>
                        <button class="btn btn-warning text-white">Share</button>
                    </div>
                </div>
            </div>
        </div>

        <!-- Related Videos Section -->
        <div class="col-md-4">
            <div class="list-group">
                <% for (int i = 1; i <= 5; i++) { %>
                    <a href="#" class="list-group-item list-group-item-action d-flex align-items-center border border-success">
                        <div class="border border-success p-2" style="width: 60px; height: 40px; display: flex; align-items: center; justify-content: center; margin-right: 10px;">
                            <span>POSTER</span>
                        </div>
                        <span class="text-success fw-bold">Video Title</span>
                    </a>
                <% } %>
            </div>
        </div>
    </div>
</div>

	<!-- Bootstrap JS -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
