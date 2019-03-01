package by.bsuir.dao.entity.user;


public enum Role {

    ADMINISTRATOR("Администратор"),
    USER("Пользователь");

    private String role;

    Role(String role) {
        this.role = role;

    }

    public String getRole() {
        return role;
    }
}