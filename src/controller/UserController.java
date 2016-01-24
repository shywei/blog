package controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import dao.UserDao;

@Controller
@RequestMapping(value="/user")
public class UserController {
    @Resource(name = "userDao")
    private UserDao userDao = null;
    
    public boolean islogin(HttpSession session){
        if(session.getAttribute("user")!=null)
            return true;
        else
            return false;
    }
    
    @ResponseBody
    @RequestMapping(value="/login")
    public String login(@RequestParam(required=true) String name,
            @RequestParam(required=true) String password,Model model,HttpSession session){
        if(islogin(session))
            return "already";
        else if(userDao.login(name, password)){
            session.setAttribute("user", name);
            return "true";
        }
        else {
            return "false";
        }            
    }
}