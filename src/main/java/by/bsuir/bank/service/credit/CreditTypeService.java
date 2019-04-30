package by.bsuir.bank.service.credit;

import by.bsuir.bank.dao.entity.credit.CreditTypeEntity;

import javax.transaction.Transactional;
import java.util.List;

@Transactional
public interface CreditTypeService {

    List<CreditTypeEntity> getAllCreditTypes();

    CreditTypeEntity getById(Long id);
}
