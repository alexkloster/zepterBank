package by.bsuir.bank.service.client;

import by.bsuir.bank.dao.entity.client.ClientEntity;
import by.bsuir.bank.model.client.ClientModel;

import javax.transaction.Transactional;

@Transactional
public interface ClientService {

    ClientModel saveClient(ClientModel client);

    ClientEntity getBySeriesAndNumber(ClientEntity entity);

}
