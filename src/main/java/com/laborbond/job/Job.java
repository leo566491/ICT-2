/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.laborbond.job;

/**
 *
 * @author Fu
 */
public class Job {
    public int Id ;
    public int comId ;
    public String title;
    public String info;
    public String location;
    public String request;
    public String respon;
    public String apply;
    public String industry;
    public int cmin;
    public int cmax;
    public String type;


    public Job() {
        
    }

    
    public boolean isValid(){
        return Id!=-1;
    }
}
