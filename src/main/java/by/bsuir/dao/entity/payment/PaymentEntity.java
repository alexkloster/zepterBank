package by.bsuir.dao.entity.payment;


import by.bsuir.dao.entity.client.ClientEntity;
import by.bsuir.dao.entity.user.UserEntity;
import by.bsuir.enumerated.PaymentType;

import javax.persistence.*;

@Entity
@Table(name = "payment")
public class PaymentEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    private String description;

    @Enumerated(EnumType.STRING)
    private PaymentType paymentType;

    private Integer number;

    private Double sum;

    @ManyToOne
    @JoinColumn(name = "client_id")
    private ClientEntity client;

    @ManyToOne
    @JoinColumn(name = "user_id")
    private UserEntity user;

    public PaymentEntity() {
    }

    public PaymentEntity(String description, PaymentType paymentType, Integer number, Double sum, ClientEntity client, UserEntity user) {
        this.description = description;
        this.paymentType = paymentType;
        this.number = number;
        this.sum = sum;
        this.client = client;
        this.user = user;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
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
