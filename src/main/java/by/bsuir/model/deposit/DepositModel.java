package by.bsuir.model.deposit;


import by.bsuir.model.client.ClientModel;
import by.bsuir.model.user.UserModel;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonProperty;

import java.util.Date;

public class DepositModel {

    private final long id;

    private final Double sum;

    private final Date startDate;

    private final Date endDate;

    private final Integer term;

    private final DepositTypeModel depositType;

    private final ClientModel client;

    private final UserModel user;

    @JsonCreator
    public DepositModel(@JsonProperty("id") long id, @JsonProperty("id") Double sum, @JsonProperty("id") Date startDate,
                        @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss") Date endDate,
                        @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss") Integer term,
                        @JsonProperty("depositType") DepositTypeModel depositType, @JsonProperty("client") ClientModel client,
                        @JsonProperty("user") UserModel user) {
        this.id = id;
        this.sum = sum;
        this.startDate = startDate;
        this.endDate = endDate;
        this.term = term;
        this.depositType = depositType;
        this.client = client;
        this.user = user;
    }

    public long getId() {
        return id;
    }

    public Double getSum() {
        return sum;
    }

    public Date getStartDate() {
        return startDate;
    }

    public Date getEndDate() {
        return endDate;
    }

    public Integer getTerm() {
        return term;
    }

    public DepositTypeModel getDepositType() {
        return depositType;
    }

    public ClientModel getClient() {
        return client;
    }

    public UserModel getUser() {
        return user;
    }
}
