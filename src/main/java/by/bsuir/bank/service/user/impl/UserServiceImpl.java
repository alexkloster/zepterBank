package by.bsuir.bank.service.user.impl;

import by.bsuir.bank.dao.entity.user.UserEntity;
import by.bsuir.bank.dao.repository.user.UserRepository;
import by.bsuir.bank.model.user.UserModel;
import by.bsuir.bank.service.mapper.EntityMapper;
import by.bsuir.bank.service.mapper.ModelMapper;
import by.bsuir.bank.service.user.UserService;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
public class UserServiceImpl implements UserService{

    private static final Logger LOGGER = Logger.getLogger(UserServiceImpl.class);


    @Autowired
    private UserRepository userRepository;

    @Override
    public UserModel registration(UserModel userModel) {

        if(userRepository.countByLogin(userModel.getLogin()) > 0) {
            return null;
        }

        UserEntity userEntity = EntityMapper.toUserEntity(userModel.getLogin(), userModel.getName(),
                userModel.getPassword(), userModel.getRole(), userModel.getSubmitted());

        userRepository.save(userEntity);
        return ModelMapper.toUserModel(userEntity);
    }

    @Override
    public UserEntity registration(UserEntity userEntity) {

        if (userRepository.countByLogin(userEntity.getLogin()) > 0) {
            return null;
        }

        userRepository.save(userEntity);
        return userEntity;
    }

    @Override
    public UserModel authorisation(String login, String password) {

        UserEntity userEntity = userRepository.getByLoginAndPassword(login, password).orElseGet(()-> new UserEntity(login, password));

        return ModelMapper.toUserModel(userEntity);
    }

    @Override
    public void deleteUser(UserModel userModel) {
        userRepository.deleteById(userModel.getId());
    }

    @Override
    public List<UserModel> getAllUsers() {
        return userRepository.findAll().stream().map(ModelMapper::toUserModel).collect(Collectors.toList());
    }
}
