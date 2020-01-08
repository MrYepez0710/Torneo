package com.torneo.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.torneo.dto.Calendario;

public interface CalendarioDAO extends JpaRepository<Calendario, Long>{

}
