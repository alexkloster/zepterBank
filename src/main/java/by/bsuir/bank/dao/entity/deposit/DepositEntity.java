package by.bsuir.bank.dao.entity.deposit;


import by.bsuir.bank.dao.entity.client.ClientEntity;
import by.bsuir.bank.dao.entity.user.UserEntity;

import javax.persistence.*;
import java.util.Date;

@Entity
@Table(name = "deposit")
public class DepositEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private Double sum;
    private Date startDate;
    private Date endDate;
    private Integer term;

    @ManyToOne
    @JoinColumn(name = "deposit_type_id")
    private DepositTypeEntity depositType;

    @ManyToOne
    @JoinColumn(name = "client_id")
    private ClientEntity client;

    @ManyToOne
    @JoinColumn(name = "user_id")
    private UserEntity user;

    public DepositEntity() {
    }

    public DepositEntity(Double sum, Date startDate, Date endDate, Integer term, DepositTypeEntity depositType, ClientEntity client, UserEntity user) {
        this.sum = sum;
        this.startDate = startDate;
        this.endDate = endDate;
        this.term = term;
        this.depositType = depositType;
        this.client = client;
        this.user = user;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Double getSum() {
        return sum;
    }

    public void setSum(Double sum) {
        this.sum = sum;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    public Integer getTerm() {
        return term;
    }

    public void setTerm(Integer term) {
        this.term = term;
    }

    public DepositTypeEntity getDepositType() {
        return depositType;
    }

    public void setDepositType(DepositTypeEntity depositType) {
        this.depositType = depositType;
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

    @Override
    public String toString() {
        return "DepositEntity{" +
                "id=" + id +
                ", sum=" + sum +
                ", startDate=" + startDate +
                ", endDate=" + endDate +
                ", term=" + term +
                ", depositType=" + depositType +
                ", client=" + client +
                ", user=" + user +
                '}';
    }
}
