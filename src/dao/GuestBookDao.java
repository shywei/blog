package dao;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

public class GuestBookDao {
    @Autowired
    private JdbcTemplate jdbcT;
    public JdbcTemplate getJdbcT() {
        return jdbcT;
    }
    public void setJdbcT(JdbcTemplate jdbcT) {
        this.jdbcT = jdbcT;
    }
    
    public List listAll(){
        String sql="select * from guestbook where deleteflag=0 order by id desc";
        List list=jdbcT.queryForList(sql);
        return list;    
    } 
    
    public void addNote(String content,int type,String createBy,String date){
        String sql="insert into guestbook (content,create_by,create_date,update_date,type) values('"+content+"','"+createBy+"','"+date+"','"+date+"',"+type+")";
        jdbcT.execute(sql);
    }
    
    public void deleteNote(Long id){
        String sql="update guestbook set deleteflag=1 where id="+id;
        jdbcT.execute(sql);
    }
}