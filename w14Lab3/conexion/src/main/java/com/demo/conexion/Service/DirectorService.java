package com.demo.conexion.Service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.conexion.Entity.Director;
import com.demo.conexion.Repository.DirectorRepository;

@Service
public class DirectorService {

    @Autowired
    DirectorRepository directorRepository;

    //consultar todos 
    public List<Director> getAll(){
        return (List<Director>) directorRepository.findAll();

    }

    //consultar por id
    public Optional<Director> getById(Long id){
        return directorRepository.findById(id);
    }


    //guardaar uno
    public Director saveNewOne(Director newDirector){
        return directorRepository.save(newDirector);
    }


    //eliminar uno
    public void deleteOne(Long id){
        directorRepository.deleteById(id);
    }





}
