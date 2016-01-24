package controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import dao.GuestBookDao;

@Controller
@RequestMapping(value="/guestBook")
public class GuestBookController {
    @Resource(name = "guestBookDao")
    private GuestBookDao guestBookDao = null;
    
    public boolean islogin(HttpSession session){
        if(session.getAttribute("user")!=null)
            return true;
        else
            return false;
    }
    
    @RequestMapping(value={"/save"})
    public String commentSave(
            @RequestParam(required=true) String createBy,
            @RequestParam(required=true) int noteType,
            @RequestParam(required=true) String noteContent,
            HttpServletRequest request,HttpSession session,Model model){
        if(!islogin(session))
            return "404";
        Date currentTime = new Date();
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String dateString = formatter.format(currentTime);
        guestBookDao.addNote(noteContent, noteType, createBy, dateString);
        return "redirect:" + "/guestBook";
    }
    
    @RequestMapping(value={"","/"})
    public String guestBook(
            HttpServletRequest request,Model model){
        model.addAttribute("guestbook", guestBookDao.listAll());
        return "guestBook";
    }
}