package by.bsuir.bank.model.deposit;

import by.bsuir.bank.model.currency.CurrencyModel;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonProperty;


public class DepositTypeModel {

    private final Long id;

    private final String description;

    private final Double percentage;

    private final Integer term;

    private final Double minSum;

    private final Boolean capitalization;

    private final CurrencyModel currency;

    @JsonCreator
    public DepositTypeModel(@JsonProperty("id") Long id, @JsonProperty("description") String description,
                            @JsonProperty("percentage") Double percentage, @JsonProperty("term") Integer term,
                            @JsonProperty("minSum") Double minSum, @JsonProperty("currency") Boolean capitalization,
                            @JsonProperty("currency") CurrencyModel currency) {
        this.id = id;
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

    public Boolean getCapitalization() {
        return capitalization;
    }

    public CurrencyModel getCurrency() {
        return currency;
    }
}
