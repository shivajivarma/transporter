/*
 * The MIT License (MIT)
 *
 * Copyright (c) 2015 CODEMONS
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 */

package codemons.transporter.model.trip;

import javax.persistence.*;
import java.util.Date;


@Entity
@Table(name = "trips")
public class Trip {

    // An auto generated id (unique for each user in the db)
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;

    @Column(name = "routemap")
    private String routemap;

    @Column(name = "priceperperson")
    private float priceperperson;

    @Column(name = "facilities")
    private String facilities;

    @Column(name = "seating")
    private long seating;

    @Column(name = "vehicle")
    private long vehicle;

    @Column(name = "dt")
    private Date dt;

    public Trip() {
    }

    public String getRoutemap() {
        return routemap;
    }

    public void setRoutemap(String routemap) {
        this.routemap = routemap;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public float getPriceperperson() {
        return priceperperson;
    }

    public void setPriceperperson(float priceperperson) {
        this.priceperperson = priceperperson;
    }

    public String getFacilities() {
        return facilities;
    }

    public void setFacilities(String facilities) {
        this.facilities = facilities;
    }

    public long getSeating() {
        return seating;
    }

    public void setSeating(long seating) {
        this.seating = seating;
    }

    public long getVehicle() {
        return vehicle;
    }

    public void setVehicle(byte vehicle) {
        this.vehicle = vehicle;
    }

    public Date getDt() {
        return dt;
    }

    public void setDt(Date dt) {
        this.dt = dt;
    }
}
