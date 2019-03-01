package by.bsuir.bank.dao.repository.deposit;

import by.bsuir.bank.dao.entity.deposit.DepositEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface DepositRepository extends JpaRepository<DepositEntity, Long> {
}
