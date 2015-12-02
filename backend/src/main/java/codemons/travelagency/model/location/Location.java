package codemons.travelagency.model.location;
import javax.xml.bind.annotation.XmlRootElement;

/**
 * Created by Shivaji Varma on 11/29/2015.
 */
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
