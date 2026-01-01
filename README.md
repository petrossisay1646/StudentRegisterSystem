# 📘 Student Registration System (Java Servlet + JDBC)

## 📌 Project Description

The **Student Registration System** is a simple Java Servlet–based web application that allows users to:

- Register students using a web form
- Store student data in a relational database
- View all registered students in an HTML table

This project demonstrates the use of **Java Servlets**, **JDBC**, and **MySQL** following a basic MVC-style structure.  
It is suitable for **Advanced Programming / Web Programming coursework**.

---

## 🎯 Features

- Student Registration (POST `/register`)
- View All Registered Students (GET `/show_all`)
- Input validation
- Database persistence using MySQL
- Simple and clean user interface

---

## 🛠 Technologies Used

- Java (JDK 8+)
- Java Servlets (Jakarta Servlet API)
- JDBC
- MySQL
- Apache Tomcat (v9 or v10)
- HTML

---

## 📂 Project Structure

```

StudentRegistrationApp/
│
├── src/main/java/
│   ├── db/
│   │   └── DBConnection.java
│   │
│   ├── servlet/
│   │   ├── RegisterStudentServlet.java
│   │   └── ShowAllStudentsServlet.java
│
├── src/main/webapp/
│   ├── index.html
│   └── WEB-INF/
│       └── web.xml
│
└── README.md

```

---

## 🗄 Database Design

### Database Name
```

student_db

````

### Table: `students`

| Column Name | Data Type     | Constraints               |
|------------|--------------|---------------------------|
| id         | INT          | Primary Key, Auto Increment |
| name       | VARCHAR(100) | NOT NULL                  |
| email      | VARCHAR(100) | NOT NULL, UNIQUE          |
| year       | INT          | NOT NULL                  |

### SQL Script

```sql
CREATE DATABASE student_db;
USE student_db;

CREATE TABLE students (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    year INT NOT NULL
);
````

---

## 🔄 Application Workflow

### 1️⃣ Student Registration

* User fills the registration form
* Data is sent to `/register` using POST
* Servlet validates and inserts data into the database

### 2️⃣ View All Students

* User clicks "View All Students"
* Servlet fetches all records from database
* Data is displayed in an HTML table

---

## 🖼 Sample Screenshots

> 📌 **Note:** Replace the image files with your own screenshots before submission.

### 🔹 Student Registration Page

![Student Registration Form](images/studentRegisterSystem.jpg)

---

## ▶ How to Run the Project

### Step 1: Prerequisites

* Install **JDK**
* Install **MySQL**
* Install **Apache Tomcat**
* Add **MySQL Connector/J** to the project

### Step 2: Database Setup

* Run the provided SQL script in MySQL
* Update database credentials in `DBConnection.java`

### Step 3: Deploy

* Import project into IntelliJ IDEA / Eclipse
* Deploy on Apache Tomcat
* Start the server

### Step 4: Access Application

Open your browser and visit:

```
http://localhost:8080/StudentRegistrationApp/index.html
```

---

## ✅ Expected Output

* Students can be registered successfully
* Duplicate emails are prevented
* All registered students are displayed in a table
* Data persists in the database

---

## 🚀 Future Enhancements

* Add JSP for better MVC separation
* Input validation with regex
* CSS styling
* Update and delete student records
* Login authentication


