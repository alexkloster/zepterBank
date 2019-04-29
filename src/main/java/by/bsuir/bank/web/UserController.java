package by.bsuir.bank.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
public class UserController {

    @RequestMapping("/userPage")
    public String adminPage(HttpServletRequest request) {
        request.setAttribute("mode", "MODE_HOME");
        return "userpage";
    }
}
