package by.bsuir.bank.service.payment.impl;

import by.bsuir.bank.dao.entity.payment.PaymentEntity;
import by.bsuir.bank.dao.entity.user.UserEntity;
import by.bsuir.bank.dao.repository.payment.PaymentRepository;
import by.bsuir.bank.service.payment.PaymentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PaymentServiceImpl implements PaymentService {

    @Autowired
    private PaymentRepository paymentRepository;

    @Override
    public List<PaymentEntity> getPaymentsOfUser(UserEntity userEntity) {
        return paymentRepository.findByUser(userEntity);
    }
}
