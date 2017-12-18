package serveur;


import database.MockDatabase;
import entities.App;
import saveData.JSONData;

import java.io.File;

public class InitServer {

    private static File app = new File("./src/main/resources/app.txt");

    public InitServer(){}

    public void initialisation(){
        App app0 = new App("Calendar","10:45","17/12/2017");
        MockDatabase.data.addApp(app0);

        JSONData.saveJSON(MockDatabase.data.getAppsList(), app);
    }
}

