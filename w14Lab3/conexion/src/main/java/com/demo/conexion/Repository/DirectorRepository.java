package com.demo.conexion.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.demo.conexion.Entity.Director;

// extend to jpaRepository, pasando el objeto y tipo de clave primaria
public interface DirectorRepository extends JpaRepository<Director, Long>{ 

}
