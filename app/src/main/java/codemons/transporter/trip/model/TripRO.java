/*
 * Copyright (c) 2017 CODEMONS
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 */

package codemons.transporter.trip.model;

import codemons.transporter.route.model.RouteRO;
import codemons.transporter.vehicle.model.Vehicle;
import lombok.Getter;
import lombok.Setter;

import java.util.Date;
import java.util.List;

@Getter
@Setter
public class TripRO {

    private long id;

    private List<RouteRO> routemap;

    private float priceperperson;

    private String facilities;

    private long seating;

    private Vehicle vehicle;

    private Date dt;

    public TripRO() {

    }

    public TripRO(Trip trip, List<RouteRO> routemap, Vehicle vehicle) {
        this.id = trip.getId();
        this.routemap = routemap;
        this.priceperperson = trip.getPriceperperson();
        this.facilities = trip.getFacilities();
        this.seating = trip.getSeating();
        this.vehicle = vehicle;
        this.dt = trip.getDt();
    }

}
