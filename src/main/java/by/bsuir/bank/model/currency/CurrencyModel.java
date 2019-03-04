package by.bsuir.bank.model.currency;

import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonProperty;

public class CurrencyModel {

    private final Long id;

    private final String currencyCode;

    private final String currencyName;

    @JsonCreator
    public CurrencyModel(@JsonProperty("id") Long id, @JsonProperty("currencyCode") String currencyCode,
                         @JsonProperty("currencyName") String currencyName) {
        this.id = id;
        this.currencyCode = currencyCode;
        this.currencyName = currencyName;
    }
}
