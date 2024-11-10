<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Online Entertainment</title>
<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<style>
    /* Additional styling for improved look */
    .navbar {
        background-color: #FFD700;
    }
    .navbar-brand {
        color: #B22222;
    }
    .nav-link {
        color: #0000FF;
    }
    .nav-link:hover {
        color: #1E90FF;
    }
    .card {
        transition: transform 0.3s ease;
    }
    .card:hover {
        transform: scale(1.05);
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
    }
    .card-footer {
        background-color: #F8F9FA;
    }
    .btn-success {
        background-color: #28a745;
    }
    .pagination .page-link {
        color: #B22222;
    }
    .pagination .page-link:hover {
        background-color: #FFD700;
    }
</style>
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

    <!-- Content Body -->
    <div class="container mt-4">
        <div class="row">
            <!-- Video Card Template -->
            <%
            for (int i = 1; i <= 6; i++) {
            %>
            <div class="col-md-4 mb-4">
                <div class="card border-warning h-100">
                    <div class="card-body d-flex align-items-center justify-content-center border border-warning" style="height: 150px;">
                        <span class="fw-bold text-secondary">POSTER</span>
                    </div>
                    <div class="card-footer text-center">
                        <h5 class="card-title fw-bold text-success mb-3">Video Title</h5>
                        <div class="d-flex justify-content-center gap-2">
                            <button class="btn btn-success btn-sm">Like</button>
                            <button class="btn btn-warning text-white btn-sm">Share</button>
                        </div>
                    </div>
                </div>
            </div>
            <%
            }
            %>
        </div>

        <!-- Pagination -->
        <nav aria-label="Page navigation">
            <ul class="pagination justify-content-center">
                <li class="page-item"><a class="page-link" href="#">|&lt;</a></li>
                <li class="page-item"><a class="page-link" href="#">&lt;&lt;</a></li>
                <li class="page-item"><a class="page-link" href="#">...</a></li>
                <li class="page-item"><a class="page-link" href="#">&gt;&gt;</a></li>
                <li class="page-item"><a class="page-link" href="#">&gt;|</a></li>
            </ul>
        </nav>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
