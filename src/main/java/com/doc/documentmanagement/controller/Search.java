/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.doc.documentmanagement.controller;

import com.doc.documentmanagement.dal.CategoryDAO;
import com.doc.documentmanagement.dal.DocumentDAO;
import com.doc.documentmanagement.dal.UserDAO;
import com.doc.documentmanagement.model.Account;
import com.doc.documentmanagement.model.Category;
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
@WebServlet(name = "Search", urlPatterns = {"/search"})
public class Search extends HttpServlet {

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
            out.println("<title>Servlet Search</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Search at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        DocumentDAO dd = new DocumentDAO();
        CategoryDAO cd = new CategoryDAO();
        UserDAO ud = new UserDAO();

        List<Category> list = cd.getAllCategory();
        int select = 0;

        String key = request.getParameter("key");
        String select_raw = request.getParameter("categorySelect");

        Account acc = (Account) session.getAttribute("account");
        if (acc != null) {
            User user = ud.getUserByEmail(acc.getEmail());
            request.setAttribute("user", user);

            if (select_raw != null) {
                select = Integer.parseInt(select_raw);
                request.setAttribute("categorySelect", select);
            }

            request.setAttribute("key", key);
            List<Documents> listDoc = dd.search(key, select);
            request.setAttribute("doc", listDoc);
            request.setAttribute("category", list);
            request.getRequestDispatcher("search.jsp").forward(request, response);

        } else {
            response.sendRedirect("login.jsp");
        }
    }

}
