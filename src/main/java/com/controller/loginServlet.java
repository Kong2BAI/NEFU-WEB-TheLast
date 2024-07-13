package com.controller;

import com.entity.User;
import com.service.GetDataBase;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@WebServlet("/login")
public class loginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("WEB-INF/jsp/login/login.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");
        boolean flag = GetDataBase.judgeUser(username,password);
        if (flag) {
            req.getSession().setAttribute("user",new User(username,password));
            resp.sendRedirect(req.getContextPath());
        } else {
            resp.getWriter().println("Invalid username or password.");
            resp.sendRedirect(req.getContextPath()+"/loginError");
        }
    }
}
