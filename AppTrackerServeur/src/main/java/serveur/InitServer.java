package serveur;


import database.MockDatabase;
import entities.App;
import entities.Smartphone;
import saveData.JSONData;

import java.io.File;
import java.util.ArrayList;

public class InitServer {

    private static File app = new File("./src/main/resources/app.txt");
    private static File smartphone = new File("./src/main/resources/smartphone.txt");

    public InitServer(){}

    public void initialisation(){

        App app0 = new App("Calendar","10:45","17/12/2017","antibes","1 km/h");
        MockDatabase.data.addApp(app0);
        App app1 = new App("Phone","10:22","18/12/2017","cii","155 km/h");
        MockDatabase.data.addApp(app1);
        ArrayList<App> listApp = new ArrayList<App>();
        listApp.add(app0);
        listApp.add(app1);
        Smartphone smartphone0 = new Smartphone(listApp);
        MockDatabase.data.addSmartphone(smartphone0);

        JSONData.saveJSON(MockDatabase.data.getAppsList(), app);
    }
}

