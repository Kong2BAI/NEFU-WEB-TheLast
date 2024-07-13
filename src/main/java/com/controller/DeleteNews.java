package com.controller;

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

@WebServlet("/deleteNews")
public class DeleteNews extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        var news = com.service.GetDataBase.getNews();
        req.setAttribute("news", news);
        req.getRequestDispatcher("WEB-INF/jsp/News/delete.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String newsId = req.getParameter("id");

        if (newsId != null && !newsId.isEmpty()) {
            try {
                deleteNewsFromDatabase(Integer.parseInt(newsId));
            } catch (SQLException e) {
                e.printStackTrace();

            }
        }
        resp.sendRedirect("deleteSuccess"); // 重定向到新闻列表页面
    }

    private void deleteNewsFromDatabase(int newsId) throws SQLException{
        PreparedStatement stmt = null;
        Connection conn = null;
        try{
            conn = com.util.UserDatabase.getConnection();
            String sql = "delete  from News where id = ?";
            stmt = conn.prepareStatement(sql);
            stmt.setInt(1, newsId);
            stmt.executeUpdate();
        }catch ( SQLException e) {
            e.printStackTrace();
            throw new SQLException("Failed to delete news from database", e);
        } finally {
            if (stmt != null) {
                stmt.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
    }
}
