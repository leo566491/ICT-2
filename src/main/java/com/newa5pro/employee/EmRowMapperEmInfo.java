/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.newa5pro.employee;

import com.newa5pro.employee.EmInfo;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;

/**
 *
 * @author Fu
 */
public class EmRowMapperEmInfo implements RowMapper<EmInfo> {

    @Override
    public EmInfo mapRow(ResultSet rs,int i) throws SQLException {  
        EmInfo u=new EmInfo();
        u.Id=rs.getInt("em_id");
        u.birth=rs.getLong("em_birth");
        u.tel=rs.getString("em_tel");
        u.pic=rs.getString("em_pic");
        u.info=rs.getString("em_info");
        u.national=rs.getString("em_national");
        u.skill = rs.getString("em_skill");
        u.fname=rs.getString("em_fname");
        u.lname = rs.getString("em_lname");
        return u;


    }
}
