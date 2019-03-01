package by.bsuir.bank.dao.repository.credit;

import by.bsuir.bank.dao.entity.credit.CreditEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CreditRepository extends JpaRepository<CreditEntity, Long> {
}
