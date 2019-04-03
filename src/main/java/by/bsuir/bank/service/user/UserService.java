package by.bsuir.bank.service.user;

import by.bsuir.bank.dao.entity.user.UserEntity;
import by.bsuir.bank.model.user.UserModel;

import javax.transaction.Transactional;
import java.util.List;

@Transactional
public interface UserService {

    UserModel authorisation(String login, String password);

    UserModel registration(UserModel userModel);

    UserEntity registration(UserEntity userEntity);


    void deleteUser(UserModel userModel);

    List<UserModel> getAllUsers();
}
