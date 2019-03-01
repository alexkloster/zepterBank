package by.bsuir.bank.dao.repository.client;

import by.bsuir.bank.dao.entity.client.ClientEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface ClientRepository extends JpaRepository<ClientEntity, Long> {

    @Override
    Optional<ClientEntity> findById(Long aLong);

}
