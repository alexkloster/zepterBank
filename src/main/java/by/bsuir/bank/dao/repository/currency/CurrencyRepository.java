package by.bsuir.bank.dao.repository.currency;

import by.bsuir.bank.dao.entity.currency.CurrencyEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CurrencyRepository extends JpaRepository<CurrencyEntity, Long> {
}
