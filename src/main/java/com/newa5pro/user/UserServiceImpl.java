package com.newa5pro.user;


import com.newa5pro.company.ComRowMapperComInfo;
import com.newa5pro.employee.EmRowMapperEmExp;
import com.newa5pro.employee.EmRowMapperEmInfo;
import com.newa5pro.job.Job;
import com.newa5pro.company.ComInfo;
import com.newa5pro.employee.EmExp;
import com.newa5pro.employee.EmInfo;
import static java.sql.JDBCType.NULL;
import java.util.ArrayList;
import java.util.List;
import javax.sql.DataSource;
import jdk.nashorn.internal.objects.annotations.Setter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;


/**
 *
 * @author Fu
 */
public class UserServiceImpl implements UserService{
    
    @Autowired
    public DataSource dataSource;
    
    public String checkEmail(String email){
        List<User> userListCom = new ArrayList<User>();
        List<User> userListEm = new ArrayList<User>();
        JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource); 
        String sql = "";
        sql = "select * from employee_id where em_email= ?";  
        userListEm = jdbcTemplate.query(sql,new Object[]{email}, new UserRowMapperEmId());
        sql = "select * from company_id where com_email= ?";  
        userListCom = jdbcTemplate.query(sql,new Object[]{email}, new UserRowMapperComId());
        
        if( userListEm.isEmpty() ){
        }else return "employee";
        if( userListCom.isEmpty()){
            
        }else{return "company";}
        return "free";
    }

    @Override
    public boolean register(User user, String password) {
        if(checkEmail(user.getEmail()).equals("free")){
            String userId , userInfo;
            JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
            if(user.getType().equals("company")){
                userId = "INSERT INTO `company_id` (`com_email`, `com_password`) VALUES(?,?)";
                userInfo = "INSERT INTO `company_info` (`com_lname`,`com_u_fname`, `com_u_lname`) VALUES(?,?,?)";
                jdbcTemplate.update(userId, new Object[] { user.email,password});
                jdbcTemplate.update(userInfo, new Object[] { user.comname, user.fname,user.lname});
            }else{
                userId = "INSERT INTO `employee_id` (`em_email`, `em_password`) VALUES(?,?)";
                userInfo = "INSERT INTO `employee_info` (`em_fname`, `em_lname`) VALUES(?,?)";
                jdbcTemplate.update(userId, new Object[] { user.email,password});
                jdbcTemplate.update(userInfo, new Object[] { user.fname,user.lname});
            }

            return true;
        }else return false;
    }

    @Override
    public User login(User user,String password) {
        String sql = "";
        String type = checkEmail(user.email);
        JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);  
        if(type.equals("company")){

            sql = "SELECT * FROM  `company_id` WHERE `com_email` = ? AND `com_password` = ?";
            User a = (User)jdbcTemplate.queryForObject(sql,new Object[]{user.email,password}, new UserRowMapperComId());   
            return a;
        }
        if(type.equals("employee")){
            sql = "SELECT * FROM  `employee_id` WHERE `em_email` =  ? AND `em_password` = ?";
            User a = (User) jdbcTemplate.queryForObject(sql,new Object[]{user.email,password}, new UserRowMapperEmId());
            return a;
        }


        
        return null;
    }

}
