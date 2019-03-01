package by.bsuir.bank.enumerated;

import java.util.Arrays;

public enum PaymentType {
    PENALTY("Штраф"),
    TICKET("Билеты"),
    HOME("Квартплата"),
    INTERNET("Интернет"),
    PHONE("Телефон"),
    OTHER("Другое");

    private String name;

    PaymentType(String name) {
        this.name = name();
    }

    public static PaymentType getByName(String name) {
        return Arrays.stream(values()).filter(s -> s.getName().equalsIgnoreCase(name)).findAny().get();
    }

    public String getName() {
        return name;
    }

    @Override
    public String toString() {
        return name;
    }

}
