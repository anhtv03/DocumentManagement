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
import java.util.List;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import jakarta.servlet.http.Part;
import java.io.PrintWriter;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

/**
 *
 * @author PC
 */
@WebServlet(name = "Upload", urlPatterns = {"/upload"})
@MultipartConfig(
        location = "D:\\Java\\PRJ\\DocumentManagement\\file",
        fileSizeThreshold = 1024 * 1024 * 10, //10MB
        maxFileSize = 1024 * 1024 * 10, //10MB
        maxRequestSize = 1024 * 1024 * 50 //50MB
)
public class Upload extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        CategoryDAO dao = new CategoryDAO();
        UserDAO ud = new UserDAO();
        Account acc = (Account) session.getAttribute("account");

        if (acc != null) {
            User user = ud.getUserByEmail(acc.getEmail());
            request.setAttribute("acount", user);
            List<Category> list = dao.getAllCategory();
            request.setAttribute("category", list);
            request.getRequestDispatcher("upFile.jsp").forward(request, response);
        } else {
            response.sendRedirect("login.jsp");
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        CategoryDAO cd = new CategoryDAO();
        DocumentDAO dd = new DocumentDAO();
        UserDAO ud = new UserDAO();
        CategoryDAO cate_dao = new CategoryDAO();

        String docName = request.getParameter("fileName");
        String select = request.getParameter("categorySelect");

        Category category = cd.getCategoryByID(Integer.parseInt(select));

        String folderName = "D:\\Java\\PRJ\\DocumentManagement\\file";
        String fileName = "";
        String uploadTime = "";
        String image = "";

        Account acc = (Account) session.getAttribute("account");
        if (acc != null) {
            Part part = request.getPart("file");

            User user = ud.getUserByEmail(acc.getEmail());
            fileName = getFileName(part);
            Path filePath = Paths.get(folderName, fileName);
            part.write(filePath.toString());
            image = checkTypeFile(fileName);

            LocalDateTime currentTime = LocalDateTime.now();
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
            uploadTime = currentTime.format(formatter);

            System.out.println("fileName: " + getFileName(part));
            System.out.println("File Path: " + filePath.toString());
            System.out.println("Upload Time: " + uploadTime);

            Documents doc = new Documents(docName, fileName, filePath.toString(), image, 0, uploadTime, "pending", category, user, true);
            dd.insertFile(doc);

            List<Category> list = cate_dao.getAllCategory();
            request.setAttribute("category", list);

            request.setAttribute("mess", "Uploaded successfully");
            request.getRequestDispatcher("upFile.jsp").forward(request, response);
        } else {
            response.sendRedirect("login.jsp");
        }
    }

    private String getFileName(Part part) {
        String content = part.getHeader("content-disposition");
        if (!content.contains("filename=")) {
            return null;
        }
        int beginIndex = content.indexOf("filename=") + 10;
        int endIndex = content.length() - 1;

        return content.substring(beginIndex, endIndex);
    }

    public static String checkTypeFile(String fileName) {
        if (fileName == null || fileName.isEmpty()) {
            return "";
        }

        int lastDotIndex = fileName.lastIndexOf('.');
        if (lastDotIndex != -1 && lastDotIndex < fileName.length() - 1) {
            if (fileName.substring(lastDotIndex + 1).equalsIgnoreCase("docx") || fileName.substring(lastDotIndex + 1).equalsIgnoreCase("txt")) {
                return "https://tinhocmos.edu.vn/wp-content/uploads/2018/01/microsoft-word-2013.png";
            } else if (fileName.substring(lastDotIndex + 1).equalsIgnoreCase("pdf")) {
                return "https://is1-ssl.mzstatic.com/image/thumb/Purple122/v4/dd/84/33/dd8433c7-e3f5-d654-1b61-809f25cf9540/FoxitReader.png/246x0w.webp";
            } else if (fileName.substring(lastDotIndex + 1).equalsIgnoreCase("ppt") || fileName.substring(lastDotIndex + 1).equalsIgnoreCase("pptx")) {
                return "https://midlandstraining.co.za/wp-content/uploads/2022/07/powerpoint-icon.png";
            } else if (fileName.substring(lastDotIndex + 1).equalsIgnoreCase("xls") || fileName.substring(lastDotIndex + 1).equalsIgnoreCase("xlsx")) {
                return "https://upload.wikimedia.org/wikipedia/commons/thumb/3/34/Microsoft_Office_Excel_%282019%E2%80%93present%29.svg/1200px-Microsoft_Office_Excel_%282019%E2%80%93present%29.svg.png";
            }
//            else if (fileName.substring(lastDotIndex + 1).equalsIgnoreCase("png")
//                    || fileName.substring(lastDotIndex + 1).equalsIgnoreCase("jpg")
//                    || fileName.substring(lastDotIndex + 1).equalsIgnoreCase("jpeg")) {
//                return "file_upload/" + fileName;
//            }
        } else {
            return "";
        }
        return null;
    }
}
