package com.example.simple_login;

import java.io.*;
import java.util.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "LoginServlet", value = "/login")
public class LoginServlet extends HttpServlet {
    private String message;

    public void init() {
        message = "Hello World!";
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        PrintWriter writer = response.getWriter();
        writer.println("<html>");

        if ("admin".equals(username) && "admin".equals(password)) {
            writer.println("<h1>Welcome " + username + " to website</h1>");
        } else {
            writer.println("<h1>Login Error</h1>");
        }

        writer.println("</html>");

//        String defaultUser = getServletConfig().getInitParameter("username");
//        String defaultPass = getServletConfig().getInitParameter("password");
//
//        if ("admin".equals(username) && "admin".equals(password)) {
//            request.setAttribute("loginTime", new Date());
//            RequestDispatcher requestDispatcher = request.getRequestDispatcher("login.jsp");
//            requestDispatcher.forward(request, response);
//        } else {
//            response.sendRedirect("index.jsp");
//        }
    }

    public void destroy() {
    }
}