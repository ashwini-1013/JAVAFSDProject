/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.blog.servlets;

import com.blog.entities.Database;
import com.blog.entities.User;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class SignUpServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            String username = request.getParameter("username1");
            String password = request.getParameter("password1");
            String email = request.getParameter("email");
            String check = request.getParameter("check1");
            
            if(check != null){
                // Create user object and set all data to that object
                User user = new User(username,email, password);

                // Create object of userdao
                Database dao = new Database(Database.getConnection());
                if (dao.saveUser(user)) {
                    out.println("done");
                } else {
                    out.println("error");
                }
                response.sendRedirect("index.jsp");
            } else {
                out.println("box not checked");
                out.checkError();
            }
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
