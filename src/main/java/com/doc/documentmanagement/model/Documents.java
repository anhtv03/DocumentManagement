/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.doc.documentmanagement.model;

/**
 *
 * @author PC
 */
public class Documents {
//CREATE TABLE Documents(
//	documentID INT IDENTITY(1,1) PRIMARY KEY,
//	docName VARCHAR(150),
//	tilte VARCHAR(255) NOT NULL,
//	[path] VARCHAR(MAX) NOT NULL,
//	imgDoc VARCHAR(MAX),
//	[view] INT,
//	dateCreated DATE DEFAULT CURRENT_TIMESTAMP,
//	statusDoc VARCHAR(50),
//	categoryID INT REFERENCES Category(categoryID),
//	userID INT REFERENCES [User](userID),
//	[status] BIT,
//);

    private int documentID;
    private String docName, fileName, path, imgDoc;
    private int view;
    private String dateCreated, statusFile;
    private Category category;
    private User user;
    private boolean status;

    public Documents() {
    }

    public Documents(int documentID, String docName, String fileName, String path, String imgDoc, int view, String dateCreated, String statusFile, Category category, User user, boolean status) {
        this.documentID = documentID;
        this.docName = docName;
        this.fileName = fileName;
        this.path = path;
        this.imgDoc = imgDoc;
        this.view = view;
        this.dateCreated = dateCreated;
        this.statusFile = statusFile;
        this.category = category;
        this.user = user;
        this.status = status;
    }
    
    public Documents(String docName, String fileName, String path, String imgDoc, int view, String dateCreated, String statusFile, Category category, User user, boolean status) {
        this.docName = docName;
        this.fileName = fileName;
        this.path = path;
        this.imgDoc = imgDoc;
        this.view = view;
        this.dateCreated = dateCreated;
        this.statusFile = statusFile;
        this.category = category;
        this.user = user;
        this.status = status;
    }

    public int getDocumentID() {
        return documentID;
    }

    public void setDocumentID(int documentID) {
        this.documentID = documentID;
    }

    public String getDocName() {
        return docName;
    }

    public void setDocName(String docName) {
        this.docName = docName;
    }

    public String getFileName() {
        return fileName;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public String getImgDoc() {
        return imgDoc;
    }

    public void setImgDoc(String imgDoc) {
        this.imgDoc = imgDoc;
    }

    public int getView() {
        return view;
    }

    public void setView(int view) {
        this.view = view;
    }

    public String getDateCreated() {
        return dateCreated;
    }

    public void setDateCreated(String dateCreated) {
        this.dateCreated = dateCreated;
    }

    public String getStatusFile() {
        return statusFile;
    }

    public void setStatusFile(String statusFile) {
        this.statusFile = statusFile;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }


}
