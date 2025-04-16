package org.web.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.web.exceptions.NoSuchUser;
import org.web.exceptions.UserAlreadyExist;
import org.web.exceptions.UserEmailAlreadyExist;
import org.web.model.User;
import org.web.repo.UserRepo;

@Controller
public class homeController {
    private final UserRepo repo = new UserRepo();

    @RequestMapping("/")
    public String home(){
        return "index.jsp";
    }

    @RequestMapping("/registerPage")
    public String registerStart(){
        return "register.jsp";
    }

    @RequestMapping("/registerLogic")
    public String registerEnd(String email,String name,String pass){
        User user = new User();
        user.setEmail(email);
        user.setUsername(name);
        user.setPassword(pass);

        System.out.println(user);
        try{
            repo.addUser(user);
        }catch(UserEmailAlreadyExist e){
            return "emailExist.jsp";
        }catch (UserAlreadyExist e) {
            return "userExist.jsp";
        }
        return "login.jsp";
    }

    @RequestMapping("/login")
    public String loginUser(){
        return "login.jsp";
    }

    @RequestMapping("/loginLogic")
    public String loginLogic(@ModelAttribute("username") String username, String password){
        try{
            if(repo.loginUser(username, password)){
                return "final.jsp";
            }
            return "wrongPassword.jsp";
        }catch (NoSuchUser e){
            return "wrongUsername.jsp";
        }
    }

    @RequestMapping("/hex")
    public String hex(){
        return "ex.jsp";
    }

    @ModelAttribute("hello")
    public String getHelloWorld(){
        return "Hello World!";
    }
}
