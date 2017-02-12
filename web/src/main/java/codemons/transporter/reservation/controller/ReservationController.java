/*
 * Copyright (c) 2017 CODEMONS
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 */

package codemons.transporter.reservation.controller;

import codemons.transporter.reservation.model.Reservation;
import codemons.transporter.reservation.service.ReservationService;
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

   /* @RequestMapping(value = "/{reservationId}", method = RequestMethod.GET, produces = {"application/json"})
    public
    @ResponseBody
    Reservation getLocation(@PathVariable long reservationId) {
        return reservationService.getReservation(reservationId);
    }*/


    @RequestMapping(method = RequestMethod.POST, consumes = {"application/json"}, produces = {"application/json"})
    @ResponseStatus(HttpStatus.CREATED)
    public
    @ResponseBody
    Reservation addLocation(@RequestBody Reservation reservation) {
        return reservationService.addReservation(reservation);
    }

    @RequestMapping(method = RequestMethod.DELETE, consumes = {"application/json"}, produces = {"application/json"})
    @ResponseStatus(HttpStatus.OK)
    public
    @ResponseBody
    String removeReservation(@RequestBody List<Reservation> reservations) {

        for (Reservation reservation:
             reservations) {
            reservationService.removeReservation(reservation.getId());
        }

        return "{\"status\": \"success\"}";
    }

    /*@RequestMapping(value = "/{reservationId}", method = RequestMethod.DELETE, produces = {"application/json"})
    @ResponseStatus(HttpStatus.OK)
    public
    @ResponseBody
    void removeReservation(@PathVariable long reservationId) {
        reservationService.removeReservation(reservationId);
    }*/
}