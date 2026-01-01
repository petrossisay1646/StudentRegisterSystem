package servlet;

import model.Student;
import util.DBConnection;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/show_all")
public class ShowStudentsServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException {

        List<Student> students = new ArrayList<>();

        try {
            Connection conn = DBConnection.getConnection();
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM students");

            while (rs.next()) {
                students.add(new Student(
                        rs.getString("name"),
                        rs.getString("email"),
                        rs.getInt("year")
                ));
            }

            request.setAttribute("students", students);
            request.getRequestDispatcher("students.jsp").forward(request, response);

        } catch (Exception e) {
            throw new ServletException(e);
        }
    }
}
