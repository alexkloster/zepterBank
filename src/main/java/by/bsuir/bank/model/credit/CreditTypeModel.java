package by.bsuir.bank.model.credit;

import by.bsuir.bank.model.currency.CurrencyModel;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonProperty;


public class CreditTypeModel {

    private final Long id;

    private final String description;

    private final Double percentage;

    private final Integer term;

    private final Double minSum;

    private final CurrencyModel currency;

    @JsonCreator
    public CreditTypeModel(@JsonProperty("id") Long id, @JsonProperty("description") String description,
                           @JsonProperty("percentage") Double percentage, @JsonProperty("term") Integer term,
                           @JsonProperty("minSum") Double minSum, @JsonProperty("currency") CurrencyModel currency) {
        this.id = id;
        this.description = description;
        this.percentage = percentage;
        this.term = term;
        this.minSum = minSum;
        this.currency = currency;

    }

    public Long getId() {
        return id;
    }

    public String getDescription() {
        return description;
    }

    public Double getPercentage() {
        return percentage;
    }

    public Integer getTerm() {
        return term;
    }

    public Double getMinSum() {
        return minSum;
    }

    public CurrencyModel getCurrency() {
        return currency;
    }
}
