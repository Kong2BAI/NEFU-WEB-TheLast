package com.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/NewsDetails")
public class NewsDetailsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        int newsId = Integer.parseInt(req.getParameter("id"));
        req.setAttribute("news", com.service.GetDataBase.getNewsById(newsId));
        req.getRequestDispatcher("WEB-INF/jsp/News/NewsDetails.jsp").forward(req,resp);
    }

}
