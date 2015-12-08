/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.laborbond.company;

import com.laborbond.company.ComInfo;
import com.laborbond.company.ComInfo;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;

/**
 *
 * @author Fu
 */
public class ComRowMapperComInfo implements RowMapper<ComInfo> {

    @Override
    public ComInfo mapRow(ResultSet rs,int i) throws SQLException {  
        ComInfo u=new ComInfo();
        u.Id=rs.getInt("com_id");
        u.sname=rs.getString("com_sname");
        u.lname=rs.getString("com_lname");
        u.pic=rs.getString("com_photo");
        u.info=rs.getString("com_info");
        u.no=rs.getString("com_no");
        u.web = rs.getString("com_web");
        u.facebook=rs.getString("com_facebook");
        u.google = rs.getString("com_google");
        u.twister = rs.getString("com_twister");
        u.size= rs.getString("com_google");
        u.u_fname = rs.getString("com_u_fname");
        u.u_lname = rs.getString("com_u_lname");
        return u;

    }
}
