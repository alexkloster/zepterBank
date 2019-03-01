package by.bsuir.dao.entity.deposit;


import by.bsuir.dao.entity.currency.CurrencyEntity;

import javax.persistence.*;

@Entity
@Table(name = "deposit_type")
public class DepositTypeEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    private String description;

    private Double percentage;

    private Integer term;

    private Double min_sum;

    private Boolean capitalization;

    @ManyToOne
    @JoinColumn(name = "currency_id")
    private CurrencyEntity currency;

    public DepositTypeEntity() {
    }

    public DepositTypeEntity(String description, Double percentage, Integer term, Double min_sum, Boolean capitalization, CurrencyEntity currency) {
        this.description = description;
        this.percentage = percentage;
        this.term = term;
        this.min_sum = min_sum;
        this.capitalization = capitalization;
        this.currency = currency;
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

    public Double getMin_sum() {
        return min_sum;
    }

    public void setMin_sum(Double min_sum) {
        this.min_sum = min_sum;
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
