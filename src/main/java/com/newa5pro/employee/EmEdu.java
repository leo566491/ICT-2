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
public class EmEdu {
    public int Id ;
    public int emId;
    public String academy ;
    public String major;
    public String year;
    public String info;



    public EmEdu() {
        
    }

    
    public boolean isValid(){
        return Id!=-1;
    }
}