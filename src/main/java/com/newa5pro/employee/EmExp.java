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
public class EmExp {//employee experian
    public int Id ;
    public int emId;
    public String comName ;
    public String department;
    public String position;
    public int period;
    public String require;



    public EmExp() {
        
    }

    
    public boolean isValid(){
        return Id!=-1;
    }
}
