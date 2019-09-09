package com.geekbrains.repositories;

import com.geekbrains.entities.Client;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

@Repository
public interface ClientRepository extends PagingAndSortingRepository<Client, Long> {
    Client findOne(Long id);
}