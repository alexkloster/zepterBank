package by.bsuir.bank.service.mapper;

import by.bsuir.bank.dao.entity.client.ClientEntity;
import by.bsuir.bank.dao.entity.credit.CreditEntity;
import by.bsuir.bank.dao.entity.credit.CreditTypeEntity;
import by.bsuir.bank.dao.entity.currency.CurrencyEntity;
import by.bsuir.bank.dao.entity.deposit.DepositEntity;
import by.bsuir.bank.dao.entity.deposit.DepositTypeEntity;
import by.bsuir.bank.dao.entity.payment.PaymentEntity;
import by.bsuir.bank.dao.entity.user.UserEntity;
import by.bsuir.bank.model.client.ClientModel;
import by.bsuir.bank.model.credit.CreditModel;
import by.bsuir.bank.model.credit.CreditTypeModel;
import by.bsuir.bank.model.currency.CurrencyModel;
import by.bsuir.bank.model.deposit.DepositModel;
import by.bsuir.bank.model.deposit.DepositTypeModel;
import by.bsuir.bank.model.payment.PaymentModel;
import by.bsuir.bank.model.user.UserModel;

import java.util.Objects;

public class ModelMapper {

    public static ClientModel toClientModel(ClientEntity entity) {
        if (Objects.isNull(entity)) {
            return null;
        }

        return new ClientModel(entity.getId(), entity.getName(), entity.getBirth(), entity.getPassportSeries(),
                entity.getPassportNumber(), entity.getPhone(), entity.getAddress());
    }

    public static CreditModel toCreditModel(CreditEntity entity) {
        if (Objects.isNull(entity)) {
            return null;
        }

        return new CreditModel(entity.getId(), entity.getSum(), entity.getStartDate(), entity.getEndDate(),
                entity.getTerm(), toCreditTypeModel(entity.getCreditType()), toClientModel(entity.getClient()),
                toUserModel(entity.getUser()));
    }

    public static CreditTypeModel toCreditTypeModel(CreditTypeEntity entity) {
        if (Objects.isNull(entity)) {
            return null;
        }

        return new CreditTypeModel(entity.getId(), entity.getDescription(), entity.getPercentage(), entity.getTerm(),
                entity.getMinSum(), toCurrencyModel(entity.getCurrency()));
    }

    public static CurrencyModel toCurrencyModel(CurrencyEntity entity) {
        if (Objects.isNull(entity)) {
            return null;
        }

        return new CurrencyModel(entity.getId(), entity.getCurrencyCode(), entity.getCurrencyName());
    }

    public static DepositModel toDepositModel(DepositEntity entity) {
        if (Objects.isNull(entity)) {
            return null;
        }

        return new DepositModel(entity.getId(), entity.getSum(), entity.getStartDate(), entity.getEndDate(),
                entity.getTerm(), toDepositTypeModel(entity.getDepositType()), toClientModel(entity.getClient()),
                toUserModel(entity.getUser()));
    }

    public static DepositTypeModel toDepositTypeModel(DepositTypeEntity entity) {
        if (Objects.isNull(entity)) {
            return null;
        }

        return new DepositTypeModel(entity.getId(), entity.getDescription(), entity.getPercentage(), entity.getTerm(),
                entity.getMinSum(), entity.getCapitalization(), toCurrencyModel(entity.getCurrency()));
    }

    public static PaymentModel toPaymentModel(PaymentEntity entity) {
        if (Objects.isNull(entity)) {
            return null;
        }

        return new PaymentModel(entity.getId(), entity.getDescription(), entity.getPaymentType(), entity.getNumber(),
                entity.getSum(), entity.getDate(), toClientModel(entity.getClient()), toUserModel(entity.getUser()));
    }

    public static UserModel toUserModel(UserEntity entity) {
        if (Objects.isNull(entity)) {
            return null;
        }

        return new UserModel(entity.getId(), entity.getLogin(), entity.getName(), entity.getPassword(),
                entity.getRole(), entity.getSubmitted());
    }
}
