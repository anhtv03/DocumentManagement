/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.doc.documentmanagement.dal;

import com.doc.documentmanagement.model.User;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


/**
 *
 * @author PC
 */
public class UserDAO extends DBContext {

    public List<User> getAllUser() {
        List<User> list = new ArrayList<>();
        String sql = "SELECT*FROM [User] WHERE status = 1";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                User acc = new User(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getBoolean(7));
                list.add(acc);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public User getUserByEmail(String email) {
        String sql = "SELECT*FROM [User] WHERE email = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, email);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                User acc = new User(rs.getInt(1),rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getBoolean(7));
                return acc;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }
    
    public User getUserByID(int id) {
        String sql = "SELECT*FROM [User] WHERE userID = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                User acc = new User(rs.getInt(1),rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getBoolean(7));
                return acc;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public void insertUser(User acc) {
        String sql = "INSERT INTO [dbo].[User]([name],[avatar],[email],[phone],[address],[status])\n"
                + "VALUES (?,?,?,?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, acc.getName());
            st.setString(2, acc.getAvatar());
            st.setString(3, acc.getEmail());
            st.setString(4, acc.getPhone());
            st.setString(5, acc.getAddress());
            st.setBoolean(6, true);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void updateUser(User user) {
        String sql = "UPDATE [dbo].[User]\n"
                + "SET [name] = ?,[avatar] = ?,[phone] = ?,[address] = ?,[status] = ? \n"
                + "WHERE userID = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, user.getName());
            st.setString(2, user.getAvatar());
            st.setString(3, user.getPhone());
            st.setString(4, user.getAddress());
            st.setBoolean(5, user.isStatus());
            st.setInt(6, user.getUserID());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public static void main(String[] args) {
        UserDAO dao = new UserDAO();
        System.out.println(dao.getAllUser().size());
//        User user = dao.getUserByEmail("admin1@gmail.com");
//        System.out.println(user.getName());

        User u = new User(3,"Nguyen Van A", null, "abc@gmail.com", "0456345276", "Viet Nam - Hue", true);
//        dao.updateNameUser(u.getName(), u.getEmail());
//        dao.updatePhoneUser(u.getPhone(), u.getAddress(), u.getEmail());

//        user = dao.getUserByID(1);
//        System.out.println(user.getUserID());
//dao.updateNameUser("ke duyen", 3);
dao.updateUser(u);
    }

}
