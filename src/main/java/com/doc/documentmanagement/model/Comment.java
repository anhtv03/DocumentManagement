/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.doc.documentmanagement.model;

/**
 *
 * @author PC
 */
public class Comment {
//    CREATE TABLE Comment(
//	commentID INT IDENTITY(1,1) PRIMARY KEY,
//	commentTitle VARCHAR(150) NOT NULL,
//	userID INT REFERENCES [User](userID),
//	documentID INT REFERENCES Documents(documentID),
//	[status] BIT,
//);

    private int commentID;
    private String commentTitle;
    private int userID, documentID;
    private boolean status;

    public Comment() {
    }

    public Comment(int commentID, String commentTitle, int userID, int documentID, boolean status) {
        this.commentID = commentID;
        this.commentTitle = commentTitle;
        this.userID = userID;
        this.documentID = documentID;
        this.status = status;
    }

    public int getCommentID() {
        return commentID;
    }

    public void setCommentID(int commentID) {
        this.commentID = commentID;
    }

    public String getCommentTitle() {
        return commentTitle;
    }

    public void setCommentTitle(String commentTitle) {
        this.commentTitle = commentTitle;
    }

    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public int getDocumentID() {
        return documentID;
    }

    public void setDocumentID(int documentID) {
        this.documentID = documentID;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

}
