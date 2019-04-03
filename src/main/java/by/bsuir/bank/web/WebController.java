package by.bsuir.bank.web;


import by.bsuir.bank.dao.entity.user.UserEntity;
import by.bsuir.bank.enumerated.Role;
import by.bsuir.bank.model.user.UserModel;
import by.bsuir.bank.service.user.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;


@Controller
public class WebController {


    private final UserService userService;

    @Autowired
    private HttpServletRequest request;

    @Autowired
    public WebController(UserService userService) {
        this.userService = userService;
    }

    @RequestMapping(value = "/authorization", method = RequestMethod.POST)
    public String auth(@RequestParam String login, @RequestParam String password, Model model) {
        UserModel user = userService.authorisation(login, password);
        if (user.getId() != null) {
            request.getSession().setAttribute("user", user);
            model.addAttribute("user", user);
            return "redirect:/main";
        } else {
            model.addAttribute("error", user);
            return "index";
        }
    }

    @RequestMapping(value = "/registration")
    public String registration(Model model) {

        return "registration";
    }

    @RequestMapping(value = "/register")
    public String register(@RequestParam String name, @RequestParam String login, @RequestParam String password,
                           @RequestParam String password_repeat, Model model) {


        if (password != null && !password.equals(password_repeat)) {
            model.addAttribute("error", "Password!!!");
        } else {
            UserEntity user = new UserEntity(name, login, password, Role.USER, false);
            user = userService.registration(user);
            if (user == null) {
                model.addAttribute("error", "login!!!");
            } else {
                model.addAttribute("success", "success!!!");
            }
        }
        return "registration";
    }


    @RequestMapping (value = "/setLocale")
    @ResponseBody
    public String setLocale(@RequestBody String locale, Model model) {
        model.addAttribute("locale", locale);
        if(model.asMap().get("user") == null) {
            return "index";
        }
        else {
            return "index";
        }
    }

    @RequestMapping(value = "/main", method = RequestMethod.GET)
    public String main(Model model) {
        return "main";
    }

    @RequestMapping("/index")
    public String procedures(Model model){
        if (request.getSession().getAttribute("user") != null) {
            return "redirect:/main";
        } else {
            return "index";
        }
    }
}
