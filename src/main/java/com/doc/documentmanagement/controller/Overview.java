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
@WebServlet(name = "Overview", urlPatterns = {"/overview"})
public class Overview extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {

            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet overview</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet overview at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        UserDAO ud = new UserDAO();
        DocumentDAO dd = new DocumentDAO();
        int count = 0, sum = 0;
        Account acc = (Account) session.getAttribute("account");
        if (acc != null) {
            User user = ud.getUserByEmail(acc.getEmail());
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
            if (acc.getRole() == 1) {
                for (int j = 1; j <= 5; j++) {
                    request.setAttribute("month" + j, dd.getDocumentCountByMonth(j));
                }
            } else {
                for (int j = 1; j <= 5; j++) {
                    request.setAttribute("month" + j, dd.getDocumentCountByMonthOfUser(user.getUserID(), j));
                }
            }
            request.getRequestDispatcher("overview.jsp").forward(request, response);
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
