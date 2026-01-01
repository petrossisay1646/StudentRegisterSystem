<%@ page import="java.util.List" %>
<%@ page import="model.Student" %>
<!DOCTYPE html>
<html>
<head>
    <title>All Students</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: #f0f8ff;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        .container {
            max-width: 800px;
            margin: 50px auto;
            padding: 25px;
            background: #ffffff;
            border-radius: 12px;
            box-shadow: 0 8px 20px rgba(0,0,0,0.1);
        }
        h2 {
            text-align: center;
            color: #00796b;
            margin-bottom: 20px;
        }
        table thead {
            background-color: #00796b;
            color: #fff;
        }
        table tbody tr:hover {
            background-color: #b2dfdb;
        }
        .back-link {
            text-align: center;
            margin-top: 20px;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>Registered Students</h2>
    <table class="table table-striped table-bordered table-hover">
        <thead>
        <tr>
            <th>Name</th>
            <th>Email</th>
            <th>Year</th>
        </tr>
        </thead>
        <tbody>
        <%
            List<Student> students = (List<Student>) request.getAttribute("students");
            if (students != null) {
                for (Student s : students) {
        %>
        <tr>
            <td><%= s.getName() %></td>
            <td><%= s.getEmail() %></td>
            <td><%= s.getYear() %></td>
        </tr>
        <%
                }
            }
        %>
        </tbody>
    </table>
    <div class="back-link">
        <a href="index.jsp" class="btn btn-success">Register New Student</a>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
