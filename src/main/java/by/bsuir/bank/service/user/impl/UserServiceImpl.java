package by.bsuir.bank.service.user.impl;

import by.bsuir.bank.dao.entity.user.UserEntity;
import by.bsuir.bank.dao.repository.user.UserRepository;
import by.bsuir.bank.service.user.UserService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class UserServiceImpl implements UserService{

    private static final Logger LOGGER = Logger.getLogger(UserServiceImpl.class);


    @Autowired
    private UserRepository userRepository;


    @Override
    public UserEntity registration(UserEntity userEntity) {

        if (userRepository.countByLogin(userEntity.getLogin()) > 0) {
            return null;
        }

        userRepository.save(userEntity);
        return userEntity;
    }

    @Override
    public UserEntity authorisation(String login, String password) {
        UserEntity userEntity = userRepository.findByLoginAndPassword(login, password).orElse(new UserEntity(login, password));
        return userEntity;
    }

    @Override
    public void deleteUser(Long id) {
        userRepository.deleteById(id);
    }

    @Override
    public List<UserEntity> getAllUsers() {
        return new ArrayList<>(userRepository.findAll());
    }

    @Override
    public UserEntity findById(Long id) {
        return userRepository.findById(id).orElse(null);
    }
}
