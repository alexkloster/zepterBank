package by.bsuir.bank.service.credit.impl;

import by.bsuir.bank.dao.entity.client.ClientEntity;
import by.bsuir.bank.dao.entity.credit.CreditEntity;
import by.bsuir.bank.dao.entity.user.UserEntity;
import by.bsuir.bank.dao.repository.credit.CreditRepository;
import by.bsuir.bank.service.credit.CreditService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Calendar;
import java.util.Date;
import java.util.List;

@Service
public class CreditServiceImpl implements CreditService {

    @Autowired
    private CreditRepository creditRepository;

    @Override
    public List<CreditEntity> getAllByUser(UserEntity userEntity) {
        return creditRepository.findAllByUser(userEntity);
    }

    @Override
    public CreditEntity createAndSaveCredit(CreditEntity creditEntity, ClientEntity client, UserEntity user) {
        creditEntity.setId(null);
        Calendar calendar = Calendar.getInstance();
        Date startDate = new Date(calendar.getTime().getTime());
        System.out.println(startDate);
        calendar.add(Calendar.MONTH, creditEntity.getTerm());
        Date endDate = new Date(calendar.getTime().getTime());
        System.out.println(endDate);
        creditEntity.setStartDate(startDate);
        creditEntity.setEndDate(endDate);
        creditEntity.setUser(user);
        creditEntity.setClient(client);
        return saveCredit(creditEntity);
    }

    @Override
    public CreditEntity saveCredit(CreditEntity creditEntity) {
        return creditRepository.save(creditEntity);
    }
}
