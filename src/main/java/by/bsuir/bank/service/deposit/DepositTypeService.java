package by.bsuir.bank.service.deposit;


import by.bsuir.bank.dao.entity.deposit.DepositTypeEntity;

import javax.transaction.Transactional;
import java.util.List;

@Transactional
public interface DepositTypeService {

    List<DepositTypeEntity> getAllDepositTypes();

    DepositTypeEntity getById(Long id);

    void delete(Long id);

    DepositTypeEntity save(DepositTypeEntity entity);
}
