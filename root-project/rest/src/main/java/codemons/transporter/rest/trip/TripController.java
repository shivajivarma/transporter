/*
 * Copyright (c) 2016 CODEMONS
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 */

package codemons.transporter.rest.trip;

import codemons.transporter.model.trip.TripRO;
import codemons.transporter.model.vehicle.Vehicle;
import codemons.transporter.service.trip.TripService;
import codemons.transporter.service.vehicle.VehicleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import java.util.Date;
import java.util.List;

@RestController
@RequestMapping("/rest/trips")
public class TripController {
    @Autowired
    private TripService tripService;

    @RequestMapping(value = "/{from}/{to}/{dt}", method = RequestMethod.GET, produces = {"application/json"})
    public
    @ResponseBody
    List<TripRO> getTrips(@PathVariable long from, @PathVariable long to,  @PathVariable @DateTimeFormat(pattern="ddMMyyyy") Date dt) {
        return tripService.getTripROsByFromToJourneyDate(from, to, dt);
    }
}
