package by.bsuir.bank.web;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

@Controller
public class UserController {


    @RequestMapping("/userPage")
    public String adminPage(HttpServletRequest request) {
        request.setAttribute("mode", "MODE_HOME");
        return "userPage";
    }




    @RequestMapping("/payment")
    public String payment(HttpServletRequest request) {
        request.setAttribute("mode", "MODE_PAYMENT");
        return "userPage";
    }

    @RequestMapping("/deposit")
    public String deposit(HttpServletRequest request) {
        request.setAttribute("mode", "MODE_DEPOSIT");
        return "userPage";
    }

    @RequestMapping("/credit")
    public String credit(HttpServletRequest request) {
        request.setAttribute("mode", "MODE_CREDIT");
        return "userPage";
    }


    @RequestMapping("/exchange")
    public String exchange(HttpServletRequest request) {
        request.setAttribute("mode", "MODE_EXCHANGE");
        return "userPage";
    }



}
