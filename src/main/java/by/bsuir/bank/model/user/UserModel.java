package by.bsuir.bank.model.user;

import by.bsuir.bank.enumerated.Role;
import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.annotation.JsonProperty;

public class UserModel {

    private final Long id;

    private final String login;

    private final String name;

    private final String password;

    private final Role role;

    private final Boolean submitted;

    @JsonCreator
    public UserModel(@JsonProperty("id") Long id, @JsonProperty("login") String login, @JsonProperty("name") String name,
                     @JsonProperty("password") String password, @JsonProperty("role") Role role,
                     @JsonProperty("submitted") Boolean submitted) {
        this.id = id;
        this.login = login;
        this.name = name;
        this.password = password;
        this.role = role;
        this.submitted = submitted;
    }

    public Long getId() {
        return id;
    }

    public String getLogin() {
        return login;
    }

    public String getName() {
        return name;
    }

    public String getPassword() {
        return password;
    }

    public Role getRole() {
        return role;
    }

    public Boolean getSubmitted() {
        return submitted;
    }
}
