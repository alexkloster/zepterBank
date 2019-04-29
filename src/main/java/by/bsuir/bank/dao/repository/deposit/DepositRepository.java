package by.bsuir.bank.dao.repository.deposit;

import by.bsuir.bank.dao.entity.deposit.DepositEntity;
import by.bsuir.bank.dao.entity.user.UserEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface DepositRepository extends JpaRepository<DepositEntity, Long> {

    List<DepositEntity> findByUser(UserEntity userEntity);
}
