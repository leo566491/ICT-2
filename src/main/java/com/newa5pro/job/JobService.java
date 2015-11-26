/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.newa5pro.job;

import java.util.List;

/**
 *
 * @author Fu
 */
public interface JobService {
    
    public List<Job> getJob();
        
    public void postJob(Job job);
}
