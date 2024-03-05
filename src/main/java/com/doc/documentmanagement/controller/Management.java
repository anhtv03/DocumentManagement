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
@WebServlet(name = "Management", urlPatterns = {"/management"})
public class Management extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        UserDAO ud = new UserDAO();
        DocumentDAO dd = new DocumentDAO();
        AccountDAO ad = new AccountDAO();
        int countA = 0, countP = 0, sum = 0;

        Account acc = (Account) session.getAttribute("account");
        if (acc != null) {
            User user = ud.getUserByEmail(acc.getEmail());
            List<Documents> docA = dd.getDocumentByUserAccept(user.getUserID());
            for (Documents doc1 : docA) {
                if (doc1.getUser().getUserID() == user.getUserID()) {
                    countA++;
                }
                sum += doc1.getView();
            }
            request.setAttribute("doc", docA);
            request.setAttribute("countAcept", countA);
            request.setAttribute("view", sum);
            request.setAttribute("user", user);
            if (acc.getRole() == 1) {
                List<Documents> docP = dd.getDocumentByAccountPending();
                for (Documents documents : docP) {
                    if (documents != null) {
                        countP++;
                    }
                }
                request.setAttribute("docPending", docP);
                request.setAttribute("countPending", countP);
                request.getRequestDispatcher("adminManager.jsp").forward(request, response);
            } else {
                List<Documents> docP = dd.getDocumentByUserPending(user.getUserID());
                for (Documents doc2 : docP) {
                    if (doc2.getUser().getUserID() == user.getUserID()) {
                        countP++;
                    }
                }
                request.setAttribute("docPending", docP);
                request.setAttribute("countPeding", countP);
                request.getRequestDispatcher("management.jsp").forward(request, response);
            }
        } else {
            response.sendRedirect("login.jsp");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

}
