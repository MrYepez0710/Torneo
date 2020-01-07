package com.torneo.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.torneo.dto.Torneo;

public interface TorneoDAO extends JpaRepository<Torneo, Long>{

}
