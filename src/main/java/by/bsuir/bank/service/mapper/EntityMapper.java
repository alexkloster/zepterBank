package by.bsuir.bank.service.mapper;

import by.bsuir.bank.dao.entity.client.ClientEntity;
import by.bsuir.bank.dao.entity.credit.CreditEntity;
import by.bsuir.bank.dao.entity.credit.CreditTypeEntity;
import by.bsuir.bank.dao.entity.user.UserEntity;

import java.util.Date;

public class EntityMapper {

    public static ClientEntity toClientEntity(String name, Date birth, String passportSeries, Integer passportNumber, String phone, String address) {
        return new ClientEntity(name, birth, passportSeries, passportNumber, phone, address);
    }

    public static CreditEntity toCreditEntity(Double sum, Date startDate, Date endDate, Integer term, CreditTypeEntity creditType, ClientEntity client, UserEntity user) {
        return new CreditEntity(sum, startDate, endDate, term, creditType, client, user);
    }


}
