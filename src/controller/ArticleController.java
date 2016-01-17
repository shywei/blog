package controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import dao.ArticlesDao;

@Controller
@RequestMapping(value="/articles")
public class ArticleController {
	@Resource(name = "articlesDao")
	private ArticlesDao articlesDao = null;
	
	@RequestMapping(value={"/list"})
     public String list(Model model){
		 List list =articlesDao.allArticles();
		 model.addAttribute("articles", list);
         return "articleList";
     }
	
	@RequestMapping(value={"/view"})
    public String view(Long id,Model model){
		 List list =articlesDao.getDetailById(id);
		 model.addAttribute("articles", list);
        return "articleView";
    }
}
