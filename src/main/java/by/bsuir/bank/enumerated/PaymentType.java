package by.bsuir.bank.enumerated;

public enum PaymentType {
    PENALTY("Штраф"),
    TICKET("Билеты"),
    HOME("Квартплата"),
    INTERNET("Интернет"),
    PHONE("Телефон"),
    OTHER("Другое");

    private String type;

    PaymentType(String type) {
        this.type = type;
    }

    public String getType() {
        return type;
    }

    @Override
    public String toString() {
        return type;
    }

}
