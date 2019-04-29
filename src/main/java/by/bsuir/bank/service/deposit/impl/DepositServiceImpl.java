package by.bsuir.bank.service.deposit.impl;

import by.bsuir.bank.dao.entity.client.ClientEntity;
import by.bsuir.bank.dao.entity.deposit.DepositEntity;
import by.bsuir.bank.dao.entity.user.UserEntity;
import by.bsuir.bank.dao.repository.deposit.DepositRepository;
import by.bsuir.bank.service.deposit.DepositService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Calendar;
import java.util.Date;
import java.util.List;

@Service
public class DepositServiceImpl implements DepositService{

    @Autowired
    private DepositRepository depositRepository;

    @Override
    public List<DepositEntity> getAllDeposits() {
        return depositRepository.findAll();
    }

    @Override
    public List<DepositEntity> getAllByUser(UserEntity userEntity) {
        return depositRepository.findByUser(userEntity);
    }

    @Override
    public DepositEntity saveDeposit(DepositEntity depositEntity) {
        return depositRepository.save(depositEntity);
    }

    @Override
    public DepositEntity createAndSaveDeposit(DepositEntity depositEntity, ClientEntity client, UserEntity user) {
        depositEntity.setId(null);
        Calendar calendar = Calendar.getInstance();
        Date startDate = new Date(calendar.getTime().getTime());
        System.out.println(startDate);
        calendar.add(Calendar.MONTH, depositEntity.getTerm());
        Date endDate = new Date(calendar.getTime().getTime());
        System.out.println(endDate);
        depositEntity.setStartDate(startDate);
        depositEntity.setEndDate(endDate);
        depositEntity.setUser(user);
        depositEntity.setClient(client);
        return saveDeposit(depositEntity);
    }

    @Override
    public DepositEntity getById(Long id) {
        return depositRepository.findById(id).orElse(null);
    }
}
