package by.bsuir.bank.service.user;

import by.bsuir.bank.dao.entity.user.UserEntity;

import javax.transaction.Transactional;
import java.util.List;

@Transactional
public interface UserService {

    UserEntity authorisation(String login, String password);

    UserEntity registration(UserEntity userEntity);


    void deleteUser(Long id);

    List<UserEntity> getAllUsers();

    UserEntity findById(Long id);
}
