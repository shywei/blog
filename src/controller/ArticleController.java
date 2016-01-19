package controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


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
    
    @RequestMapping(value={"/form"})
    public String articleForm(HttpServletRequest request,Model model){
        if(request.getParameter("articleId")!=null){
            model.addAttribute("articles", articlesDao.getDetailById(Long.parseLong(request.getParameter("articleId"))));
        }
        return "articleForm";
    }
    
    @RequestMapping(value={"/save"})
    public String articleSave(@RequestParam(required=false) Long id,
            @RequestParam(required=true) String title,
            @RequestParam(required=true) String content,
            @RequestParam(required=true) String contentText,
            HttpServletRequest request,Model model){
        Date currentTime = new Date();
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String dateString = formatter.format(currentTime);
        if(id==null){
            articlesDao.addArticle(title, content, contentText, dateString, dateString, 0);
        }else{            
            articlesDao.updateArticle(id, title, content, contentText,  dateString, 0);
        }
        return "redirect:" + "/articles/list";
    }
    
    @RequestMapping(value={"/temp"})
    public String articleTemp(@RequestParam(required=false) Long id,
            @RequestParam(required=true) String title,
            @RequestParam(required=true) String content,
            @RequestParam(required=true) String contentText,
            HttpServletRequest request,Model model){
        Date currentTime = new Date();
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String dateString = formatter.format(currentTime);
        if(request.getParameter("id")==null){
            articlesDao.addArticle(title, content, contentText, dateString, dateString, 1);
        }else{            
            articlesDao.updateArticle(id, title, content, contentText,  dateString, 1);
        }
        return "redirect:" + "/articles/list";
    }
}