package by.bsuir.bank.service.deposit;

import by.bsuir.bank.dao.entity.client.ClientEntity;
import by.bsuir.bank.dao.entity.deposit.DepositEntity;
import by.bsuir.bank.dao.entity.user.UserEntity;

import javax.transaction.Transactional;
import java.util.List;

@Transactional
public interface DepositService {

    List<DepositEntity> getAllDeposits();

    List<DepositEntity> getAllByUser(UserEntity userEntity);

    DepositEntity saveDeposit(DepositEntity depositEntity);

    DepositEntity createAndSaveDeposit(DepositEntity depositEntity, ClientEntity client, UserEntity user);

    DepositEntity getById(Long id);
}
