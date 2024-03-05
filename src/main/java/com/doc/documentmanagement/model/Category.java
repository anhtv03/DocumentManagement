/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.doc.documentmanagement.model;

/**
 *
 * @author PC
 */
public class Category {
//    CREATE TABLE Category(
//	categoryID INT IDENTITY(1,1) PRIMARY KEY,
//	categoryName NVARCHAR(100) NOT NULL,
//	[status] BIT,
//);

    private int categoryID;
    private String categoryName;
    private boolean status;

    public Category() {
    }

    public Category(int categoryID, String categoryName, boolean status) {
        this.categoryID = categoryID;
        this.categoryName = categoryName;
        this.status = status;
    }

    public Category(String categoryName, boolean status) {
        this.categoryName = categoryName;
        this.status = status;
    }

    public int getCategoryID() {
        return categoryID;
    }

    public void setCategoryID(int categoryID) {
        this.categoryID = categoryID;
    }

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

}
