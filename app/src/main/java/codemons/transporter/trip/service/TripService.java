/*
 * Copyright (c) 2017 CODEMONS
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 */

package codemons.transporter.trip.service;

import codemons.transporter.location.model.Location;
import codemons.transporter.location.model.LocationRepository;
import codemons.transporter.route.model.Route;
import codemons.transporter.route.model.RouteRO;
import codemons.transporter.route.model.RouteRepository;
import codemons.transporter.trip.model.Trip;
import codemons.transporter.trip.model.TripRO;
import codemons.transporter.trip.model.TripRepository;
import codemons.transporter.vehicle.model.VehicleRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Service
public class TripService {

    @Autowired
    private TripRepository tripRepository;

    @Autowired
    private RouteRepository routeRepository;

    @Autowired
    private LocationRepository locationRepository;

    @Autowired
    private VehicleRepository vehicleRepository;


     public List<TripRO> getTripROsByFromToJourneyDate(long from, long to, Date dt) {
        List<Trip> trips = tripRepository.findByFromAndToAndDt(from, to, dt);

        List<TripRO> tripROs = new ArrayList<TripRO>();

         for (Trip trip:
              trips) {
             List<RouteRO> routemap = new ArrayList<RouteRO>();
             Route route = routeRepository.findOne(Long.parseLong(trip.getRoutemap()));
             Location fromLocation = locationRepository.findOne(route.getFrom());
             Location toLocation = locationRepository.findOne(route.getTo());
             RouteRO routeRO = new RouteRO(route, fromLocation, toLocation);
             routemap.add(routeRO);

             tripROs.add(new TripRO(trip, routemap, vehicleRepository.findOne(trip.getVehicle())));
         }
        return tripROs;
     }


}

