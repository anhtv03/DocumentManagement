/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.doc.documentmanagement.model;

/**
 *
 * @author PC
 */
public class Account {
//    CREATE TABLE Account(
//id INT IDENTITY(1,1) PRIMARY KEY,
//email VARCHAR(MAX) NOT NULL,
//[name] VARCHAR(50) NOT NULL,
//phone CHAR(10),
//[password] VARCHAR(30) NOT NULL,
//[role] INT NOT NULL,
// [status] bit
//);

    private int accountID;
    private String email, name, phone, password;
    private int role;
    private boolean status;

    public Account() {
    }

    public Account(int accountID, String email, String name, String phone, String password, int role, boolean status) {
        this.accountID = accountID;
        this.email = email;
        this.name = name;
        this.phone = phone;
        this.password = password;
        this.role = role;
        this.status = status;
    }

    public Account(String email, String name, String phone, String password, int role, boolean status) {
        this.email = email;
        this.name = name;
        this.phone = phone;
        this.password = password;
        this.role = role;
        this.status = status;
    }

    public int getAccountID() {
        return accountID;
    }

    public void setAccountID(int accountID) {
        this.accountID = accountID;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

}
