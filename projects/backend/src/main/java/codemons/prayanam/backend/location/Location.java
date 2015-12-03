package codemons.prayanam.backend.location;

import javax.xml.bind.annotation.XmlRootElement;


@XmlRootElement
public class Location {
    int id;
    String name;

    public Location(){}

    public Location(String name){
        this.name = name;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "Location{" +
                "id=" + id +
                ", name='" + name + '\'' +
                '}';
    }
}
