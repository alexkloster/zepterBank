package by.bsuir.bank.dao.entity.payment;


import by.bsuir.bank.dao.entity.client.ClientEntity;
import by.bsuir.bank.dao.entity.user.UserEntity;
import by.bsuir.bank.enumerated.PaymentType;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "payment")
public class PaymentEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String description;

    @Enumerated(EnumType.ORDINAL)
    private PaymentType paymentType;

    private Integer number;

    private Double sum;

    private Date date;

    @ManyToOne
    @JoinColumn(name = "client_id")
    private ClientEntity client;

    @ManyToOne
    @JoinColumn(name = "user_id")
    private UserEntity user;

    public PaymentEntity() {
    }

    public PaymentEntity(String description, PaymentType paymentType, Integer number, Double sum, Date date, ClientEntity client, UserEntity user) {
        this.description = description;
        this.paymentType = paymentType;
        this.number = number;
        this.sum = sum;
        this.date = date;
        this.client = client;
        this.user = user;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public PaymentType getPaymentType() {
        return paymentType;
    }

    public void setPaymentType(PaymentType paymentType) {
        this.paymentType = paymentType;
    }

    public Integer getNumber() {
        return number;
    }

    public void setNumber(Integer number) {
        this.number = number;
    }

    public Double getSum() {
        return sum;
    }

    public void setSum(Double sum) {
        this.sum = sum;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public ClientEntity getClient() {
        return client;
    }

    public void setClient(ClientEntity client) {
        this.client = client;
    }

    public UserEntity getUser() {
        return user;
    }

    public void setUser(UserEntity user) {
        this.user = user;
    }
}
