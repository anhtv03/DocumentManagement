/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.doc.documentmanagement.controller;

import com.doc.documentmanagement.dal.CommentDAO;
import com.doc.documentmanagement.dal.DocumentDAO;
import com.doc.documentmanagement.dal.UserDAO;
import com.doc.documentmanagement.model.Account;
import com.doc.documentmanagement.model.Comment;
import com.doc.documentmanagement.model.Documents;
import com.doc.documentmanagement.model.User;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.List;

/**
 *
 * @author PC
 */
@WebServlet(name = "DetailDoc", urlPatterns = {"/detail"})
public class DetailDoc extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        String id_raw = request.getParameter("documentID");

        DocumentDAO dd = new DocumentDAO();
        UserDAO ud = new UserDAO();
        CommentDAO cmt_dao = new CommentDAO();

        Account acc = (Account) session.getAttribute("account");

        if (acc != null) {

            int id = Integer.parseInt(id_raw);

            Documents doc = dd.getDocumentsByIDAccept(id);
            dd.updateViewDocument(doc);
            User user = ud.getUserByID(doc.getDocumentID());
            List<Comment> cmt = cmt_dao.getCommentByDocID(id, "true");

            request.setAttribute("comment", cmt);
            request.setAttribute("doc", doc);
            request.getRequestDispatcher("detailDoc.jsp").forward(request, response);
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
