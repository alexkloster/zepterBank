package by.bsuir.bank.service.currency.impl;

import by.bsuir.bank.dao.entity.currency.CurrencyEntity;
import by.bsuir.bank.dao.repository.currency.CurrencyRepository;
import by.bsuir.bank.service.currency.CurrencyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CurrencyServiceImpl implements CurrencyService{

    @Autowired
    private CurrencyRepository currencyRepository;

    @Override
    public List<CurrencyEntity> getAllCurrencies() {
        return currencyRepository.findAll();
    }
}
