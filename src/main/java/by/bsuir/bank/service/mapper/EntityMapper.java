package by.bsuir.bank.service.mapper;

import by.bsuir.bank.dao.entity.client.ClientEntity;
import by.bsuir.bank.dao.entity.credit.CreditEntity;
import by.bsuir.bank.dao.entity.credit.CreditTypeEntity;
import by.bsuir.bank.dao.entity.currency.CurrencyEntity;
import by.bsuir.bank.dao.entity.deposit.DepositEntity;
import by.bsuir.bank.dao.entity.deposit.DepositTypeEntity;
import by.bsuir.bank.dao.entity.payment.PaymentEntity;
import by.bsuir.bank.dao.entity.user.UserEntity;
import by.bsuir.bank.enumerated.PaymentType;
import by.bsuir.bank.enumerated.Role;

import java.util.Date;

public class EntityMapper {

    public static ClientEntity toClientEntity(String name, Date birth, String passportSeries, Integer passportNumber,
                                              String phone, String address) {
        return new ClientEntity(name, birth, passportSeries, passportNumber, phone, address);
    }

    public static CreditEntity toCreditEntity(Double sum, Date startDate, Date endDate, Integer term,
                                              CreditTypeEntity creditType, ClientEntity client, UserEntity user) {
        return new CreditEntity(sum, startDate, endDate, term, creditType, client, user);
    }

    public static CreditTypeEntity toCreditEntityType(String description, Double percentage, Integer term, Double minSum,
                                                      CurrencyEntity currency) {

        return new CreditTypeEntity(description, percentage, term, minSum, currency);
    }

    public static CurrencyEntity toCurrencyEntity(String currencyCode, String currencyName) {

        return new CurrencyEntity(currencyCode, currencyName);
    }

    public static DepositEntity toDepositEntity(Double sum, Date startDate, Date endDate, Integer term,
                                                DepositTypeEntity depositType, ClientEntity client, UserEntity user) {

        return new DepositEntity(sum, startDate, endDate, term, depositType, client, user);
    }

    public static DepositTypeEntity toDepositTypeEntity(String description, Double percentage, Integer term,
                                                        Double minSum, Boolean capitalization, CurrencyEntity currency) {

        return new DepositTypeEntity(description, percentage, term, minSum, capitalization, currency);
    }

    public static PaymentEntity toPaymentEntity(String description, PaymentType paymentType, Integer number, Double sum,
                                                Date date, ClientEntity client, UserEntity user) {

        return new PaymentEntity(description, paymentType, number, sum, date, client, user);
    }

    public static UserEntity toUserEntity(String login, String name, String password, Role role, Boolean submitted) {

        return new UserEntity(login, name, password, role, submitted);
    }


}
