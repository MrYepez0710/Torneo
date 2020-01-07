package com.torneo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.torneo.dao.TorneoDAO;
import com.torneo.dto.Torneo;

@Service
public class TorneoService {

	@Autowired
	private TorneoDAO torneoDao;
	
	public Torneo save(Torneo torneoDTO){
		System.out.println("TorneoService:save");
        return torneoDao.saveAndFlush(torneoDTO);
    }
}
