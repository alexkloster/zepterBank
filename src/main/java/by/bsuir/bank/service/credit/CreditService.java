package by.bsuir.bank.service.credit;

import by.bsuir.bank.dao.entity.client.ClientEntity;
import by.bsuir.bank.dao.entity.credit.CreditEntity;
import by.bsuir.bank.dao.entity.user.UserEntity;

import javax.transaction.Transactional;
import java.util.List;

@Transactional
public interface CreditService {

    List<CreditEntity> getAllByUser(UserEntity userEntity);

    CreditEntity createAndSaveCredit(CreditEntity creditEntity, ClientEntity client, UserEntity user);

    CreditEntity saveCredit(CreditEntity creditEntity);

}
