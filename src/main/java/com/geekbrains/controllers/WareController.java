package com.geekbrains.controllers;

import com.geekbrains.entities.Client;
import com.geekbrains.entities.Ware;
import com.geekbrains.services.WareServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("/ware")
public class WareController {
    private WareServiceImpl wareServiceImpl;

    @Autowired
    public void setWareServiceImpl(WareServiceImpl wareServiceImpl) {
        this.wareServiceImpl = wareServiceImpl;
    }

    // Список товаров
    // http://localhost:8189/app/ware/ware-list
    @RequestMapping("/ware-list")
    public String getWareList(Model model) {
        List<Ware> wareList = wareServiceImpl.getAll();
        model.addAttribute("ware", wareList);
        return "warelist";
    }

    // Фильтрация товаров
    // http://localhost:8189/app/ware/ware-list/1
    @RequestMapping(value="/ware-list/{filter}", method=RequestMethod.GET)
    public String filterWare(Model uiModel, @PathVariable(value="filter") Long filter_id) {
        List<Ware> wareList = wareServiceImpl.findMaxPrice(filter_id);
        uiModel.addAttribute("ware", wareList);
        return "warelist";
    }

    // Форма добавления товара
    // http://localhost:8189/app/ware/add-ware
    @RequestMapping("/add-ware")
    public String newWare(Model model) {
        Ware ware = new Ware();
        model.addAttribute("ware", ware);
        return "add-ware";
    }

    // Сохранение товара
    // http://localhost:8189/app/ware/save-ware
    @RequestMapping("/save-ware")
    public String saveWare(@ModelAttribute("ware") Ware ware) {
        wareServiceImpl.save(ware);
        return "redirect:ware_list";
    }

    // Форма удаления товара
    // http://localhost:8189/app/ware/del-ware-form
    @RequestMapping("/del-ware-form")
    public String delWare() {
        return "del-ware-form";
    }

    // Сохранение удаленного товара
    // http://localhost:8189/app/ware/save-del-ware
    @RequestMapping("/save-del-ware")
    public String saveDelWare(@ModelAttribute("ware") Ware ware) {
        //wareService.saveWare(ware);
        return "redirect:ware_list";
    }

    // Поиск товара по клиенту
    // http://localhost:8189/app/ware/search-ware-by-client-form
    @RequestMapping("/search-ware-by-client-form")
    public String searchWareByClientForm() {
        return "search-ware-by-client-form";
    }

    // Результат поиска товара по клиенту
    @RequestMapping(path="/search-ware-by-client-result", method=RequestMethod.GET)
    public String searchWareResult(@RequestParam("id") long clientId, Model model) {
        Optional<Ware> ware = Optional.of(new Ware());
        ware = wareServiceImpl.get(clientId);
        model.addAttribute("ware", ware);
        return "search-ware-by-client-result";
    }
}