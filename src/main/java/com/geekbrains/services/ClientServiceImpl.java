package com.geekbrains.services;

import com.geekbrains.entities.Client;
import com.geekbrains.repositories.ClientRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class ClientServiceImpl implements ClientService {
    private ClientRepository clientRepository;

    @Autowired
    public void setClientRepository(ClientRepository clientRepository) {
        this.clientRepository = clientRepository;
    }

    @Override
    @Transactional(readOnly = true)
    public List<Client> getAll() {
        return (List<Client>)clientRepository.findAll();
    }

    @Override
    @Transactional(readOnly = true)
    public Client get(Long id) {
        return clientRepository.findOne(id);
    }

    @Override
    @Transactional
    public void save(Client article) {
        clientRepository.save(article);
    }
}
