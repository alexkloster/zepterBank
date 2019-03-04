package by.bsuir.bank.web;


import by.bsuir.bank.model.user.UserModel;
import by.bsuir.bank.service.user.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
public class WebController {


    private final UserService userService;

    @Autowired
    public WebController(UserService userService) {
        this.userService = userService;
    }

    @RequestMapping(value = "/authorization", method = RequestMethod.POST)
    public String addPatient(@RequestBody UserModel user, Model model) {
        UserModel userModel = userService.authorisation(user.getLogin(), user.getPassword());
        model.addAttribute("user", userModel);
        if(null == userModel.getId()) {
            return "index";
        }
        return "main";
    }

    @RequestMapping (value = "/setLocale")
    public String editProcedure(@RequestBody String locale, Model model){
        model.addAttribute("locale", locale);
        if(model.asMap().get("user") == null) {
            return "index";
        }
        else {
            return "index";
        }
    }

    @RequestMapping("/index")
    public String procedures(Model model){
        model.addAttribute("user", new UserModel(null,null,null,null,null, false));
        return "index";
    }
}
