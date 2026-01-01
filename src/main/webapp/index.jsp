<!DOCTYPE html>
<html>
<head>
    <title>Student Registration</title>
</head>
<body>

<h2>Register Student</h2>

<form action="register" method="post">
    Name: <label>
    <input type="text" name="name" required>
</label><br><br>
    Email: <label>
    <input type="email" name="email" required>
</label><br><br>
    Year: <label>
    <input type="number" name="year" required>
</label><br><br>
    <button type="submit">Register</button>
</form>

<br>
<a href="show_all">View All Students</a>

</body>
</html>
