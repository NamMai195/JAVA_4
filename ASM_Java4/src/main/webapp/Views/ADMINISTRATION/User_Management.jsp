<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>User Management</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
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
    .form-label {
        font-weight: bold;
        color: #333;
    }
    .btn {
        background-color: #ffc107;
        color: #fff;
        border: none;
        transition: background-color 0.2s;
    }
    .btn:hover {
        background-color: #e0a800;
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
    .pagination button {
        color: #28a745;
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
        <ul class="nav nav-tabs mb-3" id="userTab" role="tablist">
            <li class="nav-item" role="presentation">
                <button class="nav-link active text-danger fw-bold" id="user-edition-tab" data-bs-toggle="tab" data-bs-target="#user-edition" type="button" role="tab">User Edition</button>
            </li>
            <li class="nav-item" role="presentation">
                <button class="nav-link text-danger fw-bold" id="user-list-tab" data-bs-toggle="tab" data-bs-target="#user-list" type="button" role="tab">User List</button>
            </li>
        </ul>

        <div class="tab-content" id="userTabContent">
            <!-- User Edition Tab Content -->
            <div class="tab-pane fade show active" id="user-edition" role="tabpanel">
                <form>
                    <div class="row g-3">
                        <div class="col-md-6">
                            <label class="form-label">Username</label>
                            <input type="text" class="form-control">
                        </div>
                        <div class="col-md-6">
                            <label class="form-label">Password</label>
                            <input type="password" class="form-control">
                        </div>
                        <div class="col-md-6">
                            <label class="form-label">Fullname</label>
                            <input type="text" class="form-control">
                        </div>
                        <div class="col-md-6">
                            <label class="form-label">Email Address</label>
                            <input type="email" class="form-control">
                        </div>
                    </div>
                    <div class="d-flex gap-2 mt-3">
                        <button type="button" class="btn">Update</button>
                        <button type="button" class="btn">Delete</button>
                    </div>
                </form>
            </div>

            <!-- User List Tab Content -->
            <div class="tab-pane fade" id="user-list" role="tabpanel">
                <table class="table table-bordered table-hover text-center mt-3">
                    <thead>
                        <tr>
                            <th>Username</th>
                            <th>Password</th>
                            <th>Fullname</th>
                            <th>Email</th>
                            <th>Role</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>TeoNV</td>
                            <td>123456</td>
                            <td>Nguyễn Văn Tèo</td>
                            <td>teonv@gmail.com</td>
                            <td>Admin</td>
                            <td><a href="#" class="text-decoration-none text-danger">Edit</a></td>
                        </tr>
                    </tbody>
                </table>
                <p class="text-muted">185 users</p>

                <div class="d-flex justify-content-center gap-2 pagination">
                    <button type="button" class="btn btn-outline-secondary">&lt;&lt;</button>
                    <button type="button" class="btn btn-outline-secondary">&lt;</button>
                    <button type="button" class="btn btn-outline-secondary">&gt;</button>
                    <button type="button" class="btn btn-outline-secondary">&gt;&gt;</button>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
