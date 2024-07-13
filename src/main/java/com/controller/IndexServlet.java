package com.controller;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
@WebServlet("/index.html")
public class IndexServlet extends HttpServlet {
    public void doGet(jakarta.servlet.http.HttpServletRequest request, jakarta.servlet.http.HttpServletResponse response)
            throws jakarta.servlet.ServletException, java.io.IOException {
         var news = com.service.GetDataBase.getNews();
         request.setAttribute("news", news);
         request.getRequestDispatcher("WEB-INF/jsp/Index.jsp").
                 forward(request, response);
    }
}
