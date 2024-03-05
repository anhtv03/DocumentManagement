/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.doc.documentmanagement.model;

/**
 *
 * @author PC
 */
public class User {
//    CREATE TABLE [User](
//	userID INT IDENTITY(1,1) PRIMARY KEY,
//	[name] VARCHAR(50) NOT NULL,
//	avatar VARCHAR(MAX),
//	email VARCHAR(MAX) NOT NULL,
//	phone CHAR(10),	
//	[address] NVARCHAR(MAX),
//	[status] BIT,
//);

    private int userID;
    private String name, avatar, email, phone, address;
    private boolean status;

    public User() {
    }

    public User(int userID, String name, String avatar, String email, String phone, String address, boolean status) {
        this.userID = userID;
        this.name = name;
        this.avatar = avatar;
        this.email = email;
        this.phone = phone;
        this.address = address;
        this.status = status;
    }
    
    public User(String name, String avatar, String email, String phone, String address, boolean status) {
        this.name = name;
        this.avatar = avatar;
        this.email = email;
        this.phone = phone;
        this.address = address;
        this.status = status;
    }

    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

}
