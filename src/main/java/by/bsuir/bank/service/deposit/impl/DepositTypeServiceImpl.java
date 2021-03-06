package by.bsuir.bank.service.deposit.impl;

import by.bsuir.bank.dao.entity.deposit.DepositTypeEntity;
import by.bsuir.bank.dao.repository.deposit.DepositTypeRepository;
import by.bsuir.bank.service.deposit.DepositTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DepositTypeServiceImpl implements DepositTypeService{

    @Autowired
    private DepositTypeRepository depositTypeRepository;

    @Override
    public List<DepositTypeEntity> getAllDepositTypes() {
        return depositTypeRepository.findAll();
    }

    @Override
    public DepositTypeEntity getById(Long id) {
        return depositTypeRepository.findById(id).orElse(null);
    }

    @Override
    public void delete(Long id) {
        depositTypeRepository.deleteById(id);
    }

    @Override
    public DepositTypeEntity save(DepositTypeEntity entity) {
        return depositTypeRepository.save(entity);
    }
}
