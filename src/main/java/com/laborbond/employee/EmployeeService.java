/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.laborbond.employee;

import java.util.List;

/**
 *
 * @author Fu
 */
public interface EmployeeService {
    
    public void updateEmInfo(EmInfo emInfo);
        
    public EmInfo getEmInfo(int id);
        
    public List<EmExp> getEmExp(int emId);
        
    public void addEmExp(EmExp emExp);
        
    public void deleteEmExp(int expId);
    
    public List<EmEdu> getEmEdu(int emId);
        
    public void addEmEdu(EmEdu emEdu);
        
    public void deleteEmEdu(int expId);
}
