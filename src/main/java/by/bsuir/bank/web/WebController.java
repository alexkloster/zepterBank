package by.bsuir.bank.web;


import by.bsuir.bank.model.user.UserModel;
import by.bsuir.bank.service.user.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;


@Controller
public class WebController {


    private final UserService userService;

    @Autowired
    public WebController(UserService userService) {
        this.userService = userService;
    }

    @RequestMapping(value = "/authorization", method = RequestMethod.POST)
    public String auth(@RequestParam String login, @RequestParam String password, Model model) {
        return "redirect:/main";
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
        model.addAttribute("user", new UserModel(null,null,null,null,null, false));
        return "index";
    }
}
