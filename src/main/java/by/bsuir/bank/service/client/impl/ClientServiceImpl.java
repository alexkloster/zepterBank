package by.bsuir.bank.service.client.impl;

import by.bsuir.bank.dao.entity.client.ClientEntity;
import by.bsuir.bank.dao.repository.client.ClientRepository;
import by.bsuir.bank.model.client.ClientModel;
import by.bsuir.bank.service.client.ClientService;
import by.bsuir.bank.service.mapper.EntityMapper;
import by.bsuir.bank.service.mapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ClientServiceImpl implements ClientService {

    @Autowired
    private ClientRepository clientRepository;

    @Override
    public ClientModel saveClient(ClientModel client) {

        ClientEntity clientEntity = EntityMapper.toClientEntity(client.getName(), client.getBirth(),
                client.getPassportSeries(), client.getPassportNumber(), client.getPhone(), client.getAddress());

        clientRepository.save(clientEntity);

        return ModelMapper.toClientModel(clientEntity);
    }

    @Override
    public ClientEntity getBySeriesAndNumber(ClientEntity entity) {
        return clientRepository.findByPassportSeriesAndPassportNumber(entity.getPassportSeries(), entity.getPassportNumber()).orElse(entity);
    }


}
