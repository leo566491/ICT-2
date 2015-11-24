/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.newa5pro.employee;

import com.newa5pro.employee.EmExp;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;

/**
 *
 * @author Fu
 */
public class EmRowMapperEmExp implements RowMapper<EmExp> {

    @Override
    public EmExp mapRow(ResultSet rs,int i) throws SQLException {  
        EmExp u=new EmExp();
        u.Id=rs.getInt("exp_id");
        u.emId=rs.getInt("em_id");
        u.comName=rs.getString("com_name");
        u.department=rs.getString("em_department");
        u.position=rs.getString("em_position");
        u.period=rs.getInt("em_period");
        u.require = rs.getString("em_require");
        return u;
        

    }
}