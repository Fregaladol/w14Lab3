package com.demo.conexion.Entity;

import com.fasterxml.jackson.annotation.JsonBackReference;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@Table(name = "movies")
public class Movie {

    @Id
    // en este caso la variable y nombre de columna son identidas en la entidad
    // y DB de lo contrario hubieramos puesto @Column(name="idMovie") por ejemplo
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String title;
    private String protagonist; 
    private int year;
    private String genre;
    private Long box_office; 
    private String poster;
    
    @ManyToOne
    @JoinColumn(name = "director_id")
    @JsonBackReference
    private Director directors; 



}
