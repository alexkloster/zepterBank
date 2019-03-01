package by.bsuir.bank.service.client.impl;

import by.bsuir.bank.dao.repository.client.ClientRepository;
import by.bsuir.bank.model.client.ClientModel;
import by.bsuir.bank.service.client.ClientService;
import org.springframework.beans.factory.annotation.Autowired;

public class ClientServiceImpl implements ClientService {

    @Autowired
    private ClientRepository clientRepository;

    @Override
    public ClientModel saveClient(ClientModel client) {
        return null;
    }
}
