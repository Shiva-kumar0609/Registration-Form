package in.sp.backend;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/regForm")
public class Register extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html");
        PrintWriter out = resp.getWriter();

        String name = req.getParameter("name1");
        String email = req.getParameter("email1");
        String pass = req.getParameter("pass1");
        String gender = req.getParameter("gender1");
        String city = req.getParameter("city1");

        try {
            // Load MySQL driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Connect to database
            Connection conn = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/shiva1", "root", "root");

            // Insert query
            PreparedStatement ps = conn.prepareStatement("INSERT INTO register1 VALUES (?,?,?,?,?)");
            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, pass);
            ps.setString(4, gender);
            ps.setString(5, city);

            int count = ps.executeUpdate();

            if (count > 0) {
                out.print("<h3 style=\"color:green;\">User registered successfully</h3>");
            } else {
                out.print("<h3 style=\"color:red;\">User registration failed</h3>");
            }

            ps.close();
            conn.close();
        } 
        catch (Exception e) {
            out.print("<h3 style=\"color:red;\">Exception: " + e.getMessage() + "</h3>");
        }
    }
}
