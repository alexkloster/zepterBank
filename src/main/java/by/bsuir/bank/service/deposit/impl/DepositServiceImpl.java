package by.bsuir.bank.service.deposit.impl;

import by.bsuir.bank.dao.entity.client.ClientEntity;
import by.bsuir.bank.dao.entity.deposit.DepositEntity;
import by.bsuir.bank.dao.entity.user.UserEntity;
import by.bsuir.bank.dao.repository.deposit.DepositRepository;
import by.bsuir.bank.service.deposit.DepositService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.time.Duration;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

@Service
public class DepositServiceImpl implements DepositService{

    @Autowired
    private DepositRepository depositRepository;

    @Override
    public List<DepositEntity> getAllDeposits() {
        return depositRepository.findAll();
    }

    @Override
    public List<DepositEntity> getAllByUser(UserEntity userEntity) {
        return depositRepository.findByUser(userEntity);
    }

    @Override
    public DepositEntity saveDeposit(DepositEntity depositEntity) {
        return depositRepository.save(depositEntity);
    }

    @Override
    public DepositEntity createAndSaveDeposit(DepositEntity depositEntity, ClientEntity client, UserEntity user) {
        depositEntity.setId(null);
        Calendar calendar = Calendar.getInstance();
        Date startDate = new Date(calendar.getTime().getTime());
        System.out.println(startDate);
        calendar.add(Calendar.MONTH, depositEntity.getTerm());
        Date endDate = new Date(calendar.getTime().getTime());
        System.out.println(endDate);
        depositEntity.setStartDate(startDate);
        depositEntity.setEndDate(endDate);
        depositEntity.setUser(user);
        depositEntity.setClient(client);
        return saveDeposit(depositEntity);
    }

    @Override
    public DepositEntity getById(Long id) {
        return depositRepository.findById(id).orElse(null);
    }

    @Override
    public Double calculateProfitForCurrentDate(DepositEntity deposit) {
        Double profit = null;
        Double summ = deposit.getSum();
        Double percentage = deposit.getDepositType().getPercentage()/100;
        LocalDateTime startDeposDate = LocalDateTime.ofInstant(deposit.getStartDate().toInstant(), ZoneId.systemDefault());
        LocalDateTime endDeposDate = LocalDateTime.ofInstant(deposit.getEndDate().toInstant(), ZoneId.systemDefault());
        LocalDateTime currentDate = LocalDateTime.now();
        if(deposit.getDepositType().getCapitalization()) {
            LocalDateTime bankStartDate = LocalDateTime.of(2016, 1, 1, 0, 0, 0);
            while (bankStartDate.isBefore(startDeposDate)) {
                bankStartDate = bankStartDate.plusMonths(3);
            }
            if (bankStartDate.isBefore(currentDate) || bankStartDate.isEqual(currentDate)) {
                long daysStart = Math.abs(Duration.between(startDeposDate, bankStartDate).toDays());
                int n = 0;
                if (currentDate.isAfter(endDeposDate)) {
                    currentDate = endDeposDate;
                }
                while (bankStartDate.isBefore(currentDate.minusMonths(3))) {
                    bankStartDate = bankStartDate.plusMonths(3);
                    n++;
                }
                long daysEnd = Duration.between(bankStartDate, currentDate).toDays();
                Double startSum = summ * daysStart * (percentage / 365);
                Double midleSumm = (summ + startSum) * (Math.pow((1 + percentage / 4), n));
                Double endSumm = midleSumm * daysEnd * percentage / 365;
                endSumm = midleSumm + endSumm;
                profit = endSumm - summ;
            } else {
                long daysStart = Math.abs(Duration.between(startDeposDate, currentDate).toDays());
                profit = summ * daysStart * (percentage / 365);
            }
        } else {
            if(endDeposDate.isBefore(currentDate)) {
                currentDate = endDeposDate;
            }
            long days = Math.abs(Duration.between(startDeposDate, currentDate).toDays());
            profit = summ * days * (percentage/365);
        }
        return profit;
    }


    @Override
    public Double calculateProfit(DepositEntity depositEntity) {

        Double summ = depositEntity.getSum();
        Double percentage = depositEntity.getDepositType().getPercentage()/100;
        Integer term = depositEntity.getTerm();

        Double resultValue;
        Double profitValue;
        if (depositEntity.getDepositType().getCapitalization()) {
            resultValue = new BigDecimal(summ * Math.pow((1 + percentage / 4), term / 3)).setScale(2, BigDecimal.ROUND_HALF_UP).doubleValue();
            profitValue = new BigDecimal(resultValue - summ).setScale(2, BigDecimal.ROUND_HALF_UP).doubleValue();
        } else {
            resultValue = new BigDecimal(summ + (summ * percentage) * term / 12).setScale(2, BigDecimal.ROUND_HALF_UP).doubleValue();
            profitValue = new BigDecimal(resultValue - summ).setScale(2, BigDecimal.ROUND_HALF_UP).doubleValue();
        }
        return profitValue;
    }
}
