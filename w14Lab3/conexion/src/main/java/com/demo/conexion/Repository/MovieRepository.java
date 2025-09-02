package com.demo.conexion.Repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.demo.conexion.Entity.Movie;


public interface MovieRepository extends JpaRepository<Movie, Long> {

    @Query(value = "SELECT id,title FROM movies",
            nativeQuery=true)
    List<Object[]> findAllMovieTitles(); 


}
