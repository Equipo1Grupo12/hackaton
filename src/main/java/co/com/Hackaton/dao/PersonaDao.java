package co.com.Hackaton.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import co.com.Hackaton.model.Persona;

public interface PersonaDao extends JpaRepository<Persona, Integer>{

}
