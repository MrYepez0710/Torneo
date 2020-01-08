package com.torneo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.torneo.dao.TorneoDAO;
import com.torneo.dto.Torneo;

@Service
public class TorneoService {

	@Autowired
	private TorneoDAO torneoDao;
	
	public Torneo guardarTorneo(Torneo torneoDTO){
		System.out.println("TorneoService::guardarTorneo");
        return torneoDao.saveAndFlush(torneoDTO);
    }
	
	public List<Torneo> listarTorneos(){
		System.out.println("TorneoService::listarTorneos");
        return torneoDao.findAll();
    }
}
