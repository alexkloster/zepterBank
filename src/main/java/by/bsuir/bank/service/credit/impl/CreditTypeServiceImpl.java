package by.bsuir.bank.service.credit.impl;

import by.bsuir.bank.dao.entity.credit.CreditTypeEntity;
import by.bsuir.bank.dao.repository.credit.CreditTypeRepository;
import by.bsuir.bank.service.credit.CreditTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CreditTypeServiceImpl implements CreditTypeService {

    @Autowired
    private CreditTypeRepository creditTypeRepository;

    @Override
    public List<CreditTypeEntity> getAllCreditTypes() {
        return creditTypeRepository.findAll();
    }

    @Override
    public CreditTypeEntity getById(Long id) {
        return creditTypeRepository.findById(id).orElse(null);
    }

    @Override
    public void deleteCreditTypeById(Long id) {
        creditTypeRepository.deleteById(id);
    }

    @Override
    public CreditTypeEntity save(CreditTypeEntity entity) {
        return creditTypeRepository.save(entity);
    }
}
