package by.bsuir.bank.web;


import by.bsuir.bank.dao.entity.client.ClientEntity;
import by.bsuir.bank.dao.entity.payment.PaymentEntity;
import by.bsuir.bank.dao.entity.user.UserEntity;
import by.bsuir.bank.service.client.ClientService;
import by.bsuir.bank.service.payment.PaymentService;
import by.bsuir.bank.service.user.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @Autowired
    private ClientService clientService;

    @Autowired
    private PaymentService paymentService;


    @RequestMapping("/userPage")
    public String adminPage(HttpServletRequest request) {
        request.setAttribute("mode", "MODE_HOME");
        return "userpage";
    }


    @RequestMapping("/payment")
    public String payment(HttpServletRequest request) {
        UserEntity currentUser = userService.getCurrentUser();
        List<PaymentEntity> payments = paymentService.getPaymentsOfUser(currentUser);
        System.out.println(payments.size());
        System.out.println(payments.get(0).getPaymentType());
        request.setAttribute("payments", payments);
        request.setAttribute("currentUser", currentUser);
        request.setAttribute("mode", "MODE_PAYMENT");
        return "userpage";
    }

    @RequestMapping("/deposit")
    public String deposit(HttpServletRequest request) {
        request.setAttribute("mode", "MODE_DEPOSIT");
        return "userpage";
    }

    @RequestMapping("/credit")
    public String credit(HttpServletRequest request) {
        request.setAttribute("mode", "MODE_CREDIT");
        return "userpage";
    }


    @RequestMapping("/exchange")
    public String exchange(HttpServletRequest request) {
        request.setAttribute("mode", "MODE_EXCHANGE");
        return "userpage";
    }


    @RequestMapping("/newPayment")
    public String newPayment(HttpServletRequest request) {
        request.setAttribute("currentUser", userService.getCurrentUser());
        request.setAttribute("mode", "MODE_NEW_PAYMENT");
        return "userpage";
    }

    @RequestMapping("/find-client")
    public String loginUser(@ModelAttribute ClientEntity client, HttpServletRequest request) {
        client = clientService.getBySeriesAndNumber(client);
        request.setAttribute("client", client);
        request.setAttribute("mode", "MODE_NEW_PAYMENT");
        if(client.getId() == null) {
            request.setAttribute("client_mode", "NEW");
        } else {
            request.setAttribute("client_mode", "EXISTS");
        }
        return "userpage";
    }


}
