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
"on articles.id=comments.article_id and articles.deleteflag=0 and comments.deleteflag=0 "+
"group by articles.id "+
"order by articles.id desc";
        List list=jdbcT.queryForList(sql);
        Iterator iterator=list.iterator();
        return list;        
    }
	
	public List getDetailById(Long id){
		String sql="select * from articles where deleteflag=0 and id="+id;
		List list=jdbcT.queryForList(sql);
		Iterator iterator=list.iterator();
		return list;	
	}
}
