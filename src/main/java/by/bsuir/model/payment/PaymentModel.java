package by.bsuir.model.payment;

import by.bsuir.enumerated.PaymentType;
import by.bsuir.model.client.ClientModel;
import by.bsuir.model.user.UserModel;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonProperty;

public class PaymentModel {

    private final long id;

    private final String description;

    private final PaymentType paymentType;

    private final Integer number;

    private final Double sum;

    private final ClientModel client;

    private final UserModel user;

    @JsonCreator
    public PaymentModel(@JsonProperty("id") long id, @JsonProperty("description") String description,
                        @JsonProperty("paymentType") PaymentType paymentType, @JsonProperty("number") Integer number,
                        @JsonProperty("sum") Double sum, @JsonProperty("client") ClientModel client,
                        @JsonProperty("user") UserModel user) {
        this.id = id;
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

    public String getDescription() {
        return description;
    }

    public PaymentType getPaymentType() {
        return paymentType;
    }

    public Integer getNumber() {
        return number;
    }

    public Double getSum() {
        return sum;
    }

    public ClientModel getClient() {
        return client;
    }

    public UserModel getUser() {
        return user;
    }
}
