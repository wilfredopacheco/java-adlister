//This file contains the url to the server, the username, and user password to access the database
package com.codeup.adlister.dao;

class Config {
    public String getUrl() {
        // Make sure to change the localhost/..... to the database you need to sign in
        return "jdbc:mysql://localhost/adlister_db?serverTimezone=UTC&useSSL=false";
    }
    public String getUser() {
        return "user1";
    }
    public String getPassword() {
        return "111";
    }
}