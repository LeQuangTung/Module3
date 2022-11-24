package com.example.customer;

import java.io.*;
import java.util.ArrayList;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "customerServlet", value = "/customer-servlet")
public class CustomerServlet extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ArrayList<Customer> customers = new ArrayList<>();
        customers.add(new Customer("Mai Văn Hoan", "1983-08-20", "Hà Nội", "https://cdn1.iconfinder.com/data/icons/ninja-things-1/1772/ninja-simple-512.png"));
        customers.add(new Customer("Nguyễn Văn Nam", "1983-08-21", "Bắc Giang", "https://cdn1.iconfinder.com/data/icons/ninja-things-1/1772/ninja-simple-512.png"));
        customers.add(new Customer("Nguyễn Thái Hòa", "1983-08-22", "Nam Định", "https://cdn1.iconfinder.com/data/icons/ninja-things-1/1772/ninja-simple-512.png"));
        customers.add(new Customer("Trần Đăng Khoa", "1983-08-17", "Hà Tây", "https://cdn1.iconfinder.com/data/icons/ninja-things-1/1772/ninja-simple-512.png"));
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("customer.jsp");
        request.setAttribute("customers", customers);
        requestDispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}