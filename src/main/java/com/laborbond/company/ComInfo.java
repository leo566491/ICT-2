/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.laborbond.company;

/**
 *
 * @author Fu
 */
public class ComInfo {//employee infomation
    public int Id ;
    public String sname ;
    public String lname;
    public String no;
    public String pic;
    public String web;
    public String facebook;
    public String google;
    public String twister;
    public String info;
    public String size;
    public String u_fname;
    public String u_lname;



    public ComInfo() {
        
    }

    
    public boolean isValid(){
        return Id!=-1;
    }
}
