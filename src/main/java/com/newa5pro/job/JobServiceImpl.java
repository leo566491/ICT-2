/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.newa5pro.job;

import java.util.ArrayList;
import java.util.List;
import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

/**
 *
 * @author Fu
 */
public class JobServiceImpl implements JobService{
    @Autowired
    public DataSource dataSource;
    
    @Override
    public List<Job> getJob() {
        List<Job> job = new ArrayList<Job>();
        JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource); 
        String sql = "select * from job_id, job_filter where job_id.job_id= job_filter.job_id";
        job = jdbcTemplate.query(sql,new Object[]{}, new JobRowMapperJob());
        return job;
    }

    @Override
    public void postJob(Job job) {
        String sql = "INSERT INTO `job_id` (`com_id`, `job_info`, `job_location`, `job_request`, `job_benefit`, `job_position`) VALUES(?,?,?,?,?,?)";
        JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
        jdbcTemplate.update(sql, new Object[] { job.comId,job.info,job.location,job.request,job.benefit,job.position});
        
        sql = "INSERT INTO `job_filter` (`job_cmin`, `job_cmax`, `job_age`, `job_sex`, `job_type`, `job_exp`, `job_country`, `job_term`) VALUES(?,?,?,?,?,?,?,?)";
        jdbcTemplate.update(sql, new Object[] { job.cmin,job.cmax,job.age,job.sex,job.type,job.exp,job.country,job.term});
    }
}
