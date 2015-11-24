/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.newa5pro.job;

import com.newa5pro.job.Job;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;

/**
 *
 * @author Fu
 */
public class JobRowMapperJob implements RowMapper<Job> {

    @Override
    public Job mapRow(ResultSet rs,int i) throws SQLException {  
        Job u=new Job();
        u.Id=rs.getInt("job_id");
        u.comId =rs.getInt("com_id");
        u.info= rs.getString("job_info");
        u.location = rs.getString("job_location");
        u.request = rs.getString("job_request");
        u.benefit = rs.getString("job_benefit");
        u.position = rs.getString("job_position");
        u.cmin =rs.getInt("job_cmin");
        u.cmax =rs.getInt("job_cmax");
        u.age = rs.getInt("job_age");
        u.sex = rs.getString("job_sex");
        u.type = rs.getString("job_type");
        u.exp = rs.getInt("job_exp");
        u.country = rs.getString("job_country");
        u.term = rs.getString("job_term");
        return u;

    }
}