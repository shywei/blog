package dao;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

public class UserDao {
     @Autowired
    private JdbcTemplate jdbcT;

    public JdbcTemplate getJdbcT() {
        return jdbcT;
    }
    public void setJdbcT(JdbcTemplate jdbcT) {
        this.jdbcT = jdbcT;
    }
    
    public boolean login(String name,String password)
    {
        boolean nbet=false;
        String sql="select * from user where name='"+name+"' and password='"+password+"'";
        //System.out.println(sql);
        List list=jdbcT.queryForList(sql);    
        if(list.size()!=0)
            return true;
        else
            return false;
    }
}