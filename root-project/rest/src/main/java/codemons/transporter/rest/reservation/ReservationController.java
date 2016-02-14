package codemons.transporter.rest.reservation;

import codemons.transporter.model.reservation.Reservation;
import codemons.transporter.service.reservation.ReservationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/rest/reservations")
public class ReservationController {

    @Autowired
    private ReservationService reservationService;

    @RequestMapping(method = RequestMethod.GET, produces = {"application/json"})
    public
    @ResponseBody
    List<Reservation> getReservations() {
        return reservationService.getAllReservations();
    }

    @RequestMapping(value = "/{reservationId}", method = RequestMethod.GET, produces = {"application/json"})
    public
    @ResponseBody
    Reservation getLocation(@PathVariable long reservationId) {
        return reservationService.getReservation(reservationId);
    }


    @RequestMapping(method = RequestMethod.POST, consumes = {"application/json"}, produces = {"application/json"})
    @ResponseStatus(HttpStatus.CREATED)
    public
    @ResponseBody
    Reservation addLocation(@RequestBody Reservation reservation) {
        return reservationService.addReservation(reservation);
    }
}