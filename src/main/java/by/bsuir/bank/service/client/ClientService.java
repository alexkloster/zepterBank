package by.bsuir.bank.service.client;

import by.bsuir.bank.dao.entity.client.ClientEntity;

import javax.transaction.Transactional;

@Transactional
public interface ClientService {

    ClientEntity getById(Long id);

    ClientEntity saveClient(ClientEntity client);

    ClientEntity getBySeriesAndNumber(ClientEntity entity);

}
