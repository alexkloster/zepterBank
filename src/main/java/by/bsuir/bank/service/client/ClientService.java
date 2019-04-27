package by.bsuir.bank.service.client;

import by.bsuir.bank.model.client.ClientModel;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;

@Service
@Transactional
public interface ClientService {

    ClientModel saveClient(ClientModel client);

}
