package by.bsuir.bank.service.payment;

import by.bsuir.bank.dao.entity.payment.PaymentEntity;
import by.bsuir.bank.dao.entity.user.UserEntity;

import javax.transaction.Transactional;
import java.util.List;

@Transactional
public interface PaymentService {

    List<PaymentEntity> getPaymentsOfUser(UserEntity userEntity);
}
