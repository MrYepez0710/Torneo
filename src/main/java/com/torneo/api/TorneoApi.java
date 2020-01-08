package com.torneo.api;

import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.dozer.Mapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.torneo.dto.Torneo;
import com.torneo.http.TorneoRequest;
import com.torneo.http.TorneoResponse;
import com.torneo.service.TorneoService;

@RestController
public class TorneoApi {
	
	@Autowired
	private TorneoService torneoService;
	
	@Autowired
	private Mapper mapper;
	 
	@RequestMapping(value="/NuevoTorneo", method=RequestMethod.POST)
	public TorneoResponse crearTorneo(@RequestBody @Valid TorneoRequest torneoRequest){
		System.out.println("TorneoApi::crearTorneo");
		Torneo torneo = mapper.map(torneoRequest, Torneo.class);
	    Torneo torneoAlmacenado = torneoService.guardarTorneo(torneo);
	    TorneoResponse contactResponse = mapper.map(torneoAlmacenado, TorneoResponse.class); 
	    return contactResponse;
	}
	
	@RequestMapping(value="/listaTorneos", method=RequestMethod.GET)
	public List<TorneoResponse> listarTorneos(){
		System.out.println("TorneoApi::listarTorneos");
	    List<Torneo> listadoTorneos = torneoService.listarTorneos();
	    
	    List<TorneoResponse> listadoTorneosRespopnse = new ArrayList<>();
	    for(Torneo t : listadoTorneos) {
	    	listadoTorneosRespopnse.add(mapper.map(t, TorneoResponse.class));
	    }
	    return listadoTorneosRespopnse;
	}

}
