package controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import dao.CommentsDao;

@Controller
@RequestMapping(value="/comments")
public class CommentsController {
    @Resource(name = "commentsDao")
    private CommentsDao commentsDao = null;
    
    @RequestMapping(value={"/save"})
    public String commentSave(@RequestParam(required=true) Long articleId,
            @RequestParam(required=true) String createBy,
            @RequestParam(required=true) int commentType,
            @RequestParam(required=true) String commentContent,
            HttpServletRequest request,Model model){
        Date currentTime = new Date();
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String dateString = formatter.format(currentTime);
        commentsDao.addComment(articleId, commentContent, commentType, createBy, dateString);
        return "redirect:" + "/articles/view?id="+articleId;
    }
}