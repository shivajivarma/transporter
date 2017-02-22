package codemons.transporter.route.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import codemons.transporter.route.model.Route;
import codemons.transporter.route.model.RouteRepository;

@Service
public class RouteService {
	
	@Autowired
	private RouteRepository routeRepository;

	 public Route getRoute(long id) {
	        return routeRepository.findOne(id);
	    }

	    public Route addRoute(Route route) {
	        return routeRepository.save(route);
	    }
	
}
