package com.torneo.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.torneo.dto.Participante;

public interface ParticipanteDAO  extends JpaRepository<Participante, Long>{

}
