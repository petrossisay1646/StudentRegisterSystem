<!DOCTYPE html>
<html>
<head>
    <title>Student Registration</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: #f0f8ff;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        .container {
            max-width: 500px;
            margin: 60px auto;
            padding: 30px;
            background: #ffffff;
            border-radius: 12px;
            box-shadow: 0 8px 20px rgba(0,0,0,0.1);
        }
        h2 {
            text-align: center;
            margin-bottom: 25px;
            color: #00796b;
        }
        .btn-primary {
            width: 100%;
        }
        .footer-link {
            text-align: center;
            margin-top: 15px;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>Register Student</h2>
    <form action="register" method="post">
        <div class="mb-3">
            <label>Name:</label>
            <label>
                <input type="text" name="name" class="form-control" required>
            </label>
        </div>
        <div class="mb-3">
            <label>Email:</label>
            <label>
                <input type="email" name="email" class="form-control" required>
            </label>
        </div>
        <div class="mb-3">
            <label>Year:</label>
            <label>
                <input type="number" name="year" class="form-control" required>
            </label>
        </div>
        <button type="submit" class="btn btn-primary">Register</button>
    </form>
    <div class="footer-link">
        <a href="show_all" class="btn btn-link">View All Students</a>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
