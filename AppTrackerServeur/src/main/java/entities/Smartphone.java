package entities;

import javax.persistence.Entity;
import javax.xml.bind.annotation.XmlRootElement;
import java.util.ArrayList;


@XmlRootElement
@Entity
public class Smartphone {

    private static long idGeneSmart = 0;

    private long uuid;
    private ArrayList<App> listApp;

    public Smartphone() { uuid = idGeneSmart++; }

    public Smartphone(ArrayList<App> listApp){
        this.listApp = listApp;
        uuid = idGeneSmart++;
    }

    public static long getIdGeneSmart() {
        return idGeneSmart;
    }

    public long getUuid() {
        return uuid;
    }

    public ArrayList<App> getListApp() {
        return listApp;
    }

    public static void setIdGeneSmart(long idGeneSmart) {
        Smartphone.idGeneSmart = idGeneSmart;
    }

    public void setUuid(long uuid) {
        this.uuid = uuid;
    }

    public void setListApp(ArrayList<App> listApp) {
        this.listApp = listApp;
    }

    public void generateID(){
        this.setUuid(idGeneSmart-1);
    }
}
