package com.geekbrains.services;

import com.geekbrains.entities.Ware;
import com.geekbrains.repositories.WareRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Optional;

@Service
public class WareServiceImpl{
    private WareRepository wareRepository;

    @Autowired
    public void setWareRepository(WareRepository _wareRepository) {
        this.wareRepository = _wareRepository;
    }


    @Transactional(readOnly = true)
    public List<Ware> getAll() {
        return (List<Ware>) wareRepository.findAll();
    }

    @Transactional(readOnly = true)
    public Optional<Ware> get(Long id) {
        return wareRepository.findById(id);
    }

    @Transactional
    public void save(Ware article) {
        wareRepository.save(article);
    }

    @Transactional
    public List<Ware> findMaxPrice(Long _filter_id) {
        // Фильтр по минимальной цене
        if (_filter_id == 1L) {
            return (List<Ware>) wareRepository.findMinPrice();
        // Фильтр по максимальной цене
        } else if (_filter_id == 2L) {
            return (List<Ware>) wareRepository.findMaxPrice();
        // Фильтр по минимальной и максимальной ценам
        } else if (_filter_id == 3L) {
            return (List<Ware>) wareRepository.findMinOrMaxPrice();
        // Вывод всех товаров
        } else {
            return (List<Ware>) wareRepository.findAll();
        }
    }
}