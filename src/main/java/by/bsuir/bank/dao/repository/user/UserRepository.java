package by.bsuir.bank.dao.repository.user;

import by.bsuir.bank.dao.entity.user.UserEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface UserRepository extends JpaRepository<UserEntity, Long> {

    Long countByLogin(String name);


    Optional<UserEntity> findByLoginAndPassword(String login, String password);

    @Override
    Optional<UserEntity> findById(Long aLong);

    //    void deleteById(Long id);

    List<UserEntity> findAll();

    @Query("select count(u) from UserEntity u where u.login =:login")
    Integer findOverlappedStudies(@Param("login") String login);



}
