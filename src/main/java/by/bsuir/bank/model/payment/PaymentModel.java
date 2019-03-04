package by.bsuir.bank.model.payment;

import by.bsuir.bank.enumerated.PaymentType;
import by.bsuir.bank.model.client.ClientModel;
import by.bsuir.bank.model.user.UserModel;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonFilter;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonProperty;

import java.util.Date;

public class PaymentModel {

    private final Long id;

    private final String description;

    private final PaymentType paymentType;

    private final Integer number;

    private final Double sum;

    private final Date date;

    private final ClientModel client;

    private final UserModel user;

    @JsonCreator
    public PaymentModel(@JsonProperty("id") Long id, @JsonProperty("description") String description,
                        @JsonProperty("paymentType") PaymentType paymentType, @JsonProperty("number") Integer number,
                        @JsonProperty("sum") Double sum, @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss") Date date,
                        @JsonProperty("client") ClientModel client, @JsonProperty("user") UserModel user) {
        this.id = id;
        this.description = description;
        this.paymentType = paymentType;
        this.number = number;
        this.sum = sum;
        this.date = date;
        this.client = client;
        this.user = user;
    }

    public Long getId() {
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

    public Date getDate() {
        return date;
    }
}
