package com.demo.conexion.Controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.demo.conexion.Entity.Director;
import com.demo.conexion.Service.DirectorService;

@RestController
@RequestMapping("/directors")
public class DirectorController {

    @Autowired
    DirectorService directorService;

    //trae todos es un get
    @GetMapping
    public List<Director> getAll(){
        return directorService.getAll();
    }

    //get by id

    public Optional<Director> getbyId(Long id){
        return directorService.getById(id);
    }
    
    
    //save 
    public Director saveOne(Director director){
        return directorService.saveNewOne(director);
    }

    //delete one
    public void deteOne(Long id){
        directorService.deleteOne(id);
    }



}
