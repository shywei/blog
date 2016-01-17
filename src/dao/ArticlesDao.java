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
		String sql="select * from articles where deleteflag=0";
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
