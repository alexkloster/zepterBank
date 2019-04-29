package by.bsuir.bank.exception;

import by.bsuir.bank.dao.entity.user.UserEntity;

import java.util.function.Supplier;

public class NoUserException extends Exception implements Supplier<UserEntity> {

    public NoUserException(String error) {
        super(error);
    }

    @Override
    public UserEntity get() {
        return null;
    }
}
