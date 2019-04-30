package by.bsuir.bank.web;

import by.bsuir.bank.dao.entity.credit.CreditTypeEntity;
import by.bsuir.bank.dao.entity.deposit.DepositTypeEntity;
import by.bsuir.bank.dao.entity.user.UserEntity;
import by.bsuir.bank.enumerated.Role;
import by.bsuir.bank.service.credit.CreditTypeService;
import by.bsuir.bank.service.currency.CurrencyService;
import by.bsuir.bank.service.deposit.DepositTypeService;
import by.bsuir.bank.service.user.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;

@Controller
public class AdminController {

    @Autowired
    private UserService userService;

    @Autowired
    private CreditTypeService creditTypeService;

    @Autowired
    private DepositTypeService depositTypeService;

    @Autowired
    private CurrencyService currencyService;

    @RequestMapping("/adminPage")
    public String adminPage(HttpServletRequest request) {
        request.setAttribute("mode", "MODE_HOME");
        return "adminpage";
    }

    @RequestMapping("/credit-type")
    public String credit(HttpServletRequest request) {
        request.setAttribute("creditTypes", creditTypeService.getAllCreditTypes());
        request.setAttribute("mode", "MODE_CREDIT");
        return "adminpage";
    }

    @RequestMapping("/delete-credit-type")
    public String deleteCreditType(@RequestParam int id, HttpServletRequest request) {
        creditTypeService.deleteCreditTypeById((long) id);
        request.setAttribute("creditTypes", creditTypeService.getAllCreditTypes());
        request.setAttribute("mode", "MODE_CREDIT");
        return "adminpage";
    }

    @RequestMapping("/edit-credit-type")
    public String editCreditType(@RequestParam long id, HttpServletRequest request, Model model) {
        model.addAttribute("creditType", creditTypeService.getById(id));
        model.addAttribute("currencyList", currencyService.getAllCurrencies());
        request.setAttribute("currencyList", currencyService.getAllCurrencies());
        request.setAttribute("creditType", creditTypeService.getById(id));
        request.setAttribute("mode", "MODE_CREDIT_EDIT");
        return "adminpage";
    }

    @PostMapping("/save-credit-type")
    public String save(@ModelAttribute CreditTypeEntity creditType, BindingResult bindingResult, HttpServletRequest request) {
        creditTypeService.save(creditType);
        return credit(request);
    }

    @RequestMapping("/new-credit-type")
    public String newCreditType(HttpServletRequest request, Model model) {
        model.addAttribute("creditType", new CreditTypeEntity());
        request.setAttribute("currencyList", currencyService.getAllCurrencies());
        request.setAttribute("mode", "MODE_CREDIT_EDIT");
        return "adminpage";
    }



    @RequestMapping("/deposit-type")
    public String deposit(HttpServletRequest request) {
        request.setAttribute("depositTypes", depositTypeService.getAllDepositTypes());
        request.setAttribute("mode", "MODE_DEPOSIT");
        return "adminpage";
    }

    @RequestMapping("/delete-deposit-type")
    public String deleteDepositType(@RequestParam int id, HttpServletRequest request) {
        depositTypeService.delete((long) id);
        request.setAttribute("depositTypes", depositTypeService.getAllDepositTypes());
        request.setAttribute("mode", "MODE_DEPOSIT");
        return "adminpage";
    }

    @RequestMapping("/edit-deposit-type")
    public String editDepositType(@RequestParam long id, HttpServletRequest request, Model model) {
        model.addAttribute("depositType", depositTypeService.getById(id));
        model.addAttribute("currencyList", currencyService.getAllCurrencies());
        request.setAttribute("currencyList", currencyService.getAllCurrencies());
        request.setAttribute("depositType", depositTypeService.getById(id));
        request.setAttribute("mode", "MODE_DEPOSIT_EDIT");
        return "adminpage";
    }

    @PostMapping("/save-deposit-type")
    public String save(@ModelAttribute DepositTypeEntity depositType, BindingResult bindingResult, HttpServletRequest request) {
        depositTypeService.save(depositType);
        return deposit(request);
    }

    @RequestMapping("/new-deposit-type")
    public String newDepositType(HttpServletRequest request, Model model) {
        model.addAttribute("depositType", new DepositTypeEntity());
        request.setAttribute("currencyList", currencyService.getAllCurrencies());
        request.setAttribute("mode", "MODE_DEPOSIT_EDIT");
        return "adminpage";
    }

    @RequestMapping("/users")
    public String users(HttpServletRequest request) {
        request.setAttribute("users", userService.getAllUsers());
        request.setAttribute("mode", "MODE_USERS");
        return "adminpage";
    }


    @RequestMapping("/delete-user")
    public String deleteUser(@RequestParam int id, HttpServletRequest request) {
        userService.deleteUser((long) id);
        request.setAttribute("users", userService.getAllUsers());
        request.setAttribute("mode", "ALL_USERS");
        return "adminpage";
    }

    @RequestMapping("/edit-user")
    public String editUser(@RequestParam long id, HttpServletRequest request) {
        request.setAttribute("user", userService.findById(id));
        request.setAttribute("mode", "MODE_UPDATE");
        return "adminpage";
    }

    @RequestMapping("/new-user")
    public String newUser(HttpServletRequest request) {
        request.setAttribute("user", new UserEntity());
        request.setAttribute("mode", "MODE_UPDATE");
        return "adminpage";
    }

    @PostMapping("/save-user")
    public String registration(@ModelAttribute UserEntity user, BindingResult bindingResult, HttpServletRequest request) {
        System.out.println(user.getLogin() + user.getPassword());
        user.setRole(Role.USER);
        user.setSubmitted(true);
        userService.registration(user);
        request.setAttribute("mode", "MODE_USERS");
        return "adminpage";
    }



}
