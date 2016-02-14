package codemons.transporter.rest.location;

import codemons.transporter.model.location.Location;
import codemons.transporter.service.location.LocationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/rest/locations")
public class LocationController {

    @Autowired
    private LocationService locationService;

    @RequestMapping(method = RequestMethod.GET, produces = {"application/json"})
    public
    @ResponseBody
    List<Location> getLocations() {
        return locationService.getAllLocations();
    }


    @RequestMapping(value = "/{locationId}", method = RequestMethod.GET, produces = {"application/json"})
    public
    @ResponseBody
    Location getLocation(@PathVariable long locationId) {
        return locationService.getLocation(locationId);
    }


    @RequestMapping(method = RequestMethod.POST, consumes = {"application/json"}, produces = {"application/json"})
    @ResponseStatus(HttpStatus.CREATED)
    public
    @ResponseBody
    Location addLocation(@RequestBody Location location) {
        return locationService.addLocation(location);
    }
}