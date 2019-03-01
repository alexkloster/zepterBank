package by.bsuir.model.currency;

import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonProperty;

public class CurrencyModel {

    private final long id;

    private final String currencyCode;

    private final String currencyName;

    @JsonCreator
    public CurrencyModel(@JsonProperty("id") long id, @JsonProperty("currencyCode") String currencyCode,
                         @JsonProperty("currencyName") String currencyName) {
        this.id = id;
        this.currencyCode = currencyCode;
        this.currencyName = currencyName;
    }
}
