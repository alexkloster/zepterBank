package by.bsuir.bank.model.client;

import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonProperty;

import java.util.Date;

public class ClientModel {

    private final Long id;

    private final String name;

    private final Date birth;

    private final String passportSeries;

    private final Integer passportNumber;

    private final String phone;

    private final String address;

    @JsonCreator
    public ClientModel(@JsonProperty("id") Long id, @JsonProperty("name") String name,
                       @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss") Date birth,
                       @JsonProperty("passportSeries") String passportSeries,
                       @JsonProperty("passportNumber") Integer passportNumber,
                       @JsonProperty("phone") String phone, @JsonProperty("address") String address) {
        this.id = id;
        this.name = name;
        this.birth = birth;
        this.passportSeries = passportSeries;
        this.passportNumber = passportNumber;
        this.phone = phone;
        this.address = address;
    }

    public Long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public Date getBirth() {
        return birth;
    }

    public String getPassportSeries() {
        return passportSeries;
    }

    public Integer getPassportNumber() {
        return passportNumber;
    }

    public String getPhone() {
        return phone;
    }

    public String getAddress() {
        return address;
    }
}
