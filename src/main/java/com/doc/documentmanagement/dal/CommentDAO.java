/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.doc.documentmanagement.dal;

import com.doc.documentmanagement.model.Comment;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author PC
 */
public class CommentDAO extends DBContext {

    public List<Comment> getCommentByDocID(int docID, String status) {
        List<Comment> list = new ArrayList<>();
        String sql = "SELECT*FROM Comment\n"
                + "WHERE documentID = ? AND status = '" + status + "'";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, docID);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Comment acc = new Comment();
                acc.setCommentID(rs.getInt(1));
                acc.setCommentTitle(rs.getString(2));
                acc.setUserID(rs.getInt(3));
                acc.setDocumentID(rs.getInt(4));
                acc.setStatus(rs.getBoolean(5));
                list.add(acc);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public void addComment(Comment cmt) {
        String sql = "INSERT INTO [dbo].[Comment]([commentTitle],[userID],[documentID],[status])\n"
                + "VALUES (?,?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, cmt.getCommentTitle());
            st.setInt(2, cmt.getUserID());
            st.setInt(3, cmt.getDocumentID());
            st.setBoolean(4, cmt.isStatus());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public static void main(String[] args) {
        CommentDAO a = new CommentDAO();
        Comment b = new Comment(0, "very good", 3, 53, true);
        a.addComment(b);
        System.out.println(a.getCommentByDocID(53,"true").size());
    }
}
