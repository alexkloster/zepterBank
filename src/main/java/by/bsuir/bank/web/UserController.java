package by.bsuir.bank.web;


import by.bsuir.bank.dao.entity.client.ClientEntity;
import by.bsuir.bank.dao.entity.payment.PaymentEntity;
import by.bsuir.bank.dao.entity.user.UserEntity;
import by.bsuir.bank.enumerated.PaymentType;
import by.bsuir.bank.service.client.ClientService;
import by.bsuir.bank.service.payment.PaymentService;
import by.bsuir.bank.service.user.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @Autowired
    private ClientService clientService;

    @Autowired
    private PaymentService paymentService;

    @InitBinder
    public void initBinder(final WebDataBinder binder){
        final SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-dd-MM");
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
    }


    @RequestMapping("/userPage")
    public String adminPage(HttpServletRequest request) {
        request.setAttribute("mode", "MODE_HOME");
        return "userpage";
    }


    @RequestMapping("/payment")
    public String payment(HttpServletRequest request) {
        UserEntity currentUser = userService.getCurrentUser();
        List<PaymentEntity> payments = paymentService.getPaymentsOfUser(currentUser);

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
    public String newPayment(HttpServletRequest request, Model model) {
        request.setAttribute("paymentTypes", PaymentType.values());
        request.setAttribute("currentUser", userService.getCurrentUser());
        request.setAttribute("mode", "MODE_NEW_PAYMENT");
        return "userpage";
    }

    @RequestMapping("/find-client")
    public String findClient(@ModelAttribute ClientEntity client, HttpServletRequest request, Model model) {
        client = clientService.getBySeriesAndNumber(client);
        model.addAttribute("payment", new PaymentEntity());
        model.addAttribute("client", client);
        request.setAttribute("currentUser", userService.getCurrentUser());
        request.setAttribute("client", client);
        request.setAttribute("mode", "MODE_NEW_PAYMENT");
        request.setAttribute("paymentTypes", PaymentType.values());
        if(client.getId() == null) {
            request.setAttribute("client_mode", "NEW");
        } else {
            request.setAttribute("client_mode", "EXISTS");
        }
        return "userpage";
    }

    @RequestMapping("/save-client")
    public String saveClient(@ModelAttribute ClientEntity client, HttpServletRequest request) {
        client = clientService.saveClient(client);
        request.setAttribute("mode", "MODE_NEW_PAYMENT");
        request.setAttribute("currentUser", userService.getCurrentUser());
        request.setAttribute("client_mode", "EXISTS");
        request.setAttribute("client", client);
        return "userpage";
    }

    @RequestMapping("/save-payment")
    public String savePayment(@ModelAttribute PaymentEntity payment, @ModelAttribute ClientEntity client, HttpServletRequest request) {
        client = clientService.getById(client.getId());
        payment.setClient(client);
        payment.setUser(userService.getCurrentUser());
        payment.setDate(new Date());
        payment.setId(null);
        paymentService.savePayment(payment);
        payment(request);
        return "userpage";
    }





}
