package by.bsuir.bank.service.deposit.impl;

import by.bsuir.bank.dao.entity.deposit.DepositEntity;
import by.bsuir.bank.dao.entity.user.UserEntity;
import by.bsuir.bank.dao.repository.deposit.DepositRepository;
import by.bsuir.bank.service.deposit.DepositService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
}
