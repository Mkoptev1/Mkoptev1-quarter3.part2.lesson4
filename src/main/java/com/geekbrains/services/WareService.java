package com.geekbrains.services;

import com.geekbrains.entities.Client;
import com.geekbrains.entities.Ware;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import java.util.List;

public interface WareService {
    List<Ware> getAll();
    Ware get(Long id);
    void save(Ware article);
}