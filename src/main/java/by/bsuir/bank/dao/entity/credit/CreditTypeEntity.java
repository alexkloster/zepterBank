package by.bsuir.bank.dao.entity.credit;


import by.bsuir.bank.dao.entity.currency.CurrencyEntity;

import javax.persistence.*;

@Entity
@Table(name = "credit_type")
public class CreditTypeEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String description;

    private Double percentage;

    private Integer term;

    private Double minSum;

    @ManyToOne
    @JoinColumn(name = "currency_id")
    private CurrencyEntity currency;

    public CreditTypeEntity() {
    }

    public CreditTypeEntity(String description, Double percentage, Integer term, Double minSum, CurrencyEntity currency) {
        this.description = description;
        this.percentage = percentage;
        this.term = term;
        this.minSum = minSum;
        this.currency = currency;
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

    public Double getPercentage() {
        return percentage;
    }

    public void setPercentage(Double percentage) {
        this.percentage = percentage;
    }

    public Integer getTerm() {
        return term;
    }

    public void setTerm(Integer term) {
        this.term = term;
    }

    public Double getMinSum() {
        return minSum;
    }

    public void setMinSum(Double minSum) {
        this.minSum = minSum;
    }

    public CurrencyEntity getCurrency() {
        return currency;
    }

    public void setCurrency(CurrencyEntity currency) {
        this.currency = currency;
    }
}
