/*
 * Copyright (c) 2016 CODEMONS
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 */

package codemons.transporter.vehicle.model;

import javax.persistence.*;


@Entity
@Table(name = "vehicle")
public class Vehicle {

    // An auto generated id (unique for each user in the db)
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long id;

    @Column(name = "type")
    private byte type;

    @Column(name = "priceperunit")
    private float priceperunit;

    @Column(name = "currentlocation")
    private long currentlocation;

    public Vehicle() {
    }

    public Vehicle(long id) {
        this.id = id;
    }

    public Vehicle(byte type) {
        this.type = type;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getType() {
        if(type == 0){
            return "bus";
        } else if(type == 1){
            return "car";
        } else{
            return "other";
        }
    }

    public void setType(String type) {
        if(type.equals("bus")){
            this.type = 0;
        } else if(type.equals("car")){
            this.type = 1;
        } else{
            this.type = 2;
        }
    }

    public float getPriceperunit() {
        return priceperunit;
    }

    public void setPriceperunit(float priceperunit) {
        this.priceperunit = priceperunit;
    }

    public long getCurrentlocation() {
        return currentlocation;
    }

    public void setCurrentlocation(long currentlocation) {
        this.currentlocation = currentlocation;
    }

}
