<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login</title>
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


	<div class="container my-5">
		<div class="card border-warning">
			<div class="card-header bg-success-subtle text-dark fw-bold">
				LOGIN</div>
			<div class="card-body bg-light">
				<form action="login" method="post">
					<div class="mb-3">
						<label for="username"
							class="form-label text-uppercase fw-bold text-secondary">Username?</label>
						<input type="text" id="username" name="username"
							class="form-control border-warning" required>
					</div>
					<div class="mb-3">
						<label for="password"
							class="form-label text-uppercase fw-bold text-secondary">Password?</label>
						<input type="password" id="password" name="password"
							class="form-control border-warning" required>
					</div>
					<div class="mb-3 form-check">
						<input type="checkbox" id="remember" name="remember"
							class="form-check-input border-warning"> <label
							for="remember" class="form-check-label fw-bold text-secondary">Remember
							me?</label>
					</div>
				</form>
			</div>
			<div class="card-footer bg-light">
				<div class="d-flex justify-content-end">
					<button type="submit"
						class="btn btn-warning text-white fw-bold px-4">Login</button>
				</div>
			</div>
		</div>
	</div>


	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
