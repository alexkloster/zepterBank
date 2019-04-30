package by.bsuir.bank.service.currency;

import by.bsuir.bank.dao.entity.currency.CurrencyEntity;

import javax.transaction.Transactional;
import java.util.List;

@Transactional
public interface CurrencyService {

    List<CurrencyEntity> getAllCurrencies();
}
