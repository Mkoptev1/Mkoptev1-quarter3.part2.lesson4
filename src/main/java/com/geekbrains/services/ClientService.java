package com.geekbrains.services;

import com.geekbrains.entities.Client;

public interface ClientService {
    Iterable<Client> getAll();
    Client get(Long id);
    void save(Client article);
}