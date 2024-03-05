/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.doc.documentmanagement.dal;

import com.doc.documentmanagement.model.Account;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


/**
 *
 * @author PC
 */
public class AccountDAO extends DBContext {

    public Account getAccountByEmail(String email) {
        String sql = "SELECT*FROM Account WHERE email = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, email);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Account acc = new Account(rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getInt(6), rs.getBoolean(7));
                return acc;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public void insertRoleUser(Account acc) {
        String sql = "INSERT INTO [dbo].[Account] ([email],[name],[phone],[password],[role],[status])\n"
                + "VALUES (?,?,?,?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, acc.getEmail());
            st.setString(2, acc.getName());
            st.setString(3, acc.getPhone());
            st.setString(4, acc.getPassword());
            st.setInt(5, 2);
            st.setBoolean(6, true);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void insertRoleAdmin(Account acc) {
        String sql = "INSERT INTO [dbo].[Account] ([email],[name],[phone],[password],[role],[status])\n"
                + "VALUES (?,?,?,?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, acc.getEmail());
            st.setString(2, acc.getName());
            st.setString(3, acc.getPhone());
            st.setString(4, acc.getPassword());
            st.setInt(5, 1);
            st.setBoolean(6, true);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public Account check(String email, String pass) {
        String sql = "SELECT*FROM [dbo].[Account] WHERE [email]=? AND [password]=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, email);
            st.setString(2, pass);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                Account acc = new Account(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getInt(6), rs.getBoolean(7));
                return acc;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public void updateAccount(Account acc) {
        String sql = "UPDATE [dbo].[Account]\n"
                + "SET [name] = ?,[phone] = ?,[password] = ?,[role] = ?,[status] = ?\n"
                + " WHERE [id] = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, acc.getName());
            st.setString(2, acc.getPhone());
            st.setString(3, acc.getPassword());
            st.setInt(4, acc.getRole());
            st.setBoolean(5, acc.isStatus());
            st.setInt(6, acc.getAccountID());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public static void main(String[] args) {
        AccountDAO ad = new AccountDAO();

//        for (Account account : list) {
//            Account acc = ad.check(account.getEmail(), account.getPassword());
//            System.out.println(acc);
//        }
//        for (Account account : list) {
//            System.out.println(ad.getAccountByEmail(account.getEmail()));
//        }
        Account acc = new Account(3,"abc@gmail.com", "Nguyen Van A", "0456345276", "123", 2, true);
//        ad.insertRoleUser(acc);
//        ad.updateNameAccount(acc.getName(), acc.getEmail());
//ad.updateNameAccount("ABD", "abc@gmail.com");
ad.updateAccount(acc);
    }
}
