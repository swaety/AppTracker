package database;


import entities.*;

import java.util.ArrayList;
/**
 * Created by Zeubi on 19/11/2017.
 */

public class MockDatabase {
    public static MockDatabase data = new MockDatabase();

    private ArrayList<App> appsList;
    private ArrayList<Smartphone> smartphonesList;

    public MockDatabase(){
        appsList = new ArrayList<App>();
        smartphonesList = new ArrayList<Smartphone>();
    }

    public void addApp(App app) {
        app.generateID();
        appsList.add(app);
    }

    public ArrayList<App> getAppsList() {
        return appsList;
    }

    public void addSmartphone(Smartphone smartphone) {
        smartphone.generateID();
        smartphonesList.add(smartphone);
    }

    public ArrayList<Smartphone> getSmartphonesList() {
        return smartphonesList;
    }

    public ArrayList<App> getAppsListbyUuid(long id) {
        for (Smartphone smart : smartphonesList ) {
            if(smart.getUuid()==id){
                return smart.getListApp();
            }
        }
        return null;
    }
}