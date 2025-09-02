package com.demo.conexion.Controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.demo.conexion.Entity.Movie;
import com.demo.conexion.Service.MovieService;

@CrossOrigin(origins = "*")
@RestController
@RequestMapping("/movies")
public class MovieController {

    @Autowired
    private MovieService movieService;

    //traer todos es un get
    @GetMapping
    public List<Movie> getAll(){
        return movieService.getAll();
    }

    //buscar por id osea es un get
    @GetMapping("/{id}")
    public Optional<Movie> getOne(@PathVariable Long id){
        return movieService.findById(id);
    }

    //agregar nuevo así que es un post
    @PostMapping
    public Movie addNewOne(@RequestBody Movie movieJSON){
        return movieService.saveNewOne(movieJSON);
    }

    //eliminar uno es un delete
    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteOne(@PathVariable Long id){
        if (id!=null){
            movieService.deleteOne(id);
            return ResponseEntity.noContent().build();
        } else {
            return ResponseEntity.notFound().build();
        }
    }

  /*  @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteOne(@PathVariable Long id) {
    Optional<Movie> movie = movieService.findById(id);
    if (movie.isPresent()) {
        movieService.deleteOne(id);
        return ResponseEntity.noContent().build();
    } else {
        return ResponseEntity.notFound().build();
    }
    } */

    @GetMapping("/titles")
    public List<Map<String, Object>> getMovieTitles() {
        List<Object[]> rawTitles = movieService.getMovieTitles();
        List<Map<String, Object>> response = new ArrayList<>();

        for (Object[] row : rawTitles) {
            Map<String, Object> item = new HashMap<>();
            item.put("id", row[0]);
            item.put("title", row[1]);
            response.add(item);
        }

        return response;
    }


}
