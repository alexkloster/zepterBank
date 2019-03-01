package by.bsuir.bank.dao.repository.user;

import by.bsuir.bank.dao.entity.user.UserEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends JpaRepository<UserEntity, Long> {


}
