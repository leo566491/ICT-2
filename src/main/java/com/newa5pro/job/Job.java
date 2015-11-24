/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.newa5pro.job;

/**
 *
 * @author Fu
 */
public class Job {
    public int Id ;
    public int comId ;
    public String info;
    public String location;
    public String request;
    public String benefit;
    public String position;
    public int cmin;
    public int cmax;
    public int age;
    public String sex;
    public String type;
    public int exp;
    public String country;
    public String term;



    public Job() {
        
    }

    
    public boolean isValid(){
        return Id!=-1;
    }
}
