package com.example;

import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.WebServlet;

@WebServlet("/submit")
public class StudentServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Get values from form
        String name = request.getParameter("name");
        String age = request.getParameter("age");
        String email = request.getParameter("email");
        String branch = request.getParameter("branch");
        String about = request.getParameter("about");

        // Set attributes for JSP
        request.setAttribute("name", name);
        request.setAttribute("age", age);
        request.setAttribute("email", email);
        request.setAttribute("branch", branch);
        request.setAttribute("about", about);

        // Forward to display.jsp
        RequestDispatcher dispatcher = request.getRequestDispatcher("display.jsp");
        dispatcher.forward(request, response);
    }
}
