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
    public Job getJob(int id) {
        Job job = new Job();
        JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource); 
        String sql = "select * from job_id, job_filter where job_id.job_id= job_filter.job_id and job_id.job_id = ?";
        job = jdbcTemplate.query(sql,new Object[]{id}, new JobRowMapperJob()).get(0);
        return job;
    }

    @Override
    public void postJob(Job job) {
        String sql = "INSERT INTO `job_id` (`com_id`,`job_title`, `job_info`, `job_location`, `job_request`, `job_respon`, `job_apply`, `job_industry`) VALUES(?,?,?,?,?,?,?,?)";
        JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
        jdbcTemplate.update(sql, new Object[] { job.comId,job.title,job.info,job.location,job.request,job.respon,job.apply,job.industry});
        
        sql = "INSERT INTO `job_filter` (`job_cmin`, `job_cmax`,`job_type`) VALUES(?,?,?)";
        jdbcTemplate.update(sql, new Object[] { job.cmin,job.cmax,job.type});
    }
}
