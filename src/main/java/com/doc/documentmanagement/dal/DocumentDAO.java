/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.doc.documentmanagement.dal;

import com.doc.documentmanagement.model.Category;
import com.doc.documentmanagement.model.Documents;
import com.doc.documentmanagement.model.User;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


/**
 *
 * @author PC
 */
public class DocumentDAO extends DBContext {

    public void insertFile(Documents doc) {
        String sql = "INSERT INTO [dbo].[Documents]([docName],[tilte],[path],\n"
                + "[imgDoc],[view],[dateCreated],[statusDoc],[categoryID],[userID],[status])\n"
                + "VALUES(?,?,?,?,?,?,?,?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, doc.getDocName());
            st.setString(2, doc.getFileName());
            st.setString(3, doc.getPath());
            st.setString(4, doc.getImgDoc());
            st.setInt(5, doc.getView());
            st.setString(6, doc.getDateCreated());
            st.setString(7, doc.getStatusFile());
            st.setInt(8, doc.getCategory().getCategoryID());
            st.setInt(9, doc.getUser().getUserID());
            st.setBoolean(10, doc.isStatus());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public List<Documents> getDocumentsByView() {
        List<Documents> list = new ArrayList<>();
        CategoryDAO cd = new CategoryDAO();
        UserDAO ud = new UserDAO();
        String sql = "SELECT*FROM [Documents] WHERE status = 1\n"
                + "AND statusDoc = 'approved' ORDER BY [view] DESC";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Documents acc = new Documents();
                acc.setDocumentID(rs.getInt(1));
                acc.setDocName(rs.getString(2));
                acc.setFileName(rs.getString(3));
                acc.setPath(rs.getString(4));
                acc.setImgDoc(rs.getString(5));
                acc.setView(rs.getInt(6));
                acc.setDateCreated(rs.getString(7));
                acc.setStatusFile(rs.getString(8));
                Category category = cd.getCategoryByID(rs.getInt(9));
                acc.setCategory(category);
                User user = ud.getUserByID(rs.getInt(10));
                acc.setUser(user);
                acc.setStatus(rs.getBoolean(11));
                list.add(acc);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
    
    public Documents getDocumentsByIDAccept(int id) {
        CategoryDAO cd = new CategoryDAO();
        UserDAO ud = new UserDAO();
        String sql = "SELECT*FROM [Documents] WHERE status = 1\n"
                + " AND statusDoc = 'approved' AND documentID = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Documents acc = new Documents();
                acc.setDocumentID(rs.getInt(1));
                acc.setDocName(rs.getString(2));
                acc.setFileName(rs.getString(3));
                acc.setPath(rs.getString(4));
                acc.setImgDoc(rs.getString(5));
                acc.setView(rs.getInt(6));
                acc.setDateCreated(rs.getString(7));
                acc.setStatusFile(rs.getString(8));
                Category category = cd.getCategoryByID(rs.getInt(9));
                acc.setCategory(category);
                User user = ud.getUserByID(rs.getInt(10));
                acc.setUser(user);
                acc.setStatus(rs.getBoolean(11));
                return acc;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public Documents getDocumentsByID(int id) {
        CategoryDAO cd = new CategoryDAO();
        UserDAO ud = new UserDAO();
        String sql = "SELECT*FROM [Documents] WHERE status = 1\n"
                + " AND documentID = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Documents acc = new Documents();
                acc.setDocumentID(rs.getInt(1));
                acc.setDocName(rs.getString(2));
                acc.setFileName(rs.getString(3));
                acc.setPath(rs.getString(4));
                acc.setImgDoc(rs.getString(5));
                acc.setView(rs.getInt(6));
                acc.setDateCreated(rs.getString(7));
                acc.setStatusFile(rs.getString(8));
                Category category = cd.getCategoryByID(rs.getInt(9));
                acc.setCategory(category);
                User user = ud.getUserByID(rs.getInt(10));
                acc.setUser(user);
                acc.setStatus(rs.getBoolean(11));
                return acc;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public Documents getDocumentsByIDPending(int id) {
        CategoryDAO cd = new CategoryDAO();
        UserDAO ud = new UserDAO();
        String sql = "SELECT*FROM [Documents] WHERE status = 1\n"
                + " AND statusDoc = 'pending' AND documentID = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Documents acc = new Documents();
                acc.setDocumentID(rs.getInt(1));
                acc.setDocName(rs.getString(2));
                acc.setFileName(rs.getString(3));
                acc.setPath(rs.getString(4));
                acc.setImgDoc(rs.getString(5));
                acc.setView(rs.getInt(6));
                acc.setDateCreated(rs.getString(7));
                acc.setStatusFile(rs.getString(8));
                Category category = cd.getCategoryByID(rs.getInt(9));
                acc.setCategory(category);
                User user = ud.getUserByID(rs.getInt(10));
                acc.setUser(user);
                acc.setStatus(rs.getBoolean(11));
                return acc;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public void updateViewDocument(Documents doc) {
        String sql = "UPDATE [dbo].[Documents]\n"
                + "SET [docName] = ?,[tilte] =?,[path] = ?,[imgDoc] = ?,[view] = ?\n"
                + ",[dateCreated] = ?,[statusDoc] = ?,[categoryID] = ?,[userID] = ?\n"
                + ",[status] = ? WHERE documentID = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, doc.getDocName());
            st.setString(2, doc.getFileName());
            st.setString(3, doc.getPath());
            st.setString(4, doc.getImgDoc());
            st.setInt(5, doc.getView() + 1);
            st.setString(6, doc.getDateCreated());
            st.setString(7, doc.getStatusFile());
            st.setInt(8, doc.getCategory().getCategoryID());
            st.setInt(9, doc.getUser().getUserID());
            st.setBoolean(10, doc.isStatus());
            st.setInt(11, doc.getDocumentID());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public List<Documents> getDocumentByUserPending(int userID) {
        List<Documents> list = new ArrayList<>();
        CategoryDAO cd = new CategoryDAO();
        UserDAO ud = new UserDAO();
        String sql = "SELECT*FROM [Documents] WHERE status = 1"
                + " AND statusDoc = 'pending' AND userID = ?\n"
                + "ORDER BY dateCreated DESC";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, userID);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Documents acc = new Documents();
                acc.setDocumentID(rs.getInt(1));
                acc.setDocName(rs.getString(2));
                acc.setFileName(rs.getString(3));
                acc.setPath(rs.getString(4));
                acc.setImgDoc(rs.getString(5));
                acc.setView(rs.getInt(6));
                acc.setDateCreated(rs.getString(7));
                acc.setStatusFile(rs.getString(8));
                Category category = cd.getCategoryByID(rs.getInt(9));
                acc.setCategory(category);
                User user = ud.getUserByID(rs.getInt(10));
                acc.setUser(user);
                acc.setStatus(rs.getBoolean(11));
                list.add(acc);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Documents> getDocumentByAccountPending() {
        List<Documents> list = new ArrayList<>();
        CategoryDAO cd = new CategoryDAO();
        UserDAO ud = new UserDAO();
        String sql = "SELECT*FROM [Documents] WHERE status = 1"
                + " AND statusDoc = 'pending'\n"
                + "ORDER BY dateCreated DESC";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Documents acc = new Documents();
                acc.setDocumentID(rs.getInt(1));
                acc.setDocName(rs.getString(2));
                acc.setFileName(rs.getString(3));
                acc.setPath(rs.getString(4));
                acc.setImgDoc(rs.getString(5));
                acc.setView(rs.getInt(6));
                acc.setDateCreated(rs.getString(7));
                acc.setStatusFile(rs.getString(8));
                Category category = cd.getCategoryByID(rs.getInt(9));
                acc.setCategory(category);
                User user = ud.getUserByID(rs.getInt(10));
                acc.setUser(user);
                acc.setStatus(rs.getBoolean(11));
                list.add(acc);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Documents> getDocumentByUserAccept(int userID) {
        List<Documents> list = new ArrayList<>();
        CategoryDAO cd = new CategoryDAO();
        UserDAO ud = new UserDAO();
        String sql = "SELECT*FROM [Documents] WHERE status = 1"
                + " AND statusDoc = 'approved' AND userID = ?\n"
                + "ORDER BY dateCreated DESC";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, userID);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Documents acc = new Documents();
                acc.setDocumentID(rs.getInt(1));
                acc.setDocName(rs.getString(2));
                acc.setFileName(rs.getString(3));
                acc.setPath(rs.getString(4));
                acc.setImgDoc(rs.getString(5));
                acc.setView(rs.getInt(6));
                acc.setDateCreated(rs.getString(7));
                acc.setStatusFile(rs.getString(8));
                Category category = cd.getCategoryByID(rs.getInt(9));
                acc.setCategory(category);
                User user = ud.getUserByID(rs.getInt(10));
                acc.setUser(user);
                acc.setStatus(rs.getBoolean(11));
                list.add(acc);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public void deleteDocument(Documents doc) {
        String sql = "UPDATE [dbo].[Documents]\n"
                + "SET [docName] = ?,[tilte] =?,[path] = ?,[imgDoc] = ?,[view] = ?\n"
                + ",[dateCreated] = ?,[statusDoc] = ?,[categoryID] = ?,[userID] = ?\n"
                + ",[status] = ? WHERE documentID = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, doc.getDocName());
            st.setString(2, doc.getFileName());
            st.setString(3, doc.getPath());
            st.setString(4, doc.getImgDoc());
            st.setInt(5, doc.getView());
            st.setString(6, doc.getDateCreated());
            st.setString(7, doc.getStatusFile());
            st.setInt(8, doc.getCategory().getCategoryID());
            st.setInt(9, doc.getUser().getUserID());
            st.setBoolean(10, false);
            st.setInt(11, doc.getDocumentID());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public List<Documents> search(String key, int cid) {
        List<Documents> list = new ArrayList<>();
        CategoryDAO cd = new CategoryDAO();
        UserDAO ud = new UserDAO();
        String sql = "SELECT*FROM documents WHERE [status] = 1 AND statusDoc = 'approved'";
        if (key != null && !key.equals("")) {
            sql += " AND (docName LIKE '%" + key + "%' OR tilte LIKE '%" + key + "%')";
        }
        if (cid != 0 && cid > 0) {
            sql += " AND categoryID = " + cid;
        }
        try {
            PreparedStatement st = connection.prepareCall(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Documents acc = new Documents();
                acc.setDocumentID(rs.getInt(1));
                acc.setDocName(rs.getString(2));
                acc.setFileName(rs.getString(3));
                acc.setPath(rs.getString(4));
                acc.setImgDoc(rs.getString(5));
                acc.setView(rs.getInt(6));
                acc.setDateCreated(rs.getString(7));
                acc.setStatusFile(rs.getString(8));
                Category category = cd.getCategoryByID(rs.getInt(9));
                acc.setCategory(category);
                User user = ud.getUserByID(rs.getInt(10));
                acc.setUser(user);
                acc.setStatus(rs.getBoolean(11));
                list.add(acc);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public void updateStatusDocument(Documents doc) {
        String sql = "UPDATE [dbo].[Documents]\n"
                + "SET [docName] = ?,[tilte] =?,[path] = ?,[imgDoc] = ?,[view] = ?\n"
                + ",[dateCreated] = ?,[statusDoc] = ?,[categoryID] = ?,[userID] = ?\n"
                + ",[status] = ? WHERE documentID = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, doc.getDocName());
            st.setString(2, doc.getFileName());
            st.setString(3, doc.getPath());
            st.setString(4, doc.getImgDoc());
            st.setInt(5, doc.getView());
            st.setString(6, doc.getDateCreated());
            st.setString(7, "approved");
            st.setInt(8, doc.getCategory().getCategoryID());
            st.setInt(9, doc.getUser().getUserID());
            st.setBoolean(10, doc.isStatus());
            st.setInt(11, doc.getDocumentID());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public int getDocumentCountByMonth(int month) {
        String sql = "SELECT COUNT(*) FROM Documents "
                + "WHERE [status] = 1 AND statusDoc = 'approved' AND MONTH(dateCreated) = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, month);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return 0;
    }

    public int getDocumentCountByMonthOfUser(int id, int month) {
        String sql = "SELECT COUNT(*) FROM Documents\n"
                + "WHERE [status] = 1 AND statusDoc = 'approved' AND userID = ? AND MONTH(dateCreated) = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            st.setInt(2, month);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return 0;
    }
    
    public void updateInfoDocument(Documents doc) {
        String sql = "UPDATE [dbo].[Documents]\n"
                + "SET [docName] = ?,[tilte] =?,[path] = ?,[imgDoc] = ?,[view] = ?\n"
                + ",[dateCreated] = ?,[statusDoc] = ?,[categoryID] = ?,[userID] = ?\n"
                + ",[status] = ? WHERE documentID = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, doc.getDocName());
            st.setString(2, doc.getFileName());
            st.setString(3, doc.getPath());
            st.setString(4, doc.getImgDoc());
            st.setInt(5, doc.getView());
            st.setString(6, doc.getDateCreated());
            st.setString(7, doc.getStatusFile());
            st.setInt(8, doc.getCategory().getCategoryID());
            st.setInt(9, doc.getUser().getUserID());
            st.setBoolean(10, doc.isStatus());
            st.setInt(11, doc.getDocumentID());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public static void main(String[] args) {
        DocumentDAO dao = new DocumentDAO();
//        Category category = new Category(12, "Another Type", true);
//        User user = new User(3, "Ke Duyen", null, "user1@gmail.com", "0964738684", "Viet Nam - Ha Noi", true);
//        Documents doc = new Documents("SQL_overview", "SQL_overview.ppt", "D:\\Java\\PRJ\\Document Management\\file\\SQL_overview.ppt", "https://edu.mangoads.com.vn/wp-content/uploads/2021/04/4419188_439396-microsoft-powerpoint.jpeg", 0, "2023-11-09", "approved", category, user, true);
//        dao.insertFile(doc);
        System.out.println(dao.getDocumentByUserAccept(1).size());
//        List<Documents> list = dao.getAllDocuments();
//        for (Documents documents : list) {
//            System.out.println(documents.getDocumentID() + " "
//                    + documents.getDocName() + " "
//                    + documents.getFileName() + " "
//                    + documents.getPath() + " "
//                    + documents.getImgDoc() + " "
//                    + documents.getView() + " "
//                    + documents.getDateCreated() + " "
//                    + documents.getStatusFile() + " "
//                    + documents.getCategory().getCategoryID() + " "
//                    + documents.getUser().getUserID() + " "
//                    + documents.isStatus());
//        }
//        
//        Documents doc = dao.getDocumentsByID(20);
//        System.out.println(doc.getDocumentID());
//        System.out.println(dao.search("a", 0));
//        dao.updateStatusDocument(doc);
//        System.out.println(dao.getDocumentCountByMonth(11));
    }

}
