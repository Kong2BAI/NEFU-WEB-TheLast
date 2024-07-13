package com.controller;

import com.util.UserDatabase;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet("/addNews")
public class addNewsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("WEB-INF/jsp/News/addNews.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // 获取表单数据
        String title = req.getParameter("title");
        String content = req.getParameter("content");

        // 验证数据
        if (title == null || title.trim().isEmpty() || content == null || content.trim().isEmpty()) {
            resp.sendRedirect("addNews?error=empty_fields");
            return;
        }
        String sql = "INSERT INTO News (title, content) VALUES (?, ?)";
        // 插入数据到数据库
        try (Connection conn = UserDatabase.getConnection()) {
            try (PreparedStatement ps = conn.prepareStatement(sql) ) {
                ps.setString(1, title);
                ps.setString(2, content);
                int rowsInserted = ps.executeUpdate();

                if (rowsInserted > 0) {
                    resp.sendRedirect("addSuccess");
                } else {
                    resp.sendRedirect("addNews?error=insert_failed");
                }
            }
        } catch (SQLException e) {
            resp.sendRedirect("addNews?error=database_error");
        }
    }
}
