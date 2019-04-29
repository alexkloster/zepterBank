package by.bsuir.bank.web;


import by.bsuir.bank.dao.entity.user.UserEntity;
import by.bsuir.bank.enumerated.Role;
import by.bsuir.bank.service.user.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;


@Controller
public class WebController {

    @Autowired
    private UserService userService;


    @RequestMapping("/welcome")
    public String Welcome(HttpServletRequest request) {
        if(userService.getAllUsers().size() == 0) {
            UserEntity admin = new UserEntity("admin", "admin", "admin", Role.ADMINISTRATOR, true) ;
            userService.registration(admin);
            UserEntity user = new UserEntity("user", "user", "user", Role.USER, true );
            userService.registration(user);
        }
        if (request.getSession().getAttribute("user") != null) {
            request.setAttribute("mode", "ALL_USERS");
        }
        request.setAttribute("mode", "MODE_HOME");
        return "welcomepage";
    }

    @RequestMapping("/register")
    public String registration(HttpServletRequest request) {
        request.setAttribute("mode", "MODE_REGISTER");
        return "welcomepage";
    }


    @RequestMapping("/login")
    public String login(HttpServletRequest request) {
        request.setAttribute("mode", "MODE_LOGIN");
        return "welcomepage";
    }

    @RequestMapping("/login-user")
    public String loginUser(@ModelAttribute UserEntity user, HttpServletRequest request) {
        UserEntity userEntity = userService.authorisation(user.getLogin(), user.getPassword());
        if (userEntity != null && userEntity.getRole() != null) {
            request.getSession().setAttribute("user", user);
            if (userEntity.getRole() == Role.USER) {
                request.setAttribute("mode", "MODE_HOME");
                return "userpage";
            } else {
                request.setAttribute("mode", "MODE_HOME");
                return "adminpage";
            }
        }
        else {
            request.setAttribute("error", "Invalid Username or Password");
            request.setAttribute("mode", "MODE_LOGIN");
            return "welcomepage";

        }
    }


}
