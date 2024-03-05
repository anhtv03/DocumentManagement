/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.doc.documentmanagement.controller;

import com.doc.documentmanagement.dal.AccountDAO;
import com.doc.documentmanagement.dal.DocumentDAO;
import com.doc.documentmanagement.dal.UserDAO;
import com.doc.documentmanagement.model.Account;
import com.doc.documentmanagement.model.Documents;
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
import java.util.List;

/**
 *
 * @author PC
 */
@WebServlet(name = "Profile", urlPatterns = {"/profile"})
public class Profile extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        UserDAO ud = new UserDAO();
        AccountDAO ad = new AccountDAO();
        DocumentDAO dd = new DocumentDAO();
        
        int count = 0, sum = 0;
        HttpSession session = request.getSession();
        Account account = (Account) session.getAttribute("account");
        String status = request.getParameter("status");
        
        if (account != null) {
            User user = ud.getUserByEmail(account.getEmail());
            Account acc = ad.getAccountByEmail(account.getEmail());
            List<Documents> doc = dd.getDocumentByUserAccept(user.getUserID());
            for (Documents doc1 : doc) {
                if (doc1.getUser().getUserID() == user.getUserID()) {
                    count++;
                }
                sum += doc1.getView();
            }
            request.setAttribute("view", sum);
            request.setAttribute("count", count);
            request.setAttribute("user", user);
            request.setAttribute("account", acc);
            request.setAttribute("status", status);
            request.getRequestDispatcher("profile.jsp").forward(request, response);
        } else {
            response.sendRedirect("login.jsp");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        switch (action) {
            case "changeName" ->
                doUpdateName(request, response);
            case "changePhone" ->
                doUpdatePhone(request, response);
            case "changePass" ->
                doUpdatePass(request, response);
            case "upavatar" ->
                doUpdateAvatar(request, response);
            default -> {
            }
        }
    }

    protected void doUpdateName(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        UserDAO ud = new UserDAO();
        AccountDAO ad = new AccountDAO();
        HttpSession session = request.getSession();
        String name = request.getParameter("userName");
        Account acc = (Account) session.getAttribute("account");

        User currentUser = ud.getUserByEmail(acc.getEmail());

        if (acc != null) {
            int id = currentUser.getUserID();
            User user = ud.getUserByID(id);
            user.setName(name);
            acc.setName(name);
            ud.updateUser(user);
            ad.updateAccount(acc);
        }

        response.sendRedirect("profile?status=success");
    }

    protected void doUpdatePhone(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        UserDAO ud = new UserDAO();
        AccountDAO ad = new AccountDAO();
        HttpSession session = request.getSession();
        String phone = request.getParameter("userPhone");
        String address = request.getParameter("userAddress");
        Account acc = (Account) session.getAttribute("account");

        User currentUser = ud.getUserByEmail(acc.getEmail());

        if (acc != null) {
            int id = currentUser.getUserID();
            User user = ud.getUserByID(id);
            user.setPhone(phone);
            user.setAddress(address);
            acc.setPhone(phone);
            ud.updateUser(user);
            ad.updateAccount(acc);
            request.setAttribute("status", "success");
        }

        response.sendRedirect("profile?status=success");
    }

    protected void doUpdatePass(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        AccountDAO ad = new AccountDAO();
        HttpSession session = request.getSession();
        String newPass = request.getParameter("newPass");
        Account acc = (Account) session.getAttribute("account");

        if (acc != null) {
            acc.setPassword(newPass);
            ad.updateAccount(acc);
            request.setAttribute("status", "success");
        }

        response.sendRedirect("profile?status=success");
    }
    
    protected void doUpdateAvatar(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        AccountDAO ad = new AccountDAO();
        HttpSession session = request.getSession();
        String newPass = request.getParameter("newPass");
        Account acc = (Account) session.getAttribute("account");

        if (acc != null) {
            acc.setPassword(newPass);
            ad.updateAccount(acc);
            request.setAttribute("status", "success");
        }

        response.sendRedirect("profile?status=success");
    }

}
