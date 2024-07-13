package com.service;

import com.entity.News;
import com.entity.User;
import com.util.UserDatabase;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

public class GetDataBase {
    public static boolean judgeUser(String username, String password){
        String sql ="select * from account u where u.username = ? and u.password =?";
        try (Connection conn = UserDatabase.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql);){
            ps.setString(1,username);
            ps.setString(2,password);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    // 如果查询结果中存在记录，说明用户名和密码匹配
                    return true;
                }
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return false;
    }
    public static List<News> getNews(){
        List<News> newsList = new ArrayList<>();
        String sql ="select * from News";
        try (Connection conn = UserDatabase.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()){
                while (rs.next()) {
                    News news = new News();
                    news.setId(rs.getInt("id"));
                    news.setTitle(rs.getString("title"));
                    news.setContent(rs.getString("content"));
                    newsList.add(news);
                }
            } catch (SQLException e){
            throw new RuntimeException(e);
        }
        return newsList;
    }
    public static News getNewsById(int id){
        String sql ="select * from News where id = ?";
        News news = new News();
        try (Connection conn = UserDatabase.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql);){
            ps.setInt(1,id);
            try (ResultSet rs = ps.executeQuery()) {
                if (rs.next()) {
                    news.setId(rs.getInt("id"));
                    news.setTitle(rs.getString("title"));
                    news.setContent(rs.getString("content"));
                }
            }
        }catch (SQLException e){
            throw new RuntimeException(e);
        }
        return news;
    }

}
