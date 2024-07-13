package com.filter;

import com.entity.User;
import jakarta.servlet.FilterChain;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.List;

@WebFilter("/*")
public class Filter extends HttpFilter {
    private final List<String> excludes = List.of("/login",
            "/addSuccess","/NewsDetails","/Employment","/index.html","/Introduction","/AssociateProfessor","/direction","/loginError");
    @Override
    public void init() throws ServletException {
        super.init();
    }

    @Override
    protected void doFilter(HttpServletRequest req, HttpServletResponse res, FilterChain chain) throws IOException, ServletException {
        //先判断是否需要过滤该路径
        for (String e : excludes) {
            //getServletPath与getContextPath不同
            if (e.equals(req.getServletPath())) {
                chain.doFilter(req, res);
                return;
            }
        }
        User user = (User) req.getSession().getAttribute("user");
        if (user != null) {
            chain.doFilter(req, res);
            return;
        }
        res.sendRedirect(req.getContextPath() + "/login");
    }
}
