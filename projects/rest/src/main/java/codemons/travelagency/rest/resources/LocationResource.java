package codemons.travelagency.rest.resources;

import java.util.List;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import org.apache.log4j.Logger;


import codemons.prayanam.backend.location.Location;
import codemons.prayanam.backend.location.LocationService;

@Path("/messages")
public class LocationResource {
	private static final Logger logger = Logger.getLogger(LocationResource.class);

	LocationService locationService = new LocationService();
	
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public List<Location> getLocations() {
		logger.debug("Location");
		return locationService.getAllLocations();
	}
	
}
