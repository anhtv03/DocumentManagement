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
@WebServlet(name = "EditFile", urlPatterns = {"/editFile"})
public class EditFile extends HttpServlet {

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
            out.println("<title>Servlet EditFile</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet EditFile at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        String docId = request.getParameter("docId");
        String status = request.getParameter("status");
        
        DocumentDAO doc_dao = new DocumentDAO();
        CategoryDAO cate_dao = new CategoryDAO();
        UserDAO ud = new UserDAO();
        
        Account acc = (Account) session.getAttribute("account");
        int count = 0, sum = 0;
        
        if (acc != null) {
            int docID = Integer.parseInt(docId);
            Documents doc = doc_dao.getDocumentsByID(docID);
            User user = ud.getUserByEmail(acc.getEmail());
            List<Documents> docs = doc_dao.getDocumentByUserAccept(user.getUserID());
            for (Documents doc1 : docs) {
                if (doc1.getUser().getUserID() == user.getUserID()) {
                    count++;
                }
                sum += doc1.getView();
            }
            List<Category> list = cate_dao.getAllCategory();
            
            if(status != null){
                request.setAttribute("status", status);
            }
            
            request.setAttribute("user", user);
            request.setAttribute("doc", doc);
            request.setAttribute("view", sum);
            request.setAttribute("count", count);
            request.setAttribute("category", list);
            request.getRequestDispatcher("editFile.jsp").forward(request, response);
        } else {
            response.sendRedirect("login.jsp");
        }
        
    }
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        String docId_raw = request.getParameter("documentID");
        String fileName = request.getParameter("fileName");
        String category = request.getParameter("categorySelect");
        
        UserDAO user_dao = new UserDAO();
        DocumentDAO doc_dao = new DocumentDAO();
        CategoryDAO cate_dao = new CategoryDAO();
        Account acc = (Account) session.getAttribute("account");
        
        if (acc != null) {
            int docId = Integer.parseInt(docId_raw);
            int cateId = Integer.parseInt(category);
            User user = user_dao.getUserByEmail(acc.getEmail());
            Documents doc = doc_dao.getDocumentsByID(docId);
            doc.setCategory(cate_dao.getCategoryByID(cateId));
            doc.setDocName(fileName);
            doc_dao.updateInfoDocument(doc);
            
            response.sendRedirect("editFile?docId=" + docId +"&status=success");
        } else {
            response.sendRedirect("login.jsp");
        }
        
    }
    
}
