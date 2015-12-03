package codemons.prayanam.backend.location;

import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

public class LocationService {

	private static ClassPathXmlApplicationContext appContext = new ClassPathXmlApplicationContext("spring-jdbc.xml");
	
	public List<Location> getAllLocations() {
		LocationDAO locationDAO = appContext.getBean("locationDAO",LocationDAO.class);
		return locationDAO.findAll();
	}

}

