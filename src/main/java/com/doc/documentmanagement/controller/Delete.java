/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.doc.documentmanagement.controller;


import com.doc.documentmanagement.dal.DocumentDAO;
import com.doc.documentmanagement.model.Documents;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


/**
 *
 * @author PC
 */
@WebServlet(name = "Delete", urlPatterns = {"/delete"})
public class Delete extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String id_raw = request.getParameter("documentID");
        DocumentDAO dd = new DocumentDAO();
        int id;
        try {
            id = Integer.parseInt(id_raw);
            Documents doc = dd.getDocumentsByID(id);
            dd.deleteDocument(doc);
            response.sendRedirect("management");
        } catch (NumberFormatException e) {
            System.out.println(e);
        }
    }

}
