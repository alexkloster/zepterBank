package by.bsuir.dao.entity.credit;


import by.bsuir.dao.entity.client.ClientEntity;
import by.bsuir.dao.entity.user.UserEntity;

import javax.persistence.*;
import java.sql.Date;

@Entity
@Table(name = "creditType")
public class CreditEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    private Double sum;

    private Date startDate;

    private Date endDate;

    private Integer term;

    @ManyToOne
    @JoinColumn(name = "credit_type_id")
    private CreditTypeEntity creditType;

    @ManyToOne
    @JoinColumn(name = "client_id")
    private ClientEntity client;

    @ManyToOne
    @JoinColumn(name = "user_id")
    private UserEntity user;


    public CreditEntity() {
    }

    public CreditEntity(Double sum, Date startDate, Date endDate, Integer term, CreditTypeEntity creditType, ClientEntity client, UserEntity user) {
        this.sum = sum;
        this.startDate = startDate;
        this.endDate = endDate;
        this.term = term;
        this.creditType = creditType;
        this.client = client;
        this.user = user;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
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

    public CreditTypeEntity getCreditType() {
        return creditType;
    }

    public void setCreditType(CreditTypeEntity creditType) {
        this.creditType = creditType;
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
