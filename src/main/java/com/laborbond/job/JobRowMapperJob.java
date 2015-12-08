/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.laborbond.job;

import com.laborbond.job.Job;
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
        u.title = rs.getString("job_title");
        u.info= rs.getString("job_info");
        u.location = rs.getString("job_location");
        u.request = rs.getString("job_request");
        u.respon = rs.getString("job_respon");
        u.apply = rs.getString("job_apply");
        u.industry = rs.getString("job_industry");
        u.cmin =rs.getInt("job_cmin");
        u.cmax =rs.getInt("job_cmax");
        u.type = rs.getString("job_type");
        return u;

    }
}