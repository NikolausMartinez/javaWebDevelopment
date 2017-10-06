/**
 *  Nikolaus Martinez
 *  CS4010 hw2
 *  05/10/2017
 * @author ncmzt2
 */
package hw2;
import java.io.Serializable;

public class Dvd implements Serializable {
    
    private String name;
    private String dvdTitle;
    private String email;
    private String dvdPrice;
    
    public Dvd() {
        name = "";
        dvdTitle = "";
        email = "";
        dvdPrice = "";
    }
    
    public Dvd(String name, String dvdTitle, String email, String dvdPrice) {
        this.name = name;
        this.dvdTitle = dvdTitle;
        this.email = email;
        this.dvdPrice = dvdPrice;
    }
    
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDvdTitle() {
        return dvdTitle;
    }

    public void setDvdTitle(String dvdTitle) {
        this.dvdTitle = dvdTitle;
    } 
    
    public String getDvdPrice() {
        return dvdPrice;
    }
    
    public void setDvdPrice(String dvdPrice) {
        this.dvdPrice = dvdPrice;
    }
    

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
    
}

