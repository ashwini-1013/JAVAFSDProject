/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.blog.entities;

/**
 *
 * @author kavit
 */
//
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Database {
    public static Connection con;

    public static Connection getConnection() {
        try {
            if (con == null) {
                // Load driver class
                Class.forName("com.mysql.cj.jdbc.Driver");
                // Create a connection
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/blogging", "root", "");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return con;
    }

    public Database(Connection con) {
        Database.con = con;
    }

    // Method to insert user to database
    public boolean saveUser(User user) {
    boolean isSaved = false;
    try {
        con.setAutoCommit(true);
        String query = "INSERT INTO newuser (name, email, password) VALUES (?, ?, ?)";
        PreparedStatement pst = con.prepareStatement(query);
        pst.setString(1, user.getName());
        pst.setString(2, user.getEmail());
        pst.setString(3, user.getPassword());

        pst.executeUpdate();
        isSaved = true;
    } catch (SQLException e) {
        e.printStackTrace();
    }
    return isSaved;
}


    // Get user by name and password
    public User getUserByNameAndPassword(String name, String password) {
        User user = null;
        try {
            String query = "SELECT * FROM newuser WHERE name = ? AND password = ?";
            PreparedStatement pst = con.prepareStatement(query);
            pst.setString(1, name);
            pst.setString(2, password);
            ResultSet set = pst.executeQuery();
            if (set.next()) {
                user = new User();
                user.setId(set.getInt("id"));
                user.setName(set.getString("name"));
                user.setEmail(set.getString("email"));
                user.setPassword(set.getString("password"));
            }else{
                
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return user;
    }
}
