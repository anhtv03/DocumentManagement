/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.doc.documentmanagement.controller;

import com.doc.documentmanagement.dal.AccountDAO;
import com.doc.documentmanagement.dal.UserDAO;
import com.doc.documentmanagement.model.Account;
import com.doc.documentmanagement.model.User;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 *
 * @author PC
 */
@WebServlet(name = "LoginServlet", urlPatterns = {"/login"})
public class Login extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        switch (action) {
            case "signIn" ->
                doLogin(request, response);
            case "signUp" ->
                doSignUp(request, response);
            case "logout" ->
                doLogout(request, response);
            default ->
                request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doLogin(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String email = request.getParameter("email");
        String pass = request.getParameter("password");
        String remember = request.getParameter("remember");
        //tao 3 cookie: username, password, remember me
        Cookie emailCookie = new Cookie("cemail", email);
        Cookie passCookie = new Cookie("cpass", pass);
        Cookie remCookie = new Cookie("crem", remember);
        HttpSession session = request.getSession();
        //check remember
        if (remember != null) {
            //co chon
            emailCookie.setMaxAge(60 * 60 * 24 * 7);//7 ngay
            passCookie.setMaxAge(60 * 60 * 24 * 7);
            remCookie.setMaxAge(60 * 60 * 24 * 7);
        } else {
            //khong chon
            emailCookie.setMaxAge(0);//xoa
            passCookie.setMaxAge(0);
            remCookie.setMaxAge(0);
        }
        //luu vao brower
        response.addCookie(emailCookie);
        response.addCookie(passCookie);
        response.addCookie(remCookie);

        AccountDAO ad = new AccountDAO();
        Account acc = ad.check(email, pass);
        session.setAttribute("account", acc);
        //check accout is not exist
        if (acc == null) {
            // Không tìm thấy tài khoản, gửi thông báo lỗi
            request.setAttribute("loginError", true);
            request.getRequestDispatcher("login.jsp").forward(request, response);
        } else {
            //if role 1 - admin
            if (acc.getRole() == 1) {
                response.sendRedirect("home");
            } //if role 2 - user
            else {
                response.sendRedirect("home");
            }
        }
    }

    protected void doSignUp(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String pass = request.getParameter("password");
        AccountDAO ad = new AccountDAO();
        UserDAO ud = new UserDAO();

        try {
            Account acc = ad.getAccountByEmail(email);
            // check format phone input
            if (!phone.trim().isEmpty() && !phone.matches("^0[35789]{1}\\d{8}$")) {
                request.setAttribute("loginError", "Phone number must consist of 10 digits with a leading zero.");
            } else if (acc == null) {
                //check email is exist in Account
                Account newAcc = new Account(email, name, phone, pass, 2, true);
                User newUser = new User(name, null, email, phone, null, true);
                ad.insertRoleUser(newAcc);
                ud.insertUser(newUser);
                request.setAttribute("loginSuccess", "Account created successfully!");
                request.setAttribute("show", true);
            } else {
                request.setAttribute("loginError", "Account already exists!");
            }

            request.setAttribute("name", name);
            request.setAttribute("email", email);
            request.setAttribute("phone", phone);
            request.getRequestDispatcher("register.jsp").forward(request, response);
        } catch (ServletException | IOException e) {
            System.out.println(e);
        }
    }

    protected void doLogout(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession sesion = request.getSession();
        sesion.removeAttribute("account");
        response.sendRedirect("index.html");
    }

}
