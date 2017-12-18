package entities;


import javax.persistence.Entity;
import javax.xml.bind.annotation.XmlRootElement;
import java.util.ArrayList;

/**
 * Created by Zeubi on 19/11/2017.
 */
@XmlRootElement
@Entity
public class App {

    private static long idGene = 0;

    private String nom;
    private String horaire;
    private String date;
    private long ide;

    public App() { ide = idGene++; }

    public App(String nom, String horaire, String date){
        this.nom=nom;
        this.horaire=horaire;
        this.date=date;
        ide = idGene++;
    }

    public static long getIdGene() {
        return idGene;
    }

    public String getNom() {
        return nom;
    }

    public String getHoraire() {
        return horaire;
    }

    public String getDate() {
        return date;
    }

    public long getIde() {
        return ide;
    }

    public void generateID(){
        this.setIde(idGene-1);
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public void setHoraire(String horaire) {
        this.horaire = horaire;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public void setIde(long ide) {
        this.ide = ide;
    }
}
