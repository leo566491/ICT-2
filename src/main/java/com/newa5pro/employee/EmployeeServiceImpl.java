/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.newa5pro.employee;

import com.newa5pro.user.UserService;
import java.util.ArrayList;
import java.util.List;
import javax.sql.DataSource;
import jdk.nashorn.internal.objects.annotations.Setter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

/**
 *
 * @author Fu
 */
public class EmployeeServiceImpl implements EmployeeService {
    
    @Autowired
    public DataSource dataSource;

    @Override
    public void updateEmInfo(EmInfo emInfo) {
        String sql = "Update `employee_info` SET `em_birth` = ?,`em_fname` =? ,`em_lname` = ?,`em_info`=?,`em_national`=?,`em_pic`=?,`em_skill`=?,`em_tel`=? WHERE `em_id` = ?";
        JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
        jdbcTemplate.update(sql, new Object[] { emInfo.birth,emInfo.fname,emInfo.lname,emInfo.info,emInfo.national,emInfo.pic,emInfo.skill,emInfo.tel,emInfo.Id});

    }

    @Override
    public EmInfo getEmInfo(int id) {
       JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
       String sql = "SELECT * FROM  `employee_info` WHERE `em_id` =  ? ";
       EmInfo emInfo = (EmInfo) jdbcTemplate.queryForObject(sql,new Object[]{id}, new EmRowMapperEmInfo());
       return emInfo;
    }

    @Override
    public void addEmExp(EmExp emExp) {
        String sql = "INSERT INTO `employee_experience` (`em_id`, `com_name`, `em_department`, `em_position`, `em_period`, `em_require`) VALUES(?,?,?,?,?,?)";
        JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
        jdbcTemplate.update(sql, new Object[] { emExp.emId,emExp.comName,emExp.department,emExp.position,emExp.period,emExp.require});
    }

    @Override
    public void deleteEmExp(int exp_Id) {
        String sql = "DELETE FROM `employee_experience` WHERE `exp_id` = ?";
        JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
        jdbcTemplate.update(sql, new Object[] {exp_Id});
    }

    @Override
    public List<EmExp> getEmExp(int emId) {
        List<EmExp> exp = new ArrayList<EmExp>();
        JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource); 
        String sql = "select * from employee_experience where em_id= ?";
        exp = jdbcTemplate.query(sql,new Object[]{emId}, new EmRowMapperEmExp());
        return exp;
    }
}
