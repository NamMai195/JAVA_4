<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Report-Statistics</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<style>
    /* Custom styles */
    body {
        background-color: #f5f6fa;
    }
    .navbar {
        box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.2);
    }
    .navbar-brand {
        font-size: 1.8rem;
        color: #ffc107 !important;
    }
    .navbar-nav .nav-link {
        font-size: 1.1rem;
        color: #28a745 !important;
        transition: color 0.2s, font-weight 0.2s;
    }
    .navbar-nav .nav-link:hover {
        color: #ffc107 !important;
        font-weight: bold;
    }
    .nav-tabs .nav-link.active {
        background-color: #ffc107;
        color: #000;
        font-weight: bold;
        border-radius: 5px;
    }
    .tab-content {
        padding: 1.5rem;
        background-color: #ffffff;
        border: 1px solid #ddd;
        border-top: none;
        box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
    }
    .table {
        background-color: #ffffff;
    }
    .table thead {
        background-color: #28a745;
        color: #ffffff;
    }
    .table th, .table td {
        text-align: center;
        vertical-align: middle;
    }
    .table-hover tbody tr:hover {
        background-color: #f1f1f1;
    }
    .form-select, .form-label {
        font-weight: bold;
    }
</style>
</head>
<body>

    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container">
            <a class="navbar-brand" href="#">Administration Tool</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
					<li class="nav-item"><a class="nav-link text-success fw-bold"
						href="#">Home</a></li>
					<li class="nav-item"><a class="nav-link text-success fw-bold"
						href="Video_Management.jsp">Videos</a></li>
					<li class="nav-item"><a class="nav-link text-success fw-bold"
						href="User_Management.jsp">Users</a></li>
					<li class="nav-item"><a class="nav-link text-success fw-bold"
						href="Report_Statistics.jsp">Reports</a></li>
				</ul>
            </div>
        </div>
    </nav>

    <div class="container mt-4">
        <ul class="nav nav-tabs" id="myTab" role="tablist">
            <li class="nav-item" role="presentation">
                <button class="nav-link active" id="favorites-tab" data-bs-toggle="tab" data-bs-target="#favorites" type="button" role="tab" aria-controls="favorites" aria-selected="true">Favorites</button>
            </li>
            <li class="nav-item" role="presentation">
                <button class="nav-link" id="favorite-users-tab" data-bs-toggle="tab" data-bs-target="#favorite-users" type="button" role="tab" aria-controls="favorite-users" aria-selected="false">Favorite Users</button>
            </li>
            <li class="nav-item" role="presentation">
                <button class="nav-link" id="shared-friends-tab" data-bs-toggle="tab" data-bs-target="#shared-friends" type="button" role="tab" aria-controls="shared-friends" aria-selected="false">Shared Friends</button>
            </li>
        </ul>

        <div class="tab-content mt-3" id="myTabContent">
            <!-- Favorites Tab -->
            <div class="tab-pane fade show active" id="favorites" role="tabpanel" aria-labelledby="favorites-tab">
                <table class="table table-bordered table-hover">
                    <thead>
                        <tr>
                            <th>Video Title</th>
                            <th>Favorite Count</th>
                            <th>Latest Date</th>
                            <th>Oldest Date</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Lâu ghé mới gặp</td>
                            <td>100</td>
                            <td>31/12/2020</td>
                            <td>01/01/2020</td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <!-- Favorite Users Tab -->
            <div class="tab-pane fade" id="favorite-users" role="tabpanel" aria-labelledby="favorite-users-tab">
                <div class="mb-3">
                    <label for="videoTitleSelect" class="form-label">Video Title:</label>
                    <select class="form-select" id="videoTitleSelect">
                        <option selected>Lâu ghé mới gặp</option>
                    </select>
                </div>
                <table class="table table-bordered table-hover">
                    <thead>
                        <tr>
                            <th>Username</th>
                            <th>Fullname</th>
                            <th>Email</th>
                            <th>Favorite Date</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>TeoNV</td>
                            <td>Nguyễn Văn Tèo</td>
                            <td>teonv@gmail.com</td>
                            <td>01/01/2020</td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <!-- Shared Friends Tab -->
            <div class="tab-pane fade" id="shared-friends" role="tabpanel" aria-labelledby="shared-friends-tab">
                <table class="table table-bordered table-hover">
                    <thead>
                        <tr>
                            <th>Sender Name</th>
                            <th>Sender Email</th>
                            <th>Receiver Email</th>
                            <th>Sent Date</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Nguyễn Văn Tèo</td>
                            <td>teonv@gmail.com</td>
                            <td>poly@gmail.com</td>
                            <td>01/01/2020</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
