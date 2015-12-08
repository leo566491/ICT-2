/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.laborbond.company;

import javax.sql.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

/**
 *
 * @author Fu
 */
public class CompanyServiceImpl implements CompanyService{
    @Autowired
    public DataSource dataSource;
    
    @Override
    public void updateComInfo(ComInfo comInfo) {
        String sql = "Update `company_info` SET `com_sname` = ?,`com_lname` =? ,`com_no` = ?,`com_photo`=?,`com_web`=?,`com_facebook`=?,`com_google`=?,`com_twister`=?,`com_info`=?,`com_size`=?,`com_u_fname`=?,`com_u_lname`=? WHERE `com_id` = ?";
        JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
        jdbcTemplate.update(sql, new Object[] { comInfo.sname,comInfo.lname,comInfo.no,comInfo.pic,comInfo.web,comInfo.facebook,comInfo.google,comInfo.twister,comInfo.info,comInfo.size,comInfo.u_fname,comInfo.u_lname,comInfo.Id});
    }

    @Override
    public ComInfo getComInfo(int id) {
       JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
       String sql = "SELECT * FROM  `company_info` WHERE `com_id` =  ? ";
       ComInfo comInfo = (ComInfo) jdbcTemplate.queryForObject(sql,new Object[]{id}, new ComRowMapperComInfo());
       return comInfo;
    }



}
