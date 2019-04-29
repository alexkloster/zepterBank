package by.bsuir.bank.web;

import by.bsuir.bank.dao.entity.client.ClientEntity;
import by.bsuir.bank.dao.entity.deposit.DepositEntity;
import by.bsuir.bank.dao.entity.deposit.DepositTypeEntity;
import by.bsuir.bank.dao.entity.user.UserEntity;
import by.bsuir.bank.enumerated.PaymentType;
import by.bsuir.bank.service.client.ClientService;
import by.bsuir.bank.service.deposit.DepositService;
import by.bsuir.bank.service.deposit.DepositTypeService;
import by.bsuir.bank.service.user.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class DepositController {

    @Autowired
    private UserService userService;

    @Autowired
    private ClientService clientService;

    @Autowired
    private DepositService depositService;

    @Autowired
    private DepositTypeService depositTypeService;


    @RequestMapping("/deposit")
    public String deposit(HttpServletRequest request) {
        UserEntity currentUser = userService.getCurrentUser();
        List<DepositEntity> depositList = depositService.getAllByUser(currentUser);


        request.setAttribute("mode", "MODE_DEPOSIT");
        request.setAttribute("depositList", depositList);
        request.setAttribute("currentUser", currentUser);
        return "depositPage";
    }

    @RequestMapping("/new-deposit")
    public String newDeposit(HttpServletRequest request) {
        UserEntity currentUser = userService.getCurrentUser();




        request.setAttribute("mode", "MODE_NEW_DEPOSIT");
        request.setAttribute("currentUser", currentUser);
        return "depositPage";
    }

    @RequestMapping("/deposit-find-client")
    public String findClient(@ModelAttribute ClientEntity client, HttpServletRequest request, Model model) {
        UserEntity currentUser = userService.getCurrentUser();

        client = clientService.getBySeriesAndNumber(client);
        List<DepositTypeEntity> depositTypeList = depositTypeService.getAllDepositTypes();

        request.setAttribute("paymentTypes", PaymentType.values());
        if(client.getId() == null) {
            request.setAttribute("client_mode", "NEW");
        } else {
            request.setAttribute("client_mode", "EXISTS");
        }

        model.addAttribute("deposit", new DepositEntity());
        model.addAttribute("client", client);

        request.setAttribute("depositTypeList", depositTypeList);
        request.setAttribute("currentUser", currentUser);
        request.setAttribute("client", client);
        request.setAttribute("mode", "MODE_NEW_DEPOSIT");
        return "depositPage";
    }

    @RequestMapping("/save-deposit")
    public String saveDeposit(@ModelAttribute DepositEntity deposit, @ModelAttribute ClientEntity client, HttpServletRequest request){
        depositService.createAndSaveDeposit(deposit, clientService.getById(client.getId()), userService.getCurrentUser());
        return deposit(request);
    }

    @GetMapping("/getDepositType/{id}")
    @ResponseBody
    public DepositTypeEntity depositTypeInfo(@PathVariable("id") Long id, Model model){
        return depositTypeService.getById(id);
    }

    @GetMapping("/getDepositInfo/{id}")
    @ResponseBody
    public DepositEntity depositInfo(@PathVariable("id") Long id, Model model){
        return depositService.getById(id);
    }



}
