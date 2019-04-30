package by.bsuir.bank.web;

import by.bsuir.bank.dao.entity.client.ClientEntity;
import by.bsuir.bank.dao.entity.credit.CreditEntity;
import by.bsuir.bank.dao.entity.credit.CreditTypeEntity;
import by.bsuir.bank.dao.entity.user.UserEntity;
import by.bsuir.bank.service.client.ClientService;
import by.bsuir.bank.service.credit.CreditService;
import by.bsuir.bank.service.credit.CreditTypeService;
import by.bsuir.bank.service.user.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
public class CreditController {

    @Autowired
    private UserService userService;

    @Autowired
    private ClientService clientService;

    @Autowired
    private CreditService creditService;

    @Autowired
    private CreditTypeService creditTypeService;

    @InitBinder
    public void initBinder(final WebDataBinder binder) {
        final SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-dd-MM");
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
    }


    @RequestMapping("/credit")
    public String credit(HttpServletRequest request) {
        UserEntity currentUser = userService.getCurrentUser();
        List<CreditEntity> creditList = creditService.getAllByUser(currentUser);


        request.setAttribute("mode", "MODE_CREDIT");
        request.setAttribute("creditList", creditList);
        request.setAttribute("currentUser", currentUser);
        return "creditPage";
    }

    @RequestMapping("/new-credit")
    public String newDeposit(HttpServletRequest request) {
        UserEntity currentUser = userService.getCurrentUser();


        request.setAttribute("mode", "MODE_NEW_CREDIT");
        request.setAttribute("currentUser", currentUser);
        return "creditPage";
    }

    @RequestMapping("/credit-find-client")
    public String findClient(@ModelAttribute ClientEntity client, HttpServletRequest request, Model model) {
        UserEntity currentUser = userService.getCurrentUser();

        client = clientService.getBySeriesAndNumber(client);
        List<CreditTypeEntity> creditTypeList = creditTypeService.getAllCreditTypes();

        if (client.getId() == null) {
            request.setAttribute("client_mode", "NEW");
        } else {
            request.setAttribute("client_mode", "EXISTS");
        }

        model.addAttribute("credit", new CreditEntity());
        model.addAttribute("client", client);

        request.setAttribute("creditTypeList", creditTypeList);
        request.setAttribute("currentUser", currentUser);
        request.setAttribute("client", client);
        request.setAttribute("mode", "MODE_NEW_CREDIT");
        return "creditPage";
    }

    @RequestMapping("/credit-save-client")
    public String saveClient(@ModelAttribute ClientEntity client, HttpServletRequest request, Model model) {
        client = clientService.saveClient(client);
        return findClient(client, request, model);
    }

    @RequestMapping("/save-credit")
    public String saveCredit(@ModelAttribute CreditEntity credit, @ModelAttribute ClientEntity client, HttpServletRequest request) {
        creditService.createAndSaveCredit(credit, clientService.getById(client.getId()), userService.getCurrentUser());
        return credit(request);
    }

    @GetMapping("/getCreditType/{id}")
    @ResponseBody
    public CreditTypeEntity creditTypeInfo(@PathVariable("id") Long id, Model model) {
        return creditTypeService.getById(id);
    }
}
