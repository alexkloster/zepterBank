package by.bsuir.bank.dao.entity.deposit;


import by.bsuir.bank.dao.entity.currency.CurrencyEntity;

import javax.persistence.*;

@Entity
@Table(name = "deposit_type")
public class DepositTypeEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String description;

    private Double percentage;

    private Integer term;

    private Double minSum;

    private Boolean capitalization;

    @ManyToOne
    @JoinColumn(name = "currency_id")
    private CurrencyEntity currency;

    public DepositTypeEntity() {
    }

    public DepositTypeEntity(String description, Double percentage, Integer term, Double minSum, Boolean capitalization, CurrencyEntity currency) {
        this.description = description;
        this.percentage = percentage;
        this.term = term;
        this.minSum = minSum;
        this.capitalization = capitalization;
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

    public Boolean getCapitalization() {
        return capitalization;
    }

    public void setCapitalization(Boolean capitalization) {
        this.capitalization = capitalization;
    }

    public CurrencyEntity getCurrency() {
        return currency;
    }

    public void setCurrency(CurrencyEntity currency) {
        this.currency = currency;
    }
}
