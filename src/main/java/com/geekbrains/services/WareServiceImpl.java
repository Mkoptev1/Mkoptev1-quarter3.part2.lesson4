package com.geekbrains.services;

import com.geekbrains.entities.Ware;
import com.geekbrains.repositories.ClientRepository;
import com.geekbrains.repositories.WareRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class WareServiceImpl implements WareService{
    private WareRepository wareRepository;

    @Autowired
    public void setWareRepository(WareRepository _wareRepository) {
        this.wareRepository = _wareRepository;
    }


    @Override
    @Transactional(readOnly = true)
    public List<Ware> getAll() {
        return (List<Ware>) wareRepository.findAll();
    }

    @Override
    @Transactional(readOnly = true)
    public Ware get(Long id) {
        return wareRepository.findOne(id);
    }

    @Override
    @Transactional
    public void save(Ware article) {
        wareRepository.save(article);
    }
}
