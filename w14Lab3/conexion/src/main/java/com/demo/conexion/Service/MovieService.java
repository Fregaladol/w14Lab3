package com.demo.conexion.Service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.demo.conexion.Entity.Movie;
import com.demo.conexion.Repository.MovieRepository;

@Service
public class MovieService {

    @Autowired
    private MovieRepository movieRepository;

    //todos
    public List<Movie> getAll(){
        return movieRepository.findAll();
    }

    //busqueda por id
    public Optional<Movie> findById(Long id){
        return movieRepository.findById(id);
    }

    //salvar uno
    public Movie saveNewOne(Movie movie){
        return movieRepository.save(movie);
    }

    //eliminar uno
    public void deleteOne(Long id){
        movieRepository.deleteById(id);
    }


     public List<Object[]> getMovieTitles() {
        return movieRepository.findAllMovieTitles();
    }
    
    
}
