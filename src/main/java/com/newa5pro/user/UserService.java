package com.newa5pro.user;




/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Fu
 */

public interface UserService{
        public boolean register(User user,String password);
        //return true if success
        //return false if email already been user
        
        public User getUser(int id, String type);  
        
        public User login(User user, String password);  
        //return blank user if any thing wrong
        //if user and password if correct return id and email and type of user

    }
