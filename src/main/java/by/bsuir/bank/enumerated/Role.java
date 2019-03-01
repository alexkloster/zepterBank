package by.bsuir.bank.enumerated;


import java.util.Arrays;

public enum Role {

    ADMINISTRATOR("Администратор"),
    USER("Пользователь");

    private String name;

    Role(String name) {
        this.name = name;

    }

    public static Role getByName(String name) {
        return Arrays.stream(values()).filter(s -> s.getName().equalsIgnoreCase(name)).findAny().get();
    }

    public String getName() {
        return name;
    }
}
