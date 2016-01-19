package dao;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;

public class ArticlesDao {
    @Autowired
    private JdbcTemplate jdbcT;

    public JdbcTemplate getJdbcT() {
        return jdbcT;
    }
    public void setJdbcT(JdbcTemplate jdbcT) {
        this.jdbcT = jdbcT;
    }
    public List allArticles()
    {
        String sql="select articles.id,title,articles.content,articles.create_date,articles.update_date,count(comments.id) as count from articles left join comments "+
"on articles.id=comments.article_id and articles.deleteflag=0 and comments.deleteflag=0 and articles.type=0 "+
"group by articles.id "+
"order by articles.id desc";
        List list=jdbcT.queryForList(sql);
        Iterator iterator=list.iterator();
        return list;        
    }
    public List allTemps()
    {
        String sql="select articles.id,title,articles.content,articles.create_date,articles.update_date,count(comments.id) as count from articles left join comments "+
"on articles.id=comments.article_id and articles.deleteflag=0 and comments.deleteflag=0 and articles.type=1 "+
"group by articles.id "+
"order by articles.id desc";
        List list=jdbcT.queryForList(sql);
        Iterator iterator=list.iterator();
        return list;        
    }
    
    public List getDetailById(Long id){
        String sql="select articles.id,title,articles.content,articles.create_date,articles.update_date,count(comments.id) as count from articles left join comments "+
"on articles.id=comments.article_id and articles.deleteflag=0 and comments.deleteflag=0 and articles.id="+id;
        List list=jdbcT.queryForList(sql);
        Iterator iterator=list.iterator();
        return list;    
    }
    
    public void updateArticle(Long id,String title,String content,String contentText,String updateDate,int type){
        String sql="update articles set title='"+title+"',content='"+content+"',content_text='"+contentText+"',update_date='"+updateDate+"',type="+type+" where id="+id;
        System.out.println(sql);
        jdbcT.execute(sql);
    }    
    
    public void addArticle(String title,String content,String contentText,String createDate,String updateDate,int type){
        String sql="insert into articles (title,content,content_text,create_date,update_date,type) values('"+title+"','"+content+"','"+contentText+"','"+createDate+"','"+updateDate+"',"+type+")";
        System.out.println(sql);
        jdbcT.execute(sql);
    }
}