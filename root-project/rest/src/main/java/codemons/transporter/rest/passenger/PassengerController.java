package codemons.transporter.rest.passenger;

import codemons.transporter.model.location.Location;
import codemons.transporter.model.passenger.Passenger;
import codemons.transporter.model.reservation.Reservation;
import codemons.transporter.service.location.LocationService;
import codemons.transporter.service.passenger.PassengerService;
import codemons.transporter.service.reservation.ReservationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/rest/passengers")
public class PassengerController {

    @Autowired
    private PassengerService passengerService;

    @Autowired
    private ReservationService reservationService;

    @RequestMapping(method = RequestMethod.GET, produces = {"application/json"})
    public
    @ResponseBody
    List<Passenger> getPassengers() {
        return passengerService.getAllPassengers();
    }


    @RequestMapping(value = "/{username}", method = RequestMethod.GET, produces = {"application/json"})
    public
    @ResponseBody
    Passenger getPassenger(@PathVariable String username) {
        return passengerService.getPassengerByUsername(username);
    }

    @RequestMapping(value = "/{username}/reservations", method = RequestMethod.GET, produces = {"application/json"})
    public
    @ResponseBody
    List<Reservation> getPassengerReservations(@PathVariable String username) {
        return reservationService.getReservationsByUsername(username);
    }

    @RequestMapping(method = RequestMethod.POST, consumes = {"application/json"}, produces = {"application/json"})
    @ResponseStatus(HttpStatus.CREATED)
    public
    @ResponseBody
    Passenger addPassenger(@RequestBody Passenger passenger) {
        return passengerService.addPassenger(passenger);
    }
}