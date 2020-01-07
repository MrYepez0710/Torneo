package com.torneo.api;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.torneo.dto.Torneo;
import com.torneo.service.TorneoService;

@RestController
public class TorneoApi {
	
	@RequestMapping(value="/product", method=RequestMethod.GET)
	public String HolaTorneo() {
		return "Hola Mundo desde Torneo!";
	}
	
	@Autowired
	TorneoService torneoService;
	 
	@RequestMapping(value="/NuevoTorneo", method=RequestMethod.POST)
	public Torneo updateOrSave(@RequestBody Torneo torneo){
		System.out.println("TorneoApi:updateOrSave");
	    return torneoService.save(torneo);
	}

}
