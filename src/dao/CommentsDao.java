package dao;

import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

public class CommentsDao {
    @Autowired
    private JdbcTemplate jdbcT;
    public JdbcTemplate getJdbcT() {
        return jdbcT;
    }
    public void setJdbcT(JdbcTemplate jdbcT) {
        this.jdbcT = jdbcT;
    }
    
    public List getCommentById(Long id){
        String sql="select * from comments where deleteflag=0 and id="+id;
        List list=jdbcT.queryForList(sql);
        return list;    
    } 
    
    public List getCommentsByArticleId(Long id){
        String sql="select * from comments where deleteflag=0 and article_id="+id+" order by id desc";
        List list=jdbcT.queryForList(sql);
        return list;
    }
    
    public int getCommentsNumber(Long id){
        String sql="count * from comments where deleteflag=0 and article_id="+id;
        int count=jdbcT.queryForInt(sql);
        return count;
    }
    
    public void addComment(Long id,String content,int type,String createBy,String date){
        String sql="insert into comments (content,create_by,create_date,update_date,article_id,type) values('"+content+"','"+createBy+"','"+date+"','"+date+"',"+id+","+type+")";
        //System.out.println(sql);
        jdbcT.execute(sql);
    }
    
    public void deleteComment(Long id){
        String sql="update comments set deleteflag=1 where id="+id;
        jdbcT.execute(sql);
    }
}