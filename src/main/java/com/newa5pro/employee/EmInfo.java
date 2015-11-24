/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.newa5pro.employee;

/**
 *
 * @author Fu
 */
public class EmInfo {//employee infomation
    public int Id ;
    public String pic ;
    public long birth;
    public String tel;
    public String info;
    public String national ;
    public String skill;
    public String fname;
    public String lname;



    public EmInfo() {
        
    }

    
    public boolean isValid(){
        return Id!=-1;
    }
}
