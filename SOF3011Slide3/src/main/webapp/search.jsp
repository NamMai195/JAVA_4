<%@ page import="java.util.List" %>
<%@ page import="com.lab3.bean.Video" %>
<%@ page import="com.lab3.bean.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Favorite Videos Search</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
    <div class="container mt-5">
        <div class="card">
            <div class="card-body">
                <h2 class="text-center text-primary mb-4">Search Favorite Videos by User ID</h2>
                <form action="search" method="post" class="form-inline justify-content-center mb-4">
                    <label for="userId" class="sr-only">User ID</label>
                    <input type="text" id="userId" name="userId" class="form-control mr-2" placeholder="Enter User ID" required>
                    <button type="submit" class="btn btn-primary">Search</button>
                </form>

                <hr>

                <h4 class="text-secondary">Search Results:</h4>
                <%
                    String message = (String) request.getAttribute("message");
                    if (message != null) {
                %>
                    <div class="alert alert-info mt-3"><%= message %></div>
                <%
                    } else {
                        User user = (User) request.getAttribute("user");
                        if (user != null) {
                %>
                    <div class="card mt-3">
                        <div class="card-header bg-info text-white">
                            User Information
                        </div>
                        <div class="card-body">
                            <p><strong>User ID:</strong> <%= user.getId() %></p>
                            <p><strong>Full Name:</strong> <%= user.getFullname() %></p>
                            <p><strong>Email:</strong> <%= user.getEmail() %></p>
                        </div>
                    </div>

                    <h5 class="mt-4">Favorite Videos:</h5>
                    <%
                        List<Video> videos = (List<Video>) request.getAttribute("videos");
                        if (videos != null && !videos.isEmpty()) {
                    %>
                    <table class="table table-bordered mt-3">
                        <thead class="thead-dark">
                            <tr>
                                <th>Video ID</th>
                                <th>Title</th>
                                <th>Poster</th>
                                <th>Views</th>
                                <th>Active</th>
                            </tr>
                        </thead>
                        <tbody>
                            <%
                                for (Video video : videos) {
                            %>
                            <tr>
                                <td><%= video.getId() %></td>
                                <td><%= video.getTitle() %></td>
                                <td><%= video.getPoster() %></td>
                                <td><%= video.getViews() %></td>
                                <td><%= video.getActive() ? "Yes" : "No" %></td>
                            </tr>
                            <%
                                }
                            %>
                        </tbody>
                    </table>
                    <%
                        } else {
                    %>
                    <div class="alert alert-warning mt-3">No favorite videos found for this user.</div>
                    <%
                        }
                    }
                    else {
                %>
                    <div class="alert alert-danger mt-3">No user found with the given ID.</div>
                <%
                    }
                }
                %>
            </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.6.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
